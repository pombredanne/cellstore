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
declare %rest:case-insensitive variable  $token        as string  external;
declare %rest:case-insensitive variable  $plan         as string  external;
declare %rest:case-insensitive variable  $recurlyId    as string  external;
declare %rest:env              variable  $request-uri  as string  external;
declare %rest:case-insensitive variable  $format       as string? external;

(: Post-processing :)
api:validate-regexp("plan", $plan, $recurly-api:VALID-PLAN);
api:validate-regexp("recurlyId", $recurlyId, $recurly-api:VALID-UUID);
$format := api:preprocess-format($format, $request-uri); (: xqlint workaround :)

(: Request processing :)
variable $user-id := session:ensure-valid($token);
variable $user := user:get-by-id($user-id);
variable $info := recurly-api:terminate-subscription($user, $recurlyId);
user:close-assignment($user-id, $plan, ());

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