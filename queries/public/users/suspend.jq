import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

(: Query parameters :)
declare  variable  $token   as string  external;
declare  variable  $userid  as string  external;

(: Post-processing :)
api:validate-regexp("userid", $userid, $user:VALID_USERID);

(: Request processing :)
session:validate($token, "users_suspend");

user:suspend($userid);

api:success()
