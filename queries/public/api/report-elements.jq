import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace core = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";

import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";
 
import module namespace csv = "http://zorba.io/modules/json-csv";

declare namespace concepts = "http://www.28msec.com/modules/bizql/concepts";

declare function local:filings(
    $ciks,
    $tags,
    $tickers,
    $sics,
    $fp,
    $fy)
{
    let $entities := (
        companies:companies($ciks),
        companies:companies-for-tags($tags),
        companies:companies-for-tickers($tickers),
        companies:companies-for-SIC($sics)
    ) 
    for $entity in $entities
    for $fy in distinct-values(
                for $fy in $fy
                return
                    switch ($fy)
                    case "LATEST" return
                        for $p in $fp
                        return
                            if ($p eq "FY")
                            then sec-fiscal:latest-reported-fiscal-period($entity, "10-K").year 
                            else sec-fiscal:latest-reported-fiscal-period($entity, "10-Q").year
                    case "ALL" return (2010 to 2015) (: temporary solution until next release :)
                    default return $fy
                )
    for $fp in $fp 
    return sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, $fp, $fy ! ($$ cast as integer))
};

declare function local:concepts-for-archives($aids)
{
    let $conn :=   
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return
        try {
            mongo:connect($credentials)
        } catch mongo:* {
            error(QName("concepts:CONNECTION-FAILED"), $err:description)
        }
    for $aid in $aids
    return
        mongo:find($conn, "concepts", 
        {
            "Archive": $aid
        })
};


let $format      := lower-case((request:param-values("format"), substring-after(request:path(), ".jq."))[1])
let $ciks        := distinct-values(companies:eid(request:param-values("cik")))
let $tags        := distinct-values(request:param-values("tag") ! upper-case($$))
let $tickers     := distinct-values(request:param-values("ticker"))
let $sics        := distinct-values(request:param-values("sic"))
let $fiscalYears := distinct-values(
                        for $y in request:param-values("fiscalYear", "LATEST")
                        return
                            if ($y eq "LATEST" or $y eq "ALL")
                            then $y
                            else if ($y castable as integer)
                            then $y cast as integer
                            else ()
                    )
let $fiscalPeriods := distinct-values(let $fp := request:param-values("fiscalPeriod", "FY")
                      return
                        if (($fp ! lower-case($$)) = "all")
                        then ("Q1", "Q2", "Q3", "Q4", "FY")
                        else $fp)
let $aids        := archives:aid(request:param-values("aid"))
let $archives    := (
                        local:filings($ciks, $tags, $tickers, $sics, $fiscalPeriods, $fiscalYears),
                        archives:archives($aids)
                    )
let $entities    := entities:entities($archives.Entity)
let $onlyNames   := let $o := request:param-values("onlyNames")[1] return if (exists($o)) then ($o cast as boolean) else false
return
    if (session:only-dow30($entities) or session:valid()) 
        then {
            let $concepts := let $concepts := local:concepts-for-archives($archives._id)
                             return if ($onlyNames) then distinct-values($concepts.Name) else $concepts
            return
            switch ($format)
            case "xml" return {
                response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
                ()
            }
            case "text" case "csv" return {
                response:content-type("text/csv");
                response:header("Content-Disposition", "attachment; filename=facts.csv");
                ()
            }
            case "excel" return {
                response:content-type("application/vnd.ms-excel");
                response:header("Content-Disposition", "attachment; filename=fact.csv");
                ()
            }
            default return {
                response:content-type("application/json");
                response:serialization-parameters({"indent" : true});
                {|
                    session:comment("json"),
                    { Concepts : [ $concepts ] }
                |}
            }
        }
        else {
            response:status-code(401);
            session:error("accessing filings of an entity that is not in the DOW30", $format)
        }