import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";

(:
  Retrieves all filings (SEC archives) filed by all entities, and group by
  by document type (10-K, 10-Q, etc).
:)
for $entity in entities:entities()
for $filing in archives:archives-for-entities($entity)
let $document-type := filings:document-type($filing)
group by $document-type
return
  {
    document-type : $document-type,
    filings : $filing."_id"
  }
