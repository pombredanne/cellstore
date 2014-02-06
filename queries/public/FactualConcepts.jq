import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace req = "http://www.28msec.com/modules/http-request";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
declare namespace an = "http://zorba.io/annotations";

declare %an:sequential function local:conceptsAndLabels($archive)
{
    
    let $facts := facts:facts-for-archives($archive)
    let $concepts := distinct-values($facts.Aspects."xbrl:Concept")
    for $concept in $concepts
    let $label := replace(tokenize($concept,":")[2],"([A-Z])([A-Z])([a-z])|([a-z])([A-Z])","$1$4 $2$3$5")
    return
        {name: $concept, label: $label}
        
};

variable $cik := let $cik := req:param-values("cik","0000354950")
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

variable $archive := let $archive :=  archives:archives-for-entities($entity)[sec-fiscal:fiscal-period($$)=$periodFocus][sec-fiscal:fiscal-year($$)=$yearFocus]
                     return if (empty($archive))
                           then  error(QName("local:INVALID-REQUEST"), "Filing not found")
                           else  $archive;
  

let $conceptsInUse := local:conceptsAndLabels($archive)                            
return {
    cik: $cik,
    periodFocus: $periodFocus,
    fiscalYearFocus: $yearFocus,
    factualConcepts:[$conceptsInUse]
    (:entity: $entity,
    archive: serialize($archive):)
}


