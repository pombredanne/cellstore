import module namespace req = "http://www.28msec.com/modules/http-request";

import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace networks = "http://xbrl.io/modules/bizql/networks";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";


(:
  Computes the extension usage for an archive and a component.
:)
declare function local:gatherExtensionUsage(
    $archive as object,
    $components as object*
) as object {
    let $calcNetworks := networks:networks-for-components-and-short-names($components, $networks:CALCULATION_NETWORK)
    let $presentationNetworks := networks:networks-for-components-and-short-names($components, $networks:PRESENTATION_NETWORK)
    let $presentationTags := local:factualTreeTags($archive,$presentationNetworks)
    let $rankedCalculationTags := local:rankCalcTags($archive,$calcNetworks.Trees,1)
    let $qtyConcepts := count($presentationTags)
    let $qtyExtConcepts := count($presentationTags[$$.isExtension=true]) 
    let $percentExtUsage := try { ($qtyExtConcepts div $qtyConcepts) * 100 } catch * { 0 }
    let $rankedExtTags := {
        for $factualTag in $presentationTags[$$.isExtension=true], 
            $calcTag allowing empty in $rankedCalculationTags[$$.name eq $factualTag.name]
        let $rank := if(exists($calcTag)) then $calcTag.rank else 0
        order by $rank
        return {name: $factualTag.name, label:  $factualTag.label, rank: $rank}
    }
    return {
        statement: $components.Profiles.SEC.Disclosure,
        role: $components.Role,
        label: $components.Label,
        qtyConcepts: $qtyConcepts, 
        qtyExtConcepts: $qtyExtConcepts, 
        percentExtUsage: $percentExtUsage, 
        tags: [$rankedExtTags]
    }
};

(:
 Recursively retrieves, out of a network tree, fact information
 (name, label, whether it is an extension)
:)
declare function local:factualTreeTags(
    $archive as object,
    $networks as object*
) as object* {
    let $trees := $networks.Trees
    let $concepts := descendant-objects($trees)[exists($$.Name)]
    let $labels-by-names := {| for $c in $concepts
                             group by $n := $c.Name
                             return { $n: $c.Label[1] }
                            |}
    let $facts := sec:facts-for-archives-and-concepts($archive,$concepts.Name) (: opt3 :)
    let $facts-no-duplicates :=
        for $fact in $facts
        group by $n := $fact.Aspects."xbrl:Concept"
        return $fact[1]
    for $fact in $facts-no-duplicates
    let $concept := $fact.Aspects."xbrl:Concept"
    return
    {
        name: $concept,
        label: $labels-by-names.$concept,
        isExtension: $fact.Profiles.SEC.IsExtension
    }
};

(:
 Recursively retrieves, out of a network tree, fact information
 (name, level in the tree)
:)
declare function local:rankCalcTags($archive as object, $trees as object*, $level as integer) as object* {
    for $key in keys($trees)
    let $tree := $trees.$key
    let $children := if(exists($tree.To))
                     then local:rankCalcTags($archive, $tree.To, ($level + 1))
                     else ()
    let $parent := {
        name: $tree.Name,
        rank: $level
    } 
    return ($parent, $children)
}; 



 (:This is Goldman-Sacks, uncomment to force analysis, otherwise DOW30 is analyzed :) 
let $cik :=  req:param-values("cik","0000886982") 
(:let $cik := req:param-values("cik"):)

let $stockIndex :=  let $stockIndex := req:param-values("$stockIndex")
                    return  switch(true)
                                case (empty($cik) and empty($stockIndex))
                                    return "DOW30"
                                case (exists($cik) and exists($stockIndex))
                                    return error(QName("local:INVALID-REQUEST"), "please specify cik or stockIndex, not both")
                                case (exists($cik) and empty($stockIndex))
                                    return ()
                                default return $stockIndex
 
let $stockIndexEntities :=  let $stockIndexEntities := companies:companies-for-tags($stockIndex)
                            return  if(exists($stockIndex) and empty($stockIndexEntities)) (: opt1 :)
                                    then error(QName("local:INVALID-REQUEST"), "Unknown stock index: "||$stockIndex )
                                    else $stockIndexEntities
                                        
let $cikEntity:=    let $cikEntity :=   if(exists($cik))
                                        then entities:entities(sec:normalize-cik($cik))
                                        else ()
                    return  if(exists($cik) and empty($cikEntity))
                            then error(QName("local:INVALID-REQUEST"), "Given CIK:"||$cik|| " not found")
                            else $cikEntity
                                
let $entities := if(exists($stockIndex)) then $stockIndexEntities else $cikEntity
                                    
let $periodFocus := let $periodFocus := req:param-values("fiscalPeriodFocus","FY")
                    return  if (empty($periodFocus))
                            then error(QName("local:INVALID-REQUEST"),"fiscalPeriodFocus: mandatory parameter not found")
                            else $periodFocus

let $yearFocus :=   let $yearFocus := req:param-values("fiscalYearFocus","2012") cast as integer
                    return  if (empty($yearFocus))
                            then error(QName("local:INVALID-REQUEST"), "fiscalYearFocus: mandatory parameter not found")
                            else $yearFocus

let $archives :=    let $try := sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entities, $periodFocus, $yearFocus)
                    return if (empty($try))
                           then  error(QName("local:INVALID-REQUEST"), "Filings not found")
                           else  $try

let $compiledByCompany :=
    for $archive in $archives
    let $faceFinancials :=  components:components-for-archives($archive)    
    let $extUsageStatsForFaceFinancials :=
        for $faceFinancial in $faceFinancials[$$.Profiles.SEC.Disclosure ne "DefaultComponent"] (: opt2 :)
        return local:gatherExtensionUsage($archive,$faceFinancial)
    let $entity := $entities[$$._id eq $archive.Entity]
    return {
         companyName : $entity.Profiles.SEC.CompanyName,
         cik : $entity.Profiles.SEC.CompanyName,
         accessionNumber : $archive._id, 
         extensionsByStatement: [$extUsageStatsForFaceFinancials]
    }
return {
    fiscalYear : $yearFocus, 
    fiscalPeriod : $periodFocus,
    stockIndex : if(exists($stockIndex)) then $stockIndex else "N/A",
    statementExtensionsByCompany: [$compiledByCompany]
}