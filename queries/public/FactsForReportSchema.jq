
import module namespace report-schemas = "http://xbrl.io/modules/bizql/report-schemas";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

let $format  := lower-case(request:param-values("format")[1])
let $aids     := request:param-values("aid")
let $report   := request:param-values("report")[1]
let $report   := report-schemas:report-schemas($report)
                    

let $archives := archives:archives($aids)
let $entities := entities:entities($archives.Entity)
return switch(true)
    case empty($archives) return {
        response:status-code(404);
        session:error("entities or archives not found (valid parameters: aid)", $format)
    }
    case not (session:only-dow30($entities) or session:valid()) return {
        response:status-code(401);
        session:error("accessing facts of an entity that is not in the DOW30", $format)
    }
    default return [
        for $archive in $archives
        return sec:populate-schema-with-facts($report, $archive)
    ]