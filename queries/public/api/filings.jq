import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace filings = "http://28.io/modules/xbrl/profiles/sec/filings";

import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";

import module namespace api = "http://apps.28.io/api";

import module namespace session = "http://apps.28.io/session";

(: Query parameters :)
declare  %rest:case-insensitive                 variable $token         as string? external;
declare  (:%rest:env:)                          variable $request-uri   as string  external := ""; (: backward compatibility :)
declare  %rest:case-insensitive                 variable $format        as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $cik           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $tag           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker        as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $sic           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $fiscalYear    as string* external := "LATEST";
declare  %rest:case-insensitive %rest:distinct  variable $fiscalPeriod  as string* external := "FY";
declare  %rest:case-insensitive %rest:distinct  variable $aid           as string* external;

session:audit-call($token);

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $fiscalYear as integer* := api:preprocess-fiscal-years($fiscalYear)
let $fiscalPeriod as string* := api:preprocess-fiscal-periods($fiscalPeriod)
let $tag as string* := api:preprocess-tags($tag)

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

let $results := api:serialize($result, $comment, $serializers, $format, "filings")
return api:check-and-return-results($token, $entities, $results, $format)
