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
            |}
        )
    )
};

declare function local:to-xml($o as object*)
{
    (session:comment("xml"),
    <FactTable NetworkIdentifier="http://bizql.io/facts"
            TableName="xbrl:Facts">{
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

declare function local:facts($entities, $fiscal, $concepts, $map)
{
    for $entity in $entities
    for $f in $fiscal
    (: expand period :)
    let $period :=  switch($f.fiscalPeriod)
                    case "Q1" return ("Q1","YTD1")
                    case "Q2" return ("Q2","YTD2")
                    case "Q3" return ("Q3","YTD3")
                    default return ("Q4","FY")
    (: compute latest reported fiscalYear if non is specified :)
    let $year   := if ($f.fiscalYear ne null)
                   then $f.fiscalYear
                   else if ($period = "FY")
                        then sec-fiscal:latest-reported-fiscal-period($entity, "10-K").year
                        else sec-fiscal:latest-reported-fiscal-period($entity, "10-Q").year
    for $fact in for $f in 
                    if (exists($map) and $map eq "FundamentalAccountingConcepts") 
                    then sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
                        $entity, $concepts, $period, $year, { "concept-maps" : $map })
                    else sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
                        $entity, $concepts, $period, $year)
                  order by $f.Profiles.SEC.Fiscal.Acceptance descending
                  group by $f.Aspects."xbrl:Concept", $f.Profiles.SEC.Fiscal.Acceptance
                  return $f[1]
    return {|
        { Aspects : {|
            { "xbrl:Entity" : $fact.Aspects."xbrl:Entity" },
            { "bizql:FiscalPeriod" : $fact.Profiles.SEC.Fiscal.Period },
            { "bizql:FiscalYear" : $fact.Profiles.SEC.Fiscal.Year },
            { "xbrl:Concept" : $fact.Aspects."xbrl:Concept" }
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
        if (exists($map))
        then { "ReportedConcept" : $fact.AuditTrails[].Data.OriginalConcept[1] }
        else ()
    |}
};

let $format   := lower-case(request:param-values("format")[1])
let $ciks     := distinct-values(companies:eid(request:param-values("cik")))
let $tags     := request:param-values("tag") ! upper-case($$) (: DOW30, SP500, FORTUNE100 :)
let $tickers  := request:param-values("ticker")
let $sics     := request:param-values("sic")
let $fiscal   := for $i in request:param-values("fiscalPeriodYear", "FY")
                 return
                    {
                        fiscalPeriod : tokenize($i, "/")[1],
                        fiscalYear : let $t := tokenize($i, "/")[2]
                                     return if ($t castable as integer)
                                     then $t cast as integer
                                     else ()
                    }
(:let $year   := request:param-values("fiscalYear"):)
let $concepts := request:param-values("concept")
let $map      := request:param-values("map")[1]


(:let $period   := $period ! (switch($$)
                           case "Q1" return ("Q1","YTD1")
                           case "Q2" return ("Q2","YTD2")
                           case "Q3" return ("Q3","YTD3")
                           default return ("Q4","FY")) :)
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
        let $facts := local:facts($entities, $fiscal, $concepts, $map)
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
                {|
                    { NetworkIdentifier : "http://bizql.io/facts" },
                    { TableName : "xbrl:Facts" },
                    { FactTable : [ $facts ] },
                    session:comment("json")
                |}
            } 