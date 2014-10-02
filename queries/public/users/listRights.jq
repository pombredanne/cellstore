import module namespace user = "http://apps.28.io/user";
import module namespace session = "http://apps.28.io/session";
import module namespace api = "http://apps.28.io/api";

(: Query parameters :)
declare %rest:case-insensitive variable  $token  as string  external;
declare %rest:case-insensitive variable  $role   as string  external;

(: Post-processing :)
api:validate-regexp("role", $role, $user:VALID_ROLEID);

(: Request processing :)
session:ensure-right($token, "roles_list");

variable $results := 
  for $right in collection($user:rights)
  return 
      {
          "_id"     : $right._id,
          "name"    : $right.name,
          "parent"  : $right.parent,
          "allowed" : user:is-role-id-authorized($role, $right._id)
      };
  
api:success({ results : [ $results ]})
