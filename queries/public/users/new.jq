import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";

(: Query parameters :)
declare  variable  $firstname  as string  external;
declare  variable  $lastname   as string  external;
declare  variable  $email      as string  external;
declare  variable  $password   as string  external;

(: Post-processing :)
api:validate-regexp("firstname", $firstname, $user:VALID_NAME);
api:validate-regexp("lastname", $lastname, $user:VALID_NAME);
api:validate-regexp("email", $email, $user:VALID_EMAIL);
api:validate-regexp("password", $password, $user:VALID_PASSWORD);

(: Request processing :)
variable $user-id := user:new($email, $firstname, $lastname, $password, {| |});

(: automatically give him a trial of 30 days :)
user:assign-role($user-id, "sec_pro", current-dateTime(), current-dateTime() + yearMonthDuration("P1M"), $user-id);

api:success( { user-id : $user-id } )
