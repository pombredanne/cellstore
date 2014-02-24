import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace csv = "http://zorba.io/modules/json-csv";

declare function local:to-csv($o as object*) as string
{
    string-join(
        csv:serialize(
            for $o in $o
            let $a := $o.Aspects
            return {
                "xbrl:ReportingEntity" : "bizql:AllreportingEntitiesMember",
                "dei:LegalEntityAxis" : "sec:DefaultLegalEntity",
                "xbrl:Concept" : $a."xbrl:Concept",
                "bizql:FiscalYear" : $a."bizql:FiscalYear",
                "bizql:FiscalPeriod" : $a."bizql:FiscalPeriod",
                "bizql:NumReports" : $a."bizql:NumReports",
                "Unit" :  $o."Unit",
                "Value" : $o.Value,
                "Decimals" : "INF"
            }
        )
    )
};

declare function local:to-xml($o as object*)
{
    <FactTable NetworkIdentifier="http://xbrl.io/TotalForConceptGroupedByFiscalPeriodForAllEntities"
            TableName="xbrl:TotalForConceptGroupedByFiscalPeriodForAllEntities">{
        for $o in $o
        let $a := $o.Aspects
        return
            <Fact>{
                (<Aspects>
                    <Aspect>
                        <Name>xbrl:ReportingEntity</Name>
                        <Value>bizql:AllreportingEntitiesMember</Value>
                    </Aspect>
                    <Aspect>
                        <Name>dei:LegalEntityAxis</Name>
                        <Value>sec:DefaultLegalEntity</Value>
                    </Aspect>
                    <Aspect>
                        <Name>xbrl:Concept</Name>
                        <Value>{$a."xbrl:Concept"}</Value>
                    </Aspect>
                    <Aspect>
                        <Name>bizql:FiscalYear</Name>
                        <Value>{$a."bizql:FiscalYear"}</Value>
                    </Aspect>
                    <Aspect>
                        <Name>bizql:FiscalPeriod</Name>
                        <Value>{$a."bizql:FiscalPeriod"}</Value>
                    </Aspect>
                    <Aspect>
                        <Name>bizql:NumReports</Name>
                        <Value>{$a."bizql:NumReports"}</Value>
                    </Aspect>
                </Aspects>,
                <Value>
                    <Unit>{$o.Unit}</Unit>
                    <NumericValue>{$o.Value}</NumericValue>
                    <Decimals>INF</Decimals>
                </Value>,
                if (exists($o.Debug))
                then
                    <Debug>{
                        for $a in $o.Debug[]
                        return <InstanceURL value="{$a.Value}">{$a.InstanceURL}</InstanceURL>
                    }</Debug>
                else ()
                )
            }</Fact>
    }</FactTable>
};
 
let $format  := lower-case((request:param-values("format"), substring-after(request:path(), ".jq."))[1]) (: text, xml, or json (default) :)
let $period  := let $period := upper-case(request:param-values("period", "FY")[1])
                return  if ($period = ("Q1", "Q2", "Q3", "FY"))
                        then $period
                        else error(xs:QName("local:INVALID-PERIOD"), $period || ": period value must be one of Q1, Q2, Q3, FY")
let $concept := request:param-values("concept", "us-gaap:Assets")[1]
let $map     := request:param-values("map")[1]
let $tags    := request:param-values("tag")
let $debug   := request:param-values("debug")
                
let $json-result := 
    (: Computes the total assets of all filing companies, grouped by fiscal year and currency :)
    let $facts :=
        (: Getting all facts, but restricting to just one per entity and per fiscal year :)
        for $fact in sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
            (if (exists($tags))
                then companies:companies-for-tags(upper-case($tags))
                else entities:entities()
            )[$$.Profiles.SEC.IsTrust eq false],
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
    return {|
        {
            Aspects : {
                "xbrl:ReportingEntity" : "bizql:AllreportingEntitiesMember",
                "dei:LegalEntityAxis" : "sec:DefaultLegalEntity",
                "xbrl:Concept" : $concept,
                "bizql:FiscalYear" : $fyf,
                "bizql:FiscalPeriod" : $fpf,
                "bizql:NumReports" : count(distinct-values($fact.Archive))
            }
        },
        { "Value" : sum($fact.Value[$$ ne null]) },
        { "Type"  : "NumericValue" },
        { "Unit" : $unit },
        { "Decimals"  : "INF" },
        if (exists($debug) and $debug)
        then
            {
                "Debug" : [ $fact ! { "InstanceURL" : archives:archives(distinct-values($$.Archive)).InstanceURL, "Value" : $$.Value } ]
            }
        else ()
    |}
return
    switch ($format)
    case "xml" return {
        response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
        local:to-xml($json-result)
    }
    case "text" return {
        response:content-type("text/csv");
        response:header("Content-Disposition", "attachment; filename=Total-" || $concept || ".csv");
        local:to-csv($json-result)
    }
    case "csv" return {
        response:content-type("text/csv");
        response:header("Content-Disposition", "attachment; filename=Total-" || $concept || ".csv");
        local:to-csv($json-result)
    }
    case "excel" return {
        response:content-type("application/vnd.ms-excel");
        response:header("Content-Disposition", "attachment; filename=Total-" || $concept || ".csv");
        local:to-csv($json-result)
    }
    default return {
        response:content-type("application/json");
        response:serialization-parameters({"indent" : true});
        { 
            NetworkIdentifier : "http://xbrl.io/TotalForConceptGroupedByFiscalPeriodForAllEntities",
            TableName : "xbrl:TotalForConceptGroupedByFiscalPeriodForAllEntities",
            FactTable : [ $json-result ]
        }
    }