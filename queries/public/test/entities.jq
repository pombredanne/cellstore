import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";

declare %an:nondeterministic function local:test-entities($expected as integer, $params as string) as atomic
{
    let $actual as integer := count(parse-json(http-client:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/entities.jq?_method=POST" || $params).body.content).Entities[])
    return if ($actual eq $expected) then true else "false [Actual="||$actual||", Expected="||$expected ||"]"
};

{
    Entities: {
        all: local:test-entities(30, ""),
        dow30: local:test-entities(30, "&tag=DOW30"),
        cik: local:test-entities(1, "&cik=4962"),
        ticker: local:test-entities(1, "&ticker=wmt"),
        sic: local:test-entities(2, "&sic=4813") 
    }
}
