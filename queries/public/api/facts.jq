import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

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

declare function local:to-xml($o as object*)
{
    (session:comment("xml"),
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
    $entities, 
    $archives,
    $fiscalPeriods, 
    $fiscalYears, 
    $concepts, 
    $dimensions, 
    $map)
{
    for $entity in $entities
    (: compute latest reported fiscalYear if none is specified :)
    let $years  :=  distinct-values(
                        for $f in $fiscalYears
                        return
                            switch ($f)
                            case "LATEST" return
                                for $p in $fiscalPeriods
                                return
                                    if ($p eq "FY")
                                    then sec-fiscal:latest-reported-fiscal-period($entity, "10-K").year
                                    else sec-fiscal:latest-reported-fiscal-period($entity, "10-Q").year
                            case "ALL" return $sec-fiscal:ALL_FISCAL_YEARS (:needs to be () on PROD :)
                            default return $f
                    )
    let $fiscalPeriods := distinct-values(
                            $fiscalPeriods !
                                (switch($$)
                                case "Q1" return ("Q1","YTD1")
                                case "Q2" return ("Q2","YTD2")
                                case "Q3" return ("Q3","YTD3")
                                default return ("Q4","FY")))
    for $concept in $concepts
    let $aspects :=
        {|
            { "xbrl:Concept" : $concept },
            { "xbrl:Entity" : $entity._id }
        |}
    let $hypercube := copy $h := hypercubes:dimensionless-hypercube({ Concepts : $concept })
                      modify (
                          insert json {|
                            "dei:LegalEntityAxis" ! { $$ : { Name : $$, Default : "sec:DefaultLegalEntity" } }
                          |} into $h.Aspects,
                          for $d in $dimensions
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
        for $f in
            (
                sec-fiscal:facts-for-aspects-and-fiscal-periods-and-years(
                    $aspects, $fiscalPeriods, $years, $options),
                facts:facts-for-archives-and-aspects(
                    $archives, $aspects, $options)
            )
        order by $f.Profiles.SEC.Fiscal.Acceptance descending
        group by $f.Profiles.SEC.Fiscal.Year,
                 $f.Profiles.SEC.Fiscal.Period,
                 $f.Profiles.SEC.Fiscal.Acceptance
        return $f[1]
    return {|
        { Aspects : {|
            for $a in keys($fact.Aspects)
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
        { "EntityRegistrantName" : $entity.Profiles.SEC.CompanyName },
        if (exists($map))
        then { "ReportedConcept" : $fact.AuditTrails[].Data.OriginalConcept[1] }
        else () 
    |}
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
                            then $y cast as integer
                            else ()
                    )
let $fiscalPeriods := let $fp := request:param-values("fiscalPeriod", "FY")
                      return
                        if (lower-case($fp) eq "all")
                        then ("Q1", "Q2", "Q3", "FY")
                        else $fp
let $aids := request:param-values("aid")
let $dimensions :=  for $p in request:param-names()
                    return
                        if (contains($p, ":"))
                        then
                            {
                                let $default := ends-with(lower-case($p), ":default")
                                let $all := ((request:param-values($p) ! upper-case($$)) = "ALL")
                                return
                                (
                                    if ($default) then substring-before($p, ":default")
                                    else $p
                                ) !
                                {
                                   $$ : {| 
                                            (
                                                { Name : $$ }, 
                                                if ($default)
                                                then { Default : request:param-values($p)[1] }
                                                else if ($all)
                                                then ()
                                                else { Members : [ request:param-values($p) ] }
                                            )
                                        |}
                                }
                            } 
                        else ()
let $concepts := request:param-values("concept")
let $map      := request:param-values("map")[1]
return 
  if (empty($concepts))
  then {
    response:status-code(400);
    session:error("concept: missing parameter", $format)
  } else
    let $archives := (
        archives:archives($aids)
    )
    let $entities := (
        companies:companies($ciks),
        companies:companies-for-tags($tags),
        companies:companies-for-tickers($tickers),
        companies:companies-for-SIC($sics),
        if (exists($archives)) then companies:companies($archives.Entity) else () 
    )
    return switch(true)
      case empty($entities) or empty($archives) return {
        response:status-code(404);
        session:error("entities or archives not found (valid parameters: cik, ticker, tag, sic, aid)", $format)
      }
      case not (session:only-dow30($entities) or session:valid()) return {
        response:status-code(401);
        session:error("accessing facts of an entity that is not in the DOW30", $format)
      }
      default return
        let $facts := local:facts(
            $entities, $archives,
            $fiscalPeriods, $fiscalYears,
            $concepts, $dimensions, $map)
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
                    session:comment("json")
                |}
            }