import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";

declare %an:nondeterministic function local:test-components($expected as integer, $params as string) as atomic
{
    let $actual as integer := count(parse-json(http-client:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/components.jq?_method=POST" || $params).body.content).Components[])
    return if ($actual eq $expected) then true else "false [Actual="||$actual||", Expected="||$expected ||"]"
};

{
    Components: {
        byid: local:test-components(1, "&cid=5735ef0c-14fb-4196-8ac5-03adaf5689ab"),
        cocacola: local:test-components(94, "&ticker=ko"),
        cocacolaincome: local:test-components(1, "&ticker=ko&networkIdentifier=http://www.thecocacolacompany.com/role/ConsolidatedStatementsOfIncome"),
        byconcept: local:test-components(113, "&tag=DOW30&concept=us-gaap:NetIncomeLoss"),
        byfyfp: local:test-components(1, "&ticker=ko&fiscalYear=2012&fiscalPeriod=Q1&networkIdentifier=http://www.thecoca-colacompany.com/role/CondensedConsolidatedBalanceSheets"),
        byfyfplowercase: local:test-components(1, "&ticker=ko&fiscalYear=2012&fiscalPeriod=q2&networkIdentifier=http://www.thecoca-colacompany.com/role/CondensedConsolidatedBalanceSheets") 
    }
}