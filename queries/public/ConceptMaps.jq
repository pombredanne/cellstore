import module namespace concept-maps = "http://xbrl.io/modules/bizql/concept-maps";
let $maps := concept-maps:concept-maps()._id
return {
    (:availableMaps: [$maps]:)
    availableMaps:["FundamentalAccountingConcepts"]
}

(: concept maps will evolve in the future, to match XBRL networks. But for now, this query is stable. :)

