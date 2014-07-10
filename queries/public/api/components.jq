import module namespace entities = "http://xbrl.io/modules/bizql/entities";

import module namespace sec-networks = "http://xbrl.io/modules/bizql/profiles/sec/networks";

import module namespace util = "http://secxbrl.info/modules/util";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace csv = "http://zorba.io/modules/json-csv";
import module namespace session = "http://apps.28.io/session";

declare function local:to-csv($res as object*) as string*
{
    csv:serialize(
        for $a in flatten($res.Archives)
        for $c in flatten($a.Components)
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
let $archives as object* := util:filings-from-parameters($parameters, ())
let $components  := util:components-from-parameters($parameters, ())
let $entities    := entities:entities($archives.Entity)
let $res         := 
    {
        "Archives" : [
            for $r in $components
            let $disclosure := sec-networks:disclosures($r)
            where $disclosure ne "DefaultComponent" and
                exists(sec-networks:model-structures($r))
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
              Components : [ sec-networks:summaries($r) ]
            }
        ]
    }
                    
let $results := switch ($format)
        case "xml" return {
            response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
            (session:comment("xml", {
                    NumComponents : count($components),
                    TotalNumComponents: session:num-components(),
                    TotalNumArchives: session:num-archives()
                }),
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
            }</Archives>)
        } 
            case "text" case "csv" return {
                response:content-type("text/csv");
                response:header("Content-Disposition", "attachment; filename=components.csv");
                string-join(local:to-csv($res), "")
            }
            case "excel" return {
                response:content-type("application/vnd.ms-excel");
                response:header("Content-Disposition", "attachment; filename=components.csv");
                string-join(local:to-csv($res), "")
            }
            default return {
                response:content-type("application/json");
                response:serialization-parameters({"indent" : true});
                {|
                    session:comment("json", {
                        NumComponents : count($components),
                        TotalNumComponents: session:num-components(),
                        TotalNumArchives: session:num-archives()
                    }), $res
                |}
            }
return 
    util:check-and-return-results($entities, $results, $parameters.Format)
