import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";

(:
  Retrieves all Document Period End Dates of the filings submitted by the entity
  with CIK 21344.
:)
let $cik := sec:normalize-cik("0000021344")
for $archive in archives:archives-for-entities($cik)
return
    filings:end-date($archive)
