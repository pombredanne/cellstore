
import module namespace report-schemas = "http://xbrl.io/modules/bizql/report-schemas";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

let $format  := lower-case(request:param-values("format")[1])
let $ciks    := distinct-values(companies:eid(request:param-values("cik")))
let $tags    := distinct-values(request:param-values("tag") ! upper-case($$))
let $tickers := distinct-values(request:param-values("ticker"))
let $sics    := distinct-values(request:param-values("sic"))
let $fiscalYears := distinct-values(
                        for $y in request:param-values("fiscalYear", "LATEST")
                        return
                            if ($y eq "LATEST" or $y eq "ALL")
                            then $y
                            else if ($y castable as integer)
                            then $y cast as integer
                            else ()
                    )
let $fiscalPeriods := let $fp := request:param-values("fiscalPeriod", "FY")
                      return
                        if (($fp ! lower-case($$)) = "all")
                        then ("Q1", "Q2", "Q3", "FY")
                        else $fp
let $aids     := request:param-values("aid")
let $report   := request:param-values("reportSchema")[1]
let $report   := report-schemas:report-schemas($report)
                    

let $archives := archives:archives($aids)
let $entities := (
        companies:companies($ciks),
        companies:companies-for-tags($tags),
        companies:companies-for-tickers($tickers),
        companies:companies-for-SIC($sics),
        if (exists($archives)) then companies:companies($archives.Entity) else () 
    )
let $archives :=
    (for $entity in $entities
    for $year in distinct-values(
                        for $f in $fiscalYears
                        return
                            switch ($f)
                            case "LATEST" return
                                for $p in $fiscalPeriods
                                return
                                    if ($p eq "FY")
                                    then sec-fiscal:latest-reported-fiscal-period($entity, "10-K").year
                                    else sec-fiscal:latest-reported-fiscal-period($entity, "10-Q").year
                            case "ALL" return ()
                            default return $f
                    )
    for $period in distinct-values(
                            $fiscalPeriods !
                                (switch($$)
                                case "Q1" return ("Q1","YTD1")
                                case "Q2" return ("Q2","YTD2")
                                case "Q3" return ("Q3","YTD3")
                                default return ("Q4","FY")))
    for $f in sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, $period, $year)
    order by $f.Profiles.SEC.AcceptanceDatetime
    group by $entity._id, $period, $year
    return $f[1], $archives)

return
    switch(true)
    case empty($archives) return {
        response:status-code(404);
        session:error("entities or archives not found (valid parameters: cik, ticker, tag, sic, aid)", $format)
    }
    case not (session:only-dow30($entities) or session:valid()) return {
        response:status-code(401);
        session:error("accessing facts of an entity that is not in the DOW30", $format)
    }
    default return [
        for $archive in $archives
        return sec:populate-schema-with-facts($report, $archive)
    ]