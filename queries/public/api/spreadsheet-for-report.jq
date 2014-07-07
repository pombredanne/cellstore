import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace reports = "http://xbrl.io/modules/bizql/reports";
import module namespace components2 = "http://xbrl.io/modules/bizql/components2";

import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";

import module namespace session = "http://apps.28.io/session";
import module namespace util = "http://secxbrl.info/modules/util";

session:audit-call();

(: Query parameters :)
let $format         := lower-case((request:param-values("format"), substring-after(request:path(), ".jq."))[1])
let $ciks           := distinct-values(companies:eid(request:param-values("cik")))
let $tags           := distinct-values(request:param-values("tag") ! upper-case($$))
let $tickers        := distinct-values(request:param-values("ticker"))
let $sics           := distinct-values(request:param-values("sic"))
let $fiscalYears    := distinct-values(
                        request:param-values("fiscalYear")
                            [$$ = ("LATEST", "ALL") or $$ castable as integer]
                    )
let $fiscalPeriods  := distinct-values(let $fp := request:param-values("fiscalPeriod")
                      return
                        if (($fp ! lower-case($$)) = "all")
                        then $sec-fiscal:ALL_FISCAL_PERIODS
                        else $fp) 
let $aids           := archives:aid(request:param-values("aid"))
let $eliminate      := request:param-values("eliminate")
let $report         := request:param-values("report")
let $validate       := request:param-values("validate", "false")

(: Object resolution :)
let $entities := util:entities($ciks, $tags, $tickers, $sics, $aids)
let $report := reports:reports($report)

(: Fact resolution :)
let $filter-override as object? :=
    util:filter-override($entities, $fiscalPeriods, $fiscalYears, $aids)
let $report := reports:reports($report)
let $hypercube := hypercubes:hypercubes-for-components($report, "xbrl:DefaultHypercube")
let $filtered-aspects := values($hypercube.Aspects)[exists(($$.Domains, $$.DomainRestriction))]
let $spreadsheet as object? :=
    switch(true)

    case exists($filter-override)
    return
        components2:spreadsheet(
            $report,
            {
                FilterOverride: $filter-override,
                FlattenRows: true,
                Eliminate: boolean($eliminate eq "true"),
                Validate: boolean($validate eq "true")
            }
        )
    
    case count($filtered-aspects) ge 2
    return components2:spreadsheet(
        $report,
        {
            FlattenRows: true,
            Eliminate: boolean($eliminate eq "true"),
            Validate: boolean($validate eq "true")
        })
    
    default return ()
let $results :=
        if(count($filtered-aspects) lt 2 and not exists(($filter-override)))
        then {
              response:status-code(403);
              session:error("The report filters are too weak, which leads to too big an output.", $format)
        }
        else {
            switch ($format)
            case "xml" return {} (:)
                response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
                local:to-xml($spreadsheet)
            }
            case "text" case "csv" return {
                response:content-type("text/csv");
                response:header("Content-Disposition", "attachment; filename=facts.csv");
                conversion:facts-to-csv($spreadsheet, { Caller: "Report"})
            }
            case "excel" return {
                response:content-type("application/vnd.ms-excel");
                response:header("Content-Disposition", "attachment; filename=fact.csv");
                conversion:facts-to-csv($spreadsheet, { Caller: "Report"})
            }:)
            default return {
                response:content-type("application/json");
                response:serialization-parameters({"indent" : true});
                $spreadsheet
            }
        }
return
    util:check-and-return-results($entities, $results, $format)
