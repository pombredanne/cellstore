import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";

import module namespace util = "http://secxbrl.info/modules/util";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace session = "http://apps.28.io/session";

(: Query parameters :)
let $format as string?         := request:param-values("format")
let $ciks as string*           := distinct-values(request:param-values("cik"))
let $tags as string*           := distinct-values(request:param-values("tag"))
let $tickers as string*        := distinct-values(request:param-values("ticker"))
let $sics as string*           := distinct-values(request:param-values("sic"))
let $fiscalYears as string*    := distinct-values(request:param-values("fiscalYear", "LATEST"))
let $fiscalPeriods as string*  := distinct-values(request:param-values("fiscalPeriod", "FY"))
let $aids as string*           := distinct-values(request:param-values("aid"))
let $parameters := {|
    {
        CIKs: [ $ciks ],
        Tags: [ $tags ],
        Tickers: [ $tickers ],
        SICs: [ $sics ],
        FiscalYears: [ $fiscalYears ],
        FiscalPeriods: [ $fiscalPeriods ],
        AIDs: [ $aids ]
    },
    { Format: $format }[exists($format)]
|}


(: Object resolution :)
let $parameters as object := util:process-parameters($parameters)
let $archives as object* := util:filings-from-parameters($parameters, ())
let $entities as object* := companies:companies($archives.Entity)
let $summaries := for $f in filings:summaries($archives) 
                  order by $f.Accepted descending
                  return $f
let $results :=
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

return
    util:check-and-return-results($entities, $results, $parameters.Format)
