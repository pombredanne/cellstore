
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
variable $periodFocus := let $periodFocus := request:param-values("fiscalPeriodFocus", "Q2")
                         return if (empty($periodFocus))
                         then error(QName("local:INVALID-REQUEST"),"fiscalPeriodFocus: mandatory parameter not found")
                         else $periodFocus;
variable $periodDataVarieties  := switch($periodFocus)
                                case "Q1" return ("Q1","YTD1")
                                case "Q2" return ("Q2","YTD2")
                                case "Q3" return ("Q3","YTD3")
                                default return ("Q4","FY");
                                
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

variable $facts := let $facts := if(exists($conceptMap)) 
                               then sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years($entity,$concept, $periodDataVarieties, $yearFocus,
                                    { "concept-maps" : [ $conceptMap ]})
                                else sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years($entity,$concept, $periodDataVarieties, $yearFocus)
                                    return  if (empty($facts))
                                            then error(QName("local:INVALID-REQUEST"),"facts not found")
                                            else $facts;
                                            
let $uniqueFacts := for $fact in $facts
    order by $fact.Profiles.SEC.Fiscal.Acceptance descending
    group by $fact.Profiles.SEC.Fiscal.Acceptance,$fact.Profiles.SEC.Fiscal.Period 
    return {
            fiscalPeriod: $fact[1].Profiles.SEC.Fiscal.Period,
            fiscalYear: $fact[1].Profiles.SEC.Fiscal.Year,
            unit: $fact[1].Aspects."xbrl:Unit",
            value:  if ($fact[1].Value castable as decimal)
                    then $fact[1].Value cast as decimal
                    else $fact[1].Value,
            decimals: $fact[1].Decimals
    }                                       
let $format  := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)            
return 
    if (session:only-dow30($entity) or session:valid())
    then  {
        cik: $cik,
        periodFocus: $periodFocus,
        fiscalYearFocus: $yearFocus,
        conceptName: $concept,
        map: $mapName,
        originalConcept: $facts[1].AuditTrails[].Data.OriginalConcept,
        facts: [$uniqueFacts]
    }
    else {
        response:status-code(401);
        session:error("accessing filings of an entity that is not in the DOW30", $format)
    }
