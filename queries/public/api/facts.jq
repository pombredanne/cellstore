import module namespace util = "http://secxbrl.info/modules/util";
import module namespace session = "http://apps.28.io/session";

import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace conversion = "http://xbrl.io/modules/bizql/conversion";

import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace companies2 = "http://xbrl.io/modules/bizql/profiles/sec/companies2";
import module namespace fiscal-core = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace fiscal-core2 = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core2";

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
        fiscal-core2:filter-override(
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
let $map as string?            := request:param-values("map")
let $rule as string?            := request:param-values("rule")
let $validate as string       := request:param-values("validate", "false")

(: Post-processing :)
let $format as string? := (: backwards compatibility, to be deprecated  :)
    lower-case(($format, substring-after(request:path(), ".jq."))[1])
let $tags as string* := (: backwards compatibility, to be deprecated :)
    distinct-values($tags ! upper-case($$))
let $fiscalYears as integer* :=
    for $fy in $fiscalYears ! upper-case($$)
    return switch($fy)
           case "LATEST" return $fiscal-core2:LATEST_FISCAL_YEAR
           case "ALL" return $fiscal-core:ALL_FISCAL_YEARS
           default return if($fy castable as integer) then integer($fy) else ()
let $fiscalPeriods as string* :=
    for $fp in $fiscalPeriods ! upper-case($$)
    return switch($fp)
           case "ALL" return $fiscal-core:ALL_FISCAL_PERIODS
           default return $fp
let $validate as boolean := $validate = "true"

(: Object resolution :)
let $entities as object* := 
    companies2:companies(
        $ciks,
        $tags,
        $tickers,
        $sics)
let $archives as object* := fiscal-core2:filings(
    $entities,
    $fiscalPeriods,
    $fiscalYears,
    $aids)
let $entities := entities:entities($archives.Entity)

let $hypercube := local:hypercube($entities, $fiscalPeriods, $fiscalYears, $aids)

let $facts :=
    if(empty($archives))
    then ()
    else 
        for $fact in sec:facts-for(
            {|
                {
                    Hypercube : $hypercube,
                    Validate: $validate
                },
                { "ConceptMaps" : $map }[exists($map)],
                { "Rules" : [ $rule ] }[exists($rule)]
            |}
        )
        return {|
            $fact,
            { "EntityRegistrantName" : $entities[$$._id eq $fact.Aspects."xbrl:Entity"].Profiles.SEC.CompanyName}
        |} 

let $facts := util:move-unit-out-of-aspects($facts)

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
        conversion:facts-to-csv($res.FactTable[], { Caller: "Report" })
    }
}

<<<<<<< HEAD
return 
    if(empty($archives))
    then {
        response:status-code(400);
        session:error("entities or archives not found (valid parameters: cik, ticker, tag, sic, aid)", $format)
    }
    else let $results := util:serialize($result, $comment, $serializers, $format, "facts")
         return util:check-and-return-results($entities, $results, $format)
=======
(: choose 
    1. entities (using ciks, tags, tickers, sics), FY, and FP ) or
    2. accession numbers
:)
let $ciks        := distinct-values(companies:eid(request:param-values("rut")))
let $tags        := distinct-values(request:param-values("tag") ! upper-case($$))
let $tickers     := distinct-values(request:param-values("ticker"))
let $sics        := distinct-values(request:param-values("sic"))
let $fiscalYears := distinct-values(
                        for $y in request:param-values("fiscalYear", "LATEST")
                        return
                            if ($y eq "LATEST" or $y eq "ALL")
                            then $y
                            else if ($y castable as integer)
                            then $y
                            else ()
                    )
let $fiscalPeriods := distinct-values(let $fp := request:param-values("fiscalPeriod", "FY")
                      return
                        if (($fp ! lower-case($$)) = "all")
                        then $sec-fiscal:ALL_FISCAL_PERIODS
                        else $fp)
let $aids := request:param-values("aid")
let $dimensions :=  for $p in request:param-names()
                    where contains($p, ":")
                    group by $dimension-name := if (ends-with(lower-case($p), ":default"))
                                                then 
                                                    if (ends-with(lower-case($p), "::default"))
                                                    then substring-before($p, "::default")
                                                    else substring-before($p, ":default")
                                                else $p
                    let $default := ($p = $dimension-name || "::default") or ($p = $dimension-name || ":default")
                    let $all := (request:param-values($dimension-name) ! upper-case($$)) = "ALL"
                    return
                    {
                       $dimension-name : {| 
                            { Name : $dimension-name }, 
                            if ($default)
                            then { Default : 
                                (request:param-values($dimension-name || "::default"),
                                 request:param-values($dimension-name || ":default"))[1] }
                            else (),
                            if ($all)
                            then ()
                            else {
                                Domains : {
                                    "sec:ImplicitDomain" : {
                                        Name: "sec:ImplicitDomain",
                                        Members: {|
                                            (request:param-values($dimension-name)) ! { $$ : { Name: $$ } }
                                        |}
                                    }
                                }
                            }
                        |}
                    }
let $concepts := request:param-values("concept")
let $map      := request:param-values("map")[1]
return 
  if (empty($concepts))
  then {
    response:status-code(400);
    session:error("concept: missing parameter", $format)
  } else
    let $archives := (
                        local:filings($ciks, $tags, $tickers, $sics, $fiscalPeriods, $fiscalYears),
                        archives:archives($aids)
                     )
    let $entities     := companies:companies($archives.Entity)
    return switch(true)
      case empty($archives) return {
        response:status-code(404);
        session:error("entities or archives not found (valid parameters: rut, ticker, tag, sic, aid)", $format)
      }
      case not (session:only-dow30($entities) or session:valid()) return {
        response:status-code(401);
        session:error("accessing facts of an entity that is not in the DOW30", $format)
      }
      default return
        let $facts := local:facts($archives, $concepts, $dimensions, $map)
        return
            switch ($format)
            case "xml" return {
                response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
                local:to-xml($facts)
            }
            case "text" case "csv" return {
                response:content-type("text/csv");
                response:header("Content-Disposition", "attachment; filename=facts.csv");
                local:to-csv($facts)
            }
            case "excel" return {
                response:content-type("application/vnd.ms-excel");
                response:header("Content-Disposition", "attachment; filename=fact.csv");
                local:to-csv($facts)
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
>>>>>>> cik/CIK -> rut/RUT
