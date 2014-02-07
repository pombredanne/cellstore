import module namespace user = "http://apps.28.io/user";
import module namespace org = "http://nevada.org/organizations";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

session:validate("users_new");

variable $firstname := api:required-parameter("firstname", $user:VALID_NAME);
variable $lastname := api:required-parameter("lastname", $user:VALID_NAME);
variable $email := api:required-parameter("email", $user:VALID_EMAIL);
variable $password := api:required-parameter("password", $user:VALID_PASSWORD);
variable $org := org:get-existing-by-id(api:required-parameter("organization-id", $org:VALID_ID));

variable $user-id := user:new($email, $firstname, $lastname, $password, { organization : $org._id });

api:success( { user-id : $user-id } )
