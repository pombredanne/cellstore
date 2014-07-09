jsoniq version "1.0";

import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace components2 = "http://xbrl.io/modules/bizql/components2";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace hypercubes2 = "http://xbrl.io/modules/bizql/hypercubes2";
import module namespace conversion = "http://xbrl.io/modules/bizql/conversion";

import module namespace sec-networks = "http://xbrl.io/modules/bizql/profiles/sec/networks";
import module namespace networks = "http://xbrl.io/modules/bizql/networks";
import module namespace concept-maps = "http://xbrl.io/modules/bizql/concept-maps";

import module namespace response = "http://www.28msec.com/modules/http-response";

import module namespace session = "http://apps.28.io/session";
import module namespace util = "http://secxbrl.info/modules/util";

session:audit-call();

(: Query parameters :)
let $parameters as object := util:parameters()

(: Object resolution :)
let $entities as object* := util:entities($parameters.CIKs[], $parameters.Tags[], $parameters.Tickers[], $parameters.SICs[], ())
let $archive as object? :=
    (
        util:filings($entities, $parameters.FiscalYears[], $parameters.FiscalPeriods[]),
        archives:archives($parameters.AIDs[])
    )
let $entity as object? := entities:entities($archive.Entity)
let $components  :=
    (
    components:components($parameters.CID)[exists($parameters.CID)],
    if (exists(($parameters.Concepts[], $parameters.Disclosures[], $parameters.Roles[])))
    then (
            components2:components-by-archives-and-concepts($archive, $parameters.Concepts[]),
            sec-networks:networks-for-filings-and-disclosures($archive, $parameters.Disclosures[]),
            components2:components-by-archives-and-roles($archive, $parameters.Roles[])
        )
    else components:components-for-archives($archive))
let $component as object? := $components[1] (: only one for know :)
let $cid as string? := components:cid($component)

(: Fact resolution :)
let $facts :=
    if (exists($parameters.Rollups[]))
         then 
             let $calc-network := networks:networks-for-components-and-short-names($component, $networks:CALCULATION_NETWORK)
             let $hc := hypercubes:hypercubes-for-components($component, "xbrl:DefaultHypercube") (: sec-networks:tables($component).Name) :)
             let $hc := hypercubes2:modify-hypercube($hc, {
                 "sec:FiscalYear" : { Type: "integer", Default: null },
                 "sec:FiscalPeriod" : { Type: "string", Default: null }
             })
             let $p := hypercubes:populate-networks-with-facts($calc-network, $hc, $archive)
             let $map := concept-maps:concept-maps($parameters.Maps[])
             let $concepts := 
                if (not $parameters.Map instance of null)
                then
                    for $d in $parameters.Rollups[]
                    return
                        keys(descendant-objects($p)[$$.Name = keys($map.Trees($d).To)][1].To)
                else
                    for $d in $parameters.Rollups[]
                    return ($d, keys(descendant-objects($p)[$$.Name eq $d].To))
             return sec:facts-for-archives-and-concepts($archive, $concepts, { Hypercube: $hc })
         else components2:facts(
            $component,
            {
                Validate: $parameters.Validate
            }
        )
        
let $facts :=
    for $fact in $facts
    return {|
        {
            "Aspects" : {|
                trim($fact.Aspects, ("xbrl:Unit"))
            |}
        },
        trim($fact, ("Aspects")),
        { Unit: $fact.Aspects."xbrl:Unit" }[exists($fact.Aspects."xbrl:Unit")]
    |}
    
let $results :=
    switch ($parameters.Format)
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
            { CIK : $entity._id },
            { EntityRegistrantName : $entity.Profiles.SEC.CompanyName },
            { TableName : sec-networks:tables($component, {IncludeImpliedTable: true}).Name },
            { Label : $component.Label },
            { AccessionNumber : $component.Archive },
            { FormType : $archive.Profiles.SEC.FormType },
            { FiscalPeriod : $archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus },
            { FiscalYear : $archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus },
            { AcceptanceDatetime : filings:acceptance-dateTimes($archive) },
            { NetworkIdentifier: $component.Role },  
            { Disclosure : $component.Profiles.SEC.Disclosure },
            { FactTable : [ $facts ] },
            session:comment("json", {
                    NumFacts : count($facts),
                    TotalNumFacts: session:num-facts(),
                    TotalNumArchives: session:num-archives(),
                    TotalNumEntities: session:num-entities()
                })
        |}
    }
return util:check-and-return-results($entity, $results, $parameters.Format)
