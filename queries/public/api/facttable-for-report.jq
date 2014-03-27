
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace core = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";

import module namespace csv = "http://zorba.io/modules/json-csv";

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

declare function local:to-xml($o as object*)
{
    (session:comment("xml"),
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
                if (exists($o.ReportedConcept))
                then <ReportedConcept>{$o."ReportedConcept"}</ReportedConcept>
                else ()
            }</Fact>
    }</FactTable>)
};

declare function local:filings(
    $ciks,
    $tags,
    $tickers,
    $sics,
    $fp,
    $fy)
{
    let $entities := (
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
                        case "ALL" return ()
                    default return $fy
                )
    for $fp in $fp 
    return sec-fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, $fp, $fy cast as integer)
};


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
                            then $y cast as integer
                            else ()
                    )
let $fiscalPeriods := distinct-values(let $fp := request:param-values("fiscalPeriod", "FY")
                      return
                        if (($fp ! lower-case($$)) = "all")
                        then ("Q1", "Q2", "Q3", "FY")
                        else $fp)
let $aids        := archives:aid(request:param-values("aid"))
let $archives    := (
                        local:filings($ciks, $tags, $tickers, $sics, $fiscalPeriods, $fiscalYears),
                        archives:archives($aids)
                    )
let $entities    := entities:entities($archives.Entity)
let $report := request:param-values("report")


let $facts :=
    for $archive in $archives
    let $entity    := entities:entities($archive.Entity)
    let $fp := $archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus 
    let $fy := $archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus
    for $fact in core:facts-for-schema($report, $archive)
    return
    {|
        { Aspects : {|
            for $a in keys($fact.Aspects)
            return { $a : $fact.Aspects.$a },
            { "secxbrl:FiscalPeriod" : $fp },
            { "secxbrl:FiscalYear" : $fy }
        |} },
        { Type: $fact.Type },
        if (exists($fact.Aspects."xbrl:Unit"))
        then { Unit: $fact.Aspects."xbrl:Unit" }
        else  (),
        if (exists($fact.Decimals))
        then { Decimals: $fact.Decimals }
        else (), 
        { Value: $fact.Value },
        { "EntityRegistrantName" : $entity.Profiles.SEC.CompanyName },
        { "ReportedConcept" : $fact.AuditTrails[].Data.OriginalConcept[1] }
        
    |}
return 
    if (session:only-dow30($entities) or session:valid())
        then {
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
                    session:comment("json")
                |}
            }
        }
        else {
            response:status-code(401);
            session:error("accessing filings of an entity that is not in the DOW30", $format)
        }