import module namespace entities = "http://xbrl.io/modules/bizql/entities";

(:
  Group all entities by the taxonomy used.
  Aggregate by counting the number of entities in each group.
:)
for $e in entities:entities()
let $taxonomy := $e.Profiles.SEC.Taxonomy
group by $taxonomy
return
{
  taxonomy : $taxonomy,
  num-entities : count($e)
}
