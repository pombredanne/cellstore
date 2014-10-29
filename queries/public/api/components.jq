import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace components = "http://28.io/modules/xbrl/components";

import module namespace sec-filings = "http://28.io/modules/xbrl/profiles/sec/filings";
import module namespace sec-networks = "http://28.io/modules/xbrl/profiles/sec/networks";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";

import module namespace response = "http://www.28msec.com/modules/http-response";

import module namespace csv = "http://zorba.io/modules/json-csv";

declare function local:to-csv($res as object*) as string*
{
    csv:serialize(
        for $a in $res
        for $c in $a.Components[]
        return { 
            Archive: $a.Archive,
            Role: $a.Role,
            NumRules: $a.NumRules,
            NumNetworks: $a.NumNetworks,
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

declare function local:to-csv-generic($res as object*) as string*
{
    csv:serialize(
        for $a in $res
        return {
            Archive: $a.Archive,
            Role: $a.Role,
            NumRules: $a.NumRules,
            NumNetworks: $a.NumNetworks,
            NumHypercubes: size($a.Hypercubes)
        },
    { serialize-null-as : "" }) 
};

(: Query parameters :)
declare  %rest:case-insensitive                 variable $token              as string? external;
declare  %rest:env                              variable $request-uri        as string  external;
declare  %rest:case-insensitive                 variable $format             as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $cik                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $tag                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker             as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $sic                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $fiscalYear         as string* external := "LATEST";
declare  %rest:case-insensitive %rest:distinct  variable $fiscalPeriod       as string* external := "FY";
declare  %rest:case-insensitive %rest:distinct  variable $aid                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $networkIdentifier  as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $role               as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $cid                as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $reportElement      as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $concept            as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $disclosure         as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $label              as string* external;
declare  %rest:case-insensitive                 variable $profile-name  as string  external := "generic";

session:audit-call($token);

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $fiscalYear as integer* := api:preprocess-fiscal-years($fiscalYear)
let $fiscalPeriod as string* := api:preprocess-fiscal-periods($fiscalPeriod)
let $tag as string* := api:preprocess-tags($tag)
let $reportElement := ($reportElement, $concept)
let $networkIdentifier := distinct-values(($networkIdentifier, $role))

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
let $entities as object*  := entities:entities($archives.Entity)
let $components as object* :=
    switch($profile-name)
    case "sec" return sec-networks:components(
        $archives,
        $cid,
        $reportElement,
        $disclosure,
        $networkIdentifier,
        $label)
    default return
        switch(true)
        case (exists($networkIdentifier) and exists($aid))
        return components:components-for-archives-and-roles($aid, $networkIdentifier)
        case exists($aid)
        return components:components-for-archives($aid)
        default
        return {
          response:status-code(400);
          session:error("Archive ID missing.", $format)
        }
let $res as object* := 
    switch($profile-name)
    case "sec" return
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
    default return
        for $r in $components
        return {
            Archive: $r.Archive,
            Role: $r.Role,
            NumRules: size($r.Rules),
            NumNetworks: size($r.Networks),
            Hypercubes: [ keys($r.Hypercubes) ]
        }
let $result := switch($profile-name) case "sec" return { Archives: [ $res ] } default return { Components : [ $res ] }
let $comment :=
 {
    NumComponents : count($components),
    TotalNumComponents: session:num-components(),
    TotalNumArchives: session:num-archives()
}
let $serializers := {
    to-xml : switch($profile-name)
        case "sec"
        return function($res as object) as node() {
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
        }
        default return function($res as object) as node() {
        <Components>{
                  for $r in $res.Components[]
                  return
                    <Component>
                         <Archive>{$r.Archive}</Archive>
                         <Role>{$r.Role}</Role>
                         <NumRules>{$r.NumRules}</NumRules>
                         <NumNetworks>{$r.NumNetworks}</NumNetworks>
                         <Hypercubes>{$r.Hypercubes[] ! <Hypercube>{$$}</Hypercube>}</Hypercubes>
                    </Component>
             }</Components>
    },
    to-csv : function($res as object) as string {
        switch($profile-name)
        case "sec" return string-join(local:to-csv($res.Archives[]), "")
        default return string-join(local:to-csv-generic($res.Components[]), "")
    }
}

let $results := api:serialize($result, $comment, $serializers, $format, "components")
return api:check-and-return-results($token, $results, $format)
