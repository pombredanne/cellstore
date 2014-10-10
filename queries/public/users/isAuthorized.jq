import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

variable $right-id := api:parameter("right", $user:VALID_RIGHTID, ());

try{{
    session:validate($right-id);
    api:success()
}} 
catch session:expired
{{ 
    response:status-code(401);
    session:error("Unauthorized: Login required", "json")
}}
catch session:missing-authorization
{{ 
    response:status-code(403);
    session:error("Forbidden", "json")
}}

