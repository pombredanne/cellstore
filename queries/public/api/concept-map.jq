import module namespace util = "http://secxbrl.info/modules/util";
import module namespace session = "http://apps.28.io/session";

import module namespace concept-maps = "http://xbrl.io/modules/bizql/concept-maps";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
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

session:audit-call();

(: Query parameters :)
let $format as string?         := request:param-values("format")
let $map as string?            := request:param-values("map")
let $name as string?            := request:param-values("name")

(: Object resolution :)
let $format as string? := (: backwards compatibility, to be deprecated  :)
    lower-case(($format, substring-after(request:path(), ".jq."))[1])
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
    then util:serialize($map, $comment, $serializers, $format, "components")
    else {
        response:status-code(404);
        response:content-type("application/json");
        session:error("concept map not found", "json")
    }
