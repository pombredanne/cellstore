import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace test = "http://apps.28.io/test";

declare %an:sequential function local:test-filings($expected as integer, $params as object) as item
{
    let $request := test:invoke("filings", $params)
    let $actual as integer := count($request[2].Archives[])
    let $status as integer := $request[1]
    return test:assert-eq($expected, $actual, $status)
};

declare %an:nondeterministic function local:test-example1() as item
{
  let $expected := 
    [
        {
            "CIK": "http://www.sec.gov/CIK 0000066740",
            "EntityRegistrantName": "3M CO",
            "FormType": "10-K",
            "FiscalYear": 2013,
            "FiscalPeriod": "FY",
            "Accepted": "2014-02-13T16:16:20Z",
            "Generator": "IBM Cognos",
            "AccessionNumber": "0001104659-14-009773",
            "SECFilingPage": "http://www.sec.gov/Archives/edgar/data/66740/000110465914009773/0001104659-14-009773-index.htm",
            "XBRLInstanceURL": "http://www.sec.gov/Archives/edgar/data/66740/000110465914009773/mmm-20131231.xml",
            "Networks": 104,
            "ReportElements": 1192,
            "Tables": 52,
            "Axis": 35,
            "Members": 239,
            "LineItems": 29,
            "Concepts": 720,
            "Abstracts": 443,
            "Footnotes": 0,
            "Facts": 3506,
            "ExtensionFacts": 1180,
            "ExtensionConcepts": 184,
            "ExtensionAbstracts": 164
        }
    ]
    let $request := test:invoke("filings", {cik:"66740"})
    let $actual as array := $request[2].Archives
    let $status as integer := $request[1]
    return test:assert-deep-equal($expected, $actual, $status)
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

let $db := request:param-values("db", "all-sec-filings")
return local:check({
    all: local:test-filings(1, {ticker:"ko"}),
    dow30: local:test-filings(30, {tag:"DOW30"}),
    cik: local:test-filings(1, {cik:"4962"}),
    ticker: local:test-filings(4, {ticker:"wmt",fiscalYear:"ALL"}),
    fpall: local:test-filings(4, {ticker:"wmt",fiscalYear:"2012",fiscalPeriod:"ALL"}) ,
    fyfp: local:test-filings(1, {ticker:"wmt",fiscalYear:"2012",fiscalPeriod:"Q1"}),
    several: local:test-filings(18, {cik:"0000021344",fiscalPeriod:"ALL",fiscalYear:"ALL"}),
    sic: local:test-filings(switch($db) case "all-dow30" return 2 default return 70, {sic:"4813"}),
    example: local:test-example1()
})
