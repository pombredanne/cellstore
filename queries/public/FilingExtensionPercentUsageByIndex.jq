import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

variable $stockIndex := let $stockIndex := request:param-values("$stockIndex","DOW30")
                        return if(empty(companies:companies-for-tags($stockIndex)))
                        then error(QName("local:INVALID-REQUEST"), "stock index not found: "||$stockIndex )
                        else $stockIndex;
                        
variable $periodFocus := let $periodFocus := request:param-values("fiscalPeriodFocus","FY")
                         return if (empty($periodFocus))
                                then error(QName("local:INVALID-REQUEST"),"fiscalPeriodFocus: mandatory parameter not found")
                                else $periodFocus;
variable $yearFocus := let $yearFocus := request:param-values("fiscalYearFocus","2012") cast as integer
                       return if (empty($yearFocus))
                                then error(QName("local:INVALID-REQUEST"), "fiscalYearFocus: mandatory parameter not found")
                                else $yearFocus;
let $format  := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :) 
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

return  if(($stockIndex eq "DOW30") or session:valid()) 
        then {
            stockIndex: $stockIndex,
            fiscalYear : $yearFocus, 
            fiscalPeriod : $periodFocus,
            ExtensionPercentageByCompany: [$stockIndexStats]
        } else {
            response:status-code(401);
            session:error("accessing filings of an entity that is not in the DOW30", $format)
        }

