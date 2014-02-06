import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

(:
  Retrieves the filing reported by the entity with CIK 30554 for its latest
  fiscal period.
:)
let $cik := "0000030554"
let $latest := fiscal:latest-reported-fiscal-period($cik)
return
    fiscal:filings-for-entities-and-fiscal-periods-and-years($cik, $latest.period, $latest.year)
