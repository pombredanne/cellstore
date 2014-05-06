import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

variable $rut := let $rut := request:param-values("rut", "0000104169")
                 return if (empty($rut))
                        then error(QName("local:INVALID-REQUEST"), "rut: mandatory parameter not found")
                        else if (empty(entities:entities(companies:eid($rut))))
                             then error(QName("local:INVALID-REQUEST"), "Given RUT:"||$rut|| " not found")
                             else $rut;
                             
let $format  := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)                              
let $entity := entities:entities(companies:eid($rut))
let $latestFYFiling := sec-fiscal:latest-reported-fiscal-period($entity,"10-K")
let $latestFQFiling := sec-fiscal:latest-reported-fiscal-period($entity,"10-Q")
let $latestFYArchives := sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity,$latestFYFiling.period,$latestFYFiling.year)
let $latestFQArchives := sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity,$latestFQFiling.period,$latestFQFiling.year)
<<<<<<< HEAD
return  
    switch(session:check-access($entity, "data_sec"))
    case $session:ACCESS-ALLOWED return {
          cik: $cik,
=======
return  if (session:only-dow30($entity) or session:valid())
        then {
          rut: $rut,
>>>>>>> cik/CIK -> rut/RUT
          companyName: $entity.Profiles.SEC.CompanyName,
          latestFYPeriod: if($latestFYArchives)
                          then {fiscalYear: $latestFYFiling.year, fiscalPeriod: $latestFYFiling.period, endDate: sec:end-date($latestFYArchives[last()])}
                          else (),
          latestFQPeriod: if($latestFQArchives)
                          then {fiscalYear: $latestFQFiling.year, fiscalPeriod: $latestFQFiling.period, endDate: sec:end-date($latestFQArchives[last()])}
                          else ()
       }
    case $session:ACCESS-DENIED return {
          response:status-code(403);
          session:error("accessing filings of an entity that is not in the DOW30", $format)
       }
    case $session:ACCESS-AUTH-REQUIRED return {
          response:status-code(401);
          session:error("authentication required or session expired", $format)
       }
    default return error()
