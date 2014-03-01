jsoniq version "1.0";

import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";

import module namespace sec-networks = "http://xbrl.io/modules/bizql/profiles/sec/networks";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";

import module namespace session = "http://apps.28.io/session";
import module namespace csv = "http://zorba.io/modules/json-csv";


declare function local:to-csv($o as object*) as string
{
    string-join(
        csv:serialize(
            for $o in $o
            let $a := $o.Aspects
            return {|
                (for $k in keys($a) return { $k : $a.$k }),
                { "Unit" :  $o.Unit },
                { "Value" : $o.Value },
                { "Type" : $o.Type },
                { "Decimals" : $o.Decimals }
            |},
            { serialize-null-as : "" }
        )
    )
};

declare function local:to-xml($o as object*)
{
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
            <Type>{$o.Type}</Type>,
            <Value>{$o.Value}</Value>,
            if (exists($o.Unit))
            then <Unit>{$o.Unit}</Unit>
            else(),
            if (exists($o.Decimals))
            then <Decimals>{$o.Decimals}</Decimals>
            else ()
        }</Fact>
};

let $format  := lower-case(request:param-values("format")[1]) (: text, xml, or json (default) :)
let $cid       := request:param-values("cid")[1]
let $component := components:components($cid)
let $entity    := archives:entities($component.Archive)
let $archive   := archives:archives($component.Archive)
return
     if (session:only-dow30($entity) or session:valid())
     then {
        let $fact-table :=  for $f in sec-networks:facts($component, {||})
                            let $a := $f.Aspects
                            return {|
                                { "Aspects" : {|
                                    { "xbrl:Entity": $a."xbrl:Entity" },
                                    if (exists($a."dei:LegalEntityAxis")) then { "dei:LegalEntityAxis": $a."dei:LegalEntityAxis" } else (),
                                    { "xbrl:Period" : $a."xbrl:Period" },
                                    { "xbrl:Concept" : $a."xbrl:Concept" },
                                    for $k in keys($f.Aspects)
                                    where $k ne "xbrl:Unit" and $k ne "xbrl:Entity" and $k ne "dei:LegalEntityAxis" and 
                                          $k ne "xbrl:Period" and $k ne "xbrl:Concept"
                                    return { $k : $f.Aspects.$k }
                                |} },
                                { "Type" : $f.Type },
                                { "Value" : $f.Value },
                                if (exists($f.Decimals))
                                then { "Decimals" : $f.Decimals }
                                else (),
                                if (exists($f."Aspects"."xbrl:Unit"))
                                then { "Unit" : $f."Aspects"."xbrl:Unit" }
                                else ()
                            |}
        return 
            switch ($format)
            case "xml" return {
                response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
                (session:comment("xml"),
                <FactTable entityRegistrantName="{$entity.Profiles.SEC.CompanyName}"
                    tableName="{sec-networks:tables($component, {IncludeImpliedTable: true}).Name}"
                    label="{$component.Label}"
                    accessionNumber="{$component.Archive}"
                    networkIdentifier="{$component.Role}"
                    formType="{$archive.Profiles.SEC.FormType}"
                    fiscalPeriod="{$archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus}"
                    fiscalYear="{$archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus}" 
                    acceptanceDatetime="{filings:acceptance-dateTimes($archive)}"
                    >{
                    local:to-xml($fact-table)
                }</FactTable>)
            }
            case "text" case "csv" return {
                response:content-type("text/csv");
                response:header("Content-Disposition", "attachment; filename=facttable-" || $cid || ".csv");
                local:to-csv($fact-table)
            }
            case "excel" return {
                response:content-type("application/vnd.ms-excel");
                response:header("Content-Disposition", "attachment; filename=facttable-" || $cid || ".csv");
                local:to-csv($fact-table)
            }
            default return {
                response:content-type("application/json");
                response:serialization-parameters({"indent" : true});
                {|
                    { EntityRegistrantName : $entity.Profiles.SEC.CompanyName },
                    { TableName : sec-networks:tables($component, {IncludeImpliedTable: true}).Name },
                    { Label : $component.Label },
                    { AccessionNumber : $component.Archive },
                    { FormType : $archive.Profiles.SEC.FormType },
                    { FiscalPeriod : $archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus },
                    { FiscalYear : $archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus },
                    { AcceptanceDatetime : filings:acceptance-dateTimes($archive) },
                    { NetworkIdentifier: $component.Role },  
                    { FactTable : [ $fact-table ] },
                    session:comment("json")
                |}
            }
     } else {
        response:status-code(401);
        session:error("accessing fact table for an entity that is not in the DOW30", $format)
     }
