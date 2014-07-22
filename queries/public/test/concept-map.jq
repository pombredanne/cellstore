import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";

declare %an:nondeterministic function local:test-map($expected as integer, $params as string) as atomic
{
    let $actual as integer := count(parse-json(http-client:get(
        "http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/concept-map.jq?_method=POST" || $params
    ).body.content).Trees)
    return
        if ($actual eq $expected)
        then true
        else "false [Actual="||$actual||", Expected="||$expected ||"]"
};

{
    Entities: {
        all: local:test-map(1, "&name=FundamentalAccountingConcepts")
    }
}
