jsoniq version "1.0";

import module namespace user = "http://apps.28.io/user";
import module namespace session = "http://apps.28.io/session";
import module namespace recurly-api = "http://apps.28.io/recurly-rest-api";
import module namespace api = "http://apps.28.io/api";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace csv = "http://zorba.io/modules/json-csv";

declare function local:to-csv($o as object*) as string
{
    string-join(csv:serialize($o))
};

declare function local:to-xml($o as object*) as element()
{
    <result success="{
        $o.success
    }">
    </result>
};

(: Query parameters :)
declare               variable  $token        as string            external;
declare               variable  $plan         as string            external;
declare               variable  $quantity     as positiveInteger?  external := 1;
declare               variable  $coupon-code  as string?           external;
declare (:%rest:env:) variable  $request-uri  as string            external := ""; (: backward compatibility :)
declare               variable  $format       as string?           external;

(: Post-processing :)
api:validate-regexp("plan", $plan, $recurly-api:VALID-PLAN);
variable $format as string? := api:preprocess-format($format, $request-uri);

(: Request processing :)
variable $user-id := session:validate($token);
variable $user := user:get-by-id($user-id);
variable $info := recurly-api:create-subscription($user, $plan, $quantity, $coupon-code);
user:assign-role($user-id, $plan, current-dateTime(), (), $user-id);

switch ($format)
    case "xml" return {
        response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
        local:to-xml($info)
    }
    case "text" case "csv" return {
        response:content-type("text/csv");
        response:header("Content-Disposition", "attachment; filename=subscription.csv");
        local:to-csv($info)
    }
    case "excel" return {
        response:content-type("application/vnd.ms-excel");
        response:header("Content-Disposition", "attachment; filename=subscription.csv");
        local:to-csv($info)
    }
    default return {
        response:content-type("application/json");
        response:serialization-parameters({"indent" : true});
        $info
    }