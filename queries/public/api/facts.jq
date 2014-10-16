import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

import module namespace conversion = "http://28.io/modules/xbrl/conversion";
import module namespace hypercubes = "http://28.io/modules/xbrl/hypercubes";
import module namespace reports = "http://28.io/modules/xbrl/reports";
import module namespace rules = "http://28.io/modules/xbrl/rules";

import module namespace sec = "http://28.io/modules/xbrl/profiles/sec/core";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";

import module namespace request = "http://www.28msec.com/modules/http-request";

declare function local:contains-aspect($name as string) as boolean
{
  exists(request:param-names()[starts-with($$, $name)])  
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

declare function local:hypercube(
    $entities as object*,
    $fiscalPeriods as string*,
    $fiscalYears as integer*,
    $aids as string*) as object
{
    let $shortcut-hypercube-spec :=
    {|
        let $concepts := request:param-values("concept")
        return { "xbrl:Concept" : { Domain : [ $concepts ] } }[exists($concepts)],
        fiscal-core:filter-override(
            $entities,
            $fiscalYears,
            $fiscalPeriods,
            $aids)
    |}
    let $main-hypercube-spec :=
    {|
        {
            "dei:LegalEntityAxis" : {
                "Domain" : [ "sec:DefaultLegalEntity" ],
                "Default" : "sec:DefaultLegalEntity"
            }
        }[not local:contains-aspect("dei:LegalEntityAxis")],

        for $parameter in (
            request:param-names(),
            keys($shortcut-hypercube-spec),
            "sec:Accepted",
            "sec:FiscalPeriod",
            "sec:FiscalYear")
        where contains($parameter, ":")
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
            (request:param-values($dimension-name) ! upper-case($$)) = "ALL"
        let $user-defined-type as string? :=
            (request:param-values($dimension-name || "::type"), request:param-values($dimension-name || ":type"))[1]
        let $type as string? :=
            switch(true)
            case exists($user-defined-type)
                return $user-defined-type
            case exists($shortcut-hypercube-spec.$dimension-name.Type)
                return $shortcut-hypercube-spec.$dimension-name.Type
            default
                return ()
        let $values := (request:param-values($dimension-name), $shortcut-hypercube-spec.$dimension-name.Domain[])
        let $typed-values := if (exists($type)) then local:cast-sequence($values, $type) else $values
        let $has-default := ($parameter = $dimension-name || "::default") or ($parameter = $dimension-name || ":default")
        let $default-value := (request:param-values($dimension-name || "::default"), request:param-values($dimension-name || ":default"))[1]
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
    return hypercubes:user-defined-hypercube($main-hypercube-spec)
};

(: Query parameters :)
declare  %rest:case-insensitive                 variable $token             as string? external;
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
declare  %rest:case-insensitive                 variable $additional-rules  as string? external;

session:audit-call($token);

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $fiscalYear as integer* := api:preprocess-fiscal-years($fiscalYear)
let $fiscalPeriod as string* := api:preprocess-fiscal-periods($fiscalPeriod)
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

let $hypercube := local:hypercube($entities, $fiscalPeriod, $fiscalYear, $aid)

let $facts :=
  sec:facts-for(
    {|
      {
        Hypercube : $hypercube,
        Validate: $validate
      },
      { "ConceptMaps" : $map }[exists($map)],
      { "Rules" : [ $rule ] }[exists($rule)]
    |}
  )
  
let $facts := if(empty(($cik,$tag,$ticker,$sic)) or exists($entities)) then $facts else ()

let $facts := api:normalize-facts($facts)

let $result := {
    NetworkIdentifier : "http://bizql.io/facts",
    TableName : "xbrl:Facts",
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
