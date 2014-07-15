import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace reports = "http://xbrl.io/modules/bizql/reports";
import module namespace components2 = "http://xbrl.io/modules/bizql/components2";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";

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
let $entities := util:entities-from-parameters($parameters, { ResolveArchives: true })
let $report := reports:reports($report)
let $filter-override as object? := util:filter-override-from-parameters($parameters, { ResolveArchives: true })

(: Fact resolution :)
let $hypercube := hypercubes:hypercubes-for-components($report, "xbrl:DefaultHypercube")
let $filtered-aspects := values($hypercube.Aspects)[exists(($$.Domains, $$.DomainRestriction))]
let $spreadsheet as object? :=
    if(count($filtered-aspects) lt 2 and not exists(($filter-override)))
    then {
          response:status-code(403);
          session:error("The report filters are too weak, which leads to too big an output.", $parameters.Format)
    } else
        components2:spreadsheet(
            $report,
            {|
                { FilterOverride: $filter-override}[exists($filter-override)],
                {
                    FlattenRows: true,
                    Eliminate: boolean($eliminate eq "true"),
                    Validate: boolean($validate eq "true")
                }
            |}
        )
let $results :=
    {
        response:content-type("application/json");
        response:serialization-parameters({"indent" : true});
        $spreadsheet
    }
return
    util:check-and-return-results($entities, $results, $parameters.Format)
