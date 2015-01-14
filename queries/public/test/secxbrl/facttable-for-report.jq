import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace schema = "http://zorba.io/modules/schema";
import module namespace test = "http://apps.28.io/test";
import module namespace http-client = "http://zorba.io/modules/http-client";

declare function local:expected-OtherOperatingIncomeExpenses-ATnT-2013() as object {
    {
        "Aspects": {
            "xbrl28:Archive": "0000732717-14-000010",
            "xbrl:Concept": "fac:OtherOperatingIncomeExpenses",
            "xbrl:Entity": "http://www.sec.gov/CIK 0000732717",
            "xbrl:Period": "2013-01-01/2013-12-31",
            "sec:FiscalPeriod": "FY",
            "sec:FiscalPeriodType": "YTD",
            "sec:FiscalYear": 2013,
            "sec:Accepted": "20140221162554",
            "dei:LegalEntityAxis": "sec:DefaultLegalEntity",
            "sec:Archive" : "0000732717-14-000010"
        },
        "KeyAspects": [
            "xbrl:Concept",
            "xbrl:Entity",
            "xbrl:Period",
            "xbrl:Unit",
            "sec:Accepted"
        ],
        "Type": "NumericValue",
        "Value": -145082000000,
        "Decimals": -6,
        "Concept": {
            "Balance": "CREDIT",
            "PeriodType": "duration",
            "DataType": "xbrli:monetaryItemType"
        },
        "AuditTrails": [
            {
                "Id": "bf2d1587-491c-4492-b587-ddd00d762f2d",
                "Type": "xbrl28:formula",
                "Label": "Other Operating Income (Expenses)",
                "Message": "fac:OtherOperatingIncomeExpenses[-145,082,000,000 USD] = fac:OperatingIncomeLoss[30,479,000,000 USD] - fac:GrossProfit[77,288,000,000 USD] - fac:OperatingExpenses[98,273,000,000 USD]",
                "Data": {
                    "OutputConcept": "fac:OtherOperatingIncomeExpenses"
                }
            }
        ],
        "xbrl28:Type": "xbrl28:formula",
        "EntityRegistrantName": "AT&T INC.",
        "Unit": "iso4217:USD"
    }
};

declare function local:compare-audit-trails($expected as array?, $actual as array?) as object* {
    for $exp as object at $pos in $expected[]
    let $act as object? := $actual[][$pos]
    return
        if (exists($exp.Data.ValidatedFacts))
        then
            let $expM := copy $e := $exp modify ( delete json $e.Data.ValidatedFacts ) return $e
            let $actM := copy $a := $act modify ( delete json $a.Data.ValidatedFacts ) return $a
            return  (
                if(deep-equal($expM, $actM))
                then ()
                else
                    {
                        type: "unexpected-audittrails-value",
                        expected: $expM,
                        actual: $actM
                    },
                if(count($exp.Data.ValidatedFacts[]) eq count($act.Data.ValidatedFacts[]))
                then ()
                else
                    {
                        type: "number-of-validated-facts-differs",
                        expected: $exp,
                        actual: $act
                    }
            )
        else
            if(deep-equal($exp, $act))
            then ()
            else
                {
                    type: "unexpected-audittrails-value",
                    expected: $exp,
                    actual: $act
                }
};

declare function local:diff-facts($fact-expected as object, $fact-actual as object?) as object* {
    if(empty($fact-actual))
    then
        {
            type: "missing-fact-in-result"
        }
    else
        (
            for $key in distinct-values((keys($fact-expected), keys($fact-actual)))
            where not($key = ("Aspects", "KeyAspects", "Profiles", "AuditTrails"))
            let $exp-value := $fact-expected.$key
            let $act-value := $fact-actual.$key
            return
                if(deep-equal($exp-value, $act-value) or
                   (schema:schema-type($exp-value) eq schema:schema-type($act-value) and schema:schema-type($exp-value) eq xs:QName("xs:decimal") and fn:format-number(xs:decimal($exp-value),"#,##0.0000000000000") eq fn:format-number(xs:decimal($act-value),"#,##0.0000000000000"))
                )
                then ()
                else
                    {
                        type: "unexpected-fact-field-value",
                        field: $key,
                        expected: $exp-value,
                        actual: $act-value
                    },
            (: compare aspects :)
            for $key in distinct-values((keys($fact-expected.Aspects), keys($fact-actual.Aspects)))
            let $exp-value := $fact-expected.Aspects.$key
            let $act-value := $fact-actual.Aspects.$key
            return
                if(deep-equal($exp-value, $act-value))
                then ()
                else
                    {
                        type: "unexpected-aspect-value",
                        aspect: $key,
                        expected: $exp-value,
                        actual: $act-value
                    },
            (: compare keyaspects :)
            let $exp-value := $fact-expected.KeyAspects
            let $act-value := $fact-actual.KeyAspects
            return
                if(deep-equal($exp-value, $act-value))
                then ()
                else
                    {
                        type: "unexpected-keyaspects-value",
                        expected: $exp-value,
                        actual: $act-value
                    },
            (: compare Profiles :)
            let $exp-value := $fact-expected.Profiles
            let $act-value := $fact-actual.Profiles
            return
                if(deep-equal($exp-value, $act-value))
                then ()
                else
                    {
                        type: "unexpected-profiles-value",
                        expected: $exp-value,
                        actual: $act-value
                    },
            (: compare Audittrails :)
            let $exp-value := $fact-expected.AuditTrails
            let $act-value := $fact-actual.AuditTrails
            return
                local:compare-audit-trails($exp-value, $act-value)
        )
};

declare function local:compare-fact-tables($fact-table-expected as object, $fact-table-actual as object) as object*{
    let $actual-facts as object+ := $fact-table-actual.FactTable[]
    let $expected-facts as object+ := $fact-table-expected.FactTable[]
    let $errors :=
        (
            for $exp in $expected-facts
            let $act := $actual-facts[$$.Aspects."xbrl:Concept" eq $exp.Aspects."xbrl:Concept"
                                      and $$.Aspects."xbrl:Entity" eq $exp.Aspects."xbrl:Entity"
                                      and $$.Aspects."xbrl:Period" eq $exp.Aspects."xbrl:Period"
                                      and $$.Aspects."xbrl28:Archive" eq $exp.Aspects."xbrl28:Archive"]
            let $errors as object* := local:diff-facts($exp, $act)
            return
                if(empty($errors))
                then ()
                else {
                    expectedFact: $exp,
                    actualFact: $act,
                    errors: [$errors]
                },

            for $act in $actual-facts
            let $exp := $expected-facts[$$.Aspects."xbrl:Concept" eq $act.Aspects."xbrl:Concept"
                                      and $$.Aspects."xbrl:Entity" eq $act.Aspects."xbrl:Entity"
                                      and $$.Aspects."xbrl:Period" eq $act.Aspects."xbrl:Period"
                                      and $$.Aspects."xbrl28:Archive" eq $act.Aspects."xbrl28:Archive"]
            where empty($exp)
            return
                {
                    unexpectedFact: $act
                }
        )
    return
        if(empty($errors))
        then ()
        else (
                {
                    expectedNumberOfFacts: count($expected-facts),
                    actualNumberOfFacts: count($actual-facts)
                },
                $errors
            )
};

declare %an:nondeterministic function local:test-facttable($expected as integer, $params as object) as item
{
    let $endpoint := "facttable-for-report"
    let $request := test:invoke($endpoint, $params)
    let $actual as integer := count($request[2].FactTable[])
    let $status as integer := $request[1]
    return test:assert-eq($expected, $actual, $status, test:url($endpoint, $params))
};

declare %an:nondeterministic function local:test-facttable-fact($concept as string, $expected as object, $params as object) as item
{
    let $endpoint := "facttable-for-report"
    let $request := test:invoke($endpoint, $params)
    let $facts as object* := $request[2].FactTable[]
    let $actual := $facts[$$.Aspects."xbrl:Concept" eq $concept]
    let $diff :=
      for $f in $actual return local:diff-facts($expected, $f)
    return if (empty($diff)) then true else { url: test:url($endpoint, $params), factDiffErrors: [ $diff ], expectedFact: $expected, actualFact: $actual }
};

declare %an:nondeterministic function local:test-report-does-not-exist($params as object) as item
{
    let $endpoint := "facttable-for-report"
    let $request := test:invoke($endpoint, $params)
    let $status as integer := $request[1]
    return if ($status eq 404) then true else { url: test:url($endpoint, $params), unexpectedResponse: $request[2] }
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

declare %an:nondeterministic function local:test-values() as item*
{
    let $endpoint := "facttable-for-report"
    let $params := {ticker:"ko",fiscalYear:"2013",fiscalPeriod:"FY",fiscalPeriodType: ["instant", "YTD", "QTD"],report:"FundamentalAccountingConcepts"}
    let $request := test:invoke($endpoint, $params)
    let $actual as object := $request[2]
    let $expected := parse-json(
        http-client:get("http://" || request:server-name() || ":" || request:server-port() ||
                        "/test/secxbrl/facttable-for-report-expected1.jq").body.content)
    let $diff := local:compare-fact-tables($expected, $actual)
    return if (empty($diff)) then true else { url: test:url($endpoint, $params), factTableDiff: [ ({ params : $params },$diff) ], expectedFactTable: $expected, actualFactTable: $actual }
};

let $dow30 := test:is-dow30()
return local:check({
    cocacola: local:test-facttable(92, {
        report:"FundamentalAccountingConcepts",
        ticker:"ko",
        fiscalYear:"2013",
        fiscalPeriod:"Q1"}),
    aid: local:test-facttable(if($dow30) then 0 else 92, {
        aid:"0001193125-14-157120",
        report:"FundamentalAccountingConcepts"}),
    aid2: local:test-facttable(
        (:
          its only 18 here because they filed a 10-Q with a fiscalPeriod focus of FY
          http://www.sec.gov/cgi-bin/viewer?action=view&cik=732717&accession_number=0000732717-14-000022&xbrl_type=v
        :)
        18, {
        aid:"0000732717-14-000022",
        report:"FundamentalAccountingConcepts"}),
    aid2-qtd: local:test-facttable(93, {
        aid:"0000732717-14-000022",
        report:"FundamentalAccountingConcepts",
        fiscalPeriodType: [ "instant", "QTD" ]
    }),
    tickerrole: local:test-facttable(92, {
        report:"FundamentalAccountingConcepts",
        ticker:"ko",
        fiscalYear:"2012",
        fiscalPeriod:"Q1"}),
    tickerfyfprole: local:test-facttable(238, {
        report:"FundamentalAccountingConcepts",
        ticker:["ko","wmt"],
        fiscalYear:"2013",
        fiscalPeriod:"FY",
        fiscalPeriodType:["instant", "QTD", "YTD"]
    }),
    bfiXOMUnits: local:test-facttable(386, {
        report:"supportBasicFinancialInformation",
        ticker:["xom"],
        fiscalYear:"ALL",
        fiscalPeriod:"FY",
        fiscalPeriodType:["instant", "YTD"]
    }),
    allvalues : local:test-values(),
    otheroperatingincometest: local:test-facttable-fact("fac:OtherOperatingIncomeExpenses",
                                                        local:expected-OtherOperatingIncomeExpenses-ATnT-2013(),
                                                        {
        report:"FundamentalAccountingConcepts",
        ticker:"t",
        fiscalYear:"2013",
        fiscalPeriod:["FY"]}),
    reportDoesntExist: local:test-report-does-not-exist({
        report:"report-not-found",
        ticker:"MSFT",
        fiscalYear:"ALL",
        fiscalPeriod:"FY"})
})
