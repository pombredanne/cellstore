import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";

import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace sec-networks = "http://xbrl.io/modules/bizql/profiles/sec/networks";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace csv = "http://zorba.io/modules/json-csv";
import module namespace session = "http://apps.28.io/session";

import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";

declare function local:summary-to-xml($components as object*) as element()*
{
    for $c in $components
    return
    <Component id="{$c._id}">
        <NetworkLabel>{$c.Label}</NetworkLabel>
        <NetworkIdentifier>{$c.Role}</NetworkIdentifier>
        <Category>{sec-networks:categories($c)}</Category>
        <SubCategory>{sec-networks:sub-categories($c)}</SubCategory>
        <Table>{sec-networks:tables($c, { IncludeImpliedTable: true}).Name[1]}</Table>
        <Disclosure>{sec-networks:disclosures($c)}</Disclosure>
        <Tables>{sec-networks:num-tables($c)}</Tables>
        <Axis>{sec-networks:num-axes($c)}</Axis>
        <Members>{sec-networks:num-members($c)}</Members>
        <LineItems>{sec-networks:num-line-items($c)}</LineItems>
        <Concepts>{sec-networks:num-concepts($c)}</Concepts>
        <Abstracts>{count(sec-networks:abstracts($c))}</Abstracts>
    </Component>
};

declare function local:to-csv($components as object*) as string*
{
    csv:serialize(
        for $c in $components
        let $disclosure := sec-networks:disclosures($c)
        where $disclosure ne "DefaultComponent" and
                exists(sec-networks:model-structures($c))
        order by $c.Label
        let $a := archives:archives($c.Archive)
        let $e := entities:entities($a.Entity)
        return {| 
            ({ CIK : $e._id },
            { EntityRegistrantName : $e.Profiles.SEC.CompanyName },
            { FiscalYear : $a.Profiles.SEC.Fiscal.DocumentFiscalYearFocus },
            { FiscalPeriod : $a.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus },
            { AcceptanceDateTime : $a.Profiles.SEC.AcceptanceDatetime },
            { FormType : $a.Profiles.SEC.FormType },
            { AcessionNumber : $a._id },
            { ComponentId : $c._id },
            { NetworkLabel : $c.Label},
            { NetworkIdentifier : $c.Role},
            { Category : sec-networks:categories($c)},
            { SubCategory : sec-networks:sub-categories($c)},
            { Table : sec-networks:tables($c, { IncludeImpliedTable: true}).Name[1]},
            { Disclosure : sec-networks:disclosures($c)},
            { ReportElements : sec-networks:num-report-elements($c)},
            { Tables : sec-networks:num-tables($c)},
            { Axis : sec-networks:num-axes($c)},
            { Members : sec-networks:num-members($c)},
            { LineItems : sec-networks:num-line-items($c)},
            { Concepts : sec-networks:num-concepts($c) },
            { Abstracts : count(sec-networks:abstracts($c)) })
        |},
    { serialize-null-as : "" })
};

declare function local:component-summary($component as object) as object
{
    {
        ComponentId : $component._id,
        NetworkLabel : $component.Label,
        NetworkIdentifier : $component.Role,
        Category : sec-networks:categories($component),
        SubCategory : sec-networks:sub-categories($component),
        Table : sec-networks:tables($component, { IncludeImpliedTable: true}).Name[1],
        Disclosure : sec-networks:disclosures($component),
        ReportElements : sec-networks:num-report-elements($component),
        Tables : sec-networks:num-tables($component),
        Axis : sec-networks:num-axes($component),
        Members : sec-networks:num-members($component),
        LineItems : sec-networks:num-line-items($component),
        Concepts : sec-networks:num-concepts($component),
        Abstracts : count(sec-networks:abstracts($component)) 
    }
};

declare function local:components-by-disclosures($disclosures as string*, $aids as string*) as object*
{
    let $conn :=   
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return
        try {
            mongo:connect($credentials)
        } catch mongo:* {
            error(QName("components:CONNECTION-FAILED"), $err:description)
        }
    for $aid in $aids
    return
        mongo:find($conn, "components", 
        {
            $components:ARCHIVE: $aid,
            "Profiles.SEC.Disclosure": { "$in" : [ $disclosures ] }
        })
};

declare function local:components-by-roles($roles as string*, $aids as string*) as object*
{
    let $conn :=   
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return
        try {
            mongo:connect($credentials)
        } catch mongo:* {
            error(QName("components:CONNECTION-FAILED"), $err:description)
        }
    return
        mongo:find($conn, "components", 
        {
            $components:ARCHIVE: { "$in" : [ $aids ] },
            "Role": { "$in" : [ $roles ] }
        })
};

declare function local:components-by-reportElements($reportElements as string*, $aids as string*) as object*
{
    let $conn :=   
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return
        try {
            mongo:connect($credentials)
        } catch mongo:* {
            error(QName("components:CONNECTION-FAILED"), $err:description)
        }
    let $ids := mongo:find($conn, "concepts", 
        {| 
            (
                { "Name" : { "$in" : [ $reportElements ] } },
                { "Archive" : { "$in" : [ $aids ] } }
            )
        |}).Component
    return components:components($ids)
};

declare function local:components-by-label($search-term as string, $aids as string*) as object*
{
    let $conn :=
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return
        try {
            mongo:connect($credentials)
        } catch mongo:* {
            error(QName("components:CONNECTION-FAILED"), $err:description)
        }
    return mongo:run-cmd-deterministic(
           $conn,
           {
             "text" : "components",
             "filter" : { "Archive" : { "$in" : [ $aids ] } },
             "search" : $search-term,
             "limit" : 100,
             "score" : { "$meta" : "textScore" },
             "sort" : { score: { "$meta" : "textScore" } }
           }).results[].obj
};

declare function local:filings(
    $ciks as string*,
    $tags as string*,
    $tickers as string*,
    $sics as string*,
    $fp as string*,
    $fy as string*) as object*
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
                            then fiscal:latest-reported-fiscal-period($entity, "10-K").year 
                            else fiscal:latest-reported-fiscal-period($entity, "10-Q").year
                    case "ALL" return  $fiscal:ALL_FISCAL_YEARS
                    default return $fy cast as integer
                )
    for $fp in $fp 
    return fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, $fp, $fy)
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
                            then $y
                            else  ()
                    )
let $fiscalPeriods := distinct-values(let $fp := request:param-values("fiscalPeriod", "FY")
                      return
                        if (($fp ! lower-case($$)) = "all")
                        then $fiscal:ALL_FISCAL_PERIODS
                        else $fp)
let $aids        := archives:aid(request:param-values("aid"))
let $roles       := request:param-values("networkIdentifier")
let $archives    := (
                        local:filings($ciks, $tags, $tickers, $sics, $fiscalPeriods, $fiscalYears),
                        archives:archives($aids)
                    )
let $cid         := request:param-values("cid")
let $reportElements    := distinct-values(request:param-values("reportElement"))
let $disclosures := request:param-values("disclosure")
let $search := request:param-values("label")
let $components  := (if (exists($cid))
                    then components:components($cid)
                    else (),
                    if (exists($reportElements) or exists($disclosures) or exists($roles) or exists($search))
                    then (
                            local:components-by-reportElements($reportElements, $archives._id), 
                            local:components-by-disclosures($disclosures, $archives._id),
                            local:components-by-roles($roles, $archives._id),
                            local:components-by-label($search, $archives._id)
                        )
                    else components:components-for-archives($archives._id))
let $entities    := entities:entities($archives.Entity)
return 
    if (session:only-dow30($entities) or session:valid())
    then {
        switch ($format)
        case "xml" return {
            response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
            (session:comment("xml", {
                    NumComponents : count($components),
                    TotalNumComponents: session:num-components(),
                    TotalNumArchives: session:num-archives()
                }),
             <Archives>{
                 for $r in $components
                 let $disclosure := sec-networks:disclosures($r)
                 where $disclosure ne "DefaultComponent" and
                        exists(sec-networks:model-structures($r))
                 order by $r.Label
                 group by $archive := $r.Archive
                 let $archive := archives:archives($archive)
                 let $e := entities:entities($archive.Entity)
                 return
                     <Archive id="{$archive._id}">
                        <EntityRegistrantName>{$e.Profiles.SEC.CompanyName}</EntityRegistrantName>
                        <CIK>{$e._id}</CIK>
                        <FiscalYear>{$archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus}</FiscalYear>
                        <FiscalPeriod>{$archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus}</FiscalPeriod>
                        <AcceptanceDatetime>{$archive.Profiles.SEC.AcceptanceDatetime}</AcceptanceDatetime>
                        <FormType>{$archive.Profiles.SEC.FormType}</FormType>
                        <Components>{
                            local:summary-to-xml($r)
                        }</Components>
                    </Archive>
            }</Archives>)
        }
            case "text" case "csv" return {
                response:content-type("text/csv");
                response:header("Content-Disposition", "attachment; filename=components.csv");
                string-join(local:to-csv($components), "")
            }
            case "excel" return {
                response:content-type("application/vnd.ms-excel");
                response:header("Content-Disposition", "attachment; filename=components.csv");
                string-join(local:to-csv($components), "")
            }
            default return {
                response:content-type("application/json");
                response:serialization-parameters({"indent" : true});
                {|
                    session:comment("json", {
                        NumComponents : count($components),
                        TotalNumComponents: session:num-components(),
                        TotalNumArchives: session:num-archives()
                    }),
                    { "Archives" : [
                        for $r in $components
                        let $disclosure := sec-networks:disclosures($r)
                        where $disclosure ne "DefaultComponent" and
                            exists(sec-networks:model-structures($r))
                        order by $r.Label
                        group by $archive := $r.Archive
                        let $archive := archives:archives($archive)
                        let $e := entities:entities($archive.Entity)
                        return
                        {
                          AccessionNumber : $archive._id,
                          EntityRegistrantName : $e.Profiles.SEC.CompanyName,
                          CIK : $e._id,
                          FiscalYear :$archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus,
                          FiscalPeriod :$archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus,
                          AcceptanceDatetime : $archive.Profiles.SEC.AcceptanceDatetime,
                          FormType : $archive.Profiles.SEC.FormType,
                          Components : [ 
                            $r ! local:component-summary($$)
                          ]
                        }
                    ]}
                |}
            }
    } else {
        response:status-code(401);
        let $res := session:error("accessing components of an entity that is not in the DOW30", $format)
        return
            switch ($format)
            case "xml" return {
                response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
                (session:comment("xml"), $res)
            }
            case "text" case "csv" return {
                response:content-type("text/plain");
                $res
            }
            case "excel" return {
                response:content-type("application/vnd.ms-excel");
                response:header("Content-Disposition", "attachment; filename=components.csv");
                $res
            }
            default return {
                response:content-type("application/json");
                response:serialization-parameters({"indent" : true});
                {|
                    session:comment("json"),
                    $res
                |}
            }
    }
