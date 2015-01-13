import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace test = "http://apps.28.io/test";

declare variable $local:expected as object :=
    {
      "byconcept" : [ "1001000 - Statement - Consolidated Statement of Income", "1005000 - Statement - Consolidated Statement of Equity", "2404402 - Disclosure - Summarized Financial Data - Chevron U.S.A. Inc. (Details)", "2405402 - Disclosure - Summarized Financial Data - Chevron Transport Corporation (Details)", "2410402 - Disclosure - Operating Segments and Geographic Data (Details)", "2427402 - Disclosure - Earnings Per Share (Details)", "1001000 - Statement - CONSOLIDATED STATEMENTS OF INCOME", "1005000 - Statement - CONSOLIDATED STATEMENTS OF SHAREOWNERS' EQUITY", "1001000 - Statement - CONSOLIDATED STATEMENTS OF EARNINGS", "2418402 - Disclosure - EARNINGS PER SHARE (DETAILS)", "2447402 - Disclosure - QUARTERLY RESULTS (UNAUDITED) (DETAILS)", "1002000 - Statement - CONSOLIDATED STATEMENTS OF OPERATIONS", "1004000 - Statement - CONSOLIDATED STATEMENTS OF CHANGES IN EQUITY", "2436402 - Disclosure - Basic and Diluted Earnings Per Share (Detail)", "1001000 - Statement - Consolidated Income Statements", "000100 - Statement - Consolidated Statement Of Income", "041101 - Disclosure - Earnings Per Share (Details)", "041702 - Disclosure - Disclosures About Segments And Related Information (Schedule Of Segments And Related Information) (Details)", "1003 - Statement - Consolidated Statements of Income", "1008 - Statement - Consolidated Statements of Changes in Equity", "1118 - Disclosure - Schedule of Quarterly Financial Information (Detail)", "1001000 - Statement - Consolidated Statements of Income", "1002000 - Statement - Consolidated Statements of Comprehensive Income", "1004000 - Statement - Consolidated Statements of Cash Flows", "1005000 - Statement - Consolidated Statements of Stockholders' Equity", "1002000 - Statement - Consolidated Statements of Income", "1003000 - Statement - Consolidated Statements of Comprehensive Income", "1005000 - Statement - Consolidated Statements of Changes in Stockholders' Equity", "1006000 - Statement - Consolidated Statements of Cash Flows", "2429403 - Disclosure - Earnings Per Share (Details)", "2438402 - Disclosure - International Operations (Details)", "2440402 - Disclosure - Parent Company - Statements of Income (Details)", "2440404 - Disclosure - Parent Company - Statements of Cash Flows (Details2)", "1001000 - Statement - Consolidated Statements of Income", "1002000 - Statement - Consolidated Statements Of Earnings", "1003000 - Statement - Consolidated Statements of Comprehensive Income", "1004000 - Statement - Consolidated Statements of Stockholders' Equity", "1005000 - Statement - Consolidated Statements Of Cash Flows", "2415402 - Disclosure - Quarterly Financial Data (Unaudited) (Details)", "1001000 - Statement - Consolidated Statement of Operations", "1004000 - Statement - Consolidated Statement of Cash Flows", "2404402 - Disclosure - Earnings Per Share (Details)", "2410403 - Disclosure - Equity (Changes in Noncontrolling Interests) (Details)", "2420404 - Disclosure - Segment Financial Data (Selected Quarterly Financial Data) (Details)", "2421402 - Disclosure - Selected Quarterly Financial Data - Unaudited (Details)", "1001000 - Statement - Consolidated Statements Of Income (Audited)", "1002000 - Statement - Consolidated Statements Of Comprehensive Income (Audited)", "2419402 - Disclosure - Quarterly Financial Data (Unaudited) (Details)", "1002000 - Statement - Consolidated Statements of Earnings", "1004000 - Statement - Consolidated Statements of Equity", "2419402 - Disclosure - Selected Quarterly Financial Data (Unaudited) (Details)", "1001000 - Statement - Consolidated Statement of Income", "1002000 - Statement - Consolidated Statement of Comprehensive Income", "1004000 - Statement - Consolidated Statement of Equity", "2420402 - Disclosure - Earnings Per Share - Calculations of Earnings Per Share (Detail)", "1001000 - Statement - Consolidated Statements Of Operations", "1002000 - Statement - Consolidated Statements of Comprehensive Income", "1004000 - Statement - Consolidated Statements Of Cash Flows", "2401402 - Disclosure - Summary Of Business Segment Data (Details)", "2405403 - Disclosure - Earnings Per Share (Schedule Of Weighted-Average Number Of Shares Outstanding Used To Compute Earnings Per Share) (Details)", "2424403 - Disclosure - Quarterly Financial Data (Schedule Of Quarterly Financial Data) (Details)", "1003000 - Statement - Consolidated Statements of Operations", "1003000 - Statement - Consolidated Statements of Operations", "1005000 - Statement - Consolidated Statements of Changes in Shareholders' Equity", "2429403 - Disclosure - Quarterly Financial Data Quarterly Financial Data (Unaudited) (Details)", "2430405 - Disclosure - Schedule I Condensed Income Statement (Details)", "000100 - Statement - Consolidated Statements Of Income", "000400 - Statement - Consolidated Statement Of Changes In Stockholders' Equity", "040201 - Disclosure - Earnings Per Share (Details)", "0110 - Statement - Consolidated Statements of Earnings", "0120 - Statement - Consolidated Statements of Comprehensive Income", "0140 - Statement - Consolidated Statements of Changes in Shareholders' Equity", "0150 - Statement - Consolidated Statements of Cash Flows", "0625 - Disclosure - Business Segments (Details)", "0630 - Disclosure - Parent Company (Details)", "06302 - Disclosure - Parent Company (Details 2)", "100020 - Statement - Statement of Earnings", "100030 - Statement - Statement of Comprehensive Income", "100040 - Statement - Statement of Changes in Shareowners' Equity", "100060 - Statement - Statement of Cash Flows", "401500 - Disclosure - Shareowners' Equity (Details)", "402800 - Disclosure - Quarterly Information (unaudited) (Details)", "1003 - Statement - INCOME STATEMENTS", "1004 - Statement - COMPREHENSIVE INCOME STATEMENTS", "1008 - Statement - CASH FLOWS STATEMENTS", "1009 - Statement - STOCKHOLDERS' EQUITY STATEMENTS", "1057 - Disclosure - Basic and Diluted Earnings Per Share (Detail)", "1129 - Disclosure - Quarterly Information (Unaudited) (Detail)", "010020 - Statement - Consolidated Statements of Income", "010035 - Statement - Consolidated Statements of Comprehensive Income", "010060 - Statement - Consolidated Statements of Cash Flows", "010080 - Statement - Consolidated Statements of Shareholders' Equity", "042600 - Disclosure - Parent Company (Details)", "042620 - Disclosure - Parent Company (Details 2)", "042700 - Disclosure - Quarterly Financial Data (Unaudited) (Details)", "1001000 - Statement - Consolidated Statement of Income", "1002000 - Statement - Consolidated Statement of Comprehensive Income", "1004000 - Statement - Consolidated Statement of Cash Flows", "1005000 - Statement - Consolidated Statement of Shareholders Equity", "2414402 - Disclosure - Quarterly Results (Detail)", "1003000 - Statement - Consolidated Statements Of Operations", "1004000 - Statement - Consolidated Statements of Comprehensive Income", "1005000 - Statement - Consolidated Statements Of Cash Flows", "1006000 - Statement - Consolidated Statements Of Equity", "2421402 - Disclosure - Net Income per Share (Calculation Of Basic And Diluted Net Income Per Share) (Details)", "1001000 - Statement - Consolidated Statements Of Income", "1001000 - Statement - Consolidated Statements Of Income", "1002000 - Statement - Consolidated Statements of Comprehensive Income", "1004000 - Statement - Consolidated Statements of Cash Flows", "1005000 - Statement - Consolidated Statements of Shareholders' Equity", "2401404 - Disclosure - Summary of Significant Accounting Policies - Revisions (Details)", "000011 - Statement - Consolidated Statement of Income", "004010 - Disclosure - Significant Accounting Policies (Details)", "004170 - Disclosure - Quarterly Data (Unaudited) (Details)", "1001000 - Statement - CONSOLIDATED STATEMENTS OF INCOME", "2423404 - Disclosure - Equity - Details about AOCI Components Reclassified to Net Income (Details)", "2476402 - Disclosure - Quarterly Financial Summary (Detail)" ]
    };

declare %an:nondeterministic function local:test-example1() as item
{
  let $expected := parse-json(
        http-client:get("http://" || request:server-name() || ":" || request:server-port() ||
                        "/test/secxbrl/components-expected1.jq").body.content)
  let $params := {aid:"0000021344-13-000039"}
  let $endpoint := "components"
  let $request := test:invoke($endpoint, $params)
  let $actual := $request[2].Archives
  return test:assert-deep-equal($expected, $actual, $request[1], test:url($endpoint, $params)) 
};

declare %an:nondeterministic function local:test-example2() as item
{
  let $expected := parse-json(
        http-client:get("http://" || request:server-name() || ":" || request:server-port() ||
                        "/test/secxbrl/components-expected2.jq").body.content)
  let $params := {ticker:"ko"}
  let $endpoint := "components"
  let $request := test:invoke($endpoint, $params)
  let $actual := $request[2].Archives
  return test:assert-deep-equal($expected, $actual, $request[1], test:url($endpoint, $params))
};


declare %an:nondeterministic function local:test-acceptance-date($expected as string, $params as object) as item
{
    let $endpoint := "components"
    let $request := test:invoke($endpoint, $params)
    let $actual as string? := $request[2].Archives[].AcceptanceDatetime
    let $status as integer := $request[1]
    return test:assert-eq($expected, $actual, $status, test:url($endpoint, $params))
};

declare %an:nondeterministic function local:test-components($expected as integer, $params as object) as item
{
    let $endpoint := "components"
    let $request := test:invoke($endpoint, $params)
    let $actual as integer := count($request[2].Archives[].Components[])
    let $status as integer := $request[1]
    return test:assert-eq($expected, $actual, $status, test:url($endpoint, $params))
};

declare %an:sequential function local:test-components-result($expected as array, $params as object) as item
{
    let $endpoint := "components"
    let $request := test:invoke($endpoint, $params)
    let $actual as array := [ $request[2].Archives[].Components[].NetworkLabel ]
    let $status as integer := $request[1]
    return test:assert-eq-array($expected, $actual, $status, test:url($endpoint, $params))
};

declare %an:nondeterministic function local:test-generic-components($expected as integer, $params as object) as item
{
    let $endpoint := "components"
    let $request := test:invoke($endpoint, $params)
    let $actual as integer := count($request[2].Components[])
    let $status as integer := $request[1]
    return test:assert-eq($expected, $actual, $status, test:url($endpoint, $params))
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
    cocacola: local:test-components(96, {
        ticker:"ko"
    }),
    cocacolaincome: local:test-components(1, {
        ticker:"ko",
        networkIdentifier:"http://www.thecocacolacompany.com/role/ConsolidatedStatementsOfIncome"
    }),
    byconcept: local:test-components-result($local:expected.byconcept, {
        tag:"DOW30",
        concept:"us-gaap:NetIncomeLoss"
    }),
    byfyfp: local:test-components(1, {
        ticker:"ko",
        fiscalYear:"2012",
        fiscalPeriod:"Q1",
        networkIdentifier:"http://www.thecoca-colacompany.com/role/CondensedConsolidatedBalanceSheets"
    }),
    byfyfplowercase: local:test-components(1, {
        ticker:"ko",
        fiscalYear:"2012",
        fiscalPeriod:"q2",
        networkIdentifier:"http://www.thecoca-colacompany.com/role/CondensedConsolidatedBalanceSheets"
    }),
    acceptance: local:test-acceptance-date("2014-07-30T15:44:58Z", {
        aid:"0000021344-14-000029"
    }),
    generic: local:test-generic-components(1, {
      profile-name: "generic",
      aid: "0000021344-14-000008",
      role: "http://www.thecocacolacompany.com/role/DocumentAndEntityInformationDocument"
    }),
    generic-aid: local:test-generic-components(97, {
      profile-name: "generic",
      aid: "0000021344-14-000008"
    }),
    example1: local:test-example1(),
    example2: local:test-example2()
})
