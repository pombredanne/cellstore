jsoniq version "1.0";

import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace csv = "http://zorba.io/modules/json-csv";

declare function local:to-csv($o as object*) as string
{
    string-join(csv:serialize($o))
};

declare function local:to-xml($o as object*) as element()
{
    <result success="{$o.success}">{
        if (exists($o.description))
        then <description>{$o.description}</description>
        else ()
    }</result>
};

(: Query parameters :)
declare               variable  $token        as string  external;
declare               variable  $newpassword  as string  external;
declare               variable  $email        as string  external;
declare               variable  $password     as string  external;
declare (:%rest:env:) variable  $request-uri  as string  external := ""; (: backward compatibility :)
declare               variable  $format       as string? external;

(: Post-processing :)
api:validate-regexp("newpassword", $newpassword, $user:VALID_PASSWORD);
api:validate-regexp("email", $email, $user:VALID_EMAIL);
api:validate-regexp("password", $password, $user:VALID_PASSWORD);

variable $format as string? := api:preprocess-format($format, $request-uri);

(: Request processing :)
variable $user-id := session:validate($token);
variable $user := try { user:login($email, $password) } catch * { () };

variable $res := ();
variable $status := ();
if (empty($user)) 
then {
    $status := 403;
    $res :=
    {
        success : false,
        description : "invalid email or password"
    };
} else {
    if ($user._id != $user-id) 
    then {
        $status := 403;
        $res :=
        {
            success : false,
            description : "unauthorized operation"
        };
    } else {
        user:set-password($user-id, $newpassword);

        $status := 200;
        $res :=
        {
          success : true
        };
    }
}

response:status-code($status);

switch ($format)
    case "xml" return {
        response:content-type("application/xml");
        response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
        local:to-xml($res)
    }
    case "text" case "csv" case "excel" return {
        response:content-type("text/csv");
        response:header("Content-Disposition", "attachment; filename=resetPassword.csv");
        local:to-csv($res)
    }
    default return {
        response:content-type("application/json");
        response:serialization-parameters({"indent" : true});
        $res
    }