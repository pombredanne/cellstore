import module namespace sec = "http://28.io/modules/xbrl/profiles/sec/core";
import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace sec-fiscal = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace session = "http://apps.28.io/session";
import module namespace api = "http://apps.28.io/api";

declare %an:sequential function local:filingPeriodInfo($archives as object*) as object*{
    for $archive in $archives
    return {
        fiscalPeriod: sec-fiscal:fiscal-period($archive),
        fiscalYear: sec-fiscal:fiscal-year($archive),
        endDate:  sec:end-date($archive)
    }
};

(: Query parameters :)
declare  %rest:case-insensitive  variable $token        as string? external;
declare  %rest:env               variable $request-uri  as string  external;
declare  %rest:case-insensitive  variable $format       as string? external;
declare  %rest:case-insensitive  variable $cik          as string  external := "0000354950";

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $cik := if (empty(entities:entities(companies:eid($cik))))
            then error(QName("local:INVALID-REQUEST"), "Given CIK:"||$cik|| " not found")
            else $cik

(: Object resolution :)
let $entity := entities:entities(companies:eid($cik))
let $archives :=  archives:archives-for-entities($entity)
return  
    switch(session:has-access($token, $entity, "data_sec"))
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
