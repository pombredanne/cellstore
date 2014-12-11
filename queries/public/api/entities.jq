import module namespace config = "http://apps.28.io/config";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

import module namespace csv = "http://zorba.io/modules/json-csv";

import module namespace entities = "http://28.io/modules/xbrl/entities";

import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";

(: Query parameters :)
declare  %rest:case-insensitive                 variable $token        as string? external;
declare  %rest:env                              variable $request-uri  as string  external;
declare  %rest:case-insensitive                 variable $format       as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $entity       as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $cik          as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $tag          as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker       as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $sic          as string* external;
declare  %rest:case-insensitive                 variable $profile-name as string  external := $config:profile-name;

session:audit-call($token);

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $tag as string* := api:preprocess-tags($tag)
let $tag := if (exists(($cik, $tag, $ticker, $sic)))
             then $tag
             else "ALL"

(: Object resolution :)
let $entities :=
    switch($profile-name)
    case "sec" return
        for $entity in companies:companies(
            $cik,
            $tag,
            $ticker,
            $sic)
        order by $entity.Profiles.SEC.CompanyName
        return $entity
    default return
        if(exists($entity)) then entities:entities($entity)
                            else entities:entities()
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
        case "sec"
        return string-join(companies:to-csv($res.Entities[]))
        default return
            string-join(
                csv:serialize(
                    for $e in $res.Entities[]
                    return { 
                        EID: $e._id
                    },
            { serialize-null-as : "" }),
        "")
    }
}
return api:serialize($result, $comment, $serializers, $format, "entities")
