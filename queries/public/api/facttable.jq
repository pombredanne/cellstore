jsoniq version "1.0";

import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace session = "http://apps.28.io/session";

declare function local:to-xml($fact-table)
{
    <FactTable>{
        let $names := members($fact-table[1])
        for $f in $fact-table[position() gt 1]
        return
            <Fact>{
                for $i at $y in members($f)
                return 
                    element 
                        { fn:QName("", if (contains($names[$y], ":")) then substring-after($names[$y], ":") else $names[$y]) }
                        {$i}
            }</Fact>
    }</FactTable>
};

declare function local:to-csv($fact-table)
{
  string-join(
    for $f in $fact-table
    return string-join(members($f) ! ("\"" || ($$ cast as string) || "\""), ","), "\n")
};

let $format    := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)
let $cid       := request:param-values("cid")[1]
let $component := components:components($cid)
let $archive   := archives:archives($component.Archive)
let $entity    := entities:entities($archive.Entity)
return
     if (session:only-dow30($entity) or session:valid())
     then {
        for $c in $component
        let $short-name := let $hypercubes := $c.Hypercubes
                           let $keys := keys($hypercubes)
                           return
                            if (count($keys) gt 1)
                            then $keys[$$ ne "xbrl:DefaultHypercube"]
                            else "xbrl:DefaultHypercube"
        let $hypercube := hypercubes:hypercubes-for-components($c, $short-name)
        let $fact-table := hypercubes:fact-table-for-hypercube($hypercube, archives:archives($archive._id))[]
        return 
            switch ($format)
            case "xml" return local:to-xml($fact-table)
            case "text" return local:to-csv($fact-table)
            default return {
                Columns : $fact-table[1],
                FactTable : [ $fact-table[position() gt 1] ]
            }
     } else {
        response:status-code(401);
        session:error("accessing fact table for an entity that is not in the DOW30", $format)
     }