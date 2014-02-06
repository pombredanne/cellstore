import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";

(:
  Retrieve all facts associated with the concept us-gaap:Assets in all
  archives supplied by the entity with CIK 30554, and for December 31st, 2012.
:)
let $cik := sec:normalize-cik("0000030554")
let $archive := archives:archives-for-entities($cik)
return facts:facts-for-archives-and-aspects(
    $archive, {
      "xbrl:Concept" : "us-gaap:Assets",
      "xbrl:Period" : "2012-12-31"
    }
)
