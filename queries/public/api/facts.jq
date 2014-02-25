import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";
import module namespace csv = "http://zorba.io/modules/json-csv";

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
                { "Decimals" : $o.Decimals }
            |}
        )
    )
};

declare function local:to-xml($o as object*)
{
    <FactTable NetworkIdentifier="http://bizql.io/facts"
            TableName="xbrl:Facts">{
        for $o in $o
        let $a := $o.Aspects
        return
            <Fact>
                <Aspects>{
                    for $k in keys($a)
                    return
                        <Aspect>
                            <Name>{$k}</Name>
                            <Value>{$a.$k}</Value>
                        </Aspect>
                }</Aspects>
                <Value> 
                    <Unit>{$o.Unit}</Unit>
                    <NumericValue>{$o.Value}</NumericValue>
                    <Decimals>{$o.Decimals}</Decimals>
                </Value>
            </Fact>
    }</FactTable>
};

declare function local:facts($entities, $period, $year, $concepts, $map)
{
    for $entity in $entities
    let $year := if (exists($year))
                 then $year cast as integer 
                 else if ($period = "FY")
                      then sec-fiscal:latest-reported-fiscal-period($entity, "10-K").year
                      else sec-fiscal:latest-reported-fiscal-period($entity, "10-Q").year
    for $concept in $concepts
    for $fact in
                    if (exists($map) and $map eq "FundamentalAccountingConcepts") 
                    then sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
                        $entity, $concept, $period, $year, { "concept-maps" : $map })
                    else sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
                        $entity, $concept, $period, $year)
                    order by $fact.Profiles.SEC.Fiscal.Acceptance descending
                    group by $fact.Aspects."xbrl:Entity",
                             $fact.Profiles.SEC.Fiscal.Acceptance,
                             $fact.Profiles.SEC.Fiscal.Period 
    return {
        Aspects : {|
            { "xbrl:ReportingEntity" : $entity._id || " (" || $entity.Profiles.SEC.CompanyName || ")" },
            { "bizql:FiscalPeriod" : $fact.Profiles.SEC.Fiscal.Period },
            { "bizql:FiscalYear" : $fact.Profiles.SEC.Fiscal.Year },
            { "xbrl:Concept" : $concept },
            if (exists($map))
            then { "bizql:ReportedConcept" : $fact.AuditTrails[].Data.OriginalConcept }
            else ()
        |},
        Type: $fact[1].Type,
        Unit: $fact[1].Aspects."xbrl:Unit",
        Decimals: $fact[1].Decimals,
        Value: $fact[1].Value
    }
};

let $format   := lower-case(request:param-values("format")[1])
let $ciks     := distinct-values(companies:eid(request:param-values("cik")))
let $tags     := request:param-values("tag") ! upper-case($$) (: DOW30, SP500, FORTUNE100 :)
let $tickers  := request:param-values("ticker")
let $sics     := request:param-values("sic")
let $period   := request:param-values("fiscalPeriod", "FY")[1]
let $year     := request:param-values("fiscalYear")[1]
let $concepts := request:param-values("concept")
let $map      := request:param-values("map")[1]
let $period   := switch($period)
                 case "Q1" return ("Q1","YTD1")
                 case "Q2" return ("Q2","YTD2")
                 case "Q3" return ("Q3","YTD3")
                 default return ("Q4","FY")
return 
  if (empty($concepts))
  then {
    response:status-code(400);
    session:error("concept: missing parameter", $format)
  } else
    let $entities := (
        companies:companies($ciks),
        companies:companies-for-tags($tags),
        companies:companies-for-tickers($tickers),
        companies:companies-for-SIC($sics)
    )
    return switch(true)
      case empty($entities) return {
        response:status-code(404);
        session:error("entity not found (valid parameters: cik, ticker, tag, sic)", $format)
      }
      case not (session:only-dow30($entities) or session:valid()) return {
        response:status-code(401);
        session:error("accessing facts of an entity that is not in the DOW30", $format)
      }
      default return
        let $facts := local:facts($entities, $period, $year, $concepts, $map)
        return
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
                { 
                    NetworkIdentifier : "http://bizql.io/facts",
                    TableName : "xbrl:Facts",
                    FactTable : [ $facts ]
                }
            } 