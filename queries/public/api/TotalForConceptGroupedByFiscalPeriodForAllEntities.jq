import module namespace api = "http://apps.28.io/api";
import module namespace facts = "http://28.io/modules/xbrl/facts";
import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace sec-fiscal = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace csv = "http://zorba.io/modules/json-csv";
import module namespace session = "http://apps.28.io/session";

declare function local:to-csv($o as object*) as string
{
    string-join(
        csv:serialize(
            for $o in $o
            let $a := $o.Aspects
            return {|
                for $k in keys($a)
                return { $k : $a.$k },
                { "Unit" :  $o."Unit" },
                { "Value" : $o.Value },
                { "Decimals" : "INF" },
                { "NumReports" : $o.NumReports }
            |},
            { serialize-null-as : "" }
        )
    )
};

declare function local:to-xml($o as object*) as node()*
{
    (
    session:comment("xml"),
    <FactTable NetworkIdentifier="http://xbrl.io/TotalForConceptGroupedByFiscalPeriodForAllEntities"
            TableName="xbrl:TotalForConceptGroupedByFiscalPeriodForAllEntities">{

        for $o in $o
        let $a := $o.Aspects
        return
            <Fact>{
                (<Aspects>{
                    for $k in keys($a)
                    return
                        <Aspect>
                            <Name>{$k}</Name>
                            <Value>{$a.$k}</Value>
                        </Aspect>
                }</Aspects>,
                <Unit>{$o.Unit}</Unit>,
                <Type>{$o.Value}</Type>,
                <Value>{$o.Value}</Value>,
                <Decimals>INF</Decimals>,
                <NumReports>{$o.NumReports}</NumReports>,
                if (exists($o.Debug))
                then
                    <Debug>{
                        for $a in $o.Debug[]
                        return <InstanceURL value="{$a.Value}">{$a.InstanceURL}</InstanceURL>
                    }</Debug>
                else ()
                )
            }</Fact>
    }</FactTable>)
};

declare  %rest:case-insensitive                 variable $format             as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $fiscalYear         as string* external := "ALL";
declare  %rest:case-insensitive %rest:distinct  variable $fiscalPeriod       as string* external := "FY";
declare  %rest:case-insensitive %rest:distinct  variable $concept            as string  external := "us-gaap:Assets";
declare  %rest:case-insensitive                 variable $map                as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $tag                as string* external;
declare  %rest:case-insensitive                 variable $debug              as boolean external := false;

session:audit-call();

(: Post-processing :)
let $format as string? := api:preprocess-format($format)
let $fiscalYear as integer* := api:preprocess-fiscal-years($fiscalYear)
let $fiscalPeriod as string* := api:preprocess-fiscal-periods($fiscalPeriod)
let $tag as string* := api:preprocess-tags($tag)
 
(: Object resolution :)
let $json-result := 
    let $facts :=
        for $fact in sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
            (if (exists($tag))
                then companies:companies-for-tags($tag)
                else entities:entities()
            )[$$.Profiles.SEC.IsTrust eq false],
            $concept,
            $fiscalPeriod,
            $fiscalYear,
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
                "xbrl:Entity" : "bizql:AllReportingEntitiesMember",
                "dei:LegalEntityAxis" : "sec:DefaultLegalEntity",
                "xbrl:Concept" : $concept,
                "bizql:FiscalYear" : $fyf,
                "bizql:FiscalPeriod" : $fpf
            }
        },
        { "Value" : sum($fact.Value[$$ ne null]) },
        { "Type"  : "NumericValue" },
        { "Unit" : $unit },
        { "Decimals"  : "INF" },
        { "NumReports" : count(distinct-values($fact.$facts:ASPECTS."sec:Archive")) },

        if ($debug)
        then
            {
                "Debug" : [ $fact ! 
                            {
                                "InstanceURL" : archives:archives(distinct-values($$.$facts:ASPECTS."sec:Archive")).InstanceURL,
                                "Value" : $$.Value,
                                "Decimals" : $$.Decimals
                            } ]
            }
        else ()
    |}
return
    switch ($format)
    case "xml" return {
        response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
        local:to-xml($json-result)
    }
    case "text" case "csv" return {
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
        {|
            { NetworkIdentifier : "http://xbrl.io/TotalForConceptGroupedByFiscalPeriodForAllEntities" },
            { TableName : "xbrl:TotalForConceptGroupedByFiscalPeriodForAllEntities" },
            { FactTable : [ $json-result ] },
            session:comment("json")
        |}
    }
