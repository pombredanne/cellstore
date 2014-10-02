import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

(: Query parameters :)
declare %rest:case-insensitive variable $token   as string  external;
declare %rest:case-insensitive variable $userid  as string  external;

(: Post-processing :)
api:validate-regexp("userid", $userid, $user:VALID_USERID);

(: Request processing :)
session:ensure-right($token, "users_suspend");

user:suspend($userid);

api:success()
