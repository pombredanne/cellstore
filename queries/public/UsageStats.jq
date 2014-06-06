jsoniq version "1.0";

import module namespace user = "http://apps.28.io/user";
import module namespace session = "http://apps.28.io/session";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
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

variable $format  := lower-case((request:param-values("format"), substring-after(request:path(), ".jq."))[1]);

if (session:valid()) 
then {
    variable $user-id := session:validate();

    if (user:is-authorized($user-id, "statistics_usage"))
    then {
        let $crt-date := current-dateTime()
        let $from-date := dateTime(functx:first-day-of-month($crt-date))
        let $to-date := $from-date + yearMonthDuration("P1M")
        
        let $info := {
            userStatistics: [for $a in collection("audit")
                      where $a.Aspects("xbrl:Period") >= string($from-date) and $a.Aspects("xbrl:Period") < string($to-date)
                      group by $email := $a.Aspects("xbrl:Entity")
                      let $calls := count($a)
                      order by $calls descending
                      return 
                      {
                        email: $email,
                        calls: $calls
                      }],
            queryStatistics: [for $a in collection("audit")
                      where $a.Aspects("xbrl:Period") >= string($from-date) and $a.Aspects("xbrl:Period") < string($to-date)
                      group by $query := $a.Aspects("secxbrl:Query")
                      let $calls := count($a)
                      order by $calls descending
                      return 
                      {
                        query: $query,
                        calls: $calls
                      }],
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
    }
    else {
        response:status-code(401);
        session:error("unauthorized access", $format)
    }
}
else {
    response:status-code(401);
    session:error("unauthorized access", $format)
}