import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace test = "http://apps.28.io/test";

declare %an:nondeterministic function local:test-spreadsheet($expected as integer, $params as object) as item
{
    let $endpoint := "spreadsheet-for-report"
    let $request := test:invoke($endpoint, $params)
    let $actual as integer := count($request[2].TableSet[].TableCells.Facts[][].Value)
    let $status as integer := $request[1]
    return test:assert-eq($expected, $actual, $status, test:url($endpoint, $params))
};

declare %an:nondeterministic function local:test-report-does-not-exist($params as object) as item
{
    let $endpoint := "spreadsheet-for-report"
    let $request := test:invoke($endpoint, $params)
    let $status as integer := $request[1]
    return if ($status eq 404) then true else { url: test:url($endpoint, $params), unexpectedResponse: $request[2] }
};

declare %an:sequential function local:check($o as object) as object
{
    if (not(every $k in (keys($o) ! $o.$$) satisfies ($k instance of boolean and $k)))
    then {
            response:status-code(500);
            $o
    } else
            $o
};

local:check({
    cocacola: local:test-spreadsheet(93, {
        report:"FundamentalAccountingConcepts",
        ticker:"ko",
        fiscalYear:"2013",
        fiscalPeriod:"Q1"}),
    tickerrole: local:test-spreadsheet(93, {
        report:"FundamentalAccountingConcepts",
        ticker:"ko",
        fiscalYear:"2012",
        fiscalPeriod:"Q1"}),
    tickerconcept: local:test-spreadsheet(372, {
        report:"FundamentalAccountingConcepts",
        ticker:"ko",
        fiscalYear:"2012",
        fiscalPeriod:"ALL",
        fiscalPeriodType:["instant", "YTD"]
    }),
    tickerconcept-qtd: local:test-spreadsheet(192, {
        report:"FundamentalAccountingConcepts",
        ticker:"ko",
        fiscalYear:"2012",
        fiscalPeriod:"ALL",
        fiscalPeriodType:["instant", "QTD"]
    }),
    tickerfyfprole: local:test-spreadsheet(187, {
        report:"FundamentalAccountingConcepts",
        ticker:["ko","wmt"],
        fiscalYear:"2013",
        fiscalPeriod:"FY",
        fiscalPeriodType:["instant", "YTD"],
        eliminate:"true"}),
    reportDoesntExist: local:test-report-does-not-exist({
        report:"report-not-found",
        ticker:"MSFT",
        fiscalYear:"ALL",
        fiscalPeriod:"FY"})
})
