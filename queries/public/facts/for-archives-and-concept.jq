import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";

(:
  Retrieve all facts associated with the concept us-gaap:Assets in all
  archives supplied by the entity with CIK 30554.
:)
let $cik := sec:normalize-cik("0001408057")
let $archive := archives:archives-for-entities($cik)
return
    facts:facts-for-archives-and-concepts($archive, "us-gaap:NetIncomeLoss")[$$.Aspects."xbrl:Period" eq "2011-10-01/2011-12-31"]
