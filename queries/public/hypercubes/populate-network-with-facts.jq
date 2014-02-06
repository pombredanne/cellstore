import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace networks = "http://xbrl.io/modules/bizql/networks";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace report-schemas = "http://xbrl.io/modules/bizql/report-schemas";

let $component := report-schemas:report-schemas("FundamentalAccountingConcepts")
return hypercubes:populate-networks-with-facts(
    networks:networks-for-components-and-short-names($component, "Presentation"),
    hypercubes:hypercubes-for-components($component, "xbrl:DefaultHypercube"),
    archives:archives()[1],
    { "concept-maps" : networks:networks-for-components-and-short-names($component, "ConceptMap") }
)