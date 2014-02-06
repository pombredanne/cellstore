import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace c = "http://xbrl.io/modules/bizql/concept-maps";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";
import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";

(:
  Retrieves the filings for the fiscal period 2012 submitted by SEC entities
  with the given SIC codes,
  and outputs the assets reported for this period as well as
  other information.
  This uses a concept map for fundamental accounting concepts.
:)
for $entity in entities:entities()
for $archive in fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, "FY", "2012")
let $concept-map := c:concept-maps("FundamentalAccountingConcepts")
let $assets := sec:main-facts-for-archives-and-concepts($archive, "fac:Assets", { "concept-maps" : [ $concept-map ] }).Value
return {
  entity: $entity,
  date: filings:end-date($archive),
  assets: $assets
}
