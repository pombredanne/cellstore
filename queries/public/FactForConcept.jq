
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace concept-maps = "http://xbrl.io/modules/bizql/concept-maps";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

variable $cik := let $cik := request:param-values("cik","0000019617")
                 return if (empty($cik))
                        then error(QName("local:INVALID-REQUEST"), "cik: mandatory parameter not found")
                        else $cik;
variable $periodFocus := let $periodFocus := request:param-values("fiscalPeriodFocus", "YTD3")
                         return if (empty($periodFocus))
                         then error(QName("local:INVALID-REQUEST"),"fiscalPeriodFocus: mandatory parameter not found")
                         else $periodFocus;
variable $yearFocus := let $yearFocus := request:param-values("fiscalYearFocus","2013")
                       return if (empty($yearFocus))
                              then error(QName("local:INVALID-REQUEST"), "fiscalYearFocus: mandatory parameter not found")
                              else $yearFocus cast as integer;

variable $entity := let $entity := entities:entities(companies:eid($cik))
                    return if (empty($entity))
                           then  error(QName("local:INVALID-REQUEST"), "Given CIK:"||$cik|| " not found")
                           else  $entity;

variable $mapName := let $mapName := request:param-values("map","None")
                     return 
                         if($mapName ne "None" and not(exists(concept-maps:concept-maps($mapName))))
                            then error(QName("local:INVALID-REQUEST"), "Given map:"||$mapName|| " not found")
                            else $mapName;
                            

variable $conceptMap :=  if ($mapName eq "None") 
                         then ()
                         else concept-maps:concept-maps($mapName);
                    
variable $concept := let $concept := request:param-values("conceptName", "us-gaap:AntidilutiveSecuritiesExcludedFromComputationOfEarningsPerShareAmount")
                     return if (empty($concept))
                            then error(QName("local:INVALID-REQUEST"),"conceptName: mandatory parameter not found")
                            else $concept;

variable $fact := let $fact := if(exists($conceptMap)) 
                               then sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years($entity,$concept, $periodFocus, $yearFocus, { "concept-maps" : [ $conceptMap ]})
                 else sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years($entity,$concept, $periodFocus, $yearFocus)
                  return if (empty($fact))
                            then error(QName("local:INVALID-REQUEST"),"fact not found")
                            else $fact;
let $value := if ($fact.Value castable as decimal)
             then $fact.Value cast as decimal
             else $fact.Value
let $format  := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)            
return 
    if (session:only-dow30($entity) or session:valid())
    then  {
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
        response:status-code(401);
        session:error("accessing filings of an entity that is not in the DOW30", $format)
    }