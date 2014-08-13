import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace session = "http://apps.28.io/session";
import module namespace user = "http://apps.28.io/user";

declare %an:sequential function local:test-filings($expected as integer, $params as string) as atomic
{
    let $root-url := "http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public"
    let $token as string := parse-json(http-client:get($root-url||"/session/login.jq?_method=POST&email=admin@28.io&password=12345").body.content).token
    let $url := $root-url || "/api/filings.jq?_method=POST" || $params || "&token="||$token
    let $actual as integer := count(parse-json(http-client:get($url).body.content).Archives[])
    return if ($actual eq $expected) then true else "false [URL=" || $url || "Actual="||$actual||", Expected="||$expected ||"]"
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
    all: local:test-filings(1, "&ticker=ko"),
    dow30: local:test-filings(30, "&tag=DOW30"),
    cik: local:test-filings(1, "&cik=4962"),
    ticker: local:test-filings(4, "&ticker=wmt&fiscalYear=ALL"),
    fpall: local:test-filings(4, "&ticker=wmt&fiscalYear=2012&fiscalPeriod=ALL") ,
    fyfp: local:test-filings(1, "&ticker=wmt&fiscalYear=2012&fiscalPeriod=Q1"),
    several: local:test-filings(17, "&cik=0000021344&fiscalPeriod=ALL&fiscalYear=ALL"),
    sic: local:test-filings(69, "&sic=4813")
})