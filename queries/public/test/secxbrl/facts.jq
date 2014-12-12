import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace test = "http://apps.28.io/test";


declare %an:nondeterministic function local:test-facttable($expected as integer, $params as object) as item
{
    let $endpoint := "facts"
    let $request := test:invoke($endpoint, $params)
    let $actual as integer := count($request[2].FactTable[])
    let $status as integer := $request[1]
    return test:assert-eq($expected, $actual, $status, test:url($endpoint, $params))
};

declare %an:nondeterministic function local:test-empty($params as object) as item
{
    let $endpoint := "facts"
    let $res as object := test:invoke-raw($endpoint, $params)
    return if($res.status eq 200 and ($res.headers."Content-Length" eq "0" or empty($res.body.content))) then true else {
        url: test:url($endpoint, $params),
        unexpectedResponse: $res
    }
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

declare %an:nondeterministic function local:test-labels() as item
{
    let $endpoint := "facts"
    let $params := {
        concept: [ "fac:Assets", "us-gaap:CashAndCashEquivalentsAtCarryingValue" ],
        report: "FundamentalAccountingConcepts",
        format: "csv",
        ticker: "ko",
        fiscalYear: 2013,
        fiscalPeriod: "Q3",
        labels: true
    }
    let $res as object := test:invoke-raw($endpoint, $params)
    let $actual := $res.body.content
    let $expectedLines := (
        "Accession Number,Concept,Entity,Period,Fiscal Period,Fiscal Period Type,Fiscal Year,Accepted,Legal Entity,Unit,Value,Decimals",
        "0000021344-13-000050,\"Cash and Cash Equivalents, at Carrying Value\",COCA COLA CO,2013-09-27,Q3,instant,2013,20131024121047,Default Legal Entity,USD,11118000000,-6",
        "0000021344-13-000050,Assets,COCA COLA CO,2013-09-27,Q3,instant,2013,20131024121047,Default Legal Entity,USD,89432000000,-6"
    )
    return if($res.status eq 200 and (every $line in $expectedLines satisfies contains($actual,$line))) then true else {
        url: test:url($endpoint, $params),
        unexpectedResponse: $res,
        expected: $expectedLines
    }
};

declare %an:nondeterministic function local:test-labels-aids() as item
{
    let $endpoint := "facts"
    let $params := {
        concept: "disc:AdvertisingCostsPolicyTextBlock",
        map: "Disclosures",
        format: "json",
        fiscalYear: 2014,
        fiscalPeriod: "FY",
        labels: true,
        aid: "0000858877-14-000029"
    }
    let $res := test:invoke($endpoint, $params)
    let $actual := [
            for $labels in $res[2].FactTable[].Labels
            return (keys($labels) ! $labels.$$)
        ]
    let $expected := [ "Advertising Costs, Policy", "Default Legal Entity", "Accession Number", "Concept", "Entity", "CISCO SYSTEMS, INC.", "Period", "Fiscal Period", "Fiscal Period Type", "Fiscal Year", "Accepted", "Unit", "Legal Entity" ]
    let $status as integer := $res[1]
    return test:assert-eq-array($expected, $actual, $status, test:url($endpoint, $params))
};

local:check({
    cocacola-latest:
    (: this test will fail and needs to be updated if a newer report has been filed.
       current latest filing: 2013 :)
    local:test-facttable(468, {
        ticker:"ko"
    }),
    cocacola-all: local:test-facttable(468, {
        ticker:"ko",
        fiscalYear: 2013,
        fiscalPeriod: [ "FY" ],
        fiscalPeriodType: [ "instant", "YTD", "QTD" ]
    }),
    cocacola-all-q3: local:test-facttable(341, {
        ticker:"ko",
        fiscalYear: 2014,
        fiscalPeriod: [ "Q3" ],
        fiscalPeriodType: [ "instant", "YTD", "QTD" ]
    }),
    cocacola-instant: local:test-facttable(163, {
        ticker:"ko",
        fiscalYear: 2013,
        fiscalPeriod: [ "FY" ],
        fiscalPeriodType: [ "instant" ]
    }),
    cocacola-ytd: local:test-facttable(305, {
        ticker:"ko",
        fiscalYear: 2013,
        fiscalPeriod: [ "FY" ],
        fiscalPeriodType: [ "YTD" ]
    }),
    cocacola-qtd: local:test-facttable(90, {
        ticker:"ko",
        fiscalYear: 2013,
        fiscalPeriod: [ "Q2" ],
        fiscalPeriodType: [ "QTD" ]
    }),
    cocacolaCSVLabels: local:test-labels(),
    ciscoLabelsByAid: local:test-labels-aids(),
    tickerconcept: local:test-facttable(1, {
        ticker:"ko",
        concept:"us-gaap:Assets"
    }),
    tickerfyfprole: local:test-facttable(1, {
        ticker:"ko",
        fiscalYear:"2012",
        fiscalPeriod:"Q1",
        concept:"us-gaap:Assets"
    }),
    tagconcept: local:test-facttable(30, {
        tag:"DOW30",
        concept:"us-gaap:Assets"
    }),
    tagfyfprole: local:test-facttable(30, {
        tag:"DOW30",
        fiscalYear:"2012",
        fiscalPeriod:"Q1",
        concept:"us-gaap:Assets"
    }),
    testNoEntity4Sic: local:test-empty({
        concept:"fac:Assets",
        map:"FundamentalAccountingConcepts",
        format:"csv",
        sic:"5052",
        fiscalYear:"2010",
        fiscalPeriod:"Q3"
    }),
    quartersfact: local:test-facttable(0, { (: this fact is not reported in the raw XML filing :)
        aid: "0000051143-13-000007",
        concept: "disc:AssetRetirementObligationsPolicy",
        fiscalPeriod: "Q3",
        fiscalYear: "2013",
        map: "Disclosures"                        
    }),
    quartersfact2: local:test-facttable(1, {
        aid: "0001193125-12-207154",
        concept: "disc:CashFlowOperatingCapitalTableTextBlock",
        fiscalPeriod: "Q1",
        fiscalYear: "2012",
        map: "Disclosures"
    }),
    generic: local:test-facttable(2, {
        "xbrl:Entity":"http://www.sec.gov/CIK 0000021344",
        "sec:Accepted":"20140227132423",
        concept:"us-gaap:Assets",
        profile-name: "generic"
    })
})
