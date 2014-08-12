jsoniq version "1.0";

import module namespace components2 = "http://28.io/modules/xbrl/components2";
    
import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";
import module namespace fiscal-core2 = "http://28.io/modules/xbrl/profiles/sec/fiscal/core2";
import module namespace companies2 = "http://28.io/modules/xbrl/profiles/sec/companies2";
import module namespace sec-networks2 = "http://28.io/modules/xbrl/profiles/sec/networks2";

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
let $cids as string*          := request:param-values("cid")
let $concepts as string*      := distinct-values(request:param-values("concept"))
let $disclosures as string*   := request:param-values("disclosure")
let $validate as string       := request:param-values("validate", "false")
let $eliminate as string      := request:param-values("eliminate", "false")
let $reportElements as string* := distinct-values(request:param-values("reportElement"))
let $search as string*        := request:param-values("label")

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
let $reportElements := ($reportElements, $concepts)
let $validate as boolean := $validate = "true"
let $eliminate as boolean := $eliminate = "true"

(: Object resolution :)
let $entities as object* := 
    companies2:companies(
        $ciks,
        $tags,
        $tickers,
        $sics)
let $archive as object? := fiscal-core2:filings(
    $entities,
    $fiscalPeriods,
    $fiscalYears,
    $aids)
let $components  := sec-networks2:components(
    $archive,
    $cids,
    $reportElements,
    $disclosures,
    $roles,
    $search)
let $component as object? := $components[1] (: only one for know :)
return if(empty($component)) then {
    response:status-code(404);
    response:content-type("application/json");
    session:error("component not found", "json")
} else 
(: Fact resolution :)
let $definition-model := sec-networks2:standard-definition-models-for-components($component, {})
let $spreadsheet as object? :=
    components2:spreadsheet(
        $component,
        {
            FlattenRows: true,
            Eliminate: $eliminate,
            Validate: $validate,
            DefinitionModel: $definition-model,
                FilterOverride : {
                    "sec:FiscalPeriod" : { Type: "string", Default: null },
                    "sec:FiscalYear" : { Type: "string", Default: null }
                }
        })

let $results :=
        {
            response:content-type("application/json");
            response:serialization-parameters({"indent" : true});
            $spreadsheet
        }
return 
    util:check-and-return-results($entities, $results, $format)
