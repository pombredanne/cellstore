import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";

import module namespace util = "http://secxbrl.info/modules/util";

import module namespace request = "http://www.28msec.com/modules/http-request";
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
let $result := { "Archives" : [ $summaries ] }
let $comment :=
{
    NumArchives: count($summaries),
    TotalNumArchives: session:num-archives(),
    TotalNumEntities: session:num-entities()
}
let $serializers := {
    to-xml : function($res as object) as node() {
        <Filings>{
            filings:summaries-to-xml($res.Archives[])   
        }</Filings>
    },
    to-csv : function($res as object) as string {
        string-join(filings:summaries-to-csv($res.Archives[]))
    }
}

let $results := util:serialize($result, $comment, $serializers, $parameters)
return
    util:check-and-return-results($entities, $results, $parameters.Format)
