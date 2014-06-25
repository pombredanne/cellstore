import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace hypercubes2 = "http://xbrl.io/modules/bizql/hypercubes2";
import module namespace reports = "http://xbrl.io/modules/bizql/reports";

import module namespace sec-core = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace csv = "http://zorba.io/modules/json-csv";

import module namespace session = "http://apps.28.io/session";

declare function local:to-csv($o as object*) as string? 
{
    if (exists($o)) (: bug in csv:serialize :)
    then
    string-join(
        csv:serialize(
            for $o in $o
            let $a := $o.Aspects
            return {|
                for $k in keys($a)
                return { $k : $a.$k },
                { "Value" : $o.Value },
                if (exists($o."Unit"))
                then { "Unit" :  $o."Unit" }
                else (),
                if (exists($o.Decimals))
                then { "Decimals" : $o.Decimals }
                else(),
                { "EntityRegistrantName" : $o.EntityRegistrantName },
                if (exists($o.ReportedConcept))
                then { "ReportedConcept" : $o.ReportedConcept }
                else ()
            |},
            { serialize-null-as : "" }
        )
    )
    else ()
};

declare function local:audittrail-to-xml($audit as item) as element()
{
    <AuditTrails>{
        for $a in flatten($audit)
        return (
            <Type>{$a.Type}</Type>,
            <Label>{$a.Label}</Label>,
            <Message>{$a.Message}</Message>,
            <Data>{
                if (exists($a.Data.OriginalConcept))
                then <OriginalConcept>{$a.Data.OriginalConcept}</OriginalConcept>
                else (),
                if (exists($a.Data.OutputConcept))
                then <OutputConcept>{$a.Data.OutputConcept}</OutputConcept>
                else (),
                if (exists($a.Data.AuditTrails))
                then local:audittrail-to-xml($a.Data.AuditTrails)
                else ()
            }</Data>
        )
    }</AuditTrails>
};

declare function local:to-xml($o as object*) as node()*
{
    (session:comment("xml", {
                            NumFacts : count($o),
                            TotalNumFacts: session:num-facts(),
                            TotalNumArchives: session:num-archives(),
                            TotalNumEntities: session:num-entities()
                        }),
    <FactTable NetworkIdentifier="http://bizql.io/facttable-for-report"
            TableName="xbrl:FactTableForReport">{
        for $o in $o
        let $a := $o.Aspects
        return
            <Fact>{
                <Aspects>{
                    for $k in keys($a)
                    return
                        <Aspect>
                            <Name>{$k}</Name>
                            <Value>{$a.$k}</Value>
                        </Aspect>
                }</Aspects>,
                <Value>{$o.Value}</Value>,
                <Type>{$o.Type}</Type>,
                if (exists($o.Unit))
                then <Unit>{$o.Unit}</Unit>
                else(),
                if (exists($o.Decimals))
                then <Decimals>{$o.Decimals}</Decimals>
                else (),
                <EntityRegistrantName>{$o.EntityRegistrantName}</EntityRegistrantName>,
                if (exists($o.AuditTrails))
                then local:audittrail-to-xml($o.AuditTrails)
                else ()
            }</Fact>
    }</FactTable>)
};

declare function local:filings(
    $ciks as string*,
    $tags as string*,
    $tickers as string*,
    $sics as string*,
    $fp as string*,
    $fy as string*) as object*
{
    let $entities := if ($tags = "ALL") then companies:companies()
                                        else (
                                            companies:companies($ciks),
                                            companies:companies-for-tags($tags),
                                            companies:companies-for-tickers($tickers),
                                            companies:companies-for-SIC($sics)
                                        )
    for $entity in $entities
    for $fy in distinct-values(
                for $fy in $fy
                return
                    switch ($fy)
                    case "LATEST" return
                        for $p in $fp
                        return
                            if ($p eq "FY")
                            then sec-fiscal:latest-reported-fiscal-period($entity, "10-K").year 
                            else sec-fiscal:latest-reported-fiscal-period($entity, "10-Q").year
                    case "ALL" return  ()
                    default return ()
                )
    for $fp in $fp 
    return sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, $fp, $fy ! ($$ cast as integer))
};
declare function local:filter-override(
    $ciks as string*,
    $tags as string*,
    $tickers as string*,
    $sics as string*,
    $fp as string*,
    $fy as string*) as object?
{
    let $entities as object* := if ($tags = "ALL") then ()
                                        else (
                                            companies:companies($ciks),
                                            companies:companies-for-tags($tags),
                                            companies:companies-for-tickers($tickers),
                                            companies:companies-for-SIC($sics)
                                        )
    where not deep-equal($fy, "LATEST")
    let $fiscal-years as integer* := switch(true)
                         case $fy = "ALL" return ()
                         default return distinct-values($fy[$$ ne "LATEST"]!integer($fy))
    let $fiscal-periods as string* := switch(true)
                         case $fp = "ALL" return ()
                         default return distinct-values($fp)
    let $filter as object := {
        "xbrl:Entity" : {|
            { Type: "string" },
            { Domain: [ $entities._id ] }[exists($entities)]
        |},
        "sec:FiscalYear" : {|
            { Type: "integer" },
            { Domain: [ $fiscal-years ] }[exists($fiscal-years)]
        |},
        "sec:FiscalPeriod" : {|
            { Type: "string" },
            { Domain: [ $fiscal-periods ] }[exists($fiscal-periods)]
        |}
    }
    return $filter
};

session:audit-call();


let $format      := lower-case((request:param-values("format"), substring-after(request:path(), ".jq."))[1])
let $ciks        := distinct-values(companies:eid(request:param-values("cik")))
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
let $aids        := archives:aid(request:param-values("aid"))
let $archives    := (
                        local:filings($ciks, $tags, $tickers, $sics, $fiscalPeriods, $fiscalYears),
                        archives:archives($aids)
                    )
let $entities    := entities:entities($archives.Entity)
let $report := request:param-values("report")
let $filter-override-latest as object? :=
    {
        "sec:Archive" : {
            Type: "string",
            Domain : [archives:aid($archives)]
        }
    }[exists($archives)]
let $filter-override-non-latest as object? := local:filter-override($ciks, $tags, $tickers, $sics, $fiscalPeriods, $fiscalYears)
let $filtered-aspects := 
    let $report := reports:reports($report)
    let $hypercube := hypercubes:hypercubes-for-components($report, "xbrl:DefaultHypercube")
    return values($hypercube.Aspects)[exists(($$.Domains, $$.DomainRestriction))]
let $facts :=
    for $fact in (
        reports:facts(
            $report,
            {
                FilterOverride: $filter-override-latest
            }
        )[exists($filter-override-latest)],
        reports:facts(
            $report,
            {
                FilterOverride: $filter-override-non-latest
            }
        )[exists($filter-override-non-latest)],
        if(count($filtered-aspects) ge 2 and not exists(($filter-override-latest, $filter-override-non-latest)))
        then reports:facts($report)
        else ()
    )
    group by $archive := $fact.Archive
    let $archive := archives:archives($archive)
    let $entity := entities:entities($archive.Entity)
    for $fact in $fact
    return
    {|
        project($fact, "Aspects"),
        { Type: $fact.Type },
        { Unit: $fact.Aspects."xbrl:Unit" }[exists($fact.Aspects."xbrl:Unit")],
        project($fact, ("Decimals", "Value")),
        { "EntityRegistrantName" : $entity.Profiles.SEC.CompanyName },
        project($fact, "AuditTrails")
    |}
return
    switch(session:check-access($entities, "data_sec"))
    case $session:ACCESS-ALLOWED return
        if(count($filtered-aspects) lt 2 and not exists(($filter-override-latest, $filter-override-non-latest)))
        then {
              response:status-code(403);
              session:error("The report filters are too weak, which leads to too big an output.", $format)
        }
        else {
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
                    { NetworkIdentifier : "http://secxbrl.info/facts" },
                    { TableName : "xbrl:Facts" },
                    { FactTable : [ $facts ] },
                    session:comment("json", {
                            NumFacts : count($facts),
                            TotalNumFacts: session:num-facts(),
                            TotalNumArchives: session:num-archives(),
                            TotalNumEntities: session:num-entities()
                        })
                |}
            }
        }
    case $session:ACCESS-DENIED return {
          response:status-code(403);
          session:error("accessing filings of an entity that is not in the DOW30", $format)
       }
    case $session:ACCESS-AUTH-REQUIRED return {
          response:status-code(401);
          session:error("authentication required or session expired", $format)
       }
    default return error()
