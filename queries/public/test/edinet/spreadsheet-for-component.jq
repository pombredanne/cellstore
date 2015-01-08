import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace test = "http://apps.28.io/test";
import module namespace http-client = "http://zorba.io/modules/http-client";

declare %an:nondeterministic function local:test-values($params as object, $expected-file as string) as item*
{
    let $endpoint := "spreadsheet-for-component"
    let $request := test:invoke($endpoint, $params)
    let $actual as object := $request[2]
    let $expected := parse-json(
        http-client:get("http://" || request:server-name() || ":" || request:server-port() ||
                        "/test/edinet/" || $expected-file).body.content)
    return if (deep-equal($actual, $expected))
           then true
           else { url: test:url($endpoint, $params) }
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
    bs-one: local:test-values(
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_QuarterlyConsolidatedBalanceSheet",
        merge: "true"
      },
      "spreadsheet-for-component-expected-bs-one.jq"),
    pl-one: local:test-values(
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_YearToQuarterEndConsolidatedStatementOfIncome",
        merge: "true"
      },
      "spreadsheet-for-component-expected-pl-one.jq"),
    cf-one: local:test-values(
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jpcrp/rol_NotesQuarterlyConsolidatedStatementOfCashFlows",
        merge: "true"
      },
      "spreadsheet-for-component-expected-cf-one.jq")
})
