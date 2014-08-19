import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";

declare %an:nondeterministic function local:test-spreadsheet($expected as integer, $params as string) as atomic
{
    let $actual as integer := count(parse-json(http-client:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/spreadsheet-for-report.jq?_method=POST" || $params).body.content).TableSet[].TableCells.Facts[][].Value)
    return if ($actual eq $expected) then true else "false [Actual="||$actual||", Expected="||$expected ||"]"
};

declare %an:sequential function local:check($o as object) as object
{
    if (not(every $k in (keys($o) ! $o.$$) satisfies ($k instance of boolean and $k)))
    then {
            response:status-code(200);
            $o
    } else
            $o
};

local:check({
    cocacola: local:test-spreadsheet(85, "&report=FundamentalAccountingConcepts&ticker=ko&fiscalYear=2013&fiscalPeriod=Q1"),
    tickerrole: local:test-spreadsheet(85, "&report=FundamentalAccountingConcepts&ticker=ko&fiscalYear=2012&fiscalPeriod=Q1"),
    tickerconcept: local:test-spreadsheet(416, "&report=FundamentalAccountingConcepts&ticker=ko&fiscalYear=2012&fiscalPeriod=ALL"),
    tickerfyfprole: local:test-spreadsheet(173, "&report=FundamentalAccountingConcepts&ticker=ko&ticker=wmt&fiscalYear=2013&fiscalPeriod=FY&eliminate=true") 
})