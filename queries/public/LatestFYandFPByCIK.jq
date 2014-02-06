import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";
import module namespace req = "http://www.28msec.com/modules/http-request";

import module namespace entities = "http://xbrl.io/modules/bizql/entities";


variable $cik := let $cik := req:param-values("cik", "0000104169")
                 return if (empty($cik))
                        then error(QName("local:INVALID-REQUEST"), "cik: mandatory parameter not found")
                        else if (empty(entities:entities(sec:normalize-cik($cik))))
                             then error(QName("local:INVALID-REQUEST"), "Given CIK:"||$cik|| " not found")
                             else $cik;
                             
let $entity := entities:entities(sec:normalize-cik($cik))
let $latestFYFiling := sec-fiscal:latest-reported-fiscal-period($entity,"10-K")
let $latestFQFiling := sec-fiscal:latest-reported-fiscal-period($entity,"10-Q")
let $latestFYArchives := sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity,$latestFYFiling.period,$latestFYFiling.year)
let $latestFQArchives := sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity,$latestFQFiling.period,$latestFQFiling.year)
return {
  cik: $cik,
  companyName: $entity.Profiles.SEC.CompanyName,
  latestFYPeriod: if($latestFYArchives)
                  then {fiscalYear: $latestFYFiling.year, fiscalPeriod: $latestFYFiling.period, endDate: sec:end-date($latestFYArchives[last()])}
                  else (),
  latestFQPeriod: if($latestFQArchives)
                  then {fiscalYear: $latestFQFiling.year, fiscalPeriod: $latestFQFiling.period, endDate: sec:end-date($latestFQArchives[last()])}
                  else ()(:,
  raw1: serialize($latestFYFiling), 
  raw2: serialize($latestFQArchives.Profiles.SEC.FilingDate):) 
}
