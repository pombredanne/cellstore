
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace req = "http://www.28msec.com/modules/http-request";

declare %an:sequential function local:filingPeriodInfo($archives) {
    for $archive in $archives
    return {
        fiscalPeriod: sec-fiscal:fiscal-period($archive),
        fiscalYear: sec-fiscal:fiscal-year($archive),
        endDate:  sec:end-date($archive)
    }
};

variable $cik := let $cik := req:param-values("cik","0000354950")
                 return if (empty($cik))
                        then error(QName("local:INVALID-REQUEST"), "cik: mandatory parameter not found")
                        else if (empty(entities:entities(sec:normalize-cik($cik))))
                             then error(QName("local:INVALID-REQUEST"), "Given CIK:"||$cik|| " not found")
                             else $cik;
                             
let $entity := entities:entities(sec:normalize-cik($cik))
let $archives :=  archives:archives-for-entities($entity)
return {
   cik: $cik,
   companyName: $entity.Profiles.SEC.CompanyName,
   filings: [local:filingPeriodInfo($archives)]
}

(: entities:entities(seccore:normalize-cik($cik)) can be simplified to secprofilefilings:filings($cik) :)