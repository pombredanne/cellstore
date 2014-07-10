jsoniq version "1.0";

import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";

import module namespace sec-networks = "http://xbrl.io/modules/bizql/profiles/sec/networks";

import module namespace util = "http://secxbrl.info/modules/util";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";

import module namespace session = "http://apps.28.io/session";
import module namespace csv = "http://zorba.io/modules/json-csv";

declare function local:to-xml-rec($o as object*, $level as integer) as element()*
{
    for $o in $o
    return
        element { if ($o.Kind eq "Domain") then "Member" else $o.Kind } {
            attribute { "name" } { $o.Name },
            attribute { "label" } { $o.Label },
            if (exists($o.Balance)) then attribute { "balance" } { $o.Balance } else (),
            if (exists($o.DataType)) then attribute { "dataType" } { $o.DataType } else (),
            if (exists($o.BaseType)) then attribute { "baseDataType" } { $o.BaseType } else (), 
            if (exists($o.IsAbstract)) then attribute { "abstract" } { $o.IsAbstract } else (),
            if (exists($o.PeriodType)) then attribute { "periodType" } { $o.PeriodType } else (),
            attribute { "level" } { $level },
            local:to-xml-rec($o.Children[], $level + 1)
        }
};

declare function local:to-xml($model as object) as node()*
{
    ((session:comment("xml", {
                            TotalNumArchives: session:num-archives(),
                            TotalNumEntities: session:num-entities()
                        })),
    <Component>
        <Network entityRegistrantName="{$model.EntityRegistrantName}"
                 accessionNumber="{$model.AccessionNumber}"
                 tableName="{$model.TableName}"
                 cik="{$model.CIK}"
                 label="{$model.Label}"
                 networkIdentifier="{$model.NetworkIdentifier}"
                 formType="{$model.FormType}"
                 fiscalPeriod="{$model.FiscalPeriod}"
                 fiscalYear="{$model.FiscalYear}" 
                 acceptanceDatetime="{$model.AcceptanceDatetime}"
                 disclosure="{$model.Disclosure}"
                 >{
            local:to-xml-rec($model.ModelStructure, 0)
        }</Network>
    </Component>)
    
};

declare function local:to-csv-rec($objects as object*, $level as integer) as object*
{
    for $o in $objects
    let $object := {
        "Label" : $o.Label,
        "Name" : $o.Name,
        "ObjectClass" : if ($o.Kind eq "Domain") then "Member" else $o.Kind,
        "DataType" : $o.DataType,
        "BaseDataType" : $o.BaseType,
        "Balance" : $o.Balance,
        "Abstract" : $o.IsAbstract,
        "PeriodType" : $o.PeriodType,
        "Level" : $level
    }
    return (
        $object,
        local:to-csv-rec($o.Children[], $level + 1)
    )
};


declare function local:to-csv($model as object) as string
{
    let $lines := local:to-csv-rec($model.ModelStructure, 0) 
    return
        if (exists($lines))
        then string-join(csv:serialize($lines, { serialize-null-as : "" }))
        else ""
};


declare function local:enrich-json-rec($objects as object*, $level as integer) as object*
{
    for $object in $objects
    return
        copy $o := $object
        modify (
            if (exists($o.Children)) then delete json $o("Children") else (),
            insert json { Level : $level } into $o,
            if ($o.Kind eq "Domain") then replace value of json $o("Kind") with "Member" else ()
        ) 
        return {|
            $o,
            let $children := local:enrich-json-rec($object.Children[], $level + 1)
            return if (exists($children)) then { Children : [ $children ] } else ()
        |}
};


declare function local:enrich-json($component as object) as object
{
    {
        ModelStructure : [ local:enrich-json-rec($component.ModelStructure, 0) ] ,
        CIK : $component.CIK,
        EntityRegistrantName : $component.EntityRegistrantName,
        Label : $component.Label,
        AccessionNumber : $component.AccessionNumber,
        TableName : $component.TableName,
        FormType : $component.FormType, 
        FiscalPeriod : $component.FiscalPeriod,
        FiscalYear : $component.FiscalYear,
        AcceptanceDatetime : $component.AcceptanceDatetime,
        NetworkIdentifier: $component.NetworkIdentifier,
        Disclosure : $component.Disclosure
    }
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
let $roles as string*          := request:param-values("networkIdentifier")
let $cid as string?            := request:param-values("cid")
let $reportElements as string* := distinct-values(request:param-values("reportElement"))
let $concepts as string*       := distinct-values(request:param-values("concept"))
let $rollups as string*        := distinct-values(request:param-values("rollup"))
let $map as string?            := request:param-values("map")
let $disclosures as string*    := request:param-values("disclosure")
let $validate as string        := request:param-values("validate", "false")
let $eliminate as string       := request:param-values("eliminate", "false")
let $report as string?         := request:param-values("report")
let $search as string*         := request:param-values("label")
let $parameters := {|
    {
        CIKs: [ $ciks ],
        Tags: [ $tags ],
        Tickers: [ $tickers ],
        SICs: [ $sics ],
        FiscalYears: [ $fiscalYears ],
        FiscalPeriods: [ $fiscalPeriods ],
        AIDs: [ $aids ],
        Roles: [ $roles ],
        CIDs: [ $cid ],
        ReportElements: [ $reportElements ],
        Concepts: [ $concepts ],
        RollUps: [ $rollups ],
        Disclosures: [ $disclosures ],
        Search: [ $search ]
    },
    { Format: $format }[exists($format)],
    { Map: $map }[exists($map)],
    { Validate: $validate }[exists($validate)],
    { Eliminate: $eliminate }[exists($eliminate)],
    { Report: $report }[exists($report)] 
|}


(: Object resolution :)
let $parameters as object := util:process-parameters($parameters)
let $components  := util:components-from-parameters($parameters, ())
let $component := $components[1] (: only one for now :)
let $archive   := archives:archives($component.Archive)
let $entity    := entities:entities($archive.Entity)

let $results :=
    let $model := {|
        { CIK : $entity._id },
        { EntityRegistrantName : $entity.Profiles.SEC.CompanyName },
        { ModelStructure : sec-networks:model-structures($component) },
        { TableName : sec-networks:tables($component, {IncludeImpliedTable: true}).Name },
        { Label : $component.Label },
        { AccessionNumber : $component.Archive },
        { FormType : $archive.Profiles.SEC.FormType },
        { FiscalPeriod : $archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus },
        { FiscalYear : $archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus },
        { AcceptanceDatetime : filings:acceptance-dateTimes($archive) },
        { NetworkIdentifier: $component.Role },
        { Disclosure : $component.Profiles.SEC.Disclosure }
    |}
    return 
    switch ($format)
    case "xml" return {
        response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
        local:to-xml($model)
    }
    case "text" case "csv" return {
        response:content-type("text/csv");
        response:header("Content-Disposition", "attachment; filename=modelstructure-" || $cid || ".csv");
        local:to-csv($model)
    }
    case "excel" return {
        response:content-type("application/vnd.ms-excel");
        response:header("Content-Disposition", "attachment; filename=modelstructure-" || $cid || ".csv");
        local:to-csv($model)
    }
    default return {
        response:content-type("application/json");
        response:serialization-parameters({"indent" : true});
        {|
            local:enrich-json($model), 
            session:comment("json", {
                    TotalNumArchives: session:num-archives(),
                    TotalNumEntities: session:num-entities()
                })
        |}
    }
return util:check-and-return-results($entity, $results, $parameters.Format)
