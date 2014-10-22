import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

import module namespace conversion = "http://28.io/modules/xbrl/conversion";
import module namespace hypercubes = "http://28.io/modules/xbrl/hypercubes";
import module namespace reports = "http://28.io/modules/xbrl/reports";
import module namespace concepts = "http://28.io/modules/xbrl/concepts";
import module namespace facts = "http://28.io/modules/xbrl/facts";
import module namespace rules = "http://28.io/modules/xbrl/rules";
import module namespace components = "http://28.io/modules/xbrl/components";

import module namespace sec = "http://28.io/modules/xbrl/profiles/sec/core";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";

import module namespace request = "http://www.28msec.com/modules/http-request";

(: Query parameters :)
declare  %rest:case-insensitive                 variable $token             as string? external;
declare  %rest:case-insensitive                 variable $profile-name      as string  external := "generic";
declare  %rest:env                              variable $request-uri       as string  external;
declare  %rest:case-insensitive                 variable $format            as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $cik               as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $tag               as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker            as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $sic               as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $fiscalYear        as string* external := "LATEST";
declare  %rest:case-insensitive %rest:distinct  variable $fiscalPeriod      as string* external := "FY";
declare  %rest:case-insensitive %rest:distinct  variable $aid               as string* external;
declare  %rest:case-insensitive                 variable $map               as string? external;
declare  %rest:case-insensitive                 variable $rule              as string? external;
declare  %rest:case-insensitive                 variable $report            as string? external;
declare  %rest:case-insensitive                 variable $validate          as boolean external := false;
declare  %rest:case-insensitive                 variable $labels            as boolean external := false;
declare  %rest:case-insensitive                 variable $additional-rules  as string? external;

declare function local:param-values($name as string) as string*
{
    switch(true)
     case $name eq "xbrl:Concept"
        return (request:param-values("concept"), request:param-values("xbrl:Concept"))
     case $name eq "sec:FiscalYear" and $profile-name eq "sec"
        return string(api:preprocess-fiscal-years(($fiscalYear, request:param-values("sec:FiscalYear"))))
     case $name eq "sec:FiscalPeriod" and $profile-name eq "sec"
        return api:preprocess-fiscal-periods(($fiscalPeriod, request:param-values("sec:FiscalPeriod")))
     case $name eq "dei:LegalEntityAxis" and $profile-name eq "sec"
        return
         if(empty((request:param-values("sec:LegalEntityAxis"), request:param-values("sec:LegalEntityAxis::default"))))
         then "sec:DefaultLegalEntity"
         else request:param-values("sec:LegalEntityAxis")
     case $name eq "dei:LegalEntityAxis::default" return
         if(empty((request:param-values("sec:LegalEntityAxis"), request:param-values("sec:LegalEntityAxis::default"))))
         then "sec:DefaultLegalEntity"
         else request:param-values("sec:LegalEntityAxis::default")
     case $name eq "xbrl:Entity" and $profile-name eq "sec" return (
         let $companies := companies:companies(
            $cik,
            api:preprocess-tags($tag),
            $ticker,
            $sic)._id
        return if(empty(($cik,$tag,$ticker,$sic)) or exists($companies))
               then $companies
               else "dummy",
        request:param-values("xbrl:Entity"))
     case $name eq "sec:Archive" and $profile-name eq "sec" return (
            let $fiscalYears := local:param-values("sec:FiscalYear")
            let $fiscalPeriods := local:param-values("sec:FiscalPeriod")
            let $entities := local:param-values("xbrl:Entity")
            return 
                if($fiscalYears = "LATEST")
                then fiscal-core:latest-filings($entities, $fiscalPeriods)
                else (),
            $aid,
            request:param-values("sec:Archive")
        )
     default return request:param-values($name)
};

declare function local:param-names() as string*
{
    let $names := request:param-names()
    return distinct-values((
        $names[contains($$, ":")],
        "sec:Accepted"[$profile-name eq "sec"],
        "sec:FiscalPeriod"[$profile-name eq "sec" and $names = "fiscalPeriod"],
        "sec:FiscalYear"[$profile-name eq "sec" and $names = "fiscalYear"],
        "xbrl:Concept"[$names = "concept"],
        "sec:DefaultLegalEntity"[$profile-name eq "sec"]))
};

declare function local:cast-sequence($values as atomic*, $type as string) as atomic*
{
  for $value in $values
  return
      switch ($type)
      case "integer" return $value cast as integer
      case "string" return $value cast as string
      default return error(xs:QName("local:unsupported-type"), $type || ": unsupported type")
};

declare function local:hypercube() as object
{
    let $hypercube-spec :=
    {|
        for $parameter in local:param-names()
        group by $dimension-name :=
            switch(true)
            case ends-with(lower-case($parameter), "::default")
                return substring-before($parameter, "::default")
            case ends-with(lower-case($parameter), ":default")
                return substring-before($parameter, ":default")
            case ends-with(lower-case($parameter), "::type")
                return substring-before($parameter, "::type")
            default
                return $parameter
        let $all as boolean :=
            (local:param-values($dimension-name) ! upper-case($$)) = "ALL"
        let $type as string? :=
            (local:param-values($dimension-name || "::type"), local:param-values($dimension-name || ":type"))[1]

        let $values := local:param-values($dimension-name)
        let $typed-values := if (exists($type)) then local:cast-sequence($values, $type) else $values

        let $has-default := ($parameter = $dimension-name || "::default") or ($parameter = $dimension-name || ":default")
        let $default-value := (local:param-values($dimension-name || "::default"), local:param-values($dimension-name || ":default"))[1]
        let $typed-default-value := if (exists($type)) then local:cast-sequence($default-value, $type) else $default-value

        return
        {
            $dimension-name : {|
                { "Type" : $type }[exists($type)],
                { "Domain" : [ $typed-values ] }[(exists($typed-values) and not($all))],
                { "Default" : $typed-default-value }[$has-default]
            |}
        }
    |}
    return hypercubes:user-defined-hypercube($hypercube-spec)
};

session:audit-call($token);

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $tag as string* := api:preprocess-tags($tag)

(: Object resolution :)
let $entities as object* := 
    companies:companies(
        $cik,
        $tag,
        $ticker,
        $sic)
let $report as object? := reports:reports($report)
let $map as item* :=
    if(exists($report))
    then reports:concept-map($report)
    else $map
let $rule as item* :=
    (
        if(exists($report))
        then reports:rules($report)
        else rules:rules($rule),
        if(exists($additional-rules)) 
        then rules:rules($additional-rules) 
        else ()
    )

let $hypercube := local:hypercube()

let $facts := 
    let $options := {|
      {
        Hypercube : $hypercube,
        Validate: $validate
      },
      { "ConceptMaps" : $map }[exists($map)],
      { "Rules" : [ $rule ] }[exists($rule)]
    |}
    return if($profile-name eq "sec")
    then sec:facts-for($options)
    else facts:facts-for($options)

let $facts :=
  let $archives as string* := distinct-values($facts.Aspects."sec:Archive")
  let $concept-names as string* := distinct-values($facts.Aspects."xbrl:Concept")
  let $concepts as object* :=
      (
          concepts:concepts($concept-names, $archives, $concepts:ANY_COMPONENT_LINK_ROLE),
          (reports:concepts($report))[$$.Name = $concept-names]
      )
  let $language as string := ( $report.$components:DEFAULT-LANGUAGE , $concepts:AMERICAN_ENGLISH )[1]
  let $roles as string* := ( $report.Role, $concepts:ANY_COMPONENT_LINK_ROLE )
  for $fact as object in $facts
  let $entityName as string := $entities[$$._id eq $fact.Aspects."xbrl:Entity"].Profiles.SEC.CompanyName
  return
    if(not $labels)
    then $fact
    else {|
      $fact,
      let $concept-labels as object? := facts:labels($fact, $roles, $concepts:STANDARD_LABEL_ROLE, $language, $concepts, ())
      let $standard-labels as object := conversion:get-standard-labels($fact, $entityName)
      return { Labels : {| $concept-labels, $standard-labels |} }
    |}

let $facts := api:normalize-facts($facts)

let $result := {
    NetworkIdentifier : "http://bizql.io/facts",
    TableName : "xbrl:Facts",
    Hypercube: $hypercube,
    FactTable : [ $facts ]
}
let $comment :=
{
    NumFacts: count($facts),
    TotalNumFacts: session:num-facts(),
    TotalNumArchives: session:num-archives(),
    TotalNumEntities: session:num-entities()
}
let $serializers := {
    to-xml : function($res as object) as node()* {
           <FactTable NetworkIdentifier="http://bizql.io/facts"
            TableName="xbrl:Facts">{
                conversion:facts-to-xml($res.FactTable[], { Caller: "Report"})
        }</FactTable>
    },
    to-csv : function($res as object) as string {
        (conversion:facts-to-csv($res.FactTable[], { Caller: "Report" }), "")[1]
    }
}

let $results := api:serialize($result, $comment, $serializers, $format, "facts")
return api:check-and-return-results($token, $results, $format)
