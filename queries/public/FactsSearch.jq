import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

for $r in facts:facts-search("inventory write-downs")
group by $archive := $r.Archive
let $archive := archives:archives($archive)
let $entity := entities:entities($archive.Entity) 
let $format  := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :) 
return  if (session:only-dow30($entity) or session:valid())
        then {
        Entity: $entity.Profiles.SEC.CompanyName,
        Archive : $archive._id,
        Concepts : $r.Aspects."xbrl:Concept",
        DocumentFiscalPeriod : sec-fiscal:fiscal-period($archive),
        DocumentFiscalYear : sec-fiscal:fiscal-year($archive),
        Value : $r.Value
    } else {
         response:status-code(401);
         session:error("accessing filings of an entity that is not in the DOW30", $format)
    }