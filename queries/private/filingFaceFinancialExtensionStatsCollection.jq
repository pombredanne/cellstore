import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace networks = "http://xbrl.io/modules/bizql/networks";
import module namespace components = "http://xbrl.io/modules/bizql/components";
declare namespace ext = "http://zorba.io/extensions";

declare function local:compileFilingStats($archive) {
    let $faceFinancials :=  components:components-for-archives($archive)[$$.Profiles.SEC.Disclosure][$$.Profiles.SEC.Disclosure ne "DefaultComponent"]
    let $presentationNetworks := networks:networks-for-components-and-short-names($faceFinancials, $networks:PRESENTATION_NETWORK)
    let $presentationTags := local:factualTreeTags($archive,$presentationNetworks)
    let $qtyStdConcepts := count($presentationTags[$$.isExtension eq false])
    let $qtyExtConcepts := count($presentationTags[$$.isExtension])
    let $qtyConcepts := $qtyStdConcepts+$qtyExtConcepts 
    let $percentExtUsage :=  try { ($qtyExtConcepts div $qtyConcepts)*100 } catch* { -1} 
    return {
        periodFocus : $archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus,
        yearFocus : $archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus,
        filingDate: $archive.Profiles.SEC.FilingDate,
        generator: $archive.Profiles.SEC.Generator,   
        qtyStandardConcepts: $qtyStdConcepts,
        qtyExtensionConcepts: $qtyExtConcepts,
        percentExtensionUsage: $percentExtUsage
    }
};
declare function local:factualTreeTags(
    $archive as object,
    $networks as object*
) as object+ {
    let $trees := $networks.Trees
    let $concepts := descendant-objects($trees)[exists($$.Name)]
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
        isExtension: $fact.Profiles.SEC.IsExtension
    }
};

if(is-available-collection("filingFaceFinancialsExtensionStats"))
then truncate("filingFaceFinancialsExtensionStats");
else create("filingFaceFinancialsExtensionStats");

(# ext:no-materialization #) {

for tumbling window $entities in entities:entities()
start at $s when true
end at $e when $e eq $s + 29

let $periodFocus := "FY"
for $entity in $entities 
    let $archives :=  archives:archives-for-entities($entity)[sec-fiscal:fiscal-period($$)=$periodFocus]
    for $archive in $archives 
    let $filingStats := local:compileFilingStats($archive)
    let $compilation := {| 
         {
            companyName: $entity.Profiles.SEC.CompanyName,
            CIK: $entity.Profiles.SEC.CIK
         },$filingStats
    |}
    return {
        insert("filingFaceFinancialsExtensionStats",$compilation);
    }

}