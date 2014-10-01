import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

(: Query parameters :)
declare               variable  $token        as string   external;
declare               variable  $email        as string?  external;
declare               variable  $userid       as string?  external;

(: Post-processing :)
api:validate-regexp("email", $email, $user:VALID_EMAIL);
api:validate-regexp("userid", $userid, $user:VALID_USERID);

(: Request processing :)

variable $my-user-id := session:validate($token);

if (exists($email)) then 
{
    session:validate($token, "users_get");
    api:success({ user : project(user:get-existing-by-email($email), ("firstname", "lastname", "status", "email", "_id", "assignments")) })
}
else if (exists($userid)) then 
{
    session:validate($token, "users_get");
    api:success({ user : project(user:get-existing-by-id($userid), ("firstname", "lastname", "status", "email", "_id", "assignments")) })
}
else
{
    session:validate($token, "users_get_self");
    api:success({ user : project(user:get-existing-by-id($my-user-id), ("firstname", "lastname", "status", "email", "_id", "assignments")) })
}
