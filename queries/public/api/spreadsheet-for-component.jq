import module namespace components = "http://28.io/modules/xbrl/components";

import module namespace multiplexer = "http://28.io/modules/xbrl/profiles/multiplexer";
import module namespace sec-networks = "http://28.io/modules/xbrl/profiles/sec/networks";
import module namespace rules = "http://28.io/modules/xbrl/rules";

import module namespace response = "http://www.28msec.com/modules/http-response";

import module namespace config = "http://apps.28.io/config";
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
declare  %rest:case-insensitive %rest:distinct  variable $eid                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $aid                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $networkIdentifier  as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $cid                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $concept            as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $disclosure         as string* external;
declare  %rest:case-insensitive                 variable $validate           as boolean external := false;
declare  %rest:case-insensitive                 variable $eliminate          as boolean external := false;
declare  %rest:case-insensitive                 variable $merge              as boolean external := false;
declare  %rest:case-insensitive                 variable $elimination-threshold as integer external := 0;
declare  %rest:case-insensitive %rest:distinct  variable $reportElement      as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $label              as string* external;
declare  %rest:case-insensitive                 variable $additional-rules   as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $role               as string* external;
declare  %rest:case-insensitive                 variable $profile-name       as string  external := $config:profile-name;
declare  %rest:case-insensitive                 variable $language           as string  external := "en-US";
declare  %rest:case-insensitive                 variable $debug         as boolean external := false;

session:audit-call($token);

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $fiscalYear as integer* := api:preprocess-fiscal-years($fiscalYear)
let $fiscalPeriod as string* := api:preprocess-fiscal-periods($fiscalPeriod)
let $tag as string* := api:preprocess-tags($tag)
let $reportElement := ($reportElement, $concept)
let $networkIdentifier := distinct-values(($networkIdentifier, $role))

(: Object resolution :)
let $entities := multiplexer:entities(
  $profile-name,
  $eid,
  $cik,
  $tag,
  $ticker,
  $sic)

let $archives as object* := multiplexer:filings(
  $profile-name,
  $entities,
  $fiscalPeriod,
  $fiscalYear,
  $aid)

let $components  :=
    switch($profile-name)
    case "sec" return sec-networks:components(
        $archives,
        $cid,
        $reportElement,
        $disclosure,
        $networkIdentifier,
        $label)
    default return
        switch(true)
        case (exists($networkIdentifier) and exists($archives))
        return components:components-for-archives-and-roles($archives, $networkIdentifier)
        case exists($archives)
        return components:components-for-archives($archives)
        default
        return {
          response:status-code(400);
          session:error("Archive ID missing.", $format)
        }
let $component as object? := if($merge) then components:merge($components) else $components[1]
let $rules as object* := if(exists($additional-rules)) then rules:rules($additional-rules) else ()

return if(empty($component)) then {
    response:status-code(404);
    response:content-type("application/json");
    session:error("component not found", "json")
} else
(: Fact resolution :)
let $definition-model :=
switch($profile-name)
case "sec" return sec-networks:standard-definition-models-for-components($component, {})
default return components:standard-definition-models-for-components($component, {})
let $spreadsheet as object? :=
    components:spreadsheet(
        $component,
        {|
            {
                FlattenRows: true,
                Eliminate: $eliminate,
                EliminationThreshold: double($elimination-threshold) div 100,
                Validate: $validate,
                DefinitionModel: $definition-model,
                Language: $language,
                Debug: $debug
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
