import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace conversion = "http://xbrl.io/modules/bizql/conversion";
import module namespace reports = "http://xbrl.io/modules/bizql/reports";
import module namespace components2 = "http://xbrl.io/modules/bizql/components2";

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
let $roles as string*         := request:param-values("networkIdentifier")
let $cid as string?           := request:param-values("cid")
let $concepts as string*      := distinct-values(request:param-values("concept"))
let $rollups as string*       := distinct-values(request:param-values("rollup"))
let $map as string?           := request:param-values("map")
let $disclosures as string*   := request:param-values("disclosure")
let $validate as string       := request:param-values("validate", "false")
let $eliminate as string      := request:param-values("eliminate", "false")
let $report as string?        := request:param-values("report")
let $parameters := {|
    {
        CIKs: [ $ciks ],
        Tags: [ $tags ],
        Tickers: [ $tickers ],
        SICs: [ $sics ],
        FiscalYears: [ $fiscalYears ],
        FiscalPeriods: [ $fiscalPeriods ],
        AIDs: [ $aids ],
        Roles: [ $roles ],
        CIDs: [ $cid ],
        Concepts: [ $concepts ],
        RollUps: [ $rollups ],
        Disclosures: [ $disclosures ]
    },
    { Format: $format }[exists($format)],
    { Map: $map }[exists($map)],
    { Validate: $validate }[exists($validate)],
    { Eliminate: $eliminate }[exists($eliminate)],
    { Report: $report }[exists($report)] 
|}


(: Object resolution :)
let $parameters as object := util:process-parameters($parameters)
let $entities as object* := util:entities-from-parameters($parameters, { ResolveArchives: true })
let $report as object? := reports:reports($parameters.Report)

(: Fact resolution :)
let $filter-override as object? := util:filter-override-from-parameters($parameters, { ResolveArchives: true })
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
                    { Validate: $parameters.Validate }
                |}
            )

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
    switch ($parameters.Format)
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
    util:check-and-return-results($entities, $results, $parameters.Format)
