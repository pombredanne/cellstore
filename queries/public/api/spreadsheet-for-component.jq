import module namespace components = "http://28.io/modules/xbrl/components";

import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace sec-networks = "http://28.io/modules/xbrl/profiles/sec/networks";
import module namespace rules = "http://28.io/modules/xbrl/rules";

import module namespace response = "http://www.28msec.com/modules/http-response";

import module namespace session = "http://apps.28.io/session";
import module namespace api = "http://apps.28.io/api";

(: Query parameters :)
declare  %rest:case-insensitive                 variable $token              as string? external;
declare  %rest:env                              variable $request-uri        as string  external;
declare  %rest:case-insensitive                 variable $format             as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $cik                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $tag                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker             as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $sic                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $fiscalYear         as string* external := "LATEST";
declare  %rest:case-insensitive %rest:distinct  variable $fiscalPeriod       as string* external := "FY";
declare  %rest:case-insensitive %rest:distinct  variable $aid                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $networkIdentifier  as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $cid                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $concept            as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $disclosure         as string* external;
declare  %rest:case-insensitive                 variable $validate           as boolean external := false;
declare  %rest:case-insensitive                 variable $eliminate          as boolean external := false;
declare  %rest:case-insensitive %rest:distinct  variable $reportElement      as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $label              as string* external;
declare  %rest:case-insensitive                 variable $additional-rules   as string? external;

session:audit-call($token);

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $fiscalYear as integer* := api:preprocess-fiscal-years($fiscalYear)
let $fiscalPeriod as string* := api:preprocess-fiscal-periods($fiscalPeriod)
let $tag as string* := api:preprocess-tags($tag)
let $reportElement := ($reportElement, $concept)

(: Object resolution :)
let $entities as object* := 
    companies:companies(
        $cik,
        $tag,
        $ticker,
        $sic)
let $archive as object? := fiscal-core:filings(
    $entities,
    $fiscalPeriod,
    $fiscalYear,
    $aid)
let $components  := sec-networks:components(
    $archive,
    $cid,
    $reportElement,
    $disclosure,
    $networkIdentifier,
    $label)
let $component as object? := $components[1] (: only one for know :)
let $rules as object* := if(exists($additional-rules)) then rules:rules($additional-rules) else ()

return if(empty($component)) then {
    response:status-code(404);
    response:content-type("application/json");
    session:error("component not found", "json")
} else 
(: Fact resolution :)
let $definition-model := sec-networks:standard-definition-models-for-components($component, {})
let $spreadsheet as object? :=
    components:spreadsheet(
        $component,
        {|
            {
                FlattenRows: true,
                Eliminate: $eliminate,
                Validate: $validate,
                DefinitionModel: $definition-model,
                FilterOverride : {
                    "sec:FiscalPeriod" : { Type: "string", Default: null },
                    "sec:FiscalYear" : { Type: "string", Default: null }
                }
            },
            if(exists($rules))
            then { Rules : [ $rules ] }
            else ()
        |})

let $results :=
        {
            response:content-type("application/json");
            response:serialization-parameters({"indent" : true});
            $spreadsheet
        }
return api:check-and-return-results($token, $results, $format)
