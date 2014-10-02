import module namespace user = "http://apps.28.io/user";
import module namespace session = "http://apps.28.io/session";
import module namespace api = "http://apps.28.io/api";

(: Query parameters :)
declare               variable  $token        as string  external;

(: Request processing :)
session:ensure-right($token, "roles_list");

variable $results :=
  for $role in collection($user:roles)
  return project($role, ("_id", "name"));
  
api:success({ results : [ $results ]})
