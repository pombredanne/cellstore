jsoniq version "1.0";

import module namespace user = "http://apps.28.io/user";
import module namespace session = "http://apps.28.io/session";
import module namespace recurly-api = "http://apps.28.io/recurly-rest-api";
import module namespace api = "http://apps.28.io/api";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
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

variable $plan := api:required-parameter("plan", $recurly-api:VALID-PLAN);
variable $quantity := request:param-values("quantity", "1");
variable $coupon-code := request:param-values("coupon");
variable $format  := lower-case((request:param-values("format"), substring-after(request:path(), ".jq."))[1]);

variable $user-id := session:validate();

variable $user := user:get-by-id($user-id);

variable $info := recurly-api:create-subscription($user, $plan, xs:positiveInteger($quantity), $coupon-code);
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