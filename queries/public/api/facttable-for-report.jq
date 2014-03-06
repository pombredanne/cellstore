
import module namespace report-schemas = "http://xbrl.io/modules/bizql/report-schemas";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

import module namespace csv = "http://zorba.io/modules/json-csv";

declare function local:to-csv($o as object*) as string?
{
    if (exists($o)) (: bug in csv:serialize :)
    then
    string-join(
        csv:serialize(
            for $o in $o
            let $a := $o.Aspects
            return {|
                for $k in keys($a)
                return { $k : $a.$k },
                { "Value" : $o.Value },
                if (exists($o."Unit"))
                then { "Unit" :  $o."Unit" }
                else (),
                if (exists($o.Decimals))
                then { "Decimals" : $o.Decimals }
                else(),
                { "EntityRegistrantName" : $o.EntityRegistrantName },
                if (exists($o.ReportedConcept))
                then { "ReportedConcept" : $o.ReportedConcept }
                else ()
            |},
            { serialize-null-as : "" }
        )
    )
    else ()
};

declare function local:to-xml($o as object*)
{
    (session:comment("xml"),
    <FactTable NetworkIdentifier="http://bizql.io/facttable-for-report"
            TableName="xbrl:FactTableForReport">{
        for $o in $o
        let $a := $o.Aspects
        return
            <Fact>{
                <Aspects>{
                    for $k in keys($a)
                    return
                        <Aspect>
                            <Name>{$k}</Name>
                            <Value>{$a.$k}</Value>
                        </Aspect>
                }</Aspects>,
                <Value>{$o.Value}</Value>,
                <Type>{$o.Type}</Type>,
                if (exists($o.Unit))
                then <Unit>{$o.Unit}</Unit>
                else(),
                if (exists($o.Decimals))
                then <Decimals>{$o.Decimals}</Decimals>
                else (),
                <EntityRegistrantName>{$o.EntityRegistrantName}</EntityRegistrantName>,
                if (exists($o.ReportedConcept))
                then <ReportedConcept>{$o."ReportedConcept"}</ReportedConcept>
                else ()
            }</Fact>
    }</FactTable>)
};

let $cik := request:param-values("cik")
let $ticker := request:param-values("ticker")
let $tag := request:param-values("tag")
let $report := request:param-values("report")
let $format  := request:param-values("format")
for $fiscalYear in request:param-values("fiscalYear") ! $$ cast as integer
for $fiscalPeriod in request:param-values("fiscalPeriod")
for $entity in (companies:companies($cik), companies:companies-for-tickers($ticker), companies:companies-for-tags($tag))
for $archive in sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, $fiscalPeriod, $fiscalYear) 
let $facts := for $fact in report-schemas:facts($report, $archive, {||})
            return
    {|
        { Aspects : {|
            for $a in keys($fact.Aspects)
            return { $a : $fact.Aspects.$a },
            { "bizql:FiscalPeriod" : $fiscalPeriod },
            { "bizql:FiscalYear" : $fiscalYear }
        |} },
        { Type: $fact.Type },
        if (exists($fact.Aspects."xbrl:Unit"))
        then { Unit: $fact.Aspects."xbrl:Unit" }
        else  (),
        if (exists($fact.Decimals))
        then { Decimals: $fact.Decimals }
        else (), 
        { Value: $fact.Value },
        { "EntityRegistrantName" : $entity.Profiles.SEC.CompanyName },
        { "ReportedConcept" : $fact.AuditTrails[].Data.OriginalConcept[1] }
        
    |}
return 
    if (session:only-dow30($entity) or session:valid())
        then {
            switch ($format)
            case "xml" return {
                response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
                local:to-xml($facts)
            }
            case "text" case "csv" return {
                response:content-type("text/csv");
                response:header("Content-Disposition", "attachment; filename=facts.csv");
                local:to-csv($facts)
            }
            case "excel" return {
                response:content-type("application/vnd.ms-excel");
                response:header("Content-Disposition", "attachment; filename=fact.csv");
                local:to-csv($facts)
            }
            default return {
                response:content-type("application/json");
                response:serialization-parameters({"indent" : true});
                {|
                    { NetworkIdentifier : "http://bizql.io/facts" },
                    { TableName : "xbrl:Facts" },
                    { FactTable : [ $facts ] },
                    session:comment("json")
                |}
            }
        }
        else {
            response:status-code(401);
            session:error("accessing filings of an entity that is not in the DOW30", $format)
        }
