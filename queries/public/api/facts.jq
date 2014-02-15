import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";
import module namespace csv = "http://zorba.io/modules/json-csv";


declare function local:to-xml($f as object*, $total as boolean) as element()*
{
    for $f in $f
    return
        <Fact>{
            if ($total) then <CIKS>{$f.CIKS[] ! <CIK>{$$}</CIK>}</CIKS> else <CIK>{$f.CIK}</CIK>,
            if ($total) then <CompanyNames>{ $f.CompanyNames[] ! <CompanyName>{$$}</CompanyName>}</CompanyNames> else <CompanyName>{$f.CompanyName}</CompanyName>,
            <Period>{$f.Period}</Period>,
            <Year>{$f.Year}</Year>,
            <Concept>{$f.Concept}</Concept>,
            if ($total) then <Types>{$f.Types[] ! <Type>{$$}</Type>}</Types> else <Type>{$f.Type}</Type>,
            if ($total) then <Units>{$f.Units[] ! <Unit>{$$}</Unit>}</Units> else <Unit>{$f.Unit}</Unit>,
            <Value>{$f.Value}</Value>
        }</Fact>
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
    let $facts := for $fact in
                    if (exists($map) and $map eq "FundamentalAccountingConcepts") 
                    then sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
                        $entity, $concept, $period, $year, { "concept-maps" : $map })
                    else sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
                        $entity, $concept, $period, $year)
                    order by $fact.Profiles.SEC.Fiscal.Acceptance descending
                    group by $fact.Aspects."xbrl:Entity", $fact.Profiles.SEC.Fiscal.Acceptance, $fact.Profiles.SEC.Fiscal.Period 
                  return
                {|
                    {
                        CIK: $entity._id,
                        CompanyName : $entity.Profiles.SEC.CompanyName,
                        Period : $fact.Profiles.SEC.Fiscal.Period,
                        Year : $fact.Profiles.SEC.Fiscal.Year,
                        Concept: $concept,
                        Type: $fact[1].Type,
                        Unit: $fact[1].Aspects."xbrl:Unit",
                        Decimals: $fact[1].Decimals,
                        Value: $fact[1].Value
                    },
                    if (exists($map) and $map eq "FundamentalAccountingConcepts")
                    then {
                        Map: $map,
                        OriginalConcept: $fact.AuditTrails[].Data.OriginalConcept
                    } else ()
                |}
    return $facts
};

let $format   := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)            
let $ciks     := distinct-values(companies:eid(request:param-values("cik")))
let $indexes  := request:param-values("index") ! upper-case($$) (: DOW30, SP500, FORTUNE100 :)
let $tickers  := request:param-values("ticker")
let $sics     := request:param-values("sic")
let $period   := request:param-values("period", "FY")[1]
let $year     := request:param-values("year")[1]
let $concepts := request:param-values("concept")
let $map      := request:param-values("map")[1]
let $total    := let $total := request:param-values("total")[1] return if (exists($total)) then $total cast as boolean else false
let $period   := switch($period)
                 case "Q1" return ("Q1","YTD1")
                 case "Q2" return ("Q2","YTD2")
                 case "Q3" return ("Q3","YTD3")
                 default return ("Q4","FY")
return 
  if (empty($concepts))
  then {
    response:status-code(400);
    session:error("missing parameter(s) (concept)", $format)
  } else
    let $entities := (companies:companies($ciks), companies:companies-for-tags($indexes), companies:companies-for-tickers($tickers), companies:companies-for-SIC($sics))
    return switch(true)
      case empty($entities) return {
        response:status-code(404);
        session:error("entity not found (valid parameters: cik, ticker, index, sic)", $format)
      }
      case not (session:only-dow30($entities) or session:valid()) return {
        response:status-code(401);
        session:error("accessing facts of an entity that is not in the DOW30", $format)
      }
      default return
        let $facts := local:facts($entities, $period, $year, $concepts, $map)
        let $facts :=
            if ($total)
            then
                for $fact in $facts
                group by $fact.Concept
                return {
                    CIKS: [ distinct-values($fact.CIK) ],
                    CompanyNames : [ distinct-values($fact.CompanyName) ],
                    Period : $fact.Period[1],
                    Year : $fact.Year[1],
                    Concept: $fact.Concept[1],
                    Types: [ distinct-values($fact.Type) ],
                    Units: [ distinct-values($fact.Unit) ],
                    Value: sum($fact.Value)
                }
            else $facts
        return
            switch ($format)
            case "text" return
                if ($total)
                then {
                    response:status-code(400);
                    session:error("csv representation not available if using the total parameter", $format)
                } else string-join(csv:serialize($facts))
            case "xml" return <Facts>{local:to-xml($facts, $total)}</Facts>
            default return [ $facts ]
