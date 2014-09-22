import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace filings = "http://28.io/modules/xbrl/profiles/sec/filings";

import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";

import module namespace util = "http://secxbrl.info/modules/util";

import module namespace session = "http://apps.28.io/session";

(: Query parameters :)
declare  %rest:case-insensitive                 variable $format             as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $cik                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $tag                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker             as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $sic                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $fiscalYear         as string* external := "LATEST";
declare  %rest:case-insensitive %rest:distinct  variable $fiscalPeriod       as string* external := "FY";
declare  %rest:case-insensitive %rest:distinct  variable $aid                as string* external;

session:audit-call();

(: Post-processing :)
let $format as string? := util:preprocess-format($format)
let $fiscalYear as integer* := util:preprocess-fiscal-years($fiscalYear)
let $fiscalPeriod as string* := util:preprocess-fiscal-periods($fiscalPeriod)
let $tag as string* := util:preprocess-tags($tag)

(: Object resolution :)
let $entities := 
    companies:companies(
        $cik,
        $tag,
        $ticker,
        $sic)
let $archives as object* := fiscal-core:filings(
    $entities,
    $fiscalPeriod,
    $fiscalYear,
    $aid)
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

let $results := util:serialize($result, $comment, $serializers, $format, "filings")
return
    util:check-and-return-results($entities, $results, $format)
