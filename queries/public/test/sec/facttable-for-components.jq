import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace test = "http://apps.28.io/test";

declare %an:nondeterministic function local:test-facttable($expected as integer, $params as object) as item
{
    let $endpoint := "facttable-for-component"
    let $request := test:invoke($endpoint, $params)
    let $actual as integer := count($request[2].FactTable[])
    let $status as integer := $request[1]
    return test:assert-eq($expected, $actual, $status, test:url($endpoint, $params))
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
    cocacola: local:test-facttable(1, {
        ticker:"ko"
    }),
    tickerrole: local:test-facttable(60, {
        ticker:"ko",
        fiscalYear:"2013",
        networkIdentifier:"http://www.thecocacolacompany.com/role/ConsolidatedStatementsOfIncome"
    }),
    tickerconcept: local:test-facttable(76, {
        ticker:"ko",
        concept:"us-gaap:Assets",
        fiscalYear:"2013"
    }),
    tickerfyfprole: local:test-facttable(70, {
        ticker:"ko",
        fiscalYear:"2012",
        fiscalPeriod:"Q1",
        networkIdentifier:"http://www.thecoca-colacompany.com/role/CondensedConsolidatedBalanceSheets"
    }),
    generic: local:test-facttable(76, {
        profile-name: "generic",
        aid: "0000021344-14-000008",
        role: "http://www.thecocacolacompany.com/role/ConsolidatedBalanceSheets"
    }),
    merge: local:test-facttable(153, {
        ticker:"ko",
        fiscalYear: ["2012", "2013" ],
        fiscalPeriod: "FY",
        disclosure:"BalanceSheet",
        merge: "true"
    })
})
