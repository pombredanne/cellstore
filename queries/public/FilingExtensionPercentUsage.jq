import module namespace archives = "http://xbrl.io/modules/bizql/archives";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";


variable $cik := let $cik := request:param-values("cik","0000354950")
                 return if (empty($cik))
                            then error(QName("local:INVALID-REQUEST"), "cik: mandatory parameter not found")
                            else $cik;
variable $periodFocus := let $periodFocus := request:param-values("fiscalPeriodFocus","FY")
                         return if (empty($periodFocus))
                                then error(QName("local:INVALID-REQUEST"),"fiscalPeriodFocus: mandatory parameter not found")
                                else $periodFocus;
variable $yearFocus := let $yearFocus := request:param-values("fiscalYearFocus","2012") cast as integer
                       return if (empty($yearFocus))
                                then error(QName("local:INVALID-REQUEST"), "fiscalYearFocus: mandatory parameter not found")
                                else $yearFocus;

variable $entity := let $entity := entities:entities(companies:eid($cik))
                    return if (empty($entity))
                           then  error(QName("local:INVALID-REQUEST"), "Given CIK:"||$cik|| " not found")
                           else  $entity;

variable $archive := let $archive :=  archives:archives-for-entities($entity)[sec-fiscal:fiscal-period($$)=$periodFocus][sec-fiscal:fiscal-year($$)=$yearFocus]
                     return if (empty($archive))
                           then  error(QName("local:INVALID-REQUEST"), "Filing not found")
                           else  $archive;
                           
variable $archiveStats := let $archiveStats := collection("filingStatsCache2")[$$.accessionNumber = $archive._id]
                          return if (empty($archiveStats))
                              then  error(QName("local:INVALID-REQUEST"), "Recent Filing! Extension statistics not yet compiled")
                              else  $archiveStats;
let $format  := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :) 
let $stats := $archiveStats
return  if (session:only-dow30($entity) or session:valid())
        then {
            "fiscalYear" : $yearFocus, 
            "fiscalPeriod" : $periodFocus, 
            "companyName" : $stats.companyName,
            "accessionNumber" : $stats.accessionNumber, 
            "qtyConcepts" : $stats.qtyConcepts, 
            "qtyExtConcepts" : $stats.qtyExtConcepts, 
            "percentExtUsage" : $stats.percentExtUsage
        } else {
            response:status-code(401);
            session:error("accessing filings of an entity that is not in the DOW30", $format)
        }

