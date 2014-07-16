import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";

declare %an:nondeterministic function local:test-spreadsheet($expected as integer, $params as string) as atomic
{
    let $actual as integer := count(parse-json(http-client:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/spreadsheet-for-report.jq?_method=POST" || $params).body.content).TableSet[].TableCells.Facts[][].Value)
    return if ($actual eq $expected) then true else "false [Actual="||$actual||", Expected="||$expected ||"]"
};

{
    Facts: {
        cocacola: local:test-spreadsheet(85, "&report=FundamentalAccountingConcepts&ticker=ko&fiscalYear=LATEST&fiscalPeriod=Q1"),
        tickerrole: local:test-spreadsheet(85, "&report=FundamentalAccountingConcepts&ticker=ko&fiscalYear=2012&fiscalPeriod=Q1"),
        tickerconcept: local:test-spreadsheet(416, "&report=FundamentalAccountingConcepts&ticker=ko&fiscalYear=2012&fiscalPeriod=ALL"),
        tickerfyfprole: local:test-spreadsheet(205, "&report=FundamentalAccountingConcepts&ticker=ko&ticker=wmt&fiscalYear=LATEST&fiscalPeriod=FY&eliminate=true") 
    }
}
