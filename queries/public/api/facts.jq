import module namespace util = "http://secxbrl.info/modules/util";
import module namespace session = "http://apps.28.io/session";

import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace hypercubes2 = "http://xbrl.io/modules/bizql/hypercubes2";
import module namespace conversion = "http://xbrl.io/modules/bizql/conversion";

import module namespace core = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";

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
        conversion:facts-to-xml($o, { Caller: "Report"})
    }</FactTable>)
};

declare function local:contains-aspect($name as string) as boolean
{
  some $x in (request:param-names() ! starts-with($$, $name))
  satisfies $x
};

declare function local:cast($value as string, $type as string) as atomic
{
  switch ($type)
  case "integer" return $value cast as integer
  default return error(xs:QName("local:unsupported-type"), $type || ": unsupported type")
};

declare function local:hypercube() as object
{
    hypercubes:user-defined-hypercube({|
        let $concepts := (request:param-values("concept"), request:param-values("xbrl:Concept"))
        return
            if (exists($concepts))
            then { "xbrl:Concept" : { Domain : [ $concepts ] } }
            else (),

        if (not(request:param-names() = "dei:LegalEntityAxis"))
        then {
                "dei:LegalEntityAxis" : {
                    "Domain" : [ "sec:DefaultLegalEntity" ],
                    "Default" : "sec:DefaultLegalEntity"
                }
        } else (),

        if (not(local:contains-aspect("sec:Accepted")))
        then { "sec:Accepted" : {  } } else (),

        if (not(local:contains-aspect("sec:FiscalYear")))
        then { "sec:FiscalYear" : {  } } else (),

        if (not(local:contains-aspect("sec:FiscalPeriod")))
        then { "sec:FiscalPeriod" : {  } } else (),

        for $p in request:param-names()
        where contains($p, ":") and not(starts-with($p, "xbrl:Concept"))
        group by $dimension-name := if (ends-with(lower-case($p), "::default"))
                                    then substring-before($p, "::default")
                                    else if (ends-with(lower-case($p), ":default"))
                                    then substring-before($p, ":default")
                                    else if (ends-with(lower-case($p), "::type"))
                                    then substring-before($p, "::type")
                                    else $p
        let $all := (request:param-values($dimension-name) ! upper-case($$)) = "ALL"
        let $type := (request:param-values($dimension-name || "::type"), request:param-values($dimension-name || ":type"))[1]
        return
        {
            $dimension-name : {|
                let $v := request:param-values($dimension-name)
                return
                    if (exists($v) and not($all))
                    then { "Domain" : [ if (exists($type)) then local:cast($v, $type) else $v ] }
                    else (),

            let $is-default := ($p = $dimension-name || "::default") or ($p = $dimension-name || ":default")
            let $default := (request:param-values($dimension-name || "::default"), request:param-values($dimension-name || ":default"))[1]
            return
                (if ($is-default)
                then {
                    "Default" : if (exists($type)) then local:cast($default, $type) else $default
                  } else (),
                if (exists($type))
                then { "Type" : $type }
                else ())
            |}
        }
    |})
};

declare function local:facts(
    $archives as object*,
    $map as string?,
    $rules as string?) as object*
{
    let $hypercube := hypercubes2:modify-hypercube(
        local:hypercube(),
        {
            "sec:Archive" : {
                Type: "string",
                Domain : [archives:aid($archives)]
            }
        }
    )
    for $fact in core:facts-for(
        {|
            { Hypercube : $hypercube },
            if (exists($map)) then { "ConceptMaps" : $map } else (),
            if (exists($rules)) then { "Rules" : $rules } else ()
        |}
    )
    return {|
        { Aspects : {|
            for $a in keys($fact.Aspects)
            where $a ne "xbrl:Unit"
            return { $a : $fact.Aspects.$a }
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
        if (exists(flatten($fact.AuditTrails[])))
        then { "AuditTrails" : $fact.AuditTrails }
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
    let $entities := if ($tags = "ALL") then companies:companies()
                                        else (
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

session:audit-call();

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
let $aids     := request:param-values("aid")
let $map      := request:param-values("map")[1]
let $rules    := request:param-values("rules")[1]
let $archives := (
                    local:filings($ciks, $tags, $tickers, $sics, $fiscalPeriods, $fiscalYears),
                    archives:archives($aids)
                 )
let $entities := companies:companies($archives.Entity)

let $results :=
    let $facts := local:facts($archives, $map, $rules)
    return
        switch ($format)
        case "xml" return {
            response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
            local:to-xml($facts)
        }
        case "text" case "csv" return {
            response:content-type("text/csv");
            response:header("Content-Disposition", "attachment; filename=facts.csv");
            conversion:facts-to-csv($facts, { Caller: "Report" })
        }
        case "excel" return {
            response:content-type("application/vnd.ms-excel");
            response:header("Content-Disposition", "attachment; filename=fact.csv");
            conversion:facts-to-csv($facts, { Caller: "Report" })
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
return 
    switch(true)
    case empty($archives) return {
        response:status-code(400);
        session:error("entities or archives not found (valid parameters: cik, ticker, tag, sic, aid)", $format)
    }
    default return util:check-and-return-results($entities, $results, $format)
