import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace conversion = "http://xbrl.io/modules/bizql/conversion";
import module namespace reports = "http://xbrl.io/modules/bizql/reports";
import module namespace components2 = "http://xbrl.io/modules/bizql/components2";

import module namespace response = "http://www.28msec.com/modules/http-response";

import module namespace session = "http://apps.28.io/session";
import module namespace util = "http://secxbrl.info/modules/util";

session:audit-call();

(: Query parameters :)
let $parameters as object := util:parameters()

(: Object resolution :)
let $entities as object* := util:entities($parameters.CIKs[], $parameters.Tags[], $parameters.Tickers[], $parameters.SICs[], $parameters.AIDs[])
let $report as object? := reports:reports($parameters.Report)

(: Fact resolution :)
let $filter-override as object? :=
    util:filter-override($entities, $parameters.FiscalPeriods[], $parameters.FiscalYears[], $parameters.AIDs[])
let $filtered-aspects := 
    let $report := reports:reports($report)
    let $hypercube := hypercubes:hypercubes-for-components($report, "xbrl:DefaultHypercube")
    return values($hypercube.Aspects)[exists(($$.Domains, $$.DomainRestriction))]
let $facts := (
        components2:facts(
            $report,
            {
                FilterOverride: $filter-override,
                Validate: $parameters.Validate
            }
        )[exists($filter-override)],
        if(count($filtered-aspects) ge 2 and not exists($filter-override))
        then components2:facts(
            $report,
            {
                Validate: $parameters.Validate
            }
        )
        else ())
let $facts :=
    for $fact in $facts
    group by $archive := $fact.Archive
    let $archive := archives:archives($archive)
    let $entity := entities:entities($archive.Entity)
    for $fact in $fact
    return
    {|
        project($fact, "Aspects"),
        { Type: $fact.Type },
        { Unit: $fact.Aspects."xbrl:Unit" }[exists($fact.Aspects."xbrl:Unit")],
        project($fact, ("Decimals", "Value")),
        { "EntityRegistrantName" : $entity.Profiles.SEC.CompanyName },
        project($fact, "AuditTrails")
    |}
let $results :=
        if(count($filtered-aspects) lt 2 and not exists($filter-override))
        then {
              response:status-code(403);
              session:error("The report filters are too weak, which leads to too big an output.", $parameters.Format)
        }
        else {
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
        }
return
    util:check-and-return-results($entities, $results, $parameters.Format)
