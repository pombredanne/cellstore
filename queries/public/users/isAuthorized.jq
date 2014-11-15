import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

(: Query parameters :)
declare %rest:case-insensitive variable $token  as string   external;
declare %rest:case-insensitive variable $right  as string   external;

try{{
    (: Post-processing :)
    api:validate-regexp("right", $right, $user:VALID_RIGHTID);
    
    (: Request processing :)
    session:ensure-right($token, $right);
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
