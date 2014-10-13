import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

(: Query parameters :)
declare %rest:case-insensitive variable $token  as string  external;
declare %rest:case-insensitive variable $id     as string  external;
declare %rest:case-insensitive variable $name   as string  external;

(: Post-processing :)
api:validate-regexp("id", $id, $user:VALID_ROLEID);
api:validate-regexp("name", $name, $user:VALID_ROLENAME);

(: Request processing :)
session:ensure-right($token, "roles_new");

user:new-role($id, $name);

api:success()
