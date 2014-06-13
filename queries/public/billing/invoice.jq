jsoniq version "1.0";

import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";
import module namespace recurly-api = "http://apps.28.io/recurly-rest-api";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace csv = "http://zorba.io/modules/json-csv";

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

variable $invoice-number := api:required-parameter("invoiceNumber", $recurly-api:VALID-NUMBER);
variable $format  := lower-case((request:param-values("format"), substring-after(request:path(), ".jq."))[1]);

variable $user-id := session:validate();

variable $user := user:get-by-id($user-id);

if ($format = "pdf")
then
    let $pdf := recurly-api:get-pdf-invoice($user, $invoice-number)
    return {
            response:content-type("application/pdf");
            response:decode-binary(true);
            response:header("Content-Disposition", "attachment; filename=invoice" || $invoice-number || ".pdf");
            $pdf
        }
else 
    let $info := recurly-api:get-invoice($user, $invoice-number)
    return
        switch ($format)
        case "xml" return {
            response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
            local:to-xml($info)
        }
        case "text" case "csv" return {
            response:content-type("text/csv");
            response:header("Content-Disposition", "attachment; filename=invoice" || $invoice-number || ".csv");
            local:to-csv($info)
        }
        case "excel" return {
            response:content-type("application/vnd.ms-excel");
            response:header("Content-Disposition", "attachment; filename=invoice" || $invoice-number || ".csv");
            local:to-csv($info)
        }
        default return {
            response:content-type("application/json");
            response:serialization-parameters({"indent" : true});
            $info
        }