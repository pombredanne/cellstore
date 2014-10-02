jsoniq version "1.0";

import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";
import module namespace response = "http://www.28msec.com/modules/http-response";
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
declare (:%rest:env:) variable  $request-uri  as string  external := ""; (: wait till next release :)
declare               variable  $format       as string? external;

(: Post-processing :)
$format := api:preprocess-format($format, $request-uri); (: backward compatibility :)

(: Request processing :)
session:terminate($token);
let $res := api:success()
return
    switch ($format)
     case "xml" return {
        response:content-type("application/xml");
        response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
        local:to-xml($res)
    }
    case "text" case "csv" case "excel" return {
        response:content-type("text/csv");
        response:header("Content-Disposition", "attachment; filename=login.csv");
        local:to-csv($res)
    }
    default return {
        response:content-type("application/json");
        response:serialization-parameters({"indent" : true});
        $res
    }
