import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";
import module namespace res = "http://www.28msec.com/modules/http-response";

(: Query parameters :)
declare %rest:case-insensitive variable $token   as string   external;
declare %rest:case-insensitive variable $userid  as string?  external;

(: Post-processing :)
api:validate-regexp("userid", $userid,  $user:VALID_USERID);

(: Request processing :)
variable $self := session:ensure-valid($token);
variable $userid := ($userid, $self)[1];

session:ensure-right($token,
     if ($self eq $userid)
     then "users_get_self"
     else "users_get"
);

variable $picture := user:get-picture($userid);
if (exists($picture))
then
{ 
    res:content-type($picture.mime-type);
    res:decode-binary(true);

    $picture.image-data
}
else ()
