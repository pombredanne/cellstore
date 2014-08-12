import module namespace hypercubes = "http://28.io/modules/xbrl/hypercubes";
import module namespace reports = "http://28.io/modules/xbrl/reports";
import module namespace components2 = "http://28.io/modules/xbrl/components2";

import module namespace companies2 = "http://28.io/modules/xbrl/profiles/sec/companies2";
import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";
import module namespace fiscal-core2 = "http://28.io/modules/xbrl/profiles/sec/fiscal/core2";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";

import module namespace session = "http://apps.28.io/session";
import module namespace util = "http://secxbrl.info/modules/util";

session:audit-call();

(: Query parameters :)
let $format as string?        := request:param-values("format")
let $ciks as string*          := distinct-values(request:param-values("cik"))
let $tags as string*          := distinct-values(request:param-values("tag"))
let $tickers as string*       := distinct-values(request:param-values("ticker"))
let $sics as string*          := distinct-values(request:param-values("sic"))
let $fiscalYears as string*   := distinct-values(request:param-values("fiscalYear"))
let $fiscalPeriods as string* := distinct-values(request:param-values("fiscalPeriod"))
let $aids as string*          := distinct-values(request:param-values("aid"))
let $validate as string       := request:param-values("validate", "false")
let $eliminate as string      := request:param-values("eliminate", "false")
let $report as string?        := request:param-values("report")

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
let $eliminate as boolean := $eliminate = "true"

(: Object resolution :)
let $entities := 
    for $entity in 
        companies2:companies(
            $ciks,
            $tags,
            $tickers,
            $sics)
    order by $entity.Profiles.SEC.CompanyName
    return $entity
let $report as object? := reports:reports($report)

(: Fact resolution :)
let $filter-override as object? := fiscal-core2:filter-override(
    $entities,
    $fiscalYears,
    $fiscalPeriods,
    $aids)

(: Fact resolution :)
let $hypercube := hypercubes:hypercubes-for-components($report, "xbrl:DefaultHypercube")
let $filtered-aspects := values($hypercube.Aspects)[exists(($$.Domains, $$.DomainRestriction))]
let $spreadsheet as object? :=
    if(count($filtered-aspects) lt 2 and not exists(($filter-override)))
    then {
          response:status-code(403);
          session:error("The report filters are too weak, which leads to too big an output.", $format)
    } else
        components2:spreadsheet(
            $report,
            {|
                { FilterOverride: $filter-override}[exists($filter-override)],
                {
                    FlattenRows: true,
                    Eliminate: $eliminate,
                    Validate: $validate
                }
            |}
        )
let $results :=
    {
        response:content-type("application/json");
        response:serialization-parameters({"indent" : true});
        $spreadsheet
    }
return
    util:check-and-return-results($entities, $results, $format)
