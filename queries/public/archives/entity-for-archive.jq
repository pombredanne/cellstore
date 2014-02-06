import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";

(:
  Retrieves an archive, and then the entity that submitted this archive.
:)
let $archive := archives:archives("0000732717-13-000017")
let $entity := $archive.Entity
return entities:entities($entity)
