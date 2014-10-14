import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace test = "http://apps.28.io/test";


declare %an:nondeterministic function local:test-spreadsheet($expected as integer, $params as object) as item
{
    let $request := test:invoke("spreadsheet-for-component", $params)
    let $actual as integer := count($request[2].TableSet[].TableCells.Facts[][].Value)
    let $status as integer := $request[1]
    return test:assert-eq($expected, $actual, $status)
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
    cocacola: local:test-spreadsheet(1, {
        ticker:"ko"
    }),
    tickerrole: local:test-spreadsheet(60, {
        ticker:"ko",
        networkIdentifier:"http://www.thecocacolacompany.com/role/ConsolidatedStatementsOfIncome"
    }),
    tickerconcept: local:test-spreadsheet(76, {
        ticker:"ko",
        fiscalYear:"2013",
        concept:"us-gaap:Assets"
    }),
    tickerfyfprole: local:test-spreadsheet(70, {
        ticker:"ko",
        fiscalYear:"2012",
        fiscalPeriod:"Q1",
        networkIdentifier:"http://www.thecoca-colacompany.com/role/CondensedConsolidatedBalanceSheets"
    }) 
})
