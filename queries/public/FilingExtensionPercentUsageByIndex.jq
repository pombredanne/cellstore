import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace req = "http://www.28msec.com/modules/http-request";

variable $stockIndex := let $stockIndex := req:param-values("$stockIndex","DOW30")
                        return if(empty(companies:companies-for-tags($stockIndex)))
                        then error(QName("local:INVALID-REQUEST"), "stock index not found: "||$stockIndex )
                        else $stockIndex;
                        
variable $periodFocus := let $periodFocus := req:param-values("fiscalPeriodFocus","FY")
                         return if (empty($periodFocus))
                                then error(QName("local:INVALID-REQUEST"),"fiscalPeriodFocus: mandatory parameter not found")
                                else $periodFocus;
variable $yearFocus := let $yearFocus := req:param-values("fiscalYearFocus","2012") cast as integer
                       return if (empty($yearFocus))
                                then error(QName("local:INVALID-REQUEST"), "fiscalYearFocus: mandatory parameter not found")
                                else $yearFocus;

let $stockIndexStats := {
    for $entity in companies:companies-for-tags($stockIndex)
    let $archive :=  archives:archives-for-entities($entity)[sec-fiscal:fiscal-period($$)=$periodFocus][sec-fiscal:fiscal-year($$)=$yearFocus]
    let $stats := if(exists($archive))
                         then collection("filingStatsCache2")[$$.accessionNumber = $archive._id]
                         else ()
    return if(exists($stats)) 
    then { 
        companyName : $stats.companyName,
        accessionNumber : $stats.accessionNumber, 
        qtyConcepts : $stats.qtyConcepts, 
        qtyExtConcepts : $stats.qtyExtConcepts, 
        percentExtUsage : $stats.percentExtUsage                   
    } else ()
}

return {
        stockIndex: $stockIndex,
        fiscalYear : $yearFocus, 
        fiscalPeriod : $periodFocus,
        ExtensionPercentageByCompany: [$stockIndexStats]
    }

