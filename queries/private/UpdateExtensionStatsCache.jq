import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
declare namespace ext = "http://zorba.io/extensions";

declare function local:compileFilingStats($archive) {
   
    let $qtyConcepts := $archive.Statistics.NumDistinctConcretePrimaryItemsInHypercubes + 
                        $archive.Statistics.NumDistinctConcretePrimaryItemsNotInHypercubes
    let $qtyExtConcepts := $archive.Statistics.Profiles.SEC.NumExtensionConcepts
    let $percentExtConceptUsage :=  try { ($qtyExtConcepts div $qtyConcepts)*100 } catch* { -1} 
    let $qtyFacts := $archive.Statistics.NumFacts
    let $qtyExtFacts := $archive.Statistics.Profiles.SEC.NumExtensionFacts
    let $percentExtFactUsage :=  try { ($qtyExtFacts div $qtyFacts)*100 } catch* { -1} 
    return {
        accessionNumber: $archive._id,
        periodFocus : $archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus,
        yearFocus : $archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus,
        filingDate: $archive.Profiles.SEC.FilingDate,
        generator: $archive.Profiles.SEC.Generator,   
        qtyConcepts: $qtyConcepts,
        qtyExtConcepts: $qtyExtConcepts,
        percentExtUsage: $percentExtConceptUsage,
        qtyFacts: $qtyFacts,
        qtyExtFacts: $qtyExtFacts,
        percentExtFactUsage: $percentExtFactUsage
       
    }
};

if(is-available-collection("filingStatsCache"))
then truncate("filingStatsCache");
else
  create("filingStatsCache");


(# ext:no-materialization #) {


for $entities in entities:entities()
for $entity in $entities
let $archives :=  archives:archives-for-entities($entity)
    for $archive in $archives 
    let $filingStats := local:compileFilingStats($archive)
    let $compilation := {| 
         {
            companyName: $entity.Profiles.SEC.CompanyName,
            entityType:$entity.Profiles.SEC.CompanyType,
            CIK: $entity.Profiles.SEC.CIK,
            sector: $entity.Profiles.SEC.Sector,
            SIC: $entity.Profiles.SEC.SIC,
            taxonomy: $entity.Profiles.SEC.Taxonomy,
            tickers: $entity.Profiles.SEC.Tickers,
            stockIndexes:$entity.Profiles.SEC.Tags
         },$filingStats
    |}
    return {
        insert("filingStatsCache",$compilation);
    }

}

