import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";


declare %an:nondeterministic function local:test-facttable($expected as integer, $params as string) as atomic
{
    let $actual as integer := count(parse-json(http-client:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/facttable-for-component.jq?_method=POST" || $params).body.content).FactTable[])
    return if ($actual eq $expected) then true else "false [Actual="||$actual||", Expected="||$expected ||"]"
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

response:content-type("application/json");
local:check({
    cocacola: local:test-facttable(1, "&ticker=ko"),
    tickerrole: local:test-facttable(60, "&ticker=ko&networkIdentifier=http://www.thecocacolacompany.com/role/ConsolidatedStatementsOfIncome"),
    tickerconcept: local:test-facttable(60, "&ticker=ko&concept=us-gaap:NetIncomeLoss"),
    tickerfyfprole: local:test-facttable(70, "&ticker=ko&fiscalYear=2012&fiscalPeriod=Q1&networkIdentifier=http://www.thecoca-colacompany.com/role/CondensedConsolidatedBalanceSheets") 
})