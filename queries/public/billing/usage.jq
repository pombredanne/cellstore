jsoniq version "1.0";

import module namespace user = "http://apps.28.io/user";
import module namespace session = "http://apps.28.io/session";
import module namespace api = "http://apps.28.io/api";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace csv = "http://zorba.io/modules/json-csv";
import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace functx = "http://www.functx.com";

declare function local:json-to-xml-elements($json as json-item()) as element()*
{
    for $k in keys($json)
    let $v := $json($k)
    return element { $k } {
        typeswitch ($v)
        case object return
            local:json-to-xml-elements($v)
        case array return
            flatten($v) ! local:json-to-xml-elements($$)
        default return $v
    }
};

declare function local:to-csv($o as object*) as string
{
    string-join(csv:serialize($o))
};

declare function local:to-xml($o as object*) as element()
{
    <result>{ local:json-to-xml-elements($o) }</result>
};

(: Query parameters :)
declare %rest:case-insensitive variable  $token        as string  external;
declare %rest:env              variable  $request-uri  as string  external;
declare %rest:case-insensitive variable  $format       as string? external;

(: Post-processing :)
$format := api:preprocess-format($format, $request-uri);  (: xqlint workaround :)

(: Request processing :)
variable $user-id := session:ensure-valid($token);
variable $user := user:get-by-id($user-id);
let $crt-date := current-dateTime()
let $from-date := dateTime(functx:first-day-of-month($crt-date))
let $to-date := $from-date + yearMonthDuration("P1M")
let $calls := mongo:count(mongo:connect(), "audit", { "Aspects.xbrl:Entity": $user.email, "Aspects.xbrl:Period": { "$gte": string($from-date), "$lt": string($to-date) } })
let $info := 
    {
        calls: $calls,
        email: $user.email,
        fromDate: $from-date,
        toDate: $to-date
    }
return
    switch ($format)
    case "xml" return {
        response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
        local:to-xml($info)
    }
    case "text" case "csv" return {
        response:content-type("text/csv");
        response:header("Content-Disposition", "attachment; filename=billingInfo.csv");
        local:to-csv($info)
    }
    case "excel" return {
        response:content-type("application/vnd.ms-excel");
        response:header("Content-Disposition", "attachment; filename=billingInfo.csv");
        local:to-csv($info)
    }
    default return {
        response:content-type("application/json");
        response:serialization-parameters({"indent" : true});
        $info
    }