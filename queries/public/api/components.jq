import module namespace util = "http://secxbrl.info/modules/util";
import module namespace session = "http://apps.28.io/session";

import module namespace entities = "http://xbrl.io/modules/bizql/entities";

import module namespace sec-networks = "http://xbrl.io/modules/bizql/profiles/sec/networks";
import module namespace sec-networks2 = "http://xbrl.io/modules/bizql/profiles/sec/networks2";
import module namespace companies2 = "http://xbrl.io/modules/bizql/profiles/sec/companies2";
import module namespace fiscal-core = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace fiscal-core2 = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core2";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace csv = "http://zorba.io/modules/json-csv";

declare function local:to-csv($res as object*) as string*
{
    csv:serialize(
        for $c in $res
        return { 
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
let $cids as string*           := request:param-values("cid")
let $reportElements as string* := distinct-values(request:param-values("reportElement"))
let $concepts as string*       := distinct-values(request:param-values("concept"))
let $disclosures as string*    := request:param-values("disclosure")
let $search as string*         := request:param-values("label")

(: Post-processing :)
let $format as string? := (: backwards compatibility, to be deprecated  :)
    lower-case(($format, substring-after(request:path(), ".jq."))[1])
let $tags as string* := (: backwards compatibility, to be deprecated :)
    distinct-values($tags ! upper-case($$))
let $fiscalYears as integer* :=
    for $fy in $fiscalYears
    return switch($fy)
           case "LATEST" return $fiscal-core2:LATEST_FISCAL_YEAR
           case "ALL" return $fiscal-core:ALL_FISCAL_YEARS
           default return if($fy castable as integer) then integer($fy) else ()
let $fiscalPeriods as string* :=
    for $fp in $fiscalPeriods
    return switch($fp)
           case "ALL" return $fiscal-core:ALL_FISCAL_PERIODS
           default return $fp

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
    $concepts,
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
    return sec-networks:summaries($r)

let $results := switch ($format)
        case "xml" return {
            response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
            session:comment("xml", {
                    NumComponents : count($components),
                    TotalNumComponents: session:num-components(),
                    TotalNumArchives: session:num-archives()
                }),
            <Components>{ $res ! sec-networks:summaries-to-xml($$) }</Components>
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
                    session:comment("json",
                        {
                            NumComponents : count($components),
                            TotalNumComponents: session:num-components(),
                            TotalNumArchives: session:num-archives()
                        }
                    ),
                    { Components: [ $res ] }
                |}
            }
return 
    util:check-and-return-results($entities, $results, $format)
