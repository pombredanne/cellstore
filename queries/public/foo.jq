import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace components = "http://xbrl.io/modules/bizql/components";
(:
hypercubes:facts(
   hypercubes:dimensionless-hypercube({
     Concepts: ["ifrs:Revenue"],
     Entities: [ entities:entities()[position() lt 4] ]
   })
)
:)
hypercubes:hypercubes-for-components(components:components()[100])