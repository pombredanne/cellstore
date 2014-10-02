import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";
import module namespace req = "http://www.28msec.com/modules/http-request";

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
     then "users_upload_picture_self"
     else "users_upload_picture"
);

user:get-existing-by-id($userid);

variable $mime-type :=
   let $part := req:parts().parts[][$$.name eq "image"]
  return
      if (exists($part))
      then $part.headers.Content-Type
      else req:content-type();

variable $image-data := 
  let $part := req:parts().parts[][$$.name eq "image"]
  return
      if (exists($part))
      then req:binary-part($part.src)
      else req:binary-content();

user:upload-picture($userid, $mime-type, $image-data);

api:success()

