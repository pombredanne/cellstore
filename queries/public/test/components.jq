import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";

declare %an:nondeterministic function local:test-acceptance-date($expected as string, $params as string) as atomic
{
    let $actual as string := parse-json(http-client:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/components.jq?_method=POST" || $params).body.content).Archives[].AcceptanceDatetime
    return if ($actual eq $expected) then true else "false [Actual="||$actual||", Expected="||$expected ||"]"
};

declare %an:nondeterministic function local:test-components($expected as integer, $params as string) as atomic
{
    let $actual as integer := count(parse-json(http-client:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/components.jq?_method=POST" || $params).body.content).Archives[].Components[])
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

local:check({
    cocacola: local:test-components(96, "&ticker=ko"),
    cocacolaincome: local:test-components(1, "&ticker=ko&networkIdentifier=http://www.thecocacolacompany.com/role/ConsolidatedStatementsOfIncome"),
    byconcept: local:test-components(115, "&tag=DOW30&concept=us-gaap:NetIncomeLoss"),
    byfyfp: local:test-components(1, "&ticker=ko&fiscalYear=2012&fiscalPeriod=Q1&networkIdentifier=http://www.thecoca-colacompany.com/role/CondensedConsolidatedBalanceSheets"),
    byfyfplowercase: local:test-components(1, "&ticker=ko&fiscalYear=2012&fiscalPeriod=q2&networkIdentifier=http://www.thecoca-colacompany.com/role/CondensedConsolidatedBalanceSheets"),
    acceptance: local:test-acceptance-date("2014-07-30T15:44:58Z", "&aid=0000021344-14-000029")
})
