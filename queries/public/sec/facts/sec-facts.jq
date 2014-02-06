import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace concept-maps = "http://xbrl.io/modules/bizql/concept-maps";

import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

(:
  Retrieve the facts associated with the concept us-gaap:Assets in all
  archives supplied by the entity with CIK 30554, and that match the fiscal focus
  of the filings.
:)
let $archive := fiscal:filings-for-entities-and-fiscal-periods-and-years("0000104169", "Q3", "2013")
return     sec:main-facts-for-archives-and-concepts($archive, "fac:Revenues", {
    "concept-maps" : [ concept-maps:concept-maps() ]
})
