import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";

(:
  Retrieve the facts associated with the concept us-gaap:Assets in all
  archives supplied by the entity with CIK 30554, that are official defined
  in EDGAR (having NO XBRL dimension members assigned).
:)
let $cik := sec:normalize-cik("0000030554")
let $archive := archives:archives-for-entities($cik)
return
    sec:edgar-facts-for-archives($archive)
