(: SVS OK :)
import module namespace svs = "http://xbrl.io/modules/bizql/profiles/svs/core";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace svs-fiscal = "http://xbrl.io/modules/bizql/profiles/svs/fiscal/core";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/svs/companies";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

declare %an:sequential function local:filingPeriodInfo($archives as object*) as object*{
    for $archive in $archives
    return {
        fiscalPeriod: svs-fiscal:fiscal-period($archive),
        fiscalYear: svs-fiscal:fiscal-year($archive),
        endDate:  svs:end-date($archive)
    }
};

variable $rut := let $rut := request:param-values("rut", "93.628.000-5")
                 return if (empty($rut))
                        then error(QName("local:INVALID-REQUEST"), "rut: mandatory parameter not found")
                        else if (empty(entities:entities(companies:eid($rut))))
                             then error(QName("local:INVALID-REQUEST"), "Given RUT:"||$rut|| " not found")
                             else $rut;
                             
let $entity := entities:entities(companies:eid($rut))
let $archives :=  archives:archives-for-entities($entity)
let $format  := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)
<<<<<<< HEAD
return  
    switch(session:check-access($entity, "data_sec"))
    case $session:ACCESS-ALLOWED return {
            cik: $cik,
            companyName: $entity.Profiles.SEC.CompanyName,
            filings: [local:filingPeriodInfo($archives)]
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
=======
return  if(session:only-dow30($entity) or session:valid()) 
        then {
            rut: $rut,
            companyName: $entity.Profiles.SVS.CompanyName,
            filings: [local:filingPeriodInfo($archives)]
        } else {
            response:status-code(401);
            session:error("accessing filings of an entity that is not in the DOW30", $format) 
        }

<<<<<<< HEAD
(: entities:entities(seccore:normalize-rut($rut)) can be simplified to secprofilefilings:filings($rut) :)
>>>>>>> cik/CIK -> rut/RUT
=======
(: entities:entities(seccore:normalize-cik($cik)) can be simplified to secprofilefilings:filings($cik) :)
>>>>>>> Updated query name in information.js and backend.js
