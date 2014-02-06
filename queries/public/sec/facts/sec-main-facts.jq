import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";

(:
  Retrieve the facts associated with the concept us-gaap:Assets in all
  archives supplied by the entity with CIK 30554, and that match the fiscal focus
  of the filings, and that have no dimensions (only one per archive and concept most
  of the time).
:)
let $cik := sec:normalize-cik("0000030554")
let $archive := archives:archives-for-entities($cik)
return
    sec:main-facts-for-archives-and-concepts($archive, "us-gaap:Assets")
