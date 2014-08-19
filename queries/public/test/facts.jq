import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";


declare %an:nondeterministic function local:test-facttable($expected as integer*, $params as string) as atomic
{
    let $actual as integer := count(parse-json(http-client:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/facts.jq?_method=POST" || $params).body.content).FactTable[])
    return if ($actual = $expected) then true else "false [Actual="||$actual||", Expected="||$expected ||"]"
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
    cocacola: local:test-facttable(468, "&ticker=ko"),
    tickerconcept: local:test-facttable(1, "&ticker=ko&concept=us-gaap:Assets"),
    tickerfyfprole: local:test-facttable(1, "&ticker=ko&fiscalYear=2012&fiscalPeriod=Q1&concept=us-gaap:Assets"),
    tagconcept: local:test-facttable(30, "&tag=DOW30&concept=us-gaap:Assets"),
    tagfyfprole: local:test-facttable(30, "&tag=DOW30&fiscalYear=2012&fiscalPeriod=Q1&concept=us-gaap:Assets")
})