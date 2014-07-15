import module namespace util = "http://secxbrl.info/modules/util";
import module namespace session = "http://apps.28.io/session";

import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace conversion = "http://xbrl.io/modules/bizql/conversion";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";

declare function local:to-xml($o as object*) as node()*
{
    (session:comment("xml", {
        NumFacts: count($o),
        TotalNumFacts: session:num-facts(),
        TotalNumArchives: session:num-archives(),
        TotalNumEntities: session:num-entities()
    }),
    <FactTable NetworkIdentifier="http://bizql.io/facts"
            TableName="xbrl:Facts">{
        conversion:facts-to-xml($o, { Caller: "Report"})
    }</FactTable>)
};

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

declare function local:hypercube($parameters as object) as object
{
    let $shortcut-hypercube-spec :=
    {|
        let $concepts := request:param-values("concept")
        return { "xbrl:Concept" : { Domain : [ $concepts ] } }[exists($concepts)],
        util:filter-override-from-parameters($parameters, {})
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
let $map as string?            := request:param-values("map")
let $rule as string?            := request:param-values("rule")
let $parameters := {|
    {
        CIKs: [ $ciks ],
        Tags: [ $tags ],
        Tickers: [ $tickers ],
        SICs: [ $sics ],
        FiscalYears: [ $fiscalYears ],
        FiscalPeriods: [ $fiscalPeriods ],
        AIDs: [ $aids ]
    },
    { Format: $format }[exists($format)],
    { Map: $map }[exists($map)],
    { Rule: $rule }[exists($rule)]
|}


(: Object resolution :)
let $parameters as object := util:process-parameters($parameters)
let $archives as object* := util:filings-from-parameters($parameters, ())
let $entities := entities:entities($archives.Entity)

let $hypercube := local:hypercube($parameters)

let $facts :=
    if(empty($archives))
    then ()
    else 
        for $fact in sec:facts-for(
            {|
                { Hypercube : $hypercube },
                { "ConceptMaps" : $map }[exists($map)],
                { "Rules" : $parameters.Rule }[exists($parameters.Rule)]
            |}
        )
        return {|
            $fact,
            { "EntityRegistrantName" : $entities[$$._id eq $fact.Aspects."xbrl:Entity"].Profiles.SEC.CompanyName}
        |} 

let $facts := util:move-unit-out-of-aspects($facts)

let $results :=
        switch ($parameters.Format)
        case "xml" return {
            response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
            local:to-xml($facts)
        }
        case "text" case "csv" return {
            response:content-type("text/csv");
            response:header("Content-Disposition", "attachment; filename=facts.csv");
            conversion:facts-to-csv($facts, { Caller: "Report" })
        }
        case "excel" return {
            response:content-type("application/vnd.ms-excel");
            response:header("Content-Disposition", "attachment; filename=fact.csv");
            conversion:facts-to-csv($facts, { Caller: "Report" })
        }
        default return {
            response:content-type("application/json");
            response:serialization-parameters({"indent" : true});
            {|
                { NetworkIdentifier : "http://bizql.io/facts" },
                { TableName : "xbrl:Facts" },
                { FactTable : [ $facts ] },
                session:comment("json", {
                        NumFacts: count($facts),
                        TotalNumFacts: session:num-facts(),
                        TotalNumArchives: session:num-archives(),
                        TotalNumEntities: session:num-entities()
                    })
            |}
        }
return 
    switch(true)
    case empty($archives) return {
        response:status-code(400);
        session:error("entities or archives not found (valid parameters: cik, ticker, tag, sic, aid)", $parameters.Format)
    }
    default return util:check-and-return-results($entities, $results, $parameters.Format)
