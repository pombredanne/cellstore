jsoniq version "1.0";

import module namespace components = "http://28.io/modules/xbrl/components";

import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace sec-networks = "http://28.io/modules/xbrl/profiles/sec/networks";

import module namespace response = "http://www.28msec.com/modules/http-response";

import module namespace session = "http://apps.28.io/session";
import module namespace util = "http://secxbrl.info/modules/util";

(: Query parameters :)
declare  %rest:case-insensitive                 variable $format             as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $cik                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $tag                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker             as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $sic                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $fiscalYear         as string* external := "LATEST";
declare  %rest:case-insensitive %rest:distinct  variable $fiscalPeriod       as string* external := "FY";
declare  %rest:case-insensitive %rest:distinct  variable $aid                as string* external;
declare  %rest:case-insensitive                 variable $networkIdentifier  as string* external;
declare  %rest:case-insensitive                 variable $cid                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $concept            as string* external;
declare  %rest:case-insensitive                 variable $disclosure         as string* external;
declare  %rest:case-insensitive                 variable $validate           as boolean external := false;
declare  %rest:case-insensitive                 variable $eliminate          as boolean external := false;
declare  %rest:case-insensitive %rest:distinct  variable $reportElement      as string* external;
declare  %rest:case-insensitive                 variable $label              as string* external;

session:audit-call();

(: Post-processing :)
let $format as string? := util:preprocess-format($format)
let $fiscalYear as integer* := util:preprocess-fiscal-years($fiscalYear)
let $fiscalPeriod as string* := util:preprocess-fiscal-periods($fiscalPeriod)
let $tag as string* := util:preprocess-tags($tag)
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
