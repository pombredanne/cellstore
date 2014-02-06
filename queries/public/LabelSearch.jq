import module namespace credentials = "http://www.28msec.com/modules/credentials";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

declare function local:label-search-rec($concept, $search, $rank)
{
    for $t in $concept.To
    for $k in keys($t)
    let $c := $t($k)
    return {
        if (contains(lower-case($c.Label), lower-case($search)))
        then
            { $rank : { Concept: $c, Label : $c.Label } }
        else (),
        local:label-search-rec($c, $search, $rank + 1)
    }

};


declare function local:label-search($component, $search)
{
    {|
        for $t in $component.Networks[].Trees
        for $k in keys($t)
        return { $k : {|
            let $c := $t($k)
            return {|
                if (contains(lower-case($c.Label), lower-case($search)))
                then
                    { 0 : { Concept : $c, Label : $c.Label } }
                else (),
                local:label-search-rec($c, $search, 1)
            |}
        |}
        }
    |}
};

let $archive := archives:archives("0000950123-10-100214")
for $component in components:components-for-archives($archive)
return local:label-search($component, "long-term")