import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";

import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";
import module namespace csv = "http://zorba.io/modules/json-csv";

declare function local:to-csv($o as object*) as string?
{
    if (exists($o)) (: bug in csv:serialize :)
    then
    string-join(
        csv:serialize(
            for $o in $o
            let $a := $o.Aspects
            return {|
                for $k in keys($a)
                return { $k : $a.$k },
                { "Value" : $o.Value },
                if (exists($o."Unit"))
                then { "Unit" :  $o."Unit" }
                else (),
                if (exists($o.Decimals))
                then { "Decimals" : $o.Decimals }
                else(),
                { "EntityRegistrantName" : $o.EntityRegistrantName },
                if (exists($o.ReportedConcept))
                then { "ReportedConcept" : $o.ReportedConcept }
                else ()
            |},
            { serialize-null-as : "" }
        )
    )
    else ()
};

declare function local:to-xml($o as object*) as node()*
{
    (session:comment("xml", {
        NumFacts: count($o),
        TotalNumFacts: session:num-facts(),
        TotalNumArchives: session:num-archives(),
        TotalNumEntities: session:num-entities()
    }),
    <FactTable NetworkIdentifier="http://bizql.io/facts"
            TableName="xbrl:Facts">{
        for $o in $o
        let $a := $o.Aspects
        return
            <Fact>{
                <Aspects>{
                    for $k in keys($a)
                    return
                        <Aspect>
                            <Name>{$k}</Name>
                            <Value>{$a.$k}</Value>
                        </Aspect>
                }</Aspects>,
                <Value>{$o.Value}</Value>,
                <Type>{$o.Type}</Type>,
                if (exists($o.Unit))
                then <Unit>{$o.Unit}</Unit>
                else(),
                if (exists($o.Decimals))
                then <Decimals>{$o.Decimals}</Decimals>
                else (),
                <EntityRegistrantName>{$o.EntityRegistrantName}</EntityRegistrantName>,
                if (exists($o.ReportedConcept))
                then <ReportedConcept>{$o."ReportedConcept"}</ReportedConcept>
                else ()
            }</Fact>
    }</FactTable>)
};

declare function local:facts(
    $archives as object*,
    $concepts as string*, 
    $dimensions as object* , 
    $map as string?,
    $rules as string?) as object*
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
                                        Default : "sec:DefaultLegalEntity",
                                        Domains: {
                                            "sec:DefaultLegalEntity" : {
                                                Name: "sec:DefaultLegalEntity"
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
                if (exists($rules))
                then { "Rules" : $rules }
                else (),
                { Hypercube : $hypercube }
            |}
    return 
    for $fact in
        for $f in facts:facts-for-archives-and-aspects($archives, $aspects, $options)
        where exists($f.Profiles.SEC.Fiscal.Year)
        group by $f.Aspects."xbrl:Entity",
                 $f.Profiles.SEC.Fiscal.Year,
                 $f.Profiles.SEC.Fiscal.Period,
                 $f.Aspects."xbrl:Concept"
        let $latest-accepted := max(distinct-values($f.Profiles.SEC.Accepted))
        return if (empty($latest-accepted))
               then $f
               else $f[$$.Profiles.SEC.Accepted eq $latest-accepted]
    return {|
        { Aspects : {|
            for $a in keys($fact.Aspects)
            where $a ne "xbrl:Unit"
            return { $a : $fact.Aspects.$a },
            { "bizql:FiscalPeriod" : $fact.Profiles.SEC.Fiscal.Period },
            { "bizql:FiscalYear" : $fact.Profiles.SEC.Fiscal.Year }
        |} },
        { Type: $fact.Type },
        if (exists($fact.Aspects."xbrl:Unit"))
        then { Unit: $fact.Aspects."xbrl:Unit" }
        else  (),
        if (exists($fact.Decimals))
        then { Decimals: $fact.Decimals }
        else (), 
        { Value: $fact.Value },
        { "EntityRegistrantName" : companies:companies($fact.Aspects."xbrl:Entity").Profiles.SEC.CompanyName},
        if (exists($map) and ($fact."xbrl28:Type" eq "xbrl28:concept-maps"))
        then { "ReportedConcept" : $fact.AuditTrails[][$$.Type eq "xbrl28:concept-maps"].Data.OriginalConcept[1] }
        else ()
    |}
};

declare function local:filings(
    $ciks as string*,
    $tags as string*,
    $tickers as string*,
    $sics as string*,
    $fp as string*,
    $fy as string*) as object*
{
    let $entities := (
        companies:companies($ciks),
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
                            then sec-fiscal:latest-reported-fiscal-period($entity, "10-K").year
                            else sec-fiscal:latest-reported-fiscal-period($entity, "10-Q").year
                        case "ALL" return  $sec-fiscal:ALL_FISCAL_YEARS
                    default return $fy
                )
    for $fp in $fp
    return sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, $fp, $fy cast as integer)
};


let $format      := lower-case(request:param-values("format")[1])

(: choose 
    1. entities (using ciks, tags, tickers, sics), FY, and FP ) or
    2. accession numbers
:)
let $ciks        := distinct-values(companies:eid(request:param-values("cik")))
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
                        then $sec-fiscal:ALL_FISCAL_PERIODS
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
                                    "sec:ImplicitDomain" : {
                                        Name: "sec:ImplicitDomain",
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
let $rules      := request:param-values("rules")[1]
return 
  if (empty($concepts))
  then {
    response:status-code(400);
    session:error("concept: missing parameter", $format)
  } else
    let $archives := (
                        local:filings($ciks, $tags, $tickers, $sics, $fiscalPeriods, $fiscalYears),
                        archives:archives($aids)
                     )
    let $entities     := companies:companies($archives.Entity)
    return switch(true)
      case empty($archives) return {
        response:status-code(400);
        session:error("entities or archives not found (valid parameters: cik, ticker, tag, sic, aid)", $format)
      }
      case not (session:only-dow30($entities) or session:valid()) return {
        response:status-code(401);
        session:error("accessing facts of an entity that is not in the DOW30", $format)
      }
      default return
        let $facts := local:facts($archives, $concepts, $dimensions, $map, $rules)
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
