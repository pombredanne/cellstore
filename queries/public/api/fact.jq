import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

let $format   := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)            
let $ciks     := distinct-values(companies:eid(request:param-values("cik")))
let $period   := request:param-values("period", "FY")
let $year     := request:param-values("year")
let $concept  := request:param-values("concept")
let $map      := request:param-values("map", "FundamentalAccountingConcepts")
return 
  if (empty(($ciks, $period, $year, $concept)))
  then {
    response:status-code(400);
    session:error("missing parameter (" ||
      (if (empty($ciks)) then "cik" else "") ||
      (if (empty($period)) then " period" else "") ||
      (if (empty($year)) then " year" else "") ||
      (if (empty($concept)) then " concept" else ""), $format)
  }
  else 
    let $entities := companies:companies($ciks)
    return
      if (session:only-dow30($entities) or session:valid())
      then
        for $fact in
            if(exists($map)) 
            then sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
                    $entities, $concept, $period, $year, { "concept-maps" : $map })
            else sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
                    $entities, $concept, $period, $year)
        return if (exists($fact))
               then {
                 cik: $fact.Aspects.$facts:ENTITY,
                 periodFocus: $fact.Profiles.SEC.Fiscal.Period,
                 fiscalYearFocus: $fact.Profiles.SEC.Fiscal.Year,
                 conceptName: $concept,
                 map: $map,
                 originalConcept: $fact.AuditTrails[].Data.OriginalConcept,
                 type: $fact.Type,
                 unit: $fact.Aspects."xbrl:Unit",
                 decimals: $fact.Decimals,
                 value: $fact.Value
             }
             else {
                response:status-code(404);
                session:error("fact not found", $format)
             }
    else {
        response:status-code(401);
        session:error("accessing filings of an entity that is not in the DOW30", $format)
    }
