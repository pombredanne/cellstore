import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace test = "http://apps.28.io/test";


declare %an:nondeterministic function local:test-components($expected as integer, $params as object) as item
{
    let $request := test:invoke("modelstructure-for-component", $params)
    let $actual as integer := count($request[2].ModelStructure[])
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
    cocacola: local:test-components(1, {ticker:"ko"}),
    cocacolaincome: local:test-components(1, {ticker:"ko",networkIdentifier:"http://www.thecocacolacompany.com/role/ConsolidatedStatementsOfIncome"}),
    byconcept: local:test-components(1, {tag:"DOW30",concept:"us-gaap:NetIncomeLoss"}),
    byfyfp: local:test-components(1, {ticker:"ko",fiscalYear:"2012",fiscalPeriod:"Q1",networkIdentifier:"http://www.thecoca-colacompany.com/role/CondensedConsolidatedBalanceSheets"}) 
})