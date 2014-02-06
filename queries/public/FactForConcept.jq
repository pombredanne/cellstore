
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace concept-maps = "http://xbrl.io/modules/bizql/concept-maps";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";

import module namespace req = "http://www.28msec.com/modules/http-request";

variable $cik := let $cik := req:param-values("cik","0000104169")
                 return if (empty($cik))
                        then error(QName("local:INVALID-REQUEST"), "cik: mandatory parameter not found")
                        else $cik;
variable $periodFocus := let $periodFocus := req:param-values("fiscalPeriodFocus", "FY")
                         return if (empty($periodFocus))
                         then error(QName("local:INVALID-REQUEST"),"fiscalPeriodFocus: mandatory parameter not found")
                         else $periodFocus;
variable $yearFocus := let $yearFocus := req:param-values("fiscalYearFocus","2012")
                       return if (empty($yearFocus))
                              then error(QName("local:INVALID-REQUEST"), "fiscalYearFocus: mandatory parameter not found")
                              else $yearFocus cast as integer;

variable $entity := let $entity := entities:entities(sec:normalize-cik($cik))
                    return if (empty($entity))
                           then  error(QName("local:INVALID-REQUEST"), "Given CIK:"||$cik|| " not found")
                           else  $entity;

variable $archive := let $archive :=  sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, $periodFocus, $yearFocus)
                     return if (empty($archive))
                           then  error(QName("local:INVALID-REQUEST"), "Filing not found")
                           else  $archive;

variable $mapName := let $mapName := req:param-values("map","None")
                     return 
                         if($mapName ne "None" and not(exists(concept-maps:concept-maps($mapName))))
                            then error(QName("local:INVALID-REQUEST"), "Given map:"||$mapName|| " not found")
                            else $mapName;
                            

variable $conceptMap :=  if ($mapName eq "None") 
                         then ()
                         else concept-maps:concept-maps($mapName);
                    
variable $concept := let $concept := req:param-values("conceptName", "us-gaap:RevenueRecognitionPolicyTextBlock")
                     return if (empty($concept))
                            then error(QName("local:INVALID-REQUEST"),"conceptName: mandatory parameter not found")
                            else $concept;

variable $fact := let $fact := if(exists($conceptMap)) 
                               then sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years($entity,$concept, $periodFocus, $yearFocus, { "concept-maps" : [ $conceptMap ],  Hypercube: hypercubes:dimensionless-hypercube() } )
                 else sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years($entity,$concept, $periodFocus, $yearFocus, { Hypercube: hypercubes:dimensionless-hypercube() } )
                  return if (empty($fact))
                            then error(QName("local:INVALID-REQUEST"),"fact not found")
                            else $fact;
let $value := if ($fact.Value castable as decimal)
             then $fact.Value cast as decimal
             else $fact.Value
            
return {
    cik: $cik,
    periodFocus: $periodFocus,
    fiscalYearFocus: $yearFocus,
    conceptName: $concept,
    map: $mapName,
    type: $fact.Type,
    unit: $fact.Aspects."xbrl:Unit",
    value: $value,
    decimals: $fact.Decimals
    (:entity: serialize($entity):)
    (:archive: serialize($archive):)
    
}


(: archives:archives-for-entities($entity)[secprofiles:fiscal-period($$)=$periodFocus][secprofiles:fiscal-year($$)=$yearFocus]

can be changed to fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, $periodFocus, $yearFocus) :)

(: seccore:latest-main-fact-for-concept($archive,$concept)

will need to be changed to seccore:main-facts-for-archives-and-concepts($archive, $concept) :)