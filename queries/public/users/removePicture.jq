import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

(: Query parameters :)
declare  variable  $token   as string   external;
declare  variable  $userid  as string?  external;

(: Post-processing :)
api:validate-regexp("userid", $userid,  $user:VALID_USERID);

(: Request processing :)
variable $self := session:ensure-valid($token);
variable $userid := ($userid, $self)[1];

session:ensure-right($token,
     if ($self eq $userid)
     then "users_remove_picture_self"
     else "users_remove_picture"
);

user:get-existing-by-id($userid);

user:remove-picture($userid);

api:success()
