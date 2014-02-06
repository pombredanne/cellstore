import module namespace components = "http://xbrl.io/modules/bizql/components";

import module namespace sec-components = "http://xbrl.io/modules/bizql/profiles/sec/components";
import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

(:
  Retrieves the hypercubes associated with the balance sheet reported by GE for the fiscal year 2012.
:)
let $filing := fiscal:filings-for-entities-and-fiscal-periods-and-years("0000040545","FY","2012")
let $sheet := sec-components:components-for-archives-and-disclosures($filing,$sec-components:BALANCE_SHEET)
return components:hypercubes($sheet)