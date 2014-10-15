import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace test = "http://apps.28.io/test";

declare %an:nondeterministic function local:test-spreadsheet($expected as integer, $params as object) as item
{
    let $request := test:invoke("spreadsheet-for-report", $params)
    let $actual as integer := count($request[2].TableSet[].TableCells.Facts[][].Value)
    let $status as integer := $request[1]
    return test:assert-eq($expected, $actual, $status)
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
    cocacola: local:test-spreadsheet(85, {
        report:"FundamentalAccountingConcepts",
        ticker:"ko",
        fiscalYear:"2013",
        fiscalPeriod:"Q1"}),
    tickerrole: local:test-spreadsheet(85, {
        report:"FundamentalAccountingConcepts",
        ticker:"ko",
        fiscalYear:"2012",
        fiscalPeriod:"Q1"}),
    tickerconcept: local:test-spreadsheet(416, {
        report:"FundamentalAccountingConcepts",
        ticker:"ko",
        fiscalYear:"2012",
        fiscalPeriod:"ALL"}),
    tickerfyfprole: local:test-spreadsheet(173, {
        report:"FundamentalAccountingConcepts",
        ticker:["ko","wmt"],
        fiscalYear:"2013",
        fiscalPeriod:"FY",
        eliminate:"true"}) 
})