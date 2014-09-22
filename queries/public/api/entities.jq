import module namespace util = "http://secxbrl.info/modules/util";
import module namespace session = "http://apps.28.io/session";

import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";

import module namespace request = "http://www.28msec.com/modules/http-request";

(: Query parameters :)
declare  %rest:case-insensitive                 variable $format             as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $cik                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $tag                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker             as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $sic                as string* external;

session:audit-call();

(: Post-processing :)
let $format as string? := util:preprocess-format($format)
let $tag as string* := util:preprocess-tags($tag)
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
return util:serialize($result, $comment, $serializers, $format, "entities")
