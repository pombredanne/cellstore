import module namespace archives = "http://xbrl.io/modules/bizql/archives";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";

import module namespace req = "http://www.28msec.com/modules/http-request";

variable $cik := let $cik := req:param-values("cik","0000354950")
                 return if (empty($cik))
                            then error(QName("local:INVALID-REQUEST"), "cik: mandatory parameter not found")
                            else $cik;
variable $periodFocus := let $periodFocus := req:param-values("fiscalPeriodFocus","FY")
                         return if (empty($periodFocus))
                                then error(QName("local:INVALID-REQUEST"),"fiscalPeriodFocus: mandatory parameter not found")
                                else $periodFocus;
variable $yearFocus := let $yearFocus := req:param-values("fiscalYearFocus","2012") cast as integer
                       return if (empty($yearFocus))
                                then error(QName("local:INVALID-REQUEST"), "fiscalYearFocus: mandatory parameter not found")
                                else $yearFocus;

variable $entity := let $entity := entities:entities(sec:normalize-cik($cik))
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
let $stats := $archiveStats
return {
    "fiscalYear" : $yearFocus, 
    "fiscalPeriod" : $periodFocus, 
    "companyName" : $stats.companyName,
    "accessionNumber" : $stats.accessionNumber, 
    "qtyConcepts" : $stats.qtyConcepts, 
    "qtyExtConcepts" : $stats.qtyExtConcepts, 
    "percentExtUsage" : $stats.percentExtUsage
}

