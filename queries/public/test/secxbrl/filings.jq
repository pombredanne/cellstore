import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace test = "http://apps.28.io/test";
import module namespace config = "http://apps.28.io/config";

declare variable $local:expected as object :=
    {
      "all" : [ "0000021344-14-000008" ],
      "dow30" : [ "0000858877-14-000029", "0000080424-14-000057", "0001193125-14-289961", "0000320187-14-000097", "0000732717-14-000022", "0000354950-14-000008", "0000104169-14-000019", "0000078003-14-000018", "0001193125-14-073792", "0000310158-14-000009", "0000040554-14-000023", "0001193125-14-073266", "0000021344-14-000008", "0000034088-14-000012", "0001047469-14-001302", "0001193125-14-066777", "0000063908-14-000019", "0000200406-14-000033", "0000093410-14-000011", "0000019617-14-000289", "0000018230-14-000058", "0000012927-14-000004", "0000050863-14-000020", "0001104659-14-009773", "0001047469-14-000854", "0000731766-14-000008", "0000101829-14-000006", "0000030554-14-000002", "0001403161-14-000017", "0001001039-14-000228" ],
      "cik" : [ "0001193125-14-066777" ],
      "generic" : [ "0000950123-10-072749", "0000950123-10-100214", "0000950123-11-019072", "0000950123-11-044479", "0000950123-11-072260", "0000950123-11-094420", "0001193125-10-109084", "0001193125-12-077400", "0001193125-12-332179", "0001193125-12-200270", "0001193125-12-443821", "0001193125-13-070554", "0001193125-13-180601", "0001193125-13-307673", "0001193125-13-415898", "0001193125-14-066777", "0001193125-14-167067", "0001193125-14-286961", "0001193125-14-384990" ],
      "eid-sec" : [ "0001193125-14-066777" ],
      "ticker" : [ "0000104169-14-000019", "0000104169-13-000011", "0001193125-12-134679", "0001193125-11-083157" ],
      "fpall" : [ "0001193125-12-134679", "0001193125-11-335177", "0001193125-11-238857", "0001193125-11-158587" ],
      "fyfp" : [ "0001193125-11-158587" ],
      "several" : [ "0000021344-14-000036", "0000021344-14-000029", "0000021344-14-000016", "0000021344-14-000008", "0000021344-13-000050", "0000021344-13-000039", "0000021344-13-000017", "0000021344-13-000007", "0000021344-12-000051", "0000021344-12-000037", "0000021344-12-000023", "0000021344-12-000007", "0000021344-11-000011", "0001047469-11-006790", "0001047469-11-004348", "0001047469-11-001506", "0001047469-10-008993", "0001047469-10-006835", "0001047469-10-004416" ],
      "sic" : [ "0001213900-14-007233", "0001502756-14-000032", "0001017386-14-000238", "0001445866-14-000811", "0001136261-14-000239", "0000101830-14-000030", "0000732717-14-000022", "0001144204-14-026525", "0001185185-14-001000", "0001144204-14-022698", "0001354488-14-001846", "0001102624-14-000525", "0001144204-14-019632", "0001193125-14-124108", "0001393905-14-000158", "0001354488-14-001490", "0001104358-14-000004", "0001144204-14-018970", "0001104659-14-024110", "0001193125-14-116933", "0000075679-14-000015", "0000808461-14-000061", "0001019687-14-001015", "0001315255-14-000013", "0001205727-14-000007", "0001047469-14-002518", "0001571049-14-000825", "0001513162-14-000151", "0001178913-14-000922", "0001193125-14-093913", "0001445305-14-000932", "0001520744-14-000007", "0000766561-14-000013", "0000746210-14-000016", "0001062613-14-000012", "0001104659-14-016384", "0001140361-14-010365", "0001193125-14-076710", "0001051512-14-000011", "0001445305-14-000677", "0001193125-14-073266", "0000716133-14-000009", "0000794323-14-000005", "0001282266-14-000008", "0001445305-14-000656", "0000020520-14-000017", "0000101830-14-000012", "0001457737-14-000003", "0001057758-14-000007", "0001272830-14-000020", "0001019687-14-000156", "0000721748-13-000966", "0001477932-13-006109", "0001354488-13-006891", "0001144204-13-060627", "0001445866-13-001079", "0001104659-13-040170", "0001445305-13-000757", "0001144204-13-018946", "0001047469-13-002604", "0001102541-13-000009", "0001270400-13-000015", "0001213900-12-003812", "0001471242-12-000634", "0001494733-12-000064", "0001047469-12-002078", "0001494733-11-000082", "0001144204-11-069441" ],
      "sic-dow30" : [ "0000732717-14-000022", "0001193125-14-073266" ]
    };

declare %an:sequential function local:test-filings($expected as array, $params as object) as item
{
    let $endpoint := "filings"
    let $request := test:invoke($endpoint, $params)
    let $actual as array := [ $request[2].Archives[].AccessionNumber ]
    let $status as integer := $request[1]
    return test:assert-eq-array($expected, $actual, $status, test:url($endpoint, $params))
};

declare %an:sequential function local:test-filings-generic($expected as array, $params as object) as item
{
    let $endpoint := "filings"
    let $request := test:invoke($endpoint, $params)
    let $actual as array := [ $request[2].Archives[]._id ]
    let $status as integer := $request[1]
    return test:assert-eq-array($expected, $actual, $status, test:url($endpoint, $params))
};

declare %an:nondeterministic function local:test-example1() as item
{
  let $expected := 
    [
        {
            "AccessionNumber": "0001104659-14-009773",
            "Components" : "http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/components.jq?_method=POST&token=" || $config:test-token || "&aid=0001104659-14-009773&format=&profile-name=sec", 
            "CIK": "http://www.sec.gov/CIK 0000066740",
            "EntityRegistrantName": "3M CO",
            "FormType": "10-K",
            "FiscalYear": 2013,
            "FiscalPeriod": "FY",
            "Accepted": "2014-02-13T16:16:20Z",
            "Generator": "IBM Cognos",
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
    let $endpoint := "filings"
    let $params := {cik:"66740"}
    let $request := test:invoke($endpoint, $params)
    let $actual as array := $request[2].Archives
    let $status as integer := $request[1]
    return test:assert-deep-equal($expected, $actual, $status, test:url($endpoint, $params))
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

let $dow30 := test:is-dow30()
return local:check({
    all: local:test-filings($local:expected.all, {ticker:"ko"}),
    generic: local:test-filings-generic($local:expected.generic, {eid:"http://www.sec.gov/CIK 0000004962", profile-name:"generic"}),
    eid-sec: local:test-filings($local:expected.eid-sec, {eid:"http://www.sec.gov/CIK 0000004962"}),
    dow30: local:test-filings($local:expected.dow30, {tag:"DOW30"}),
    cik: local:test-filings($local:expected.cik, {cik:"4962"}),
    ticker: local:test-filings($local:expected.ticker, {ticker:"wmt",fiscalYear:"ALL"}),
    fpall: local:test-filings($local:expected.fpall, {ticker:"wmt",fiscalYear:"2012",fiscalPeriod:"ALL"}) ,
    fyfp: local:test-filings($local:expected.fyfp, {ticker:"wmt",fiscalYear:"2012",fiscalPeriod:"Q1"}),
    several: local:test-filings($local:expected.several, {cik:"0000021344",fiscalPeriod:"ALL",fiscalYear:"ALL"}),
    sic: local:test-filings(if($dow30) then $local:expected.sic-dow30 else $local:expected.sic, {sic:"4813"}),
    example: local:test-example1()
})
