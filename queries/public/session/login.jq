jsoniq version "1.0";

import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

variable $email := api:required-parameter("email", $user:VALID_EMAIL);
variable $password := api:required-parameter("password", $user:VALID_PASSWORD);

variable $user := user:login($email, $password);
variable $expiration := fn:current-dateTime() + xs:dayTimeDuration("P1D");

variable $token := session:start($user._id, $expiration);

api:success({ token : $token, id : $user._id, name : ($user.firstname || " " || $user.lastname) })