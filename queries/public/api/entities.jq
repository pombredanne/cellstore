<<<<<<< HEAD
import module namespace util = "http://secxbrl.info/modules/util";
import module namespace session = "http://apps.28.io/session";

import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace companies2 = "http://xbrl.io/modules/bizql/profiles/sec/companies2";

=======
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
>>>>>>> svsxbrl.info bootstrap
import module namespace request = "http://www.28msec.com/modules/http-request";

<<<<<<< HEAD
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
=======
declare function local:to-xml($entities as object*)
{ 
  (session:comment("xml", {
        NumEntities: count($entities),
        TotalNumEntities: session:num-entities() 
      }),
  <Entities>{
    for $e in $entities
    return
    <Entity>
        <ID>{$e._id}</ID>
        <Profile name="{$e.Profiles.SVS.Name}">
            <EntityRegistrantName>{$e.Profiles.SVS.CompanyName}</EntityRegistrantName>
            <CompanyType>{$e.Profiles.SVS.CompanyType}</CompanyType>
            <Tickers>{
                for $t in $e.Profiles.SVS.Tickers[]
                return <Ticker>{$t}</Ticker>
            }</Tickers>
            <Tags>{
                for $t in $e.Profiles.SVS.Tags[]
                return <Tag>{$t}</Tag>
            }
            </Tags>
        </Profile>
    </Entity>
  }</Entities>)
};

declare function local:to-csv($entities as object*) as string*
{
    csv:serialize(
        for $e in $entities
        return  {
            ID : $e._id,
            Profile : "SVS",
            EntityName : $e.Profiles.SVS.CompanyName,
            CompanyType : $e.Profiles.SVS.CompanyType,
            Tickers : string-join($e.Profiles.SVS.Tickers[], " "),
            Tags : string-join($e.Profiles.SVS.Tags[], " ")
        },
        { serialize-null-as : "" }
    )
};

let $format  := lower-case(request:param-values("format")[1])
let $ruts    := request:param-values("rut") ! ("http://www.svs.cl/rut " || $$) 
let $tags    := request:param-values("tag") ! upper-case($$) (: DOW30, SP500, FORTUNE100 :)
let $tickers := request:param-values("ticker")
let $entities := 
    for $entity in 
        if (exists(($ruts, $tags, $tickers)))
        then
            for $entity in (entities:entities($ruts))
            group by $entity._id (: duplicate elimination :)
            return $entity[1]
        else
            entities:entities()
    order by $entity.Profiles.SVS.CompanyName (: companies:name() ? :)
>>>>>>> svsxbrl.info bootstrap
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
