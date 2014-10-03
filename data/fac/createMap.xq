xquery version "3.0";

import module namespace r = "http://zorba.io/modules/random";
import module namespace f = "http://expath.org/ns/file";

declare namespace err = "http://www.w3.org/2005/xqt-errors";

let $mappingFile as xs:string := "2014_10/fac-MAP-to-US-GAAP-2014-A-definition.xml"
let $labelsFile as xs:string := "2014_10/fac-label.xml"
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
            order by $fromid
            return
                let $from := replace($fromid, "_", ":")
                let $labelid := 
                  switch (true())
                  (: in fac-labels.xml there is a naming convention abnormality: fac_RevenuesExcludingInterestDividends_lbl 
                     for fac_RevenuesExcludingInterestAndDividends (missing the "And" in the label identifier) :)
                  case $fromid eq "fac_RevenuesExcludingInterestAndDividends" return "fac_RevenuesExcludingInterestDividends_lbl"
                  default return $fromid || "_lbl"
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
                                        let $order as item() := 
                                          let $order := distinct-values($to[.("Name") eq $concept]("Order"))
                                          return
                                            (: fac_IncomeLossFromEquityMethodInvestments is mapped twice to the same 
                                               concept us-gaap_IncomeLossFromEquityMethodInvestments (order 61 and 62) :)
                                            if($fromid eq "fac_IncomeLossFromEquityMethodInvestments")
                                            then $order[1]
                                            else $order
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
