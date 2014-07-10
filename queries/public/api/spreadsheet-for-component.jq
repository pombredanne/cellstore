jsoniq version "1.0";

import module namespace sec-networks2 = "http://xbrl.io/modules/bizql/profiles/sec/networks2";
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
let $fiscalYears as string*   := distinct-values(request:param-values("fiscalYear", "LATEST"))
let $fiscalPeriods as string* := distinct-values(request:param-values("fiscalPeriod", "FY"))
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
let $entities as object? := util:entities-from-parameters($parameters, ())
let $components  := util:components-from-parameters($parameters, ())
let $component as object? := $components[1] (: only one for know :)

(: Fact resolution :)
let $definition-model := sec-networks2:standard-definition-models-for-components($component, {})
let $spreadsheet as object? :=
    components2:spreadsheet(
        $component,
        {
            FlattenRows: true,
            Eliminate: $parameters.Eliminate,
            Validate: $parameters.Validate,
            DefinitionModel: $definition-model
        })

let $results :=
        {
            response:content-type("application/json");
            response:serialization-parameters({"indent" : true});
            $spreadsheet
        }
return 
    util:check-and-return-results($entities, $results, $parameters.Format)