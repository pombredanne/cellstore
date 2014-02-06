import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace report-schemas = "http://xbrl.io/modules/bizql/report-schemas";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";

(:
  Populates the Fundamental Accounting Concept network with facts from Coca Cola archives.
:)
let $archive := archives:archives-for-entities(sec:normalize-cik("0000021344"))
let $schema := report-schemas:report-schemas("FundamentalAccountingConcepts")
return sec:populate-schema-with-facts($schema, $archive)