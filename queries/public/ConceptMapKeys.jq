import module namespace reports = "http://28.io/modules/xbrl/reports";

(: Query parameters :)
declare %rest:case-insensitive variable $mapName as string external := "FundamentalAccountingConcepts";

(: Post-processing :)
variable $report := let $report := reports:reports($mapName)
                    return if (empty($report))
                        then error(QName("local:INVALID-REQUEST"), $mapName ||": no map defined with name ")
                        else $report;

(: Object resolution :)
let $map := reports:concept-map($report)
let $keys := keys($map.Trees)

return 
{
   mapName :  $mapName,
   mapKeys : [$keys],
   raw : [$map]

}
(: access the map with concept-maps:concept-maps($mapName) :)

(: concept maps will evolve in the future, to match XBRL networks. But for now, this query is stable. :)
