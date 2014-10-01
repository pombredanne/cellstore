import module namespace sec = "http://28.io/modules/xbrl/profiles/sec/core";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace sec-fiscal = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";
import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace session = "http://apps.28.io/session";
import module namespace api = "http://apps.28.io/api";

(: Query parameters :)
declare  %rest:case-insensitive        variable $token         as string? external;
declare  (:%rest:env("REQUEST_URI"):)  variable $request-uri   as string  external := ""; (: backward compatibility :)
declare  %rest:case-insensitive  variable $format as string? external;
declare  %rest:case-insensitive  variable $cik    as string? external := "0000104169";

(: Post-processing :)
let $cik := if (empty(entities:entities(companies:eid($cik))))
            then error(QName("local:INVALID-REQUEST"), "Given CIK:"||$cik|| " not found")
            else $cik
let $format as string? := api:preprocess-format($format, $request-uri)

(: Object resolution :)
let $entity := entities:entities(companies:eid($cik))
let $latestFYFiling := sec-fiscal:latest-reported-fiscal-period($entity,"10-K")
let $latestFQFiling := sec-fiscal:latest-reported-fiscal-period($entity,"10-Q")
let $latestFYArchives := sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity,$latestFYFiling.period,$latestFYFiling.year)
let $latestFQArchives := sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity,$latestFQFiling.period,$latestFQFiling.year)
return  
    switch(session:check-access($token, $entity, "data_sec"))
    case $session:ACCESS-ALLOWED return {
          cik: $cik,
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
