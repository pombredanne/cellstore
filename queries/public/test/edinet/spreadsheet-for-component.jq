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
      "spreadsheet-for-component-expected-cf-one.jq"),
    bs-companies: local:test-values(
      {
        eid: [ "http://info.edinet-fsa.go.jp E01225-000", "http://disclosure.edinet-fsa.go.jp E01264-000", "http://disclosure.edinet-fsa.go.jp E04147-000", "http://disclosure.edinet-fsa.go.jp E04425-000" ],
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_QuarterlyConsolidatedBalanceSheet",
        merge: "true"
      },
      "spreadsheet-for-component-expected-bs-companies.jq"),
    pl-companies: local:test-values(
      {
        eid: [ "http://info.edinet-fsa.go.jp E01225-000", "http://disclosure.edinet-fsa.go.jp E01264-000", "http://disclosure.edinet-fsa.go.jp E04147-000", "http://disclosure.edinet-fsa.go.jp E04425-000" ],
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_YearToQuarterEndConsolidatedStatementOfIncome",
        merge: "true"
      },
      "spreadsheet-for-component-expected-pl-one.jq"),
    cf-companies: local:test-values(
      {
        eid: [ "http://info.edinet-fsa.go.jp E01225-000", "http://disclosure.edinet-fsa.go.jp E01264-000", "http://disclosure.edinet-fsa.go.jp E04147-000", "http://disclosure.edinet-fsa.go.jp E04425-000" ],
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jpcrp/rol_NotesQuarterlyConsolidatedStatementOfCashFlows",
        merge: "true"
      },
      "spreadsheet-for-component-expected-cf-companies.jq"),
    bs-periods: local:test-values(
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "ALL",
        fiscalPeriod: "FY",
        role: "http://info.edinet-fsa.go.jp/jp/fr/gaap/role/ConsolidatedBalanceSheets",
        merge: "true"
      },
      "spreadsheet-for-component-expected-bs-periods.jq"),
    pl-periods: local:test-values(
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "ALL",
        fiscalPeriod: "FY",
        role: "http://info.edinet-fsa.go.jp/jp/fr/gaap/role/ConsolidatedStatementsOfIncome",
        merge: "true"
      },
      "spreadsheet-for-component-expected-pl-periods.jq"),
    cf-periods: local:test-values(
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "ALL",
        fiscalPeriod: "FY",
        role: "http://info.edinet-fsa.go.jp/jp/fr/gaap/role/ConsolidatedStatementsOfCashFlowsIndirect",
        merge: "true"
      },
      "spreadsheet-for-component-expected-cf-periods.jq")
})
