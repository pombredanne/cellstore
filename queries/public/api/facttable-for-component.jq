jsoniq version "1.0";

import module namespace components = "http://28.io/modules/xbrl/components";
import module namespace filings = "http://28.io/modules/xbrl/profiles/sec/filings";
import module namespace sec = "http://28.io/modules/xbrl/profiles/sec/core";
import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace hypercubes = "http://28.io/modules/xbrl/hypercubes";
import module namespace conversion = "http://28.io/modules/xbrl/conversion";
import module namespace networks = "http://28.io/modules/xbrl/networks";
import module namespace concept-maps = "http://28.io/modules/xbrl/concept-maps";
import module namespace concepts = "http://28.io/modules/xbrl/concepts";
import module namespace facts = "http://28.io/modules/xbrl/facts";
import module namespace rules = "http://28.io/modules/xbrl/rules";

import module namespace sec-networks = "http://28.io/modules/xbrl/profiles/sec/networks";
import module namespace multiplexer = "http://28.io/modules/xbrl/profiles/multiplexer";

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
declare  %rest:case-insensitive %rest:distinct  variable $reportElement      as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $disclosure         as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $label              as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $rollup             as string* external;
declare  %rest:case-insensitive                 variable $map                as string? external;
declare  %rest:case-insensitive                 variable $validate           as boolean external := false;
declare  %rest:case-insensitive                 variable $labels             as boolean external := false;
declare  %rest:case-insensitive                 variable $merge              as boolean external := false;
declare  %rest:case-insensitive                 variable $additional-rules   as string? external;
declare  %rest:case-insensitive                 variable $profile-name       as string  external := $config:profile-name;
declare  %rest:case-insensitive %rest:distinct  variable $role               as string* external;

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

let $entity    := entities:entities($archives.Entity)
let $components as object* :=
    multiplexer:components(
      $profile-name,
      $archives,
      $cid,
      $reportElement,
      $disclosure,
      $networkIdentifier,
    $label)

let $component as object? := if($merge) then components:merge($components) else $components[1]
let $cid as string? := string-join($components ! components:cid($$), "--")
let $rules as object* := if(exists($additional-rules)) then rules:rules($additional-rules) else ()

(: Fact resolution :)
let $facts :=
    if (exists($rollup) and $profile-name eq "sec")
         then
             let $calc-network := networks:networks-for-components-and-short-names($component, $networks:CALCULATION_NETWORK)
             let $hc := hypercubes:hypercubes-for-components($component, "xbrl:DefaultHypercube")
             let $hc := hypercubes:modify-hypercube($hc, {
                 "sec:FiscalYear" : { Type: "integer", Default: null },
                 "sec:FiscalPeriod" : { Type: "string", Default: null },
                 "sec:FiscalPeriodType" : { Type: "string", Default: null }
             })
             let $options as object? := if(exists($rules)) then { Rules: [ $rules ] } else ()
             let $p := hypercubes:populate-networks-with-facts($calc-network, $hc, $archives, $options)
             let $map := concept-maps:concept-maps($map)
             let $concepts :=
                if (not $map instance of null)
                then
                    for $d in $rollup[]
                    return
                        keys(descendant-objects($p)[$$.Name = keys($map.Trees($d).To)][1].To)
                else
                    for $d in $rollup[]
                    return ($d, keys(descendant-objects($p)[$$.Name eq $d].To))
             return sec:facts-for-archives-and-concepts($archives, $concepts, { Hypercube: $hc })
         else components:facts(
            $component,
            {|
                {
                    FilterOverride : {
                        "sec:FiscalPeriod" : { Type: "string", Default: null },
                        "sec:FiscalYear" : { Type: "string", Default: null },
                        "sec:FiscalPeriodType" : { Type: "string", Default: null }
                    }
                }[$profile-name eq "sec"],
                { Validate: $validate },
                { Rules : [ $rules ] }[exists($rules)]
            |}
        )

let $facts :=
    if(not $labels)
    then $facts
    else
        (: if labels are requested by the labels=true parameter then also add labels for concepts :)
        let $concepts as object* :=
            concepts:concepts-for-components($concepts:ALL_CONCEPT_NAMES, $component)
        for $fact in $facts
        let $labels :=
            facts:labels($fact, $component.Role, $concepts:STANDARD_LABEL_ROLE,$concepts:AMERICAN_ENGLISH, $concepts, ())
        return
            {|
                trim($fact, "Labels"),
                { Labels : $labels }
            |}
let $facts := api:normalize-facts($facts)

let $result :=
        {|
            {
                CIK : $entity._id,
                EntityRegistrantName : $entity.Profiles.SEC.CompanyName,
                TableName : sec-networks:tables($component, {IncludeImpliedTable: true}).Name,
                Label : $component.Label,
                AccessionNumber : $component.Archive,
                FormType : $archives.Profiles.SEC.FormType,
                FiscalPeriod : $archives.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus,
                FiscalYear : $archives.Profiles.SEC.Fiscal.DocumentFiscalYearFocus,
                AcceptanceDatetime : ($archives ! filings:acceptance-dateTimes($$)),
                NetworkIdentifier: $component.Role,
                Disclosure : $component.Profiles.SEC.Disclosure,
                FactTable : [ $facts ]
            }[$profile-name eq "sec"],
            {
                Archive : $component.Archive,
                Role: $component.Role,
                TableName : keys($component.Hypercubes),
                Label : $component.Label,
                FactTable : [ $facts ]
            }[$profile-name ne "sec"]
        |}

let $comment := {
    NumFacts : count($facts),
    TotalNumFacts: session:num-facts(),
    TotalNumArchives: session:num-archives(),
    TotalNumEntities: session:num-entities()
}

let $serializers := {
    to-xml : function($res as object) as node() {
        switch($profile-name)
        case "sec" return <FactTable entityRegistrantName="{$res.EntityRegistrantName}"
            cik="{$res.CIK}"
            tableName="{$res.TableName}"
            label="{$res.Label}"
            accessionNumber="{$res.AccessionNumber}"
            networkIdentifier="{$res.NetworkIdentifier}"
            formType="{$res.FormType}"
            fiscalPeriod="{$res.FiscalPeriod}"
            fiscalYear="{$res.FiscalYear}"
            acceptanceDatetime="{$res.AcceptanceDatetime}"
            disclosure="{$res.Disclosure}"
            >{
            conversion:facts-to-xml($res.FactTable[], { Caller: "Component" })
        }</FactTable>
        default return <FactTable
            tableName="{$res.TableName}"
            label="{$res.Label}"
            archive="{$res.Archive}"
            role="{$res.Role}"
            >{
            conversion:facts-to-xml($res.FactTable[], { Caller: "Component" })
        }</FactTable>
    },
    to-csv : function($res as object) as string {
        string-join(conversion:facts-to-csv($res.FactTable[], { Caller: "Component"}))
    }
}
return api:serialize($result, $comment, $serializers, $format, "facttable-" || $cid)
