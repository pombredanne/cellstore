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
import module namespace rules = "http://28.io/modules/xbrl/rules";

import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace sec-networks = "http://28.io/modules/xbrl/profiles/sec/networks";

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
let $reportElements as string* := distinct-values(request:param-values("reportElement"))
let $disclosures as string*   := request:param-values("disclosure")
let $search as string*        := request:param-values("label")
let $rollups as string*       := distinct-values(request:param-values("rollup"))
let $map as string?           := request:param-values("map")
let $additional-rules as string? := request:param-values("additional-rules")
let $validate as string       := request:param-values("validate", "false")
let $labels as string         := request:param-values("labels", "false")

(: Post-processing :)
let $format as string? := (: backwards compatibility, to be deprecated  :)
    lower-case(($format, substring-after(request:path(), ".jq."))[1])
let $tags as string* := (: backwards compatibility, to be deprecated :)
    distinct-values($tags ! upper-case($$))
let $fiscalYears as integer* :=
    for $fy in $fiscalYears ! upper-case($$)
    return switch($fy)
           case "LATEST" return $fiscal-core:LATEST_FISCAL_YEAR
           case "ALL" return $fiscal-core:ALL_FISCAL_YEARS
           default return if($fy castable as integer) then integer($fy) else ()
let $fiscalPeriods as string* :=
    for $fp in $fiscalPeriods ! upper-case($$)
    return switch($fp)
           case "ALL" return $fiscal-core:ALL_FISCAL_PERIODS
           default return $fp
let $reportElements := ($reportElements, $concepts)
let $validate as boolean := $validate = "true"
let $labels as boolean := $labels = "true"

(: Object resolution :)
let $entities as object* := 
    companies:companies(
        $ciks,
        $tags,
        $tickers,
        $sics)
let $archive as object? := fiscal-core:filings(
    $entities,
    $fiscalPeriods,
    $fiscalYears,
    $aids)
let $entity    := entities:entities($archive.Entity)
let $components  := sec-networks:components(
    $archive,
    $cids,
    $reportElements,
    $disclosures,
    $roles,
    $search)
let $component as object? := $components[1] (: only one for know :)
let $cid as string? := components:cid($component)
let $rules as object* := if(exists($additional-rules)) then rules:rules($additional-rules) else ()

(: Fact resolution :)
let $facts :=
    if (exists($rollups))
         then 
             let $calc-network := networks:networks-for-components-and-short-names($component, $networks:CALCULATION_NETWORK)
             let $hc := hypercubes:hypercubes-for-components($component, "xbrl:DefaultHypercube")
             let $hc := hypercubes:modify-hypercube($hc, {
                 "sec:FiscalYear" : { Type: "integer", Default: null },
                 "sec:FiscalPeriod" : { Type: "string", Default: null }
             })
             let $options as object? := if(exists($rules)) then { Rules: [ $rules ] } else ()
             let $p := hypercubes:populate-networks-with-facts($calc-network, $hc, $archive, $options)
             let $map := concept-maps:concept-maps($map)
             let $concepts := 
                if (not $map instance of null)
                then
                    for $d in $rollups[]
                    return
                        keys(descendant-objects($p)[$$.Name = keys($map.Trees($d).To)][1].To)
                else
                    for $d in $rollups[]
                    return ($d, keys(descendant-objects($p)[$$.Name eq $d].To))
             return sec:facts-for-archives-and-concepts($archive, $concepts, { Hypercube: $hc })
         else components:facts(
            $component,
            {|
                {
                    Validate: $validate,
                    FilterOverride : {
                        "sec:FiscalPeriod" : { Type: "string", Default: null },
                        "sec:FiscalYear" : { Type: "string", Default: null }
                    }
                },
                if(exists($rules))
                then { Rules : [ $rules ] }
                else ()
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
            concepts:labels-for-facts($fact, $component, $concepts:STANDARD_LABEL_ROLE,
                "en-US", $concepts, ())
        return 
            {|
                trim($fact, "Labels"),
                { Labels : $labels }
            |}
let $facts := util:normalize-facts($facts)

let $results :=
    switch ($format)
    case "xml" return {
        response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
        (session:comment("xml", {
                    NumFacts : count($facts),
                    TotalNumFacts: session:num-facts(),
                    TotalNumArchives: session:num-archives(),
                    TotalNumEntities: session:num-entities()
                }),
        <FactTable entityRegistrantName="{$entity.Profiles.SEC.CompanyName}"
            cik="{$entity._id}"
            tableName="{sec-networks:tables($component, {IncludeImpliedTable: true}).Name}"
            label="{$component.Label}"
            accessionNumber="{$component.Archive}"
            networkIdentifier="{$component.Role}"
            formType="{$archive.Profiles.SEC.FormType}"
            fiscalPeriod="{$archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus}"
            fiscalYear="{$archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus}" 
            acceptanceDatetime="{filings:acceptance-dateTimes($archive)}"
            disclosure="{$component.Profiles.SEC.Disclosure}"
            >{
            conversion:facts-to-xml($facts, { Caller: "Component" })
        }</FactTable>)
    }
    case "text" case "csv" return {
        response:content-type("text/csv");
        response:header("Content-Disposition", "attachment; filename=facttable-" || $cid || ".csv");
        conversion:facts-to-csv($facts, { Caller: "Component"})
    }
    case "excel" return {
        response:content-type("application/vnd.ms-excel");
        response:header("Content-Disposition", "attachment; filename=facttable-" || $cid || ".csv");
        conversion:facts-to-csv($facts, { Caller: "Component"})
    }
    default return {
        response:content-type("application/json");
        response:serialization-parameters({"indent" : true});
        {|
            {
                CIK : $entity._id,
                EntityRegistrantName : $entity.Profiles.SEC.CompanyName,
                TableName : sec-networks:tables($component, {IncludeImpliedTable: true}).Name,
                Label : $component.Label,
                AccessionNumber : $component.Archive,
                FormType : $archive.Profiles.SEC.FormType,
                FiscalPeriod : $archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus,
                FiscalYear : $archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus,
                AcceptanceDatetime : filings:acceptance-dateTimes($archive),
                NetworkIdentifier: $component.Role,
                Disclosure : $component.Profiles.SEC.Disclosure,
                FactTable : [ $facts ]
            },
            session:comment(
                "json",
                {
                    NumFacts : count($facts),
                    TotalNumFacts: session:num-facts(),
                    TotalNumArchives: session:num-archives(),
                    TotalNumEntities: session:num-entities()
                }
            )
        |}
    }
return util:check-and-return-results($entity, $results, $format)
