<<<<<<< HEAD
import module namespace util = "http://secxbrl.info/modules/util";
import module namespace session = "http://apps.28.io/session";

=======
(: SVS OK :)
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/svs/fiscal/core";
>>>>>>> Updated query name in information.js and backend.js
import module namespace entities = "http://xbrl.io/modules/bizql/entities";

<<<<<<< HEAD
import module namespace sec-networks = "http://xbrl.io/modules/bizql/profiles/sec/networks";
import module namespace sec-networks2 = "http://xbrl.io/modules/bizql/profiles/sec/networks2";
import module namespace companies2 = "http://xbrl.io/modules/bizql/profiles/sec/companies2";
import module namespace fiscal-core = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace fiscal-core2 = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core2";
=======
import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace svs-networks = "http://xbrl.io/modules/bizql/profiles/svs/networks";
>>>>>>> Updated query name in information.js and backend.js

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace csv = "http://zorba.io/modules/json-csv";

<<<<<<< HEAD
declare function local:to-csv($res as object*) as string*
=======
import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";

declare function local:summary-to-xml($components as object*) as element()*
{
    for $c in $components
    return
    <Component id="{$c._id}">
        <NetworkLabel>{$c.Label}</NetworkLabel>
        <NetworkIdentifier>{$c.Role}</NetworkIdentifier>
        <Category>{svs-networks:categories($c)}</Category>
        <SubCategory>{svs-networks:sub-categories($c)}</SubCategory>
        <Table>{svs-networks:tables($c, { IncludeImpliedTable: true}).Name[1]}</Table>
        <Disclosure>{svs-networks:disclosures($c)}</Disclosure>
        <Tables>{svs-networks:num-tables($c)}</Tables>
        <Axis>{svs-networks:num-axes($c)}</Axis>
        <Members>{svs-networks:num-members($c)}</Members>
        <LineItems>{svs-networks:num-line-items($c)}</LineItems>
        <Concepts>{svs-networks:num-concepts($c)}</Concepts>
        <Abstracts>{count(svs-networks:abstracts($c))}</Abstracts>
    </Component>
};

declare function local:to-csv($components as object*) as string*
>>>>>>> Updated query name in information.js and backend.js
{
    csv:serialize(
<<<<<<< HEAD
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
=======
        for $c in $components
<<<<<<< HEAD
        let $disclosure := sec-networks:disclosures($c)
        where $disclosure ne "DefaultComponent" and
                exists(sec-networks:model-structures($c))
=======
        let $disclosure := svs-networks:disclosures($c)
        where $disclosure ne "DefaultComponent" and
                exists(svs-networks:model-structures($c))
>>>>>>> Updated query name in information.js and backend.js
        order by $c.Label
        let $a := archives:archives($c.Archive)
        let $e := entities:entities($a.Entity)
        return {| 
            ({ RUT : $e._id },
            { EntityRegistrantName : $e.Profiles.SEC.CompanyName },
            { FiscalYear : $a.Profiles.SEC.Fiscal.DocumentFiscalYearFocus },
            { FiscalPeriod : $a.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus },
            { AcceptanceDateTime : $a.Profiles.SEC.AcceptanceDatetime },
            { FormType : $a.Profiles.SEC.FormType },
            { AcessionNumber : $a._id },
            { ComponentId : $c._id },
            { NetworkLabel : $c.Label},
            { NetworkIdentifier : $c.Role},
<<<<<<< HEAD
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
=======
            { Category : svs-networks:categories($c)},
            { SubCategory : svs-networks:sub-categories($c)},
            { Table : svs-networks:tables($c, { IncludeImpliedTable: true}).Name[1]},
            { Disclosure : svs-networks:disclosures($c)},
            { ReportElements : svs-networks:num-report-elements($c)},
            { Tables : svs-networks:num-tables($c)},
            { Axis : svs-networks:num-axes($c)},
            { Members : svs-networks:num-members($c)},
            { LineItems : svs-networks:num-line-items($c)},
            { Concepts : svs-networks:num-concepts($c) },
            { Abstracts : count(svs-networks:abstracts($c)) })
>>>>>>> Updated query name in information.js and backend.js
        |},
    { serialize-null-as : "" })
>>>>>>> cik/CIK -> rut/RUT
};

<<<<<<< HEAD

session:audit-call();
=======
declare function local:component-summary($component as object) as object
{
    {
        ComponentId : $component._id,
        NetworkLabel : $component.Label,
        NetworkIdentifier : $component.Role,
        Category : svs-networks:categories($component),
        SubCategory : svs-networks:sub-categories($component),
        Table : svs-networks:tables($component, { IncludeImpliedTable: true}).Name[1],
        Disclosure : svs-networks:disclosures($component),
        ReportElements : svs-networks:num-report-elements($component),
        Tables : svs-networks:num-tables($component),
        Axis : svs-networks:num-axes($component),
        Members : svs-networks:num-members($component),
        LineItems : svs-networks:num-line-items($component),
        Concepts : svs-networks:num-concepts($component),
        Abstracts : count(svs-networks:abstracts($component)) 
    }
};

declare function local:components-by-disclosures($disclosures as string, $aids as string*) as object*
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
            "Profiles.SVS.Disclosure": { "$in" : [ $disclosures ] }
        })
};
>>>>>>> Updated query name in information.js and backend.js

(: Query parameters :)
let $format as string?         := request:param-values("format")
let $ciks as string*           := distinct-values(request:param-values("cik"))
let $tags as string*           := distinct-values(request:param-values("tag"))
let $tickers as string*        := distinct-values(request:param-values("ticker"))
let $sics as string*           := distinct-values(request:param-values("sic"))
let $fiscalYears as string*    := distinct-values(request:param-values("fiscalYear", "LATEST"))
let $fiscalPeriods as string*  := distinct-values(request:param-values("fiscalPeriod", "FY"))
let $aids as string*           := distinct-values(request:param-values("aid"))
let $roles as string*          := request:param-values("networkIdentifier")
let $cids as string*           := request:param-values("cid")
let $reportElements as string* := distinct-values(request:param-values("reportElement"))
let $concepts as string*       := distinct-values(request:param-values("concept"))
let $disclosures as string*    := request:param-values("disclosure")
let $search as string*         := request:param-values("label")

<<<<<<< HEAD
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
let $reportElements := ($reportElements, $concepts)
=======
declare function local:components-by-reportElements($reportElements as string, $aids as string*) as object*
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
>>>>>>> Updated query name in information.js and backend.js

(: Object resolution :)
let $entities := 
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
let $entities    := entities:entities($archives.Entity)
let $components  := sec-networks2:components(
    $archives,
    $cids,
    $reportElements,
    $disclosures,
    $roles,
    $search)
let $res         := 
    for $r in $components
    let $disclosure := sec-networks:disclosures($r)
    where $disclosure ne "DefaultComponent"
    where exists(sec-networks:model-structures($r))
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
           AcceptanceDatetime : $archive.Profiles.SEC.AcceptanceDatetime,
           FormType : $archive.Profiles.SEC.FormType,
           Components : [ 
               sec-networks:summaries($r)
           ]
       }

<<<<<<< HEAD
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
=======
declare function local:filings(
    $ruts as string*,
    $tags as string*,
    $tickers as string*,
    $sics as string*,
    $fp as string*,
    $fy as string*) as object*
{
    let $entities := (
        companies:companies($ruts),
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
>>>>>>> Updated query name in information.js and backend.js

<<<<<<< HEAD
let $results := util:serialize($result, $comment, $serializers, $format, "components")
return 
    util:check-and-return-results($entities, $results, $format)
=======
let $format      := lower-case((request:param-values("format"), substring-after(request:path(), ".jq."))[1])
let $ruts        := distinct-values(companies:eid(request:param-values("rut")))
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
                        local:filings($ruts, $tags, $tickers, $sics, $fiscalPeriods, $fiscalYears),
                        archives:archives($aids)
                    )
let $cid         := request:param-values("cid")
let $reportElements    := distinct-values(request:param-values("reportElement"))
let $disclosures := request:param-values("disclosure")
let $search := request:param-values("label")
let $components  := (if (exists($cid))
                    then components:components($cid)
                    else (),
                    if (exists($reportElements))
                    then local:components-by-reportElements($reportElements, $archives._id)
                    else if (exists($disclosures))
                    then local:components-by-disclosures($disclosures, $archives._id)
                    else if (exists($roles))
                    then local:components-by-roles($roles, $archives._id)
                    else if (exists($search))
                    then local:components-by-label($search, $archives._id)
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
<<<<<<< HEAD
                 let $disclosure := sec-networks:disclosures($r)
                 where $disclosure ne "DefaultComponent" and
                        exists(sec-networks:model-structures($r))
=======
                 let $disclosure := svs-networks:disclosures($r)
                 where $disclosure ne "DefaultComponent" and
                        exists(svs-networks:model-structures($r))
>>>>>>> Updated query name in information.js and backend.js
                 order by $r.Label
                 group by $archive := $r.Archive
                 let $archive := archives:archives($archive)
                 let $e := entities:entities($archive.Entity)
                 return
                     <Archive id="{$archive._id}">
                        <EntityRegistrantName>{$e.Profiles.SEC.CompanyName}</EntityRegistrantName>
                        <RUT>{$e._id}</RUT>
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
<<<<<<< HEAD
                        let $disclosure := sec-networks:disclosures($r)
                        where $disclosure ne "DefaultComponent" and
                            exists(sec-networks:model-structures($r))
=======
                        let $disclosure := svs-networks:disclosures($r)
                        where $disclosure ne "DefaultComponent" and
                            exists(svs-networks:model-structures($r))
>>>>>>> Updated query name in information.js and backend.js
                        order by $r.Label
                        group by $archive := $r.Archive
                        let $archive := archives:archives($archive)
                        let $e := entities:entities($archive.Entity)
                        return
                        {
                          AccessionNumber : $archive._id,
                          EntityRegistrantName : $e.Profiles.SEC.CompanyName,
                          RUT : $e._id,
<<<<<<< HEAD
                          FiscalYear :$archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus,
                          FiscalPeriod :$archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus,
                          AcceptanceDatetime : $archive.Profiles.SEC.AcceptanceDatetime,
                          FormType : $archive.Profiles.SEC.FormType,
=======
                          FiscalYear :$archive.Profiles.SVS.Fiscal.DocumentFiscalYearFocus,
                          FiscalPeriod :$archive.Profiles.SVS.Fiscal.DocumentFiscalPeriodFocus,
                          AcceptanceDatetime : filings:acceptance-dateTimes($archive),
                          FormType : filings:document-types($archive),
>>>>>>> Updated query name in information.js and backend.js
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
>>>>>>> cik/CIK -> rut/RUT
