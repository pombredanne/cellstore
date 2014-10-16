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

local:check({
    cocacola: local:test-facttable(468, {
        ticker:"ko"
    }),
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
