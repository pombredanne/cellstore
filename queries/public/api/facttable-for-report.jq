import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace conversion = "http://xbrl.io/modules/bizql/conversion";
import module namespace reports = "http://xbrl.io/modules/bizql/reports";
import module namespace components2 = "http://xbrl.io/modules/bizql/components2";

import module namespace companies2 = "http://xbrl.io/modules/bizql/profiles/sec/companies2";
import module namespace fiscal-core = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace fiscal-core2 = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core2";

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

(: Post-processing :)
let $format as string? := (: backwards compatibility, to be deprecated  :)
    lower-case(($format, substring-after(request:path(), ".jq."))[1])
let $tags as string* := (: backwards compatibility, to be deprecated :)
    distinct-values($tags ! upper-case($$))
let $fiscalYears as integer* :=
    for $fy in $fiscalYears ! upper-case($$)
    return switch($fy)
           case "LATEST" return $fiscal-core2:LATEST_FISCAL_YEAR
           case "ALL" return $fiscal-core:ALL_FISCAL_YEARS
           default return if($fy castable as integer) then integer($fy) else ()
let $fiscalPeriods as string* :=
    for $fp in $fiscalPeriods ! upper-case($$)
    return switch($fp)
           case "ALL" return $fiscal-core:ALL_FISCAL_PERIODS
           default return $fp
let $validate as boolean := $validate = "true"

(: Object resolution :)
let $entities := 
    for $entity in 
        companies2:companies(
            $ciks,
            $tags,
            $tickers,
            $sics)
    order by $entity.Profiles.SEC.CompanyName
    return $entity
let $report as object? := reports:reports($report)

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

<<<<<<< HEAD
=======
let $format      := lower-case((request:param-values("format"), substring-after(request:path(), ".jq."))[1])
let $ciks        := distinct-values(companies:eid(request:param-values("rut")))
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
let $fiscalPeriods := distinct-values(let $fp := request:param-values("fiscalPeriod", "FY")
                      return
                        if (($fp ! lower-case($$)) = "all")
                        then $sec-fiscal:ALL_FISCAL_PERIODS
                        else $fp)
let $aids        := archives:aid(request:param-values("aid"))
let $archives    := (
                        local:filings($ciks, $tags, $tickers, $sics, $fiscalPeriods, $fiscalYears),
                        archives:archives($aids)
                    )
let $entities    := entities:entities($archives.Entity)
let $report := request:param-values("report")
>>>>>>> cik/CIK -> rut/RUT
let $facts :=
    for $fact in $facts
    group by $archive := $fact.Archive
    let $archive := archives:archives($archive)
    let $entity := entities:entities($archive.Entity)
    for $fact in $fact
    return
    {|
        $fact,
        { "EntityRegistrantName" : $entity.Profiles.SEC.CompanyName }
    |}

let $facts := util:move-unit-out-of-aspects($facts)

let $results :=
    switch ($format)
    case "xml" return {
        response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
        session:comment("xml",
        {
            NumFacts : count($facts),
            TotalNumFacts: session:num-facts(),
            TotalNumArchives: session:num-archives(),
            TotalNumEntities: session:num-entities()
        }),
        <FactTable NetworkIdentifier="http://bizql.io/facttable-for-report"
                TableName="xbrl:FactTableForReport">{
            conversion:facts-to-xml($facts, { Caller: "Report" })
        }</FactTable>
    }
    case "text" case "csv" return {
        response:content-type("text/csv");
        response:header("Content-Disposition", "attachment; filename=facts.csv");
        conversion:facts-to-csv($facts, { Caller: "Report"})
    }
    case "excel" return {
        response:content-type("application/vnd.ms-excel");
        response:header("Content-Disposition", "attachment; filename=fact.csv");
        conversion:facts-to-csv($facts, { Caller: "Report"})
    }
    default return {
        response:content-type("application/json");
        response:serialization-parameters({"indent" : true});
        {|
            { NetworkIdentifier : "http://secxbrl.info/facts" },
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
return
    util:check-and-return-results($entities, $results, $format)
