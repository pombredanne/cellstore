import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

import module namespace entities = "http://28.io/modules/xbrl/entities";

import module namespace sec-filings = "http://28.io/modules/xbrl/profiles/sec/filings";
import module namespace sec-networks = "http://28.io/modules/xbrl/profiles/sec/networks";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";

import module namespace csv = "http://zorba.io/modules/json-csv";

declare function local:to-csv($res as object*) as string*
{
    csv:serialize(
        for $a in $res
        for $c in $a.Components[]
        return { 
            AcessionNumber : $a.AccessionNumber,
            EntityRegistrantName : $a.EntityRegistrantName,
            CIK : $a.CIK,
            FiscalYear : $a.FiscalYear,
            FiscalPeriod : $a.FiscalPeriod,
            AcceptanceDateTime : $a.AcceptanceDatetime,
            FormType : $a.FormType,
            NetworkLabel : $c.NetworkLabel,
            NetworkIdentifier : $c.NetworkRole,
            Category : $c.Category,
            SubCategory : $c.SubCategory,
            Table : flatten($c.Table),
            Disclosure : $c.Disclosure,
            ReportElements : $c.ReportElements,
            Tables : $c.Tables,
            Axis : $c.Axis,
            Members : $c.Members,
            LineItems : $c.LineItems,
            Concepts : $c.Concepts,
            Abstracts : $c.Abstracts
        },
    { serialize-null-as : "" }) 
};

(: Query parameters :)
declare  %rest:case-insensitive                 variable $format             as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $cik                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $tag                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker             as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $sic                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $fiscalYear         as string* external := "LATEST";
declare  %rest:case-insensitive %rest:distinct  variable $fiscalPeriod       as string* external := "FY";
declare  %rest:case-insensitive %rest:distinct  variable $aid                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $networkIdentifier  as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $cid                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $reportElement      as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $concept            as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $disclosure         as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $label              as string* external;

session:audit-call();

(: Post-processing :)
let $format as string? := api:preprocess-format($format)
let $fiscalYear as integer* := api:preprocess-fiscal-years($fiscalYear)
let $fiscalPeriod as string* := api:preprocess-fiscal-periods($fiscalPeriod)
let $tag as string* := api:preprocess-tags($tag)
let $reportElement := ($reportElement, $concept)

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
let $entities    := entities:entities($archives.Entity)
let $components  := sec-networks:components(
    $archives,
    $cid,
    $reportElement,
    $disclosure,
    $networkIdentifier,
    $label)
let $res         := 
    for $r in $components
    let $disclosure := sec-networks:disclosures($r)
    where $disclosure ne "DefaultComponent"
    order by $r.Label
    group by $archive := $r.Archive
    let $archive := $archives[$$._id eq $archive]
    let $e := $entities[$$._id eq $archive.Entity]
    return
        {
           AccessionNumber : $archive._id,
           EntityRegistrantName : $e.Profiles.SEC.CompanyName,
           CIK : $e._id,
           FiscalYear :$archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus,
           FiscalPeriod :$archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus,
           AcceptanceDatetime : sec-filings:acceptance-dateTimes($archive),
           FormType : $archive.Profiles.SEC.FormType,
           Components : [ 
               sec-networks:summaries($r)
           ]
       }

let $result := { Archives: [ $res ] }
let $comment :=
 {
    NumComponents : count($components),
    TotalNumComponents: session:num-components(),
    TotalNumArchives: session:num-archives()
}
let $serializers := {
    to-xml : function($res as object) as node() {
        <Archives>{
                  for $r in flatten($res.Archives)
                  return
                      <Archive id="{$r.AccessionNumber}">
                         <EntityRegistrantName>{$r.EntityRegistrantName}</EntityRegistrantName>
                         <CIK>{$r.CIK}</CIK>
                         <FiscalYear>{$r.FiscalYear}</FiscalYear>
                         <FiscalPeriod>{$r.FiscalPeriod}</FiscalPeriod>
                         <AcceptanceDatetime>{$r.AcceptanceDatetime}</AcceptanceDatetime>
                         <FormType>{$r.FormType}</FormType>
                         <Components>{
                             sec-networks:summaries-to-xml(flatten($r.Components))
                         }</Components>
                     </Archive>
             }</Archives>
    },
    to-csv : function($res as object) as string {
        string-join(local:to-csv($res.Archives[]), "")
    }
}

let $results := api:serialize($result, $comment, $serializers, $format, "components")
return 
    api:check-and-return-results($entities, $results, $format)
