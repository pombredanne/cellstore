import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";

(:
  Retrieves the balance sheet for the entity with CIK 1001039 in one of its filings.
:)
let $archive := archives:archives("0001001039-13-000164")
return components:components-for-archives($archive)

