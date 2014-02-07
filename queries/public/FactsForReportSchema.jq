import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace report-schemas = "http://xbrl.io/modules/bizql/report-schemas";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";

import module namespace req = "http://www.28msec.com/modules/http-request";

variable $cik := let $cik := req:param-values("cik","0000021344")
                 return if (empty($cik))
                            then error(QName("local:INVALID-REQUEST"), "cik: mandatory parameter not found")
                            else $cik;
variable $periodFocus := let $periodFocus := req:param-values("fiscalPeriodFocus","FY")
                         return if (empty($periodFocus))
                                then error(QName("local:INVALID-REQUEST"),"fiscalPeriodFocus: mandatory parameter not found")
                                else $periodFocus;
variable $yearFocus := let $yearFocus := req:param-values("fiscalYearFocus","2011")
                       return if (empty($yearFocus))
                                then error(QName("local:INVALID-REQUEST"), "fiscalYearFocus: mandatory parameter not found")
                                else $yearFocus cast as integer;

variable $entity := let $entity := entities:entities(sec:normalize-cik($cik))
                    return if (empty($entity))
                           then  error(QName("local:INVALID-REQUEST"), "Given CIK:"||$cik|| " not found")
                           else  $entity;

variable $archive := let $archive :=  sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, $periodFocus, $yearFocus)
                     return if (empty($archive))
                           then  error(QName("local:INVALID-REQUEST"), "Filing not found")
                           else  $archive;
                           
variable $reportSchema := let $reportSchema := req:param-values("reportSchema","FundamentalAccountingConcepts")
                          return if(empty($reportSchema))
                          then error(QName("local:INVALID-REQUEST"),"reportSchema: mandatory parameter not found") 
                          else $reportSchema;
                          
variable $schema := let $schema := report-schemas:report-schemas($reportSchema)
                    return if (empty($schema))
                    then  error(QName("local:INVALID-REQUEST"), "Given reportSchema:"||$schema|| " not found")
                    else $schema;

let $populatedSchema := sec:populate-schema-with-facts($schema, $archive)
return $populatedSchema