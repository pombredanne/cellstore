import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace report-schemas = "http://xbrl.io/modules/bizql/report-schemas";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";

(:
  Retrieves the Fundamental Accounting Concept facts, from all archives, only keeping
  facts relevant to each archive.
:)
let $schema := report-schemas:report-schemas("FundamentalAccountingConcepts")
return sec:facts-for-schema($schema, archives:archives())
