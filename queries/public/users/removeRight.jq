import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

(: Query parameters :)
declare %rest:case-insensitive variable $token  as string  external;
declare %rest:case-insensitive variable $role   as string  external;
declare %rest:case-insensitive variable $right  as string  external;

(: Post-processing :)
api:validate-regexp("role", $role, $user:VALID_ROLEID);
api:validate-regexp("right", $right, $user:VALID_RIGHTID);

(: Request processing :)
session:ensure-right($token, "roles_change_permissions");

user:disallow($role, $right);

api:success()
