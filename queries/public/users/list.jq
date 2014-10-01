import module namespace user = "http://apps.28.io/user";
import module namespace session = "http://apps.28.io/session";
import module namespace api = "http://apps.28.io/api";

(: Query parameters :)
declare  variable  $token  as string   external;

(: Request processing :)
session:validate($token, "users_list");

variable $results :=
  for $user in collection($user:collection)
  return project($user, ("_id", "firstname", "lastname", "email", "status"));
  
api:success({ results : [ $results ]})
