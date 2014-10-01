import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

(: Query parameters :)
declare  variable  $token  as string  external;
declare  variable  $role   as string  external;
declare  variable  $right  as string  external;

(: Post-processing :)
api:validate-regexp("role", $role, $user:VALID_ROLEID);
api:validate-regexp("right", $right, $user:VALID_RIGHTID);

(: Request processing :)
session:validate($token, "roles_change_permissions");

user:disallow($role, $right);

api:success()
