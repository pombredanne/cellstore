import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";


declare %an:nondeterministic function local:test-filings($expected as integer, $params as string) as atomic
{
    let $actual as integer := count(parse-json(http-client:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/filings.jq?_method=POST" || $params).body.content).Archives[])
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
    all: local:test-filings(1, "&ticker=ko"),
    dow30: local:test-filings(30, "&tag=DOW30"),
    cik: local:test-filings(1, "&cik=4962"),
    ticker: local:test-filings(4, "&ticker=wmt&fiscalYear=ALL"),
    fpall: local:test-filings(4, "&ticker=wmt&fiscalYear=2012&fiscalPeriod=ALL") ,
    fyfp: local:test-filings(1, "&ticker=wmt&fiscalYear=2012&fiscalPeriod=Q1"),
    several: local:test-filings(17, "&cik=0000021344&fiscalPeriod=ALL&fiscalYear=ALL") (:,
    sic: local:test-filings(69, "&sic=4813") disabled right now because needs token :)
})
