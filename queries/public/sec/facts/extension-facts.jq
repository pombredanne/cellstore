import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";

(:
  Retrieve the facts associated with the concept us-gaap:Assets in all
  archives supplied by the entity with CIK 30554 (having NO XBRL dimension 
  members assigned), that are extension facts,
  i.e., the concepts of which are defined by the reporting entity.
:)
let $cik := sec:normalize-cik("0000030554")
let $archive := archives:archives-for-entities($cik)
return
    sec:extension-facts-for-archives($archive)
