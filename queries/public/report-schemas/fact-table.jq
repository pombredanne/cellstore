import module namespace report-schemas = "http://xbrl.io/modules/bizql/report-schemas";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";

(:
  Retrieves the Fundamental Accounting Concept fact table for Intel.
:)
let $archive := archives:archives-for-entities(sec:normalize-cik("0000050863"))
return report-schemas:fact-table("FundamentalAccountingConcepts", $archive)