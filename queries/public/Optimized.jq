import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";
import module namespace req = "http://www.28msec.com/modules/http-request";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace entities ="http://xbrl.io/modules/bizql/entities";
import module namespace sequences = "http://zorba.io/modules/sequence";
declare namespace an = "http://zorba.io/annotations";

(: NB: archive id is accession number :) 
declare  function local:gatherLatestAccessionNumbers() {
    for $archive in  archives:archives()
        return $archive._id
};
(:
  Calculate percentage use of extension elements for designated filing.
:)
declare %an:sequential function local:gatherExtensionStats($archives as object()*) {
    let $periodFocuses := facts:facts-for-archives-and-concepts($archives,"dei:DocumentFiscalPeriodFocus")
    let $yearFocuses := facts:facts-for-archives-and-concepts($archives,"dei:DocumentFiscalYearFocus")
    let $endDates := facts:facts-for-archives-and-concepts($archives,"dei:DocumentPeriodEndDate")
    let $concepts := facts:facts() ! { Concept: $$.Aspects."xbrl:Concept", Archive: $$.Archive }
    let $entities := entities:entities(distinct-values($archives.Entity))
    for $a in $archives
    let $endDate := $endDates[$$.Archive eq $a._id].Value
    let $archiveConcepts := $concepts[$$.Archive eq $a._id]
    let $periodFocus := $periodFocuses[$$.Archive eq $a._id].Value
    let $fiscalYear := $yearFocuses[$$.Archive eq $a._id].Value
    let $entity := $entities[$$._id eq $a.Entity]
    (:let $qtySecConcepts := count(distinct-values(sec:edgar-facts-for-archives($a).Aspects."xbrl:Concept"))
    let $qtyExtConcepts := count(distinct-values(sec:extension-facts-for-archives($a).Aspects."xbrl:Concept"))
    let $qtyConcepts := $qtySecConcepts+$qtyExtConcepts
    let $percentExtUsage := try { round(($qtyExtConcepts div $qtyConcepts)*100) } catch* { -1}
    order by $percentExtUsage:)
    return {
        test: count($archiveConcepts),
      accessionNumber: $a._id,
      companyName: $entity.Profiles.SEC.CompanyName,
      entityType:$entity.Profiles.SEC.CompanyType,
      CIK: $entity.Profiles.SEC.CIK,
      sector: $entity.Profiles.SEC.Sector,
      SIC: $entity.Profiles.SEC.SIC,
      taxonomy: $entity.Profiles.SEC.Taxonomy,
      tickers: $entity.Profiles.SEC.Tickers,
      generator: $a.Profiles.SEC.Generator, 
      fiscalYear: $fiscalYear,
      periodFocus: $periodFocus(:),
      qtyConcepts: $qtyConcepts),
      qtyExtConcepts: $qtyExtConcepts,
      percentExtUsage: $percentExtUsage,
      stockIndexes:$entity.Profiles.SEC.Tags :)
    }
};
if(is-available-collection("filingStatsCache"))
then
    if(exists(req:params().refresh))
    then truncate("filingStatsCache");
    else ();
else
  create("filingStatsCache");
(: NB: archive id is accession number :) 
let $archives := archives:archives()
let $stats := local:gatherExtensionStats($archives)
return {
    insert("filingStatsCache", $stats);
    $stats
}
