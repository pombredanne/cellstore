import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace config = "http://apps.28.io/config";
import module namespace session = "http://apps.28.io/session";
import module namespace response = "http://www.28msec.com/modules/http-response";

(: Query parameters :)
declare %rest:case-insensitive variable $firstname  as string  external;
declare %rest:case-insensitive variable $lastname   as string  external;
declare %rest:case-insensitive variable $email      as string  external;
declare %rest:case-insensitive variable $password   as string  external;

if(not $config:allow-registration)
then
    {
        response:status-code(403);
        session:error("Unauthorized: Registration disabled.", "json")
    }
else
    {
        (: Post-processing :)
        api:validate-regexp("firstname", $firstname, $user:VALID_NAME);
        api:validate-regexp("lastname", $lastname, $user:VALID_NAME);
        api:validate-regexp("email", $email, $user:VALID_EMAIL);
        api:validate-regexp("password", $password, $user:VALID_PASSWORD);

        (: Request processing :)
        variable $user-id := user:new($email, $firstname, $lastname, $password, {| |});

        api:success( { user-id : $user-id } )
    }