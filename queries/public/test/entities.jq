import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";


declare %an:nondeterministic function local:test-entities($expected as integer*, $params as string) as atomic
{
    let $actual as integer := count(parse-json(http-client:get(
        "http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/entities.jq?_method=POST" || $params
    ).body.content).Entities[])
    return
        if ($actual = $expected)
        then true
        else "false [Actual="||$actual||", Expected="||$expected ||"]"
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
    dow30: local:test-entities(30, "&tag=DOW30"),
    cik: local:test-entities(1, "&cik=4962"),
    ticker: local:test-entities(1, "&ticker=wmt"),
    ticker2: local:test-entities(2, "&ticker=wmt&ticker=ko"),
    sic: local:test-entities((2, 74), "&sic=4813"),
    mixed: local:test-entities((5, 77), "&cik=4962&sic=4813&ticker=wmt&ticker=ko")
})