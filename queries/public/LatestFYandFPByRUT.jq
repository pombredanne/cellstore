(: SVS OK :)
import module namespace svs = "http://xbrl.io/modules/bizql/profiles/svs/core";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/svs/companies";
import module namespace svs-fiscal = "http://xbrl.io/modules/bizql/profiles/svs/fiscal/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

variable $rut := let $rut := request:param-values("rut", "93.628.000-5")
                 return if (empty($rut))
                        then error(QName("local:INVALID-REQUEST"), "rut: mandatory parameter not found")
                        else if (empty(entities:entities(companies:eid($rut))))
                             then error(QName("local:INVALID-REQUEST"), "Given RUT:"||$rut|| " not found")
                             else $rut;
                             
let $format  := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)                              
let $entity := entities:entities(companies:eid($rut))
return  
    switch(session:check-access($entity, "data_sec"))
    case $session:ACCESS-ALLOWED return {
          cik: $cik,
let $latestFYFiling := svs-fiscal:latest-reported-fiscal-period($entity,"10-K")
let $latestFQFiling := svs-fiscal:latest-reported-fiscal-period($entity,"10-Q")
let $latestFYArchives := svs-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity,$latestFYFiling.period,$latestFYFiling.year)
let $latestFQArchives := svs-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity,$latestFQFiling.period,$latestFQFiling.year)
return  if (session:only-dow30($entity) or session:valid())
        then {
          rut: $rut,
          companyName: $entity.Profiles.SEC.CompanyName,
          latestFYPeriod: if($latestFYArchives)
                          then {fiscalYear: $latestFYFiling.year, fiscalPeriod: $latestFYFiling.period, endDate: svs:end-date($latestFYArchives[last()])}
                          else (),
          latestFQPeriod: if($latestFQArchives)
                          then {fiscalYear: $latestFQFiling.year, fiscalPeriod: $latestFQFiling.period, endDate: svs:end-date($latestFQArchives[last()])}
                          else (),
                          raw: $latestFQArchives(:,
        raw1: serialize($latestFYFiling), 
        raw2: serialize($latestFQArchives.Profiles.SEC.FilingDate):)
    } else {
        response:status-code(401);
        session:error("accessing filings of an entity that is not in the DOW30", $format)
    }
