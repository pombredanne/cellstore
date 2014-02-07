import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

(:
  Searches all facts for full text "inventory write-downs"
  and outputs relevant information grouped by archive.
:)
for $r in facts:facts-search("inventory write-downs")
group by $archive := $r.Archive
let $archive := archives:archives($archive)
return
    {
        Entity: entities:entities($archive.Entity).Profiles.SEC.CompanyName,
        Archive : $archive._id,
        Concepts : $r.Aspects."xbrl:Concept",
        DocumentFiscalPeriod : sec-fiscal:fiscal-period($archive),
        DocumentFiscalYear : sec-fiscal:fiscal-year($archive),
        Value : $r.Value
    }
