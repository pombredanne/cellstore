import module namespace entities = "http://xbrl.io/modules/bizql/entities";

(:
  Retrieves all SEC entities grouped by sector.
:)
for $e in entities:entities()
let $s := $e.Profiles.SEC.Sector
group by $s
return
  {
    sector : $s,
    entities : [ $e.Profiles.SEC.CompanyName ]
  }
