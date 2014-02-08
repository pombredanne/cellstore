jsoniq version "1.0";

import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";
import module namespace res = "http://www.28msec.com/modules/http-response";
import module namespace req = "http://www.28msec.com/modules/http-request";

let $email := req:param-values("email")
let $password := req:param-values("password")
return
    if (empty($email) or empty($password))
    then {
        res:status-code(400);
        { 
            success : false, 
            description : if (empty($email)) 
                          then "email"
                          else "password"
                            || ": parameter missing"
        }
    } else {
        let $user := try { user:login($email, $password) } catch * { () }
        let $expiration := fn:current-dateTime() + xs:dayTimeDuration("P1D")
        return
            if (empty($user)) 
            then {
              res:status-code(403);
              {
                  success : false,
                  description : "invalid email or password"
              }
            } else {
                variable $token := session:start($user._id, $expiration);
                api:success(
                    { 
                      token : $token, 
                      (: id : $user._id, :)
                      name : ($user.firstname || " " || $user.lastname)
                    })
            }
    }