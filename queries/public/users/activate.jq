import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

(: Query parameters :)
declare  variable  $token   as string  external;
declare  variable  $userid  as string  external;

(: Post-processing :)
api:validate-regexp("userid", $userid, $user:VALID_USERID);

(: Request processing :)
session:ensure-right($token, "users_activate");
variable $user := user:get-existing-by-id($userid);

if ($user.status eq $user:STATUS_ACTIVE)
then fn:error(xs:QName("user:already-active"),"User is already active.");
else ();

replace value of json $user.status with $user:STATUS_ACTIVE;

api:success()
