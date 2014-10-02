import module namespace user = "http://apps.28.io/user";
import module namespace session = "http://apps.28.io/session";
import module namespace api = "http://apps.28.io/api";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace csv = "http://zorba.io/modules/json-csv";
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
declare  %rest:case-insensitive        variable $token         as string? external;
declare  (:%rest:env:)  variable $request-uri   as string  external := ""; (: backward compatibility :)
declare  %rest:case-insensitive variable $format external;

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)

(: Object resolution :)
return
if (session:is-valid($token)) 
then {
    variable $user-id := session:get($token);

    if (user:is-authorized($user-id, "statistics_usage"))
    then {
        let $crt-date := current-dateTime()
        let $from-date := dateTime(functx:first-day-of-month($crt-date))
        let $to-date := $from-date + yearMonthDuration("P1M")
        let $auditlines := mongo:find(mongo:connect(), "audit", { "Aspects.xbrl:Period": { "$gte": string($from-date), "$lt": string($to-date) } })

        let $info := {
            userStatistics: [for $a in $auditlines
                      group by $email := $a.Aspects("xbrl:Entity")
                      let $calls := count($a)
                      order by $calls descending
                      return 
                      {
                        email: $email,
                        calls: $calls
                      }],
            queryStatistics: [for $a in $auditlines
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