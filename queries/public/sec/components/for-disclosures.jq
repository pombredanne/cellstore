import module namespace sec-components = "http://xbrl.io/modules/bizql/profiles/sec/components";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

(:
  Retrieves the balance sheet for the entity with CIK 1001039 in its filing for the fiscal year 2012.
:)
sec-components:components-for-disclosures($components:BALANCE_SHEET)

