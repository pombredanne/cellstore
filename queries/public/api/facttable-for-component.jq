jsoniq version "1.0";

import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace components2 = "http://xbrl.io/modules/bizql/components2";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace hypercubes2 = "http://xbrl.io/modules/bizql/hypercubes2";
import module namespace conversion = "http://xbrl.io/modules/bizql/conversion";
import module namespace networks = "http://xbrl.io/modules/bizql/networks";
import module namespace concept-maps = "http://xbrl.io/modules/bizql/concept-maps";

import module namespace fiscal-core = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace fiscal-core2 = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core2";
import module namespace companies2 = "http://xbrl.io/modules/bizql/profiles/sec/companies2";
import module namespace sec-networks = "http://xbrl.io/modules/bizql/profiles/sec/networks";
import module namespace sec-networks2 = "http://xbrl.io/modules/bizql/profiles/sec/networks2";

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
let $cids as string*       := request:param-values("cid")
let $concepts as string*      := distinct-values(request:param-values("concept"))
let $reportElements as string* := distinct-values(request:param-values("reportElement"))
let $disclosures as string*   := request:param-values("disclosure")
let $search as string*         := request:param-values("label")
let $rollups as string*       := distinct-values(request:param-values("rollup"))
let $map as string?           := request:param-values("map")
let $validate as string       := request:param-values("validate", "false")

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

<<<<<<< HEAD
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
=======
let $format      := lower-case((request:param-values("format"), substring-after(request:path(), ".jq."))[1])
let $ciks        := distinct-values(companies:eid(request:param-values("rut")))
let $tags        := distinct-values(request:param-values("tag") ! upper-case($$))
let $tickers     := distinct-values(request:param-values("ticker"))
let $sics        := distinct-values(request:param-values("sic"))
let $fiscalYears := distinct-values(
                        for $y in request:param-values("fiscalYear", "LATEST")
                        return
                            if ($y eq "LATEST" or $y eq "ALL")
                            then $y
                            else if ($y castable as integer)
                            then $y
                            else ()
                    )
let $fiscalPeriods := distinct-values(let $fp := request:param-values("fiscalPeriod", "FY")
                      return
                        if (($fp ! lower-case($$)) = "all")
                        then $fiscal:ALL_FISCAL_PERIODS
                        else $fp)
let $aids        := archives:aid(request:param-values("aid"))
let $roles       := request:param-values("networkIdentifier")
let $archives    := (
                        local:filings($ciks, $tags, $tickers, $sics, $fiscalPeriods, $fiscalYears),
                        archives:archives($aids)
                    )
let $cid         := request:param-values("cid")
let $concepts    := distinct-values(request:param-values("concept"))
let $rollup      := distinct-values(request:param-values("rollup"))
let $map         := request:param-values("map")
let $disclosures := request:param-values("disclosure")
let $components  := (if (exists($cid))
                    then components:components($cid)
                    else (),
                    if (exists($concepts) or exists($disclosures) or exists($roles))
                    then (
                            local:components-by-concepts($concepts, $archives._id), 
                            local:components-by-disclosures($disclosures, $archives._id),
                            local:components-by-roles($roles, $archives._id)
                        )
                    else components:components-for-archives($archives._id))
let $component := $components[1] (: only one for know :)
let $archive   := archives:archives($component.Archive)
>>>>>>> cik/CIK -> rut/RUT
let $entity    := entities:entities($archive.Entity)
let $components  := sec-networks2:components(
    $archive,
    $cids,
    $reportElements,
    $disclosures,
    $roles,
    $search)
let $component as object? := $components[1] (: only one for know :)
let $cid as string? := components:cid($component)

<<<<<<< HEAD
(: Fact resolution :)
let $facts :=
    if (exists($rollups))
         then 
             let $calc-network := networks:networks-for-components-and-short-names($component, $networks:CALCULATION_NETWORK)
             let $hc := hypercubes:hypercubes-for-components($component, "xbrl:DefaultHypercube")
             let $hc := hypercubes2:modify-hypercube($hc, {
                 "sec:FiscalYear" : { Type: "integer", Default: null },
                 "sec:FiscalPeriod" : { Type: "string", Default: null }
             })
             let $p := hypercubes:populate-networks-with-facts($calc-network, $hc, $archive)
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
         else components2:facts(
            $component,
            {
                Validate: $validate,
                FilterOverride : {
                    "sec:FiscalPeriod" : { Type: "string", Default: null },
                    "sec:FiscalYear" : { Type: "string", Default: null }
                }
            }
        )
        
let $facts := util:move-unit-out-of-aspects($facts)

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
=======
return
     if (session:only-dow30($entity) or session:valid())
     then {
        let $facts := if (exists($rollup))
                     then 
                         let $calc-network := networks:networks-for-components-and-short-names($component, $networks:CALCULATION_NETWORK)
                         let $hc := hypercubes:hypercubes-for-components($component, "xbrl:DefaultHypercube") (: sec-networks:tables($component).Name) :)
                         let $p := hypercubes:populate-networks-with-facts($calc-network, $hc, $archive)
                         let $map := concept-maps:concept-maps($map)
                         let $concepts := 
                            if (exists($map))
                            then
                                for $d in $rollup
                                return
                                    keys(descendant-objects($p)[$$.Name = keys($map.Trees($d).To)][1].To)
                            else
                                for $d in $rollup
                                return ($d, keys(descendant-objects($p)[$$.Name eq $d].To))
                         return sec:facts-for-archives-and-concepts($archive, $concepts, { Hypercube: $hc })
                     else sec-networks:facts($component, {||})
        let $fact-table :=  for $f in $facts
                            let $a := $f.Aspects
                            return {|
                                { "Aspects" : {|
                                    { "xbrl:Entity": $a."xbrl:Entity" },
                                    if (exists($a."dei:LegalEntityAxis")) then { "dei:LegalEntityAxis": $a."dei:LegalEntityAxis" } else (),
                                    { "xbrl:Period" : $a."xbrl:Period" },
                                    { "xbrl:Concept" : $a."xbrl:Concept" },
                                    for $k in keys($f.Aspects)
                                    where $k ne "xbrl:Unit" and $k ne "xbrl:Entity" and $k ne "dei:LegalEntityAxis" and 
                                          $k ne "xbrl:Period" and $k ne "xbrl:Concept"
                                    return { $k : $f.Aspects.$k }
                                |} },
                                { "Type" : $f.Type },
                                { "Value" : $f.Value },
                                if (exists($f.Decimals))
                                then { "Decimals" : $f.Decimals }
                                else (),
                                if (exists($f."Aspects"."xbrl:Unit"))
                                then { "Unit" : $f."Aspects"."xbrl:Unit" }
                                else ()
                            |}
        return 
            switch ($format)
            case "xml" return {
                response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
                (session:comment("xml", {
                            NumFacts : count($fact-table),
                            TotalNumFacts: session:num-facts(),
                            TotalNumArchives: session:num-archives(),
                            TotalNumEntities: session:num-entities()
                        }),
                <FactTable entityRegistrantName="{$entity.Profiles.SEC.CompanyName}"
                    rut="{$entity.RUT}"
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
                    local:to-xml($fact-table)
                }</FactTable>)
            }
            case "text" case "csv" return {
                response:content-type("text/csv");
                response:header("Content-Disposition", "attachment; filename=facttable-" || $cid || ".csv");
                local:to-csv($fact-table)
            }
            case "excel" return {
                response:content-type("application/vnd.ms-excel");
                response:header("Content-Disposition", "attachment; filename=facttable-" || $cid || ".csv");
                local:to-csv($fact-table)
            }
            default return {
                response:content-type("application/json");
                response:serialization-parameters({"indent" : true});
                {|
                    { RUT : $entity._id },
                    { EntityRegistrantName : $entity.Profiles.SEC.CompanyName },
                    { TableName : sec-networks:tables($component, {IncludeImpliedTable: true}).Name },
                    { Label : $component.Label },
                    { AccessionNumber : $component.Archive },
                    { FormType : $archive.Profiles.SEC.FormType },
                    { FiscalPeriod : $archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus },
                    { FiscalYear : $archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus },
                    (:{ AcceptanceDatetime : filings:acceptance-dateTimes($archive) },:)
                    { NetworkIdentifier: $component.Role },  
                    { Disclosure : $component.Profiles.SEC.Disclosure },
                    { FactTable : [ $fact-table ] },
                    session:comment("json", {
                            NumFacts : count($fact-table),
                            TotalNumFacts: session:num-facts(),
                            TotalNumArchives: session:num-archives(),
                            TotalNumEntities: session:num-entities()
                        })
                |}
            }
     } else {
        response:status-code(401);
        session:error("accessing fact table for an entity that is not in the DOW30", $format)
     }
>>>>>>> cik/CIK -> rut/RUT
