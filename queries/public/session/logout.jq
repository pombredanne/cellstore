jsoniq version "1.0";

import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";
import module namespace req = "http://www.28msec.com/modules/http-request";
import module namespace res = "http://www.28msec.com/modules/http-response";

let $token := req:param-values("token")
return
    if (empty($token))
    then {
        res:status-code(400);
        { success : false, description : "token: parameter missing" }
    } else {
        session:terminate($token);
        api:success()
    }