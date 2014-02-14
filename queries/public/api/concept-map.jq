import module namespace concept-maps = "http://xbrl.io/modules/bizql/concept-maps";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

let $map-name := request:param-values("name")
let $map := concept-maps:concept-maps($map-name)
return
    if (exists($map))
    then
        $map
    else {
        response:status-code(404);
        session:error("concept map not found", "json")
    }