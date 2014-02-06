import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace req = "http://www.28msec.com/modules/http-request";
declare namespace ext = "http://zorba.io/extensions";

declare function local:compileFilingStats($archive) {
   
    let $qtyStdConcepts := count(distinct-values(sec:edgar-facts-for-archives($archive).Aspects."xbrl:Concept"))
    let $qtyExtConcepts := count(distinct-values(sec:extension-facts-for-archives($archive).Aspects."xbrl:Concept"))
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

(:if(is-available-collection("filingExtensionStats"))
then truncate("filingExtensionStats");
else
  create("filingExtensionStats");:)



(# ext:no-materialization #) {
    
let $batchSize := 1000
let $batchNumber := req:param-values("batchNumber", "1") cast as integer
let $startAfter := ($batchNumber - 1) * $batchSize
let $stopAt := $batchNumber * $batchSize

for tumbling window $entities in entities:entities()[(position() gt $startAfter) and (position() le $stopAt)]
start at $s when true
end at $e when $e eq $s + 29
let $periodFocus := "FY"
for $entity in $entities
let $archives :=  archives:archives-for-entities($entity)[sec-fiscal:fiscal-period($$) eq $periodFocus]
    for $archive in $archives 
    let $filingStats := local:compileFilingStats($archive)
    let $compilation := {| 
         {
            companyName: $entity.Profiles.SEC.CompanyName,
            CIK: $entity.Profiles.SEC.CIK
         },$filingStats
    |}
    return {
        insert("filingExtensionStats2",$compilation);
    }

}