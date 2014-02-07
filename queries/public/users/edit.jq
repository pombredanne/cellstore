import module namespace user = "http://apps.28.io/user";
import module namespace org = "http://nevada.org/organizations";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

variable $userid := api:required-parameter("userid", $user:VALID_USERID);

session:validate(
     if (session:validate() eq $userid)
     then "users_edit_self"
     else "users_edit"
);

variable $firstname := api:required-parameter("firstname", $user:VALID_NAME);
variable $lastname := api:required-parameter("lastname", $user:VALID_NAME);
variable $email := api:required-parameter("email", $user:VALID_EMAIL);
variable $org := org:get-existing-by-id(api:required-parameter("organization-id", $org:VALID_ID));

variable $user := user:get-existing-by-id($userid);
variable $other-same-mail := user:get-by-email($email);

if (empty($other-same-mail) or $other-same-mail._id eq $userid)
then ();
else fn:error(xs:QName("user:already-existing"), "A different user with same email address already exists.");

replace value of json $user.firstname with $firstname;
replace value of json $user.lastname with $lastname;
replace value of json $user.email with $email;
replace value of json $user.organization with $org._id;

api:success()
