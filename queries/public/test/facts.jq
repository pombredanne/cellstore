import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace test = "http://apps.28.io/test";


declare %an:nondeterministic function local:test-facttable($expected as integer, $params as object) as item
{
    let $request := test:invoke("facts", $params)
    let $actual as integer := count($request[2].FactTable[])
    let $status as integer := $request[1]
    return test:assert-eq($expected, $actual, $status)
};

declare %an:nondeterministic function local:test-empty($params as object) as item
{
    let $res as object := test:invoke-raw("facts", $params)
    return if($res.status eq 200 and $res.headers."Content-Length" eq "0") then true else {
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
    let $params := {
        concept: [ "fac:Assets", "us-gaap:CashAndCashEquivalentsAtCarryingValue" ],
        report: "FundamentalAccountingConcepts",
        format: "csv",
        ticker: "ko",
        fiscalYear: 2013,
        fiscalPeriod: "Q3",
        labels: true
    }
    let $res as object := test:invoke-raw("facts", $params)
    let $actual := $res.body.content
    let $expectedLines := (
        "Accession Number,Concept,Entity,Period,Fiscal Period,Fiscal Year,Accepted,Legal Entity,Unit,Value,Decimals",
        "0000021344-13-000050,\"Cash and Cash Equivalents, at Carrying Value\",COCA COLA CO,2013-09-27,Q3,2013,20131024121047,Default Legal Entity,USD,11118000000,-6",
        "0000021344-13-000050,Assets,COCA COLA CO,2013-09-27,Q3,2013,20131024121047,Default Legal Entity,USD,89432000000,-6"
    )
    return if($res.status eq 200 and (every $line in $expectedLines satisfies contains($actual,$line))) then true else {
        unexpectedResponse: $res
    }
};

local:check({
    cocacola: local:test-facttable(468, {
        ticker:"ko"
    }),
    cocacolaCSVLabels: local:test-labels(),
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
    })
})
