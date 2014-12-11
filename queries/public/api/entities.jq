import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

import module namespace http-request = "http://www.28msec.com/modules/http/request";

import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";

(: Query parameters :)
declare  %rest:case-insensitive                 variable $token        as string? external;
declare  %rest:env                              variable $request-uri  as string  external;
declare  %rest:case-insensitive                 variable $format       as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $cik          as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $tag          as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker       as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $sic          as string* external;

session:audit-call($token);

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $tag as string* := api:preprocess-tags($tag)
let $tag := if (exists(($cik, $tag, $ticker, $sic)))
             then $tag
             else "ALL"

(: Object resolution :)
let $entities := 
    for $entity in 
        companies:companies(
            $cik,
            $tag,
            $ticker,
            $sic)
    order by $entity.Profiles.SEC.CompanyName
    return $entity
let $comment :=
{
    NumEntities: count($entities),
    TotalNumEntities: session:num-entities() 
}
let $entities :=
    for $entity in $entities
    return copy $e := $entity
    modify insert json {
        Archives: "http://" || http-request:server-name() || ":" || http-request:server-port() ||
        "/v1/_queries/public/api/filings.jq?_method=POST&entity="||encode-for-uri($e._id) ||
        "&fiscalYear=ALL&fiscalPeriod=ALL&format=html" ||
        "&token=" || http-request:parameter-values("token")
    } into $e
    return $e
let $result := { "Entities" : [ $entities ] }
let $serializers := {
    to-xml : function($res as object) as node() {
        <Entities>{
            companies:to-xml($res.Entities[])
        }</Entities>
    },
    to-csv : function($res as object) as string {
        string-join(companies:to-csv($res.Entities[]))
    }
}
return api:serialize($result, $comment, $serializers, $format, "entities")
