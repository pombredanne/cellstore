
import module namespace sec = "http://28.io/modules/xbrl/profiles/sec/core";
import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace sec-fiscal = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

declare %an:sequential function local:filingPeriodInfo($archives as object*) as object*{
    for $archive in $archives
    return {
        fiscalPeriod: sec-fiscal:fiscal-period($archive),
        fiscalYear: sec-fiscal:fiscal-year($archive),
        endDate:  sec:end-date($archive)
    }
};

variable $cik := let $cik := request:param-values("cik","0000354950")
                 return if (empty($cik))
                        then error(QName("local:INVALID-REQUEST"), "cik: mandatory parameter not found")
                        else if (empty(entities:entities(companies:eid($cik))))
                             then error(QName("local:INVALID-REQUEST"), "Given CIK:"||$cik|| " not found")
                             else $cik;
                             
let $entity := entities:entities(companies:eid($cik))
let $archives :=  archives:archives-for-entities($entity)
let $format  := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)
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
