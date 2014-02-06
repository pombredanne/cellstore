import module namespace sec-components = "http://xbrl.io/modules/bizql/profiles/sec/components";

import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

(:
  Retrieves the balance sheet for the entity with CIK 1001039 in its filing for the fiscal year 2013.
:)
let $filing := fiscal:filings-for-entities-and-fiscal-periods-and-years("0001001039", "FY", "2013")
let $sheet := sec-components:components-for-archives-and-disclosures($filing,$sec-components:BALANCE_SHEET)
return $sheet

