(: SVS PARTIAL, FIX constants :)
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/svs/companies";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace svs-fiscal = "http://xbrl.io/modules/bizql/profiles/svs/fiscal/core";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";

import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace conversion = "http://xbrl.io/modules/bizql/conversion";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace companies2 = "http://xbrl.io/modules/bizql/profiles/sec/companies2";
import module namespace fiscal-core = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace fiscal-core2 = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core2";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";

declare function local:contains-aspect($name as string) as boolean
{
  some $x in (request:param-names() ! starts-with($$, $name))
  satisfies $x
};

declare function local:cast-sequence($values as atomic*, $type as string) as atomic*
{
  for $value in $values
  return
      switch ($type)
      case "integer" return $value cast as integer
      case "string" return $value cast as string
      default return error(xs:QName("local:unsupported-type"), $type || ": unsupported type")
};

declare function local:hypercube(
    $entities as object*,
    $fiscalPeriods as string*,
    $fiscalYears as integer*,
    $aids as string*) as object
{
    let $aspects :=
        {|
            { "xbrl:Concept" : $concepts },
            (: This is because of a bug that will be fixed later (hypercube members do not get considered) :)
            for $d in values($dimensions)
            let $members := descendant-objects(values($d)).Name
            where exists($members)
            return { $d.Name: [ $members ] }
        |}
    let $hypercube := copy $h := hypercubes:dimensionless-hypercube()
                      modify (
                          insert json (
                            if (values($dimensions).Name = "dei:LegalEntityAxis")
                            then { "dei:LegalEntityAxis" : values($dimensions)[$$.Name eq "dei:LegalEntityAxis"] }
                            else
                            {|
                                "dei:LegalEntityAxis" ! {
                                $$ : {
                                        Name : $$,
                                        Default : "svs:DefaultLegalEntity", (: SVS FIX ME :)
                                        Domains: {
                                            "svs:DefaultLegalEntity" : { (: SVS FIX ME :)
                                                Name: "svs:DefaultLegalEntity" (: SVS FIX ME :)
                                            }
                                        }
                                    }
                                }
                            |})
                          into $h.Aspects,
                          for $d in $dimensions[not values($$).Name = "dei:LegalEntityAxis"]
                          return insert json $d into $h.Aspects 
                      )
                      return $h
    let $options :=
            {|
                if (exists($map))
                then { "concept-maps" : $map }
                else (),
                { Hypercube : $hypercube }
            |}
    return
    for $fact in
        for $f in facts:facts-for-archives-and-aspects($archives, $aspects, $options)
        where exists($f.Profiles.SVS.Fiscal.Year)
        group by $f.Profiles.SVS.Fiscal.Year,
                 $f.Profiles.SVS.Fiscal.Period,
                 $f.Aspects."xbrl:Concept"
        let $latest-accepted := max(distinct-values($f.Profiles.SVS.Fiscal.Acceptance))
        return if (empty($latest-accepted))
               then $f
               else $f[$$.Profiles.SVS.Fiscal.Acceptance eq $latest-accepted]
    return {|
        { Aspects : {|
            for $a in keys($fact.Aspects)
            where $a ne "xbrl:Unit"
            return { $a : $fact.Aspects.$a },
            { "bizql:FiscalPeriod" : $fact.Profiles.SVS.Fiscal.Period },
            { "bizql:FiscalYear" : $fact.Profiles.SVS.Fiscal.Year }
        |} },
        { Type: $fact.Type },
        if (exists($fact.Aspects."xbrl:Unit"))
        then { Unit: $fact.Aspects."xbrl:Unit" }
        else  (),
        if (exists($fact.Decimals))
        then { Decimals: $fact.Decimals }
        else (), 
        { Value: $fact.Value },
        { "EntityRegistrantName" : companies:companies($fact.Aspects."xbrl:Entity").Profiles.SVS.CompanyName},
        if (exists($map))
        then { "ReportedConcept" : $fact.AuditTrails[].Data.OriginalConcept[1] }
        else () 
    |}
    return hypercubes:user-defined-hypercube($main-hypercube-spec)
};

declare function local:filings(
    $ruts as string*,
    $tags as string*,
    $tickers as string*,
    $sics as string*,
    $fp as string*,
    $fy as string*) as object*
{
    let $entities := (
        companies:companies($ruts),
        companies:companies-for-tags($tags),
        companies:companies-for-tickers($tickers),
        companies:companies-for-SIC($sics)
    )
    for $entity in $entities
    for $fy in distinct-values(
                for $fy in $fy
                return
                    switch ($fy)
                    case "LATEST" return
                        for $p in $fp
                        return
                            if ($p eq "FY")
                            then svs-fiscal:latest-reported-fiscal-period($entity, "10-K").year
                            else svs-fiscal:latest-reported-fiscal-period($entity, "10-Q").year
                        case "ALL" return  $svs-fiscal:ALL_FISCAL_YEARS
                    default return $fy
                )
    for $fp in $fp
    return svs-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, $fp, $fy cast as integer)
};

let $facts :=
    if(empty($archives))
    then ()
    else 
        for $fact in sec:facts-for(
            {|
                {
                    Hypercube : $hypercube,
                    Validate: $validate
                },
                { "ConceptMaps" : $map }[exists($map)],
                { "Rules" : [ $rule ] }[exists($rule)]
            |}
        )
        return {|
            $fact,
            { "EntityRegistrantName" : $entities[$$._id eq $fact.Aspects."xbrl:Entity"].Profiles.SEC.CompanyName}
        |} 

let $facts := util:move-unit-out-of-aspects($facts)

let $result := {
    NetworkIdentifier : "http://bizql.io/facts",
    TableName : "xbrl:Facts",
    FactTable : [ $facts ]
}
let $comment :=
{
    NumFacts: count($facts),
    TotalNumFacts: session:num-facts(),
    TotalNumArchives: session:num-archives(),
    TotalNumEntities: session:num-entities()
}
let $serializers := {
    to-xml : function($res as object) as node()* {
           <FactTable NetworkIdentifier="http://bizql.io/facts"
            TableName="xbrl:Facts">{
                conversion:facts-to-xml($res.FactTable[], { Caller: "Report"})
        }</FactTable>
    },
    to-csv : function($res as object) as string {
        conversion:facts-to-csv($res.FactTable[], { Caller: "Report" })
    }
}

(: choose 
    1. entities (using ruts, tags, tickers, sics), FY, and FP ) or
    2. accession numbers
:)
let $ruts        := distinct-values(companies:eid(request:param-values("rut")))
let $tags        := distinct-values(request:param-values("tag") ! upper-case($$))
let $tickers     := distinct-values(request:param-values("ticker"))
let $sics        := distinct-values(request:param-values("sic"))
let $fiscalYears := distinct-values(
                        for $y in request:param-values("fiscalYear", "LATEST")
                        return
                            if ($y eq "LATEST" or $y eq "ALL")
                            then $y
                            else if ($y castable as integer)
                            then $y
                            else ()
                    )
let $fiscalPeriods := distinct-values(let $fp := request:param-values("fiscalPeriod", "FY")
                      return
                        if (($fp ! lower-case($$)) = "all")
                        then $svs-fiscal:ALL_FISCAL_PERIODS
                        else $fp)
let $aids := request:param-values("aid")
let $dimensions :=  for $p in request:param-names()
                    where contains($p, ":")
                    group by $dimension-name := if (ends-with(lower-case($p), ":default"))
                                                then 
                                                    if (ends-with(lower-case($p), "::default"))
                                                    then substring-before($p, "::default")
                                                    else substring-before($p, ":default")
                                                else $p
                    let $default := ($p = $dimension-name || "::default") or ($p = $dimension-name || ":default")
                    let $all := (request:param-values($dimension-name) ! upper-case($$)) = "ALL"
                    return
                    {
                       $dimension-name : {| 
                            { Name : $dimension-name }, 
                            if ($default)
                            then { Default : 
                                (request:param-values($dimension-name || "::default"),
                                 request:param-values($dimension-name || ":default"))[1] }
                            else (),
                            if ($all)
                            then ()
                            else {
                                Domains : {
                                    "svs:ImplicitDomain" : { (: SVS FIX ME :)
                                        Name: "svs:ImplicitDomain", (: SVS FIX ME :)
                                        Members: {|
                                            (request:param-values($dimension-name)) ! { $$ : { Name: $$ } }
                                        |}
                                    }
                                }
                            }
                        |}
                    }
let $concepts := request:param-values("concept")
let $map      := request:param-values("map")[1]
return 
  if (empty($concepts))
  then {
    response:status-code(400);
    session:error("concept: missing parameter", $format)
  } else
    let $archives := (
                        local:filings($ruts, $tags, $tickers, $sics, $fiscalPeriods, $fiscalYears),
                        archives:archives($aids)
                     )
    let $entities     := companies:companies($archives.Entity)
    return switch(true)
      case empty($archives) return {
        response:status-code(404);
        session:error("entities or archives not found (valid parameters: rut, ticker, tag, sic, aid)", $format)
      }
      case not (session:only-dow30($entities) or session:valid()) return {
        response:status-code(401);
        session:error("accessing facts of an entity that is not in the DOW30", $format)
      }
      default return
        let $facts := local:facts($archives, $concepts, $dimensions, $map)
        return
            switch ($format)
            case "xml" return {
                response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
                local:to-xml($facts)
            }
            case "text" case "csv" return {
                response:content-type("text/csv");
                response:header("Content-Disposition", "attachment; filename=facts.csv");
                local:to-csv($facts)
            }
            case "excel" return {
                response:content-type("application/vnd.ms-excel");
                response:header("Content-Disposition", "attachment; filename=fact.csv");
                local:to-csv($facts)
            }
            default return {
                response:content-type("application/json");
                response:serialization-parameters({"indent" : true});
                {|
                    { NetworkIdentifier : "http://bizql.io/facts" },
                    { TableName : "xbrl:Facts" },
                    { FactTable : [ $facts ] },
                    session:comment("json", {
                            NumFacts: count($facts),
                            TotalNumFacts: session:num-facts(),
                            TotalNumArchives: session:num-archives(),
                            TotalNumEntities: session:num-entities()
                        })
                |}
            }
