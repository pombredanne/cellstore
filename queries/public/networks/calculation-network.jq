import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace networks = "http://xbrl.io/modules/bizql/networks";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace sec-components = "http://xbrl.io/modules/bizql/profiles/sec/components";

(:
  Retrieves the standard calculation network in one of the components of one of the filings by Walt Disney.
:)
let $archive := archives:archives-for-entities(sec:normalize-cik("0001001039"))[1]
let $component := sec-components:components-for-archives-and-disclosures($archive, "CashFlowStatement")
return networks:networks-for-components-and-short-names($component, $networks:CALCULATION_NETWORK)

