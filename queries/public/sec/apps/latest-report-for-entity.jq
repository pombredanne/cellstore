import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace report-schemas = "http://xbrl.io/modules/bizql/report-schemas";

import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

(:
  Populates a schema to display the fundamental accounting concepts, looking
  at the latest reported fiscal period by American Express.
:)
let $cik := "0000004962"
let $latest := fiscal:latest-reported-fiscal-period($cik, "10-K")
for $archive in fiscal:filings-for-entities-and-fiscal-periods-and-years($cik, $latest.period, $latest.year)
let $schema := report-schemas:report-schemas("FundamentalAccountingConcepts")
let $report := sec:populate-schema-with-facts($schema, $archive)
return
{
  entity: entities:entities(sec:normalize-cik($cik)),
  fundamental-accounting-concepts: $report
}
