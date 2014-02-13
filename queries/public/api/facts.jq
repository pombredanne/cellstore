import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";
import module namespace csv = "http://zorba.io/modules/json-csv";


declare function local:to-csv($f as object*) as string*
{
    csv:serialize($f)
};

declare function local:to-xml($f as object*) as element()*
{
    for $f in $f
    return
        <Fact>
            <CIK>{$f.CIK}</CIK>
            <CompanyName>{$f.CompanyName}</CompanyName>
            <Period>{$f.Period}</Period>
            <Year>{$f.Year}</Year>
            <Concept>{$f.Concept}</Concept>
            <Type>{$f.Type}</Type>
            <Unit>{$f.Unit}</Unit>
            <Value>{$f.Value}</Value>
        </Fact>
};

let $format   := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)            
let $ciks     := distinct-values(companies:eid(request:param-values("cik")))
let $indexes  := request:param-values("index") ! upper-case($$) (: DOW30, SP500, FORTUNE100 :)
let $tickers  := request:param-values("ticker")
let $period   := request:param-values("period", "FY")[1]
let $year     := request:param-values("year")[1] cast as integer
let $concept  := request:param-values("concept")[1]
let $map      := request:param-values("map")[1]
return 
  if (empty($year) or empty($concept))
  then {
    response:status-code(400);
    session:error("missing parameter(s) (" ||
      (if (empty($year)) then "year" else "") ||
      (if (empty($concept)) then " concept" else "") || ")", $format)
  } else  {
    let $entities := (companies:companies($ciks), companies:companies-for-tags($indexes), companies:companies-for-tickers($tickers))
    return
      if (empty($entities))
      then
          {
                response:status-code(404);
                session:error("entity not found (valid parameters: cik, ticker, index)", $format)
          }
      else if (session:only-dow30($entities) or session:valid())
      then 
        let $facts :=
            for $fact in
                if (exists($map) and $map eq "FundamentalAccountingConcepts") 
                then sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
                    $entities, $concept, $period, $year, { "concept-maps" : $map })
                else sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
                    $entities, $concept, $period, $year)
            return
                {|
                    {
                        CIK: $fact.Aspects.$facts:ENTITY,
                        CompanyName : companies:companies($fact.Aspects.$facts:ENTITY).Profiles.SEC.CompanyName,
                        Period: $fact.Profiles.SEC.Fiscal.Period,
                        Year: $fact.Profiles.SEC.Fiscal.Year,
                        Concept: $concept,
                        Type: $fact.Type,
                        Unit: $fact.Aspects."xbrl:Unit",
                        Decimals: $fact.Decimals,
                        Value: $fact.Value
                    },
                    if (exists($map) and $map eq "FundamentalAccountingConcepts")
                    then {
                        Map: $map,
                        OriginalConcept: $fact.AuditTrails[].Data.OriginalConcept
                    } else ()
                |} 
        return
            switch ($format)
            case "text" return string-join(local:to-csv($facts))
            case "xml" return <Facts>{local:to-xml($facts)}</Facts>
            default return [ $facts ]
      else {
        response:status-code(401);
        session:error("accessing facts of an entity that is not in the DOW30", $format)
      }
  }