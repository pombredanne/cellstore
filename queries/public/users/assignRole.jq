import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

(: Query parameters :)
declare  variable  $token         as string     external;
declare  variable  $userid        as string     external;
declare  variable  $role          as string     external;
declare  variable  $fromDateTime  as dateTime?  external;
declare  variable  $toDateTime    as dateTime?  external;

(: Post-processing :)
api:validate-regexp("userid", $userid, $user:VALID_USERID);
api:validate-regexp("role", $role, $user:VALID_ROLEID);

(: Request processing :)
session:validate($token, "roles_change_permissions");
variable $assignedBy := session:validate($token, "users_assign_role");

user:assign-role($userid, $role, $fromDateTime, $toDateTime, $assignedBy);

api:success()
