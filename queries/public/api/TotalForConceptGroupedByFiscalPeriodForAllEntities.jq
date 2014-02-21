import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace csv = "http://zorba.io/modules/json-csv";

declare function local:to-xml($o as object*)
{
    <Results>{
        for $o in $o
        return
            <Result>
                <Concept>{$o.Concept}</Concept>
                <FiscalYearFocus>{$o.FiscalYearFocus}</FiscalYearFocus>
                <FiscalPeriodFocus>{$o.FiscalPeriodFocus}</FiscalPeriodFocus>
                <Unit>{$o.Unit}</Unit>
                <Value>{$o.Value}</Value>
                <Reports>{$o.Report}</Reports>
            </Result>
    }</Results>
};
 
let $format  := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)
let $period  := let $period := upper-case(request:param-values("period")[1])
                return  if ($period = ("Q1", "Q2", "Q3", "FY"))
                        then $period
                        else error(xs:QName("local:INVALID-PERIOD"), $period || ": period value must be one of Q1, Q2, Q3, FY")
let $concept := let $concept := request:param-values("concept")[1]
                return  if (empty($concept))
                        then error(xs:QName("local:INVALID-CONCEPT"), "concept parameter missing")
                        else $concept
let $map     := let $map := lower-case(request:param-values("map")[1])
                return if ($map eq "fundamentalaccountingconcepts")
                       then "FundamentalAccountingConcepts"
                       else error(xs:QName("local:INVALID-MAP"), $map || ": map parameter invalid")

let $json-result := 
    (: Computes the total assets of all filing companies, grouped by fiscal year and currency :)
    let $facts :=
        (: Getting all facts, but restricting to just one per entity and per fiscal year :)
        for $fact in sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
            entities:entities(),
            $concept,
            $period,
            (),
            {|
                if (exists($map))
                then { "concept-maps" : $map }
                else ()
            |}
        )
        group by $fyf := sec-fiscal:fiscal-year($fact),
                 $fpf := sec-fiscal:fiscal-period($fact),
                 $entity:= facts:entity-for-fact($fact)
        return ($fact[$$.Aspects."xbrl:Unit" eq "iso4217:USD"], $fact)[1]
    for $fact in $facts
    group by $fyf := sec-fiscal:fiscal-year($fact),
             $fpf := sec-fiscal:fiscal-period($fact),
             $unit := $fact.Aspects."xbrl:Unit"
    order by $fyf
    return {
        Concept : $concept,
        FiscalYearFocus : $fyf,
        FiscalPeriodFocus : $fpf,
        Unit : $unit,
        Value : format-number(sum($fact.Value[$$ ne null]), "###,000"),
        Reports : count(distinct-values($fact.Archive))
    }
return
    switch ($format)
    case "xml" return {
        response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
        local:to-xml($json-result)
    }
    case "text" return {
        response:content-type("text/csv");
        string-join(csv:serialize($json-result))
    }
    default return {
        response:content-type("application/json");
        response:serialization-parameters({"indent" : true});
        [ $json-result ]
    }