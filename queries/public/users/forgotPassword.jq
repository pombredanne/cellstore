import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";
import module namespace sendmail = "http://apps.28.io/sendmail";

variable $email := api:required-parameter("email", $user:VALID_EMAIL);

variable $user := user:get-existing-by-email($email);

if (empty($user)) 
then ();
else 
    let $expiration := fn:current-dateTime() + xs:dayTimeDuration("P1D")
    let $token := session:start($user._id, $expiration)
    return sendmail:send($email, "Reset your password", 
            "To reset your password, please click this link:\nhttp://www.secxbrl.info/account/password?token=" || $token || 
            "\n\nThe link is valid for one day.\nIf you did not as for this, please ignore the message.\n\nSecXBRL.info");

api:success()
