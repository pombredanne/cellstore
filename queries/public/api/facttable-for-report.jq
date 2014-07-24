(: SVS, partial, fix constants :)
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/svs/companies";
import module namespace svs-fiscal = "http://xbrl.io/modules/bizql/profiles/svs/fiscal/core";
import module namespace core = "http://xbrl.io/modules/bizql/profiles/svs/core";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";

import module namespace session = "http://apps.28.io/session";
import module namespace util = "http://secxbrl.info/modules/util";

session:audit-call();

(: Query parameters :)
let $format as string?        := request:param-values("format")
let $ciks as string*          := distinct-values(request:param-values("cik"))
let $tags as string*          := distinct-values(request:param-values("tag"))
let $tickers as string*       := distinct-values(request:param-values("ticker"))
let $sics as string*          := distinct-values(request:param-values("sic"))
let $fiscalYears as string*   := distinct-values(request:param-values("fiscalYear"))
let $fiscalPeriods as string* := distinct-values(request:param-values("fiscalPeriod"))
let $aids as string*          := distinct-values(request:param-values("aid"))
let $validate as string       := request:param-values("validate", "false")
let $report as string?        := request:param-values("report")

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
    return svs-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, $fp, $fy ! ($$ cast as integer))
};

(: Fact resolution :)
let $filter-override as object? := fiscal-core2:filter-override(
    $entities,
    $fiscalYears,
    $fiscalPeriods,
    $aids)
let $facts as object* :=
    let $hypercube := hypercubes:hypercubes-for-components($report, "xbrl:DefaultHypercube")
    let $filtered-aspects := values($hypercube.Aspects)[exists(($$.Domains, $$.DomainRestriction))]
    return if(count($filtered-aspects) lt 2 and not exists(($filter-override)))
    then {
          response:status-code(403);
          session:error("The report filters are too weak, which leads to too big an output.", $format)
    } else
        components2:facts(
                $report,
                {|
                    { FilterOverride: $filter-override }[exists($filter-override)],
                    { Validate: $validate }
                |}
            )

let $format      := lower-case((request:param-values("format"), substring-after(request:path(), ".jq."))[1])
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
let $aids        := archives:aid(request:param-values("aid"))
let $archives    := (
                        local:filings($ruts, $tags, $tickers, $sics, $fiscalPeriods, $fiscalYears),
                        archives:archives($aids)
                    )
let $entities    := entities:entities($archives.Entity)
let $report := request:param-values("report")
let $facts :=
    for $fact in $facts
    group by $archive := $fact.Archive
    let $archive := archives:archives($archive)
    let $entity    := entities:entities($archive.Entity)
    let $fp := $archive.Profiles.SVS.Fiscal.DocumentFiscalPeriodFocus 
    let $fy := $archive.Profiles.SVS.Fiscal.DocumentFiscalYearFocus
    for $fact in $fact
    return
    {|
        { Aspects : {|
            for $a in keys($fact.Aspects)
            return { $a : $fact.Aspects.$a },
            { "secxbrl:FiscalPeriod" : $fp },
            { "secxbrl:FiscalYear" : $fy }
        |} },
        { Type: $fact.Type },
        if (exists($fact.Aspects."xbrl:Unit"))
        then { Unit: $fact.Aspects."xbrl:Unit" }
        else  (),
        if (exists($fact.Decimals))
        then { Decimals: $fact.Decimals }
        else (), 
        { Value: $fact.Value },
        { "EntityRegistrantName" : $entity.Profiles.SVS.CompanyName },
        { "ReportedConcept" : $fact.AuditTrails[].Data.OriginalConcept[1] }
        
    |}
return 
    if (session:only-dow30($entities) or session:valid())
        then {
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
                    { NetworkIdentifier : "http://secxbrl.info/facts" }, (: SVS FIX ME :)
                    { TableName : "xbrl:Facts" },
                    { FactTable : [ $facts ] },
                    session:comment("json", {
                            NumFacts : count($facts),
                            TotalNumFacts: session:num-facts(),
                            TotalNumArchives: session:num-archives(),
                            TotalNumEntities: session:num-entities()
                        })
                |}
            }
        }
        else {
            response:status-code(401);
            session:error("accessing filings of an entity that is not in the DOW30", $format)
        }
