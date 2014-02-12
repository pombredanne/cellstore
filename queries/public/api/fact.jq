import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace concept-maps = "http://xbrl.io/modules/bizql/concept-maps";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

declare function local:pad-ciks($ciks as string*) as string*
{
    for $cik in $ciks
    let $cik := normalize-space($cik)
    where $cik castable as integer
    return
        format-integer($cik cast as integer, "0000000000") cast as string
};

let $format   := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)            
let $ciks     := distinct-values(local:pad-ciks(request:param-values("cik")) ! sec:normalize-cik($$))
let $period   := request:param-values("period", "FY")
let $year     := request:param-values("year")
let $concept  := request:param-values("concept")
let $map      := request:param-values("map", "FundamentalAccountingConcepts")
return 
  if (empty($ciks) or empty($period) or empty($year) or empty($concept))
  then
    response:status-code(400);
    session:error("missing parameter (" ||
      if (empty($ciks)) then "cik" else "" ||
      if (empty($period)) then " period" else "" ||
      if (empty($year)) then " year" else "" ||
      if (empty($concept)) then " concept" else "", $format)
  else 
    let $entities := entities:entities($ciks)
    return
      if (session:only-dow30($entity) or session:valid())
      then
        let $fact := if(exists($map)) 
                     then sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
                      $entity, $concept, $periodFocus, $yearFocus, { "concept-maps" : [ $map ]})
                 else sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
                  $entity, $concept, $periodFocus, $yearFocus)
        return if (exists($fact))
               then {
                 cik: $cik,
                 periodFocus: $periodFocus,
                 fiscalYearFocus: $yearFocus,
                 conceptName: $concept,
                 map: $mapName,
                 originalConcept: $fact.AuditTrails[].Data.OriginalConcept,
                 type: $fact.Type,
                 unit: $fact.Aspects."xbrl:Unit",
                 decimals: $fact.Decimals,
                 value: $value
             }
             else {
                response:status-code(404);
                session:error("fact not found", $format)
             }
    else {
        response:status-code(401);
        session:error("accessing filings of an entity that is not in the DOW30", $format)
    }
