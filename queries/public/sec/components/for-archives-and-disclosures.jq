import module namespace sec-components = "http://xbrl.io/modules/bizql/profiles/sec/components";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

(:
  Retrieves the balance sheet for the entity with CIK 1001039 in its filing for the fiscal year 2012.
:)
let $filing := fiscal:filings-for-entities-and-fiscal-periods-and-years(sec:normalize-cik("0000050863"),"FY","2012")
let $sheet := sec-components:components-for-archives-and-disclosures($filing,$sec-components:BALANCE_SHEET)
return $sheet

