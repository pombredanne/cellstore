import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";

(:
  Retrieve an entity with its CIK. A CIK is SEC-specific and
  needs to be converted to an EID (Entity ID) first.
:)
let $cik := sec:normalize-cik("0000021344")
return entities:entities($cik)
