xquery version "3.0";

import module namespace r = "http://zorba.io/modules/random";
import module namespace f = "http://expath.org/ns/file";

declare namespace err = "http://www.w3.org/2005/xqt-errors";

let $mappingFile as xs:string := "2014_07/fac-MAP-to-USGAAP2014-definition.xml"
let $labelsFile as xs:string := "2014_07/fac-label.xml"
let $mapping := parse-xml(f:read-text($mappingFile))
let $labels := parse-xml(f:read-text($labelsFile))
return 
    {
        "LinkName" : "link:definitionLink",
        "LinkRole" : "http://xbrl.io/fundamental-accounting-concepts",
        "ArcName" : "link:definitionArc",
        "ArcRole" : "http://www.xbrlsite.com/2013/fro/arcrole/class-subClass",
        "Kind" : "InterConceptTreeNetwork",
        "ShortName" : "ConceptMap",
        "CyclesAllowed" : "undirected",
        "Trees": {|
            for $arcs in $mapping/*:linkbase/*:definitionLink/*:definitionArc
            let $fromid := string($arcs/@*:from)
            group by $fromid
            return
                let $from := replace($fromid, "_", ":")
                let $labelid := $fromid || "_lbl"
                let $label := $labels/*:linkbase/*:labelLink/*:label[@*:label eq $labelid and @*:role eq "http://www.xbrl.org/2003/role/label"]/text()
                let $to := 
                    for $arc in $arcs
                    let $order := number(($arc/@order, "1")[1])
                    order by $order ascending
                    return 
                        {
                            "Name": replace(string($arc/@*:to), "_", ":"),
                            "Order": $order
                        }
                order by $from
                return
                    if(empty($label))
                    then 
                        error(xs:QName("local:Err"), "Couldn't find label for " || $from || " (Labelid: " || $labelid || ")")
                    else 
                        try{
                            {
                                $from : {
                                    "Id": r:uuid(),
                                    "Name": $from,
                                    "Label": $label,
                                    "To": {|
                                        for $concept in distinct-values($to("Name"))
                                        let $order as item() := distinct-values($to[.("Name") eq $concept]("Order"))
                                        return
                                            {
                                                $concept : {
                                                    "Id": r:uuid(),
                                                    "Name": $concept,
                                                    "Order": $order
                                            }
                                        }
                                    |}
                                }
                            }
                        } catch * {
                            error(xs:QName("local:Err2"), $fromid || ": " || $err:description)
                        }
        |}
}
