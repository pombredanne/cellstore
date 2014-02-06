import module namespace report-schemas = "http://xbrl.io/modules/bizql/report-schemas";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";

(:
  Retrieves the Fundamental Accounting Concept facts, from all archives.
:)
report-schemas:facts("FundamentalAccountingConcepts", archives:archives())