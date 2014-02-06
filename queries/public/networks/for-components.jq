import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace networks = "http://xbrl.io/modules/bizql/networks";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";

(:
  Retrieves the networks in all components of one of the filings by Walt Disney.
:)
let $archive := archives:archives-for-entities(sec:normalize-cik("0000050863"))[1]
let $components := components:components-for-archives($archive)
return networks:networks-for-components($components)

