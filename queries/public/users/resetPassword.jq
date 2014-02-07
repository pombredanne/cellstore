import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

variable $user-id := api:required-parameter("userid", $user:VALID_USERID);

session:validate(
     if (session:validate() eq $user-id)
     then "users_reset_password_self"
     else "users_reset_password"
);

variable $password := api:required-parameter("password", $user:VALID_PASSWORD);

user:set-password($user-id, $password);

api:success()
