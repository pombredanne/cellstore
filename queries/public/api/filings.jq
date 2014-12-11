import module namespace http-request = "http://www.28msec.com/modules/http/request";

import module namespace config = "http://apps.28.io/config";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

import module namespace csv = "http://zorba.io/modules/json-csv";

import module namespace archives = "http://28.io/modules/xbrl/archives";

import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace filings = "http://28.io/modules/xbrl/profiles/sec/filings";

import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";

(: Query parameters :)
declare  %rest:case-insensitive                 variable $token         as string? external;
declare  %rest:env                              variable $request-uri   as string  external;
declare  %rest:case-insensitive                 variable $format        as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $eid           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $cik           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $tag           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker        as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $sic           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $fiscalYear    as string* external := "LATEST";
declare  %rest:case-insensitive %rest:distinct  variable $fiscalPeriod  as string* external := "FY";
declare  %rest:case-insensitive %rest:distinct  variable $aid           as string* external;
declare  %rest:case-insensitive                 variable $profile-name  as string  external := $config:profile-name;

session:audit-call($token);

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $fiscalYear as integer* := api:preprocess-fiscal-years($fiscalYear)
let $fiscalPeriod as string* := api:preprocess-fiscal-periods($fiscalPeriod)
let $tag as string* := api:preprocess-tags($tag)

(: Object resolution :)
let $entities :=
    switch($profile-name)
    case "sec" return companies:companies(
        $cik,
        $tag,
        $ticker,
        $sic)
    default return ()
let $archives as object* :=
    switch($profile-name)
    case "sec" return fiscal-core:filings(
        $entities,
        $fiscalPeriod,
        $fiscalYear,
        $aid)
    default return
        if(exists($eid)) then archives:archives-for-entities($eid)
                              else archives:archives()
let $summaries :=
    switch($profile-name)
    case "sec" return
        for $f in filings:summaries($archives) 
        order by $f.Accepted descending
        return $f
    default return
        for $a in $archives
        return {
            AID: $a._id,
            Entity: $a.Entity
        }
let $summaries :=
    for $archive in $summaries
    return copy $a := $archive
    modify
      switch($profile-name)
      case "sec" return
        insert json {
          Components: "http://" || http-request:server-name() || ":" || http-request:server-port() ||
          "/v1/_queries/public/api/components.jq?_method=POST&aid="||encode-for-uri($a.AccessionNumber) ||
          "&format=html&profile-name=" || $profile-name ||
          "&token=" || http-request:parameter-values("token")
        } into $a
      default return
        insert json {
          Components: "http://" || http-request:server-name() || ":" || http-request:server-port() ||
          "/v1/_queries/public/api/components.jq?_method=POST&aid="||encode-for-uri($a.AID) ||
          "&format=html&profile-name=" || $profile-name ||
          "&token=" || http-request:parameter-values("token")
        } into $a
    return $a

let $result := { "Archives" : [ $summaries ] }
let $comment :=
{
    NumArchives: count($summaries),
    TotalNumArchives: session:num-archives(),
    TotalNumEntities: session:num-entities()
}
let $serializers := {
    to-xml : function($res as object) as node() {
        switch($profile-name)
        case "sec" return
            <Filings>{
                filings:summaries-to-xml($res.Archives[])   
            }</Filings>
        default return
            <Archives>{
                for $a in $res.Archives[]
                return <Archive>
                    <AID>{$a.AID}</AID>
                    <Entity>{$a.Entity}</Entity>
                </Archive>
            }
            </Archives>
    },
    to-csv : function($res as object) as string {
        switch($profile-name)
        case "sec" return
            string-join(filings:summaries-to-csv($res.Archives[]))
        default return
            string-join(
                csv:serialize($res.Archives[], { serialize-null-as : "" }
            ),
        "")
    }
}

let $results := api:serialize($result, $comment, $serializers, $format, "filings")
return api:check-and-return-results($token, $results, $format)
