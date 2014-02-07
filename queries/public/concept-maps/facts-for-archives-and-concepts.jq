import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace concept-maps = "http://xbrl.io/modules/bizql/concept-maps";

let $concept-map := concept-maps:concept-maps("FundamentalAccountingConcepts")
return concept-maps:facts-for-archives-and-concepts(
    archives:archives()[1],
    "fac:Assets",
    $concept-map)