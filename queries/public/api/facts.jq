import module namespace util = "http://secxbrl.info/modules/util";
import module namespace session = "http://apps.28.io/session";

import module namespace conversion = "http://28.io/modules/xbrl/conversion";
import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace hypercubes = "http://28.io/modules/xbrl/hypercubes";
import module namespace reports = "http://28.io/modules/xbrl/reports";
import module namespace concepts = "http://28.io/modules/xbrl/concepts";
import module namespace facts = "http://28.io/modules/xbrl/facts";
import module namespace rules = "http://28.io/modules/xbrl/rules";
import module namespace components = "http://28.io/modules/xbrl/components";

import module namespace sec = "http://28.io/modules/xbrl/profiles/sec/core";
import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";

declare function local:contains-aspect($name as string) as boolean
{
  some $x in (request:param-names() ! starts-with($$, $name))
  satisfies $x
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

session:audit-call();

(: Query parameters :)
let $format as string?         := request:param-values("format")
let $ciks as string*           := distinct-values(request:param-values("cik"))
let $tags as string*           := distinct-values(request:param-values("tag"))
let $tickers as string*        := distinct-values(request:param-values("ticker"))
let $sics as string*           := distinct-values(request:param-values("sic"))
let $fiscalYears as string*    := distinct-values(request:param-values("fiscalYear", "LATEST"))
let $fiscalPeriods as string*  := distinct-values(request:param-values("fiscalPeriod", "FY"))
let $aids as string*           := distinct-values(request:param-values("aid"))
let $map as string?            := request:param-values("map") (: Backwards compatibility :)
let $rules as string?          := request:param-values("rule") (: Backwards compatibility :)
let $report as string?         := request:param-values("report")
let $additional-rules as string? := request:param-values("additional-rules")
let $validate as string        := request:param-values("validate", "false")
let $labels as string        := request:param-values("labels", "false")

(: Post-processing :)
let $format as string? := (: backwards compatibility, to be deprecated  :)
    lower-case(($format, substring-after(request:path(), ".jq."))[1])
let $tags as string* := (: backwards compatibility, to be deprecated :)
    distinct-values($tags ! upper-case($$))
let $fiscalYears as integer* :=
    for $fy in $fiscalYears ! upper-case($$)
    return switch($fy)
           case "LATEST" return $fiscal-core:LATEST_FISCAL_YEAR
           case "ALL" return $fiscal-core:ALL_FISCAL_YEARS
           default return if($fy castable as integer) then integer($fy) else ()
let $fiscalPeriods as string* :=
    for $fp in $fiscalPeriods ! upper-case($$)
    return switch($fp)
           case "ALL" return $fiscal-core:ALL_FISCAL_PERIODS
           default return $fp
let $validate as boolean := $validate = "true"
let $labels as boolean := $labels = "true"

(: Object resolution :)
let $entities as object* := 
    companies:companies(
        $ciks,
        $tags,
        $tickers,
        $sics)
let $archives as object* := fiscal-core:filings(
    $entities,
    $fiscalPeriods,
    $fiscalYears,
    $aids)
let $entities := entities:entities($archives.Entity)
let $report as object? := reports:reports($report)
let $map as item* :=
    if(exists($report))
    then reports:concept-map($report)
    else $map
let $rules as item* :=
    (
        if(exists($report))
        then reports:rules($report)
        else rules:rules($rules),
        if(exists($additional-rules)) 
        then rules:rules($additional-rules) 
        else ()
    )

let $hypercube := local:hypercube($entities, $fiscalPeriods, $fiscalYears, $aids)

let $facts :=
    if(empty($archives))
    then ()
    else 
        let $facts := sec:facts-for(
            {|
                {
                    Hypercube : $hypercube,
                    Validate: $validate
                },
                { "ConceptMaps" : $map }[exists($map)],
                { "Rules" : [ $rules ] }[exists($rules)]
            |}
        ) 
        let $concept-names := distinct-values($facts.Aspects."xbrl:Concept")
        let $concepts := 
            (
                concepts:concepts($concept-names, $archives."_id", $concepts:ANY_COMPONENT_LINK_ROLE),
                (reports:concepts($report))[$$.Name = $concept-names]
            )
        for $fact in $facts
        return {|
            $fact,
            { "EntityRegistrantName" : $entities[$$._id eq $fact.Aspects."xbrl:Entity"].Profiles.SEC.CompanyName},
            if($labels)
            then
                let $language as string := ( $report.$components:DEFAULT-LANGUAGE , $concepts:AMERICAN_ENGLISH )[1]
                let $roles as string* := ( $report.Role, $concepts:ANY_COMPONENT_LINK_ROLE )
                let $labels as object? := facts:labels($fact, $roles, $concepts:STANDARD_LABEL_ROLE, $language, $concepts, ())
                return 
                    { Labels : $labels }
            else ()
        |}

let $facts := util:normalize-facts($facts)

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

return 
    if(empty($archives) and (not(empty($aids)) or not(empty($ciks))))
    then {
        response:status-code(404);
        session:error("entities or archives not found (valid parameters: cik, ticker, tag, sic, aid)", $format)
    }
    else let $results := util:serialize($result, $comment, $serializers, $format, "facts")
         return util:check-and-return-results($entities, $results, $format)
