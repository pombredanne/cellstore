import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";

(:
  Retrieve ten facts reported by the entity with a given CIK.
:)
let $cik := sec:normalize-cik("0000310158")
return facts:facts-for-entities($cik)[position() lt 10]
