import module namespace config = "http://apps.28.io/config";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

import module namespace csv = "http://zorba.io/modules/json-csv";

import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace entities = "http://28.io/modules/xbrl/entities";

import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace filings = "http://28.io/modules/xbrl/profiles/sec/filings";

import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";

(: Query parameters :)
declare  %rest:case-insensitive                 variable $token         as string? external;
declare  %rest:env                              variable $request-uri   as string  external;
declare  %rest:case-insensitive                 variable $format        as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $cik           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $eid           as string* external;
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
    case "japan" return
            if(exists($eid)) then entities:entities($eid)
                                else entities:entities()
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
    case "japan" return
      for $a in $archives
      where (empty($fiscalYear) or
             $fiscalYear = 0 or
             $fiscalYear = $a.Profiles.JAPAN.DocumentFiscalYearFocus)
      and (empty($fiscalPeriod) or ($fiscalPeriod = "ALL") or $a.Profiles.JAPAN.DocumentFiscalPeriodFocus = $fiscalPeriod)
      return {
        AID: $a._id,
        InstanceURL: $a.InstanceURL,
        Entity: $a.Entity,
        EDINETCode: $a.Profiles.JAPAN.EDINETCode,
        SubmissionDate: $a.Profiles.JAPAN.SubmissionDate,
        FiscalYear: $a.Profiles.JAPAN.DocumentFiscalYearFocus,
        FiscalPeriod: $a.Profiles.JAPAN.DocumentFiscalPeriodFocus
      }
    default return
        for $a in $archives
        return {
            AID: $a._id,
            Entity: $a.Entity
        }
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
