import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";
import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace session = "http://apps.28.io/session";

let $format      := lower-case(request:param-values("format")[1])
let $ciks        := distinct-values(companies:eid(request:param-values("cik")))
let $tags        := distinct-values(request:param-values("tag") ! upper-case($$))
let $tickers     := distinct-values(request:param-values("ticker"))
let $sics        := distinct-values(request:param-values("sic"))
let $aids        := distinct-values(request:param-values("aid"))
let $companies   := companies:companies($ciks, $tags, $tickers, $sics)

let $fiscalPeriods := distinct-values(let $fp := request:param-values("fiscalPeriod", "FY")
                      return
                        if (($fp ! lower-case($$)) = "all")
                        then $fiscal:ALL_FISCAL_PERIODS
                        else if (($fp ! lower-case($$)) = "fy")
                        then distinct-values(("FY", "Q4", $fp))
                        else $fp)
let $fiscalYears := distinct-values(
                    for $y in request:param-values("fiscalYear", "LATEST")
                    return
                        if ($y eq "ALL")
                        then $fiscal:ALL_FISCAL_YEARS
                        else if ($y eq "LATEST")
                          then for $cik in $companies 
                               for $fp in $fiscalPeriods
                               return
                                   if ($fiscal:ALL_FISCAL_PERIODS eq $fp)
                                   then
                                       (fiscal:latest-reported-fiscal-period($cik).year) ! ($$ cast as integer) 
                                   else 
                                       (fiscal:latest-reported-fiscal-period($cik, $fp).year) ! ($$ cast as integer) 
                        else if ($y castable as integer)
                        then $y cast as integer
                        else ()
                )
let $archives := (filings:filings($aids),
                    for $fp in $fiscalPeriods, $fy in $fiscalYears
                    return
                      fiscal:filings-for-entities-and-fiscal-periods-and-years($companies, $fp, $fy)) 
let $companies   := companies:companies($archives.Entity)
return
    if (session:only-dow30($companies) or session:valid())
    then {
        let $summaries := filings:summaries($archives) 
        return
            switch ($format)
            case "xml"  return {
                response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
                ( session:comment("xml", {
                    NumArchives: count($summaries),
                    TotalNumArchives: session:num-archives(),
                    TotalNumEntities: session:num-entities()
                }),
                <Filings>{
                    filings:summaries-to-xml($summaries)   
                }</Filings>)
            }
            case "csv" case "text" return {
                response:content-type("text/csv");
                response:header("Content-Disposition", "attachment; filename=filings.csv");
                string-join(filings:summaries-to-csv($summaries), "")
            }
            case "excel" return {
                response:content-type("application/vnd.ms-excel");
                response:header("Content-Disposition", "attachment; filename=filings.csv");
                string-join(filings:summaries-to-csv($summaries))
            }
            default return {
                response:content-type("application/json");
                response:serialization-parameters({"indent" : true});
                {|
                    { "Archives" : [ $summaries ] },
                    session:comment("json", {
                        NumArchives: count($summaries),
                        TotalNumArchives: session:num-archives(),
                        TotalNumEntities: session:num-entities()
                    })
                |}
            }
    } else {
        response:status-code(401);
        session:error("accessing filings of an entity that is not in the DOW30", $format)
    }
