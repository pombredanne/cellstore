import module namespace config = "http://apps.28.io/config";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";
import module namespace backend = "http://apps.28.io/test";
import module namespace multiplexer = "http://28.io/modules/xbrl/profiles/multiplexer";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";

(: Query parameters :)
declare  %rest:case-insensitive                 variable $token        as string? external;
declare  %rest:env                              variable $request-uri  as string  external;
declare  %rest:case-insensitive                 variable $format       as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $eid          as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $cik          as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $tag          as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker       as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $sic          as string* external;
declare  %rest:case-insensitive                 variable $profile-name as string  external := $config:profile-name;

session:audit-call($token);

(: HTTP parameter post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $tag as string* := api:preprocess-tags($tag)
let $tag := if (exists(($cik, $tag, $ticker, $sic, $eid)))
             then $tag
             else "ALL"

(: Entity resolution :)
let $entities := multiplexer:entities($profile-name, $eid, $cik, $tag, $ticker, $sic)
let $entities :=
  for $entity in $entities
  return {|
    project($entity, "_id"),
    {
      Archives: backend:url(
        "filings",
        {|
          {
            eid: $entity._id,
            format: $format,
            profile-name: $profile-name
          },
          {
            fiscalYear: "ALL",
            fiscalPeriod: "ALL"
          }[$profile-name = ("sec", "japan")]
        |}, true)
    },
    trim($entity, "_id")
  |}

let $comment :=
{
    NumEntities: count($entities),
    TotalNumEntities: session:num-entities()
}

let $result := { "Entities" : [ $entities ] }
let $serializers := {
    to-xml : function($res as object) as node() {
        switch($profile-name)
        case "sec" return
        <Entities>{
            companies:to-xml($res.Entities[])
        }</Entities>
        default return <Entities>
            {
                for $id in $res.Entities[]._id
                return <EID>{$id}</EID>
            }
        </Entities>
    },
    to-csv : function($res as object) as string {
        switch($profile-name)
        case "sec" return string-join(companies:to-csv($res.Entities[]))
        default return api:json-to-csv($res.Entities[])
    }
}
return api:serialize($result, $comment, $serializers, $format, "entities")
