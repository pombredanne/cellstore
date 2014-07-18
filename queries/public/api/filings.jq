import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";

import module namespace companies2 = "http://xbrl.io/modules/bizql/profiles/sec/companies2";
import module namespace fiscal-core = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace fiscal-core2 = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core2";

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

(: Post-processing :)
let $format as string? := (: backwards compatibility, to be deprecated  :)
    lower-case(($format, substring-after(request:path(), ".jq."))[1])
let $tags as string* := (: backwards compatibility, to be deprecated :)
    distinct-values($tags ! upper-case($$))
let $fiscalYears as integer* :=
    for $fy in $fiscalYears
    return switch($fy)
           case "LATEST" return $fiscal-core2:LATEST_FISCAL_YEAR
           case "ALL" return $fiscal-core:ALL_FISCAL_YEARS
           default return if($fy castable as integer) then integer($fy) else ()
let $fiscalPeriods as string* :=
    for $fp in $fiscalPeriods
    return switch($fp)
           case "ALL" return $fiscal-core:ALL_FISCAL_PERIODS
           default return $fp

(: Object resolution :)
let $entities := 
    companies2:companies(
        $ciks,
        $tags,
        $tickers,
        $sics)
let $archives as object* := fiscal-core2:filings(
    $entities,
    $fiscalPeriods,
    $fiscalYears,
    $aids)
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

let $results := util:serialize($result, $comment, $serializers, $format)
return
    util:check-and-return-results($entities, $results, $format)
