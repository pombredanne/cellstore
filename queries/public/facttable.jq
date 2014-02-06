import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace request = "http://www.28msec.com/modules/http/request";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";

let $ident := request:parameter-values("ident")
let $component := components:components($ident)
let $short-name := let $hypercubes := $component.Hypercubes
                  let $keys := keys($hypercubes)
                  return
                    if (count($keys) gt 1)
                    then $keys[$$ ne "xbrl:DefaultHypercube"]
                    else "xbrl:DefaultHypercube"
let $hypercube := hypercubes:hypercubes-for-components($component, $short-name)
let $fact-table := hypercubes:fact-table-for-hypercube($hypercube, archives:archives($component.Archive))[]
return {
    Columns : $fact-table[1],
    FactTable : [ $fact-table[position() gt 1] ],
    NetworkLabel : $short-name
}
           