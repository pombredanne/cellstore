jsoniq version "1.0";

import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";

import module namespace sec-networks = "http://xbrl.io/modules/bizql/profiles/sec/networks";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";

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
let $entity    := archives:entities($component.Archive)
return
     if (session:only-dow30($entity) or session:valid())
     then {
        let $fact-table := sec-networks:fact-tables($component)
        return 
            switch ($format)
            case "xml" return local:to-xml($fact-table)
            case "text" return local:to-csv($fact-table)
            default return {
                EntityRegistrantName : $entity.Profiles.SEC.CompanyName,
                ShortName : sec-networks:tables($component, {IncludeImpliedTable: true}).Name,  
                Label : $component.Label,
                AccessionNumber : $component.Archive,
                Columns : head($fact-table[]),
                FactTable : [ tail($fact-table[]) ]
            }
     } else {
        response:status-code(401);
        session:error("accessing fact table for an entity that is not in the DOW30", $format)
     }
