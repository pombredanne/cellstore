jsoniq version "1.0";

import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";

import module namespace sec-networks = "http://xbrl.io/modules/bizql/profiles/sec/networks";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";

import module namespace session = "http://apps.28.io/session";
import module namespace csv = "http://zorba.io/modules/json-csv";

declare function local:to-xml-rec($o, $level as integer)
{
    for $o in $o
    return
        element { $o.Kind } {
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

declare function local:to-xml($model)
{
    ((session:comment("xml")),
    <Component>
        <Network entityRegistrantName="{$model.EntityRegistrantName}"
                 accessionNumber="{$model.AccessionNumber}"
                 cik="{$model.CIK}"
                 label="{$model.Label}"
                 networkIdentifier="{$model.NetworkIdentifier}">{
            local:to-xml-rec($model.ModelStructure.Children[], 0)
        }</Network>
    </Component>)
    
};

declare function local:to-csv-rec($objects, $level as integer)
{
    for $o in $objects
    let $object := {
        "Label" : $o.Label,
        "Name" : $o.Name,
        "ObjectClass" : $o.Kind,
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


declare function local:to-csv($model)
{
    let $lines := local:to-csv-rec($model.ModelStructure.Children[], 0) 
    return
        if (exists($lines))
        then string-join(csv:serialize($lines))
        else ""
};


declare function local:enrich-json-rec($objects, $level as integer)
{
    for $object in $objects
    return
        copy $o := $object
        modify (
            if (exists($o.Children)) then delete json $o("Children") else (),
            insert json { Level : $level } into $o
        )
        return {|
            $o,
            let $children := local:enrich-json-rec($object.Children[], $level + 1)
            return if (exists($children)) then { Children : [ $children ] } else ()
        |}
};


declare function local:enrich-json($component)
{
    {
        ModelStructure : [ local:enrich-json-rec($component.ModelStructure.Children[], 0) ] ,
        CIK : $component._id,
        EntityRegistrantName : $component.EntityRegistrantName,
        Label : $component.Label,
        AccessionNumber : $component.AccessionNumber,
        NetworkIdentifier: $component.NetworkIdentifier
    }
};

let $format    := lower-case(request:param-values("format")[1]) 
let $cid       := request:param-values("cid")[1]
let $component := components:components($cid)
let $entity    := archives:entities($component.Archive)
return
     if (session:only-dow30($entity) or session:valid())
     then {
        let $model := {|
                    { CIK : $entity._id },
                    { EntityRegistrantName : $entity.Profiles.SEC.CompanyName },
                    { ModelStructure : sec-networks:model-structures($component) },
                    { Label : $component.Label },
                    { AccessionNumber : $component.Archive },
                    { NetworkIdentifier: $component.Role }
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
                    session:comment("json")
                |}
            }
     } else {
        response:status-code(401);
        session:error("accessing fact table for an entity that is not in the DOW30", $format)
     }
