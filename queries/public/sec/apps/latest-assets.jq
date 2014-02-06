import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";
import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";

(:
  Retrieves the latest assets reported by all entities.
:)
let $entities :=
  for $entity in entities:entities()
  let $latest := fiscal:latest-reported-fiscal-period($entity)
  return {
      entity: $entity,
      archive: fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, $latest.period, $latest.year)
  }
let $assets := sec:main-facts-for-archives-and-concepts($entities.archive, "us-gaap:Assets")
for $entity in $entities
return {
  entity: $entity.entity,
  date: filings:end-date($entity.archive),
  assets: format-number($assets[$$.Archive eq $entity.archive._id].Value, "000,000.00")
}
