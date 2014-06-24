import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

variable $right-id := api:parameter("right", $user:VALID_RIGHTID, ());

session:validate($right-id);
api:success()
