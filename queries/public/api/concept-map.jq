import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

import module namespace concept-maps = "http://28.io/modules/xbrl/concept-maps";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace csv = "http://zorba.io/modules/json-csv";

declare function local:to-xml($c as object) as node()*
{
    (
        session:comment("xml"),
        <ConceptMap name="{$c.ShortName}" linkrole="{$c.LinkRole}">{
            for $k in keys($c.Trees)
            return
                <Mapping>{
                     (
                         <Concept>{$k}</Concept>,
                         for $t in $c.Trees.$k.To[].Name
                         return
                             <MappedTo>{$t}</MappedTo>
                     )
                }
                </Mapping>
        }</ConceptMap>
    )
};

declare function local:to-csv($c as object) as string
{
    string-join(
        csv:serialize(
            for $k in keys($c.Trees)
            for $v at $y in keys($c."Trees".$k.To)
            return {
                "Concept" : $k,
                "MappedTo" : $v,
                "TryOrder" : $y
            }
        )
    )
};

declare  %rest:case-insensitive  variable $format  as string? external;
declare  %rest:case-insensitive  variable $map     as string? external;
declare  %rest:case-insensitive  variable $name    as string? external;

session:audit-call();

(: Post-processing :)
let $format as string? := api:preprocess-format($format)

(: Object resolution :)
let $map := ($map, $name)
let $map := concept-maps:concept-maps($map)
let $comment := {
    NumMaps: count($map)
}
let $serializers := {
    to-xml : local:to-xml#1,
    to-csv : local:to-csv#1
}

return
    if (exists($map))
    then api:serialize($map, $comment, $serializers, $format, "components")
    else {
        response:status-code(404);
        response:content-type("application/json");
        session:error("concept map not found", "json")
    }
