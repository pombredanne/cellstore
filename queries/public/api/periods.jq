import module namespace config = "http://apps.28.io/config";
import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

import module namespace multiplexer = "http://28.io/modules/xbrl/profiles/multiplexer";


(: Query parameters :)
declare  %rest:case-insensitive                 variable $token         as string? external;
declare  %rest:env                              variable $request-uri   as string  external;
declare  %rest:case-insensitive                 variable $format        as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $eid           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $cik           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $tag           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker        as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $sic           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $fiscalYear    as string* external := "ALL";
declare  %rest:case-insensitive %rest:distinct  variable $fiscalPeriod  as string* external := "ALL";
declare  %rest:case-insensitive %rest:distinct  variable $aid           as string* external;
declare  %rest:case-insensitive                 variable $profile-name  as string  external := $config:profile-name;

session:audit-call($token);

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $fiscalYear as integer* := api:preprocess-fiscal-years($fiscalYear)
let $fiscalPeriod as string* := api:preprocess-fiscal-periods($fiscalPeriod)
let $tag as string* := api:preprocess-tags($tag)

(: Object resolution :)
let $entities := multiplexer:entities(
  $profile-name,
  $eid,
  $cik,
  $tag,
  $ticker,
  $sic)

let $archives as object* := multiplexer:filings(
  $profile-name,
  $entities,
  $fiscalPeriod,
  $fiscalYear,
  $aid)


let $periods :=
    switch($profile-name)
    case "sec" return
      for $a in $archives
      group by $fy := $a.Profiles.SEC.DocumentFiscalYearFocus, $fp := $a.Profiles.SEC.DocumentFiscalPeriodFocus
      order by $fy descending, $fp
      return { FiscalYear: $fy, FiscalPeriod: $fp }
    case "japan" return
      for $a in $archives
      group by $fy := $a.Profiles.JAPAN.DocumentFiscalYearFocus, $fp := $a.Profiles.JAPAN.DocumentFiscalPeriodFocus
      order by $fy descending, $fp
      where not empty(($fy, $fp))
      return { FiscalYear: $fy, FiscalPeriod: $fp }
    default return ()

let $result := { "Periods" : [ $periods ] }
let $comment :=
{
    NumPeriods: count($periods)
}
let $serializers := {
    to-xml : function($res as object) as node() {
        switch($profile-name)
        case "sec"
        case "japan" return
            <Periods>{
              api:json-to-xml($res.Periods[], "Period")
            }</Periods>
        default return ()
    },
    to-csv : function($res as object) as string {
        switch($profile-name)
        case "sec"
        case "japan" return api:json-to-csv($res.Periods[])
        default return ()
    }
}

let $results := api:serialize($result, $comment, $serializers, $format, "filings")
return api:check-and-return-results($token, $results, $format)
