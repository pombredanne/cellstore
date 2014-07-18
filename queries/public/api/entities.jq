import module namespace util = "http://secxbrl.info/modules/util";
import module namespace session = "http://apps.28.io/session";

import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace companies2 = "http://xbrl.io/modules/bizql/profiles/sec/companies2";

import module namespace request = "http://www.28msec.com/modules/http-request";

session:audit-call();

(: Query parameters :)
let $format as string?         := request:param-values("format")
let $ciks as string*           := distinct-values(request:param-values("cik"))
let $tags as string*           := distinct-values(request:param-values("tag"))
let $tickers as string*        := distinct-values(request:param-values("ticker"))
let $sics as string*           := distinct-values(request:param-values("sic"))

(: Post-processing :)
let $format as string? := (: backwards compatibility, to be deprecated  :)
    lower-case(($format, substring-after(request:path(), ".jq."))[1])
let $tags as string* := (: backwards compatibility, to be deprecated :)
    distinct-values($tags ! upper-case($$))
let $tags := if (exists(($ciks, $tags, $tickers, $sics)))
             then $tags
             else "ALL"

(: Object resolution :)
let $entities := 
    for $entity in 
        companies2:companies(
            $ciks,
            $tags,
            $tickers,
            $sics)
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
