import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";


declare %an:nondeterministic function local:test-concepts($expected as integer, $params as string) as atomic
{
    let $elements as object* := parse-json(http-client:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/report-elements.jq?_method=POST" || $params).body.content).ReportElements[]
    let $actual as integer := count($elements)
    let $duplicates := for $element in $elements where $element.CIK instance of array return $element
    return
        if (exists($duplicates)) then 
            "false [CIK " || $duplicates[1].CIK || " is not unique]"
        else if ($actual eq $expected) then
            true
        else
            "false [Actual="||$actual||", Expected="||$expected ||"]"
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
    all: local:test-concepts(3, "&cik=4962&name=us-gaap:Assets"),
    onlyNames: local:test-concepts(16143, "&tag=DOW30&fiscalYear=2012&fiscalPeriod=FY&onlyNames=true"),
    disclosures: local:test-concepts(1855, "&ticker=ko&fiscalYear=2012&fiscalPeriod=FY&report=Disclosure&concept=disc:ConsolidationVariableInterestEntityPolicy")
})