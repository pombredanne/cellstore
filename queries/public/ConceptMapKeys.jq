
import module namespace reports = "http://28.io/modules/xbrl/reports";
import module namespace req = "http://www.28msec.com/modules/http-request";

variable $mapName := let $mapName := req:param-values("mapName","FundamentalAccountingConcepts")
                     return if (empty($mapName))
                            then error(QName("local:INVALID-REQUEST"), "mapName: mandatory parameter not found")
                            else $mapName;
                         
variable $report := let $report := reports:reports($mapName)
                    return if (empty($report))
                        then error(QName("local:INVALID-REQUEST"), $mapName ||": no map defined with name ")
                        else $report;
                        
                        
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
