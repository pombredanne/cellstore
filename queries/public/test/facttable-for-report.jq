import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace schema = "http://zorba.io/modules/schema";
import module namespace test = "http://apps.28.io/test";

declare function local:expected-OtherOperatingIncomeExpenses-ATnT-2013() as object {
    {
        "Aspects": {
            "sec:Archive": "0000732717-14-000010",
            "xbrl:Concept": "fac:OtherOperatingIncomeExpenses",
            "xbrl:Entity": "http://www.sec.gov/CIK 0000732717",
            "xbrl:Period": "2013-01-01/2013-12-31",
            "sec:FiscalPeriod": "FY",
            "sec:FiscalYear": 2013,
            "sec:Accepted": "20140221162554",
            "dei:LegalEntityAxis": "sec:DefaultLegalEntity"
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
                                      and $$.Aspects."sec:Archive" eq $exp.Aspects."sec:Archive"]
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
                                      and $$.Aspects."sec:Archive" eq $act.Aspects."sec:Archive"]
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
    let $request := test:invoke("facttable-for-report", $params)
    let $actual as integer := count($request[2].FactTable[])
    let $status as integer := $request[1]
    return test:assert-eq($expected, $actual, $status)
};

declare %an:nondeterministic function local:test-facttable-fact($concept as string, $expected as object, $params as object) as item
{
    let $request := test:invoke("facttable-for-report", $params)
    let $facts as object* := $request[2].FactTable[]
    let $actual := $facts[$$.Aspects."xbrl:Concept" eq $concept]
    let $diff := 
      for $f in $actual return local:diff-facts($expected, $f)
    return if (empty($diff)) then true else { factDiffErrors: [ $diff ], expectedFact: $expected, actualFact: $actual }
};

declare %an:nondeterministic function local:test-report-does-not-exist($params as object) as item
{
    let $request := test:invoke("facttable-for-report", $params)
    let $status as integer := $request[1]
    return if ($status eq 404) then true else { unexpectedResponse: $request[2] }
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
    let $params := {ticker:"ko",fiscalYear:"2013",fiscalPeriod:"FY",report:"FundamentalAccountingConcepts"}
    let $request := test:invoke("facttable-for-report", $params)
    let $actual as object := $request[2]
    let $expected := 
  {
            "Comment": "Generated by 28.io, for more information see http://www.28.io/xbrl (2014-09-15T13:47:41.059049Z)", 
            "FactTable": [
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:AssetsValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:AssetsValidation", 
                                "ValidatedConcepts": [
                                    "fac:Assets"
                                ], 
                                "ValidatedFacts": [
                                    "c2ced0f1-c667-4425-85e2-b5086bf164c3"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "BS2", 
                            "Label": "[BS2] Assets = LiabilitiesAndEquity", 
                            "Message": "fac:Assets[90,055,000,000 USD] = fac:LiabilitiesAndEquity[90,055,000,000 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:LiabilitiesValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:LiabilitiesValidation", 
                                "ValidatedConcepts": [
                                    "fac:Liabilities"
                                ], 
                                "ValidatedFacts": [
                                    "47761b29-b35d-4793-b050-c1479f224f27"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "BS4", 
                            "Label": "[BS4] Liabilities = CurrentLiabilities + NoncurrentLiabilities", 
                            "Message": "fac:Liabilities[56,615,000,000 USD] = fac:CurrentLiabilities[27,811,000,000 USD] + fac:NoncurrentLiabilities[28,804,000,000 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:AssetsValidation2", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:AssetsValidation2", 
                                "ValidatedConcepts": [
                                    "fac:Assets"
                                ], 
                                "ValidatedFacts": [
                                    "c2ced0f1-c667-4425-85e2-b5086bf164c3"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "BS3", 
                            "Label": "[BS3] Assets = CurrentAssets + NoncurrentAssets", 
                            "Message": "fac:Assets[90,055,000,000 USD] = fac:CurrentAssets[31,304,000,000 USD] + fac:NoncurrentAssets[58,751,000,000 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:EquityValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:EquityValidation", 
                                "ValidatedConcepts": [
                                    "fac:Equity"
                                ], 
                                "ValidatedFacts": [
                                    "42130b12-4d28-4d02-b632-9e5244903ef7"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "BS1", 
                            "Label": "[BS1] Equity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest", 
                            "Message": "fac:Equity[33,440,000,000 USD] = fac:EquityAttributableToParent[33,173,000,000 USD] + fac:EquityAttributableToNoncontrollingInterest[267,000,000 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:LiabilitiesAndEquityValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:LiabilitiesAndEquityValidation", 
                                "ValidatedConcepts": [
                                    "fac:LiabilitiesAndEquity"
                                ], 
                                "ValidatedFacts": [
                                    "0a29d30f-cb4b-4003-8e39-da42c94bf917"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "BS5", 
                            "Label": "[BS5] LiabilitiesAndEquity = Liabilities + CommitmentsAndContingencies + TemporaryEquity + Equity", 
                            "Message": "fac:LiabilitiesAndEquity[90,055,000,000 USD] = fac:Liabilities[56,615,000,000 USD] + CommitmentsAndContingencies[0] + TemporaryEquity[0] + fac:Equity[33,440,000,000 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:TradingSymbol", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:TradingSymbol"
                            }, 
                            "Id": "gi_TradingSymbol", 
                            "Label": "TradingSymbol imputation", 
                            "Message": "fac:TradingSymbol[0 USD] = external source", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NonNumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": "ko", 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:Assets", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:Assets"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:Assets", 
                                "OutputConcept": "fac:Assets"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:Assets -> us-gaap:Assets", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 90055000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:Equity", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest", 
                                "OutputConcept": "fac:Equity"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:Equity -> us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 33440000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:CurrentLiabilities", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:LiabilitiesCurrent"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:LiabilitiesCurrent", 
                                "OutputConcept": "fac:CurrentLiabilities"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:CurrentLiabilities -> us-gaap:LiabilitiesCurrent", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 27811000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:LiabilitiesAndEquity", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:LiabilitiesAndStockholdersEquity"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:LiabilitiesAndStockholdersEquity", 
                                "OutputConcept": "fac:LiabilitiesAndEquity"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:LiabilitiesAndEquity -> us-gaap:LiabilitiesAndStockholdersEquity", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 90055000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:TemporaryEquity", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:TemporaryEquity"
                            }, 
                            "Label": "Default fact value", 
                            "Message": "fac:TemporaryEquity = 0", 
                            "Type": "xbrl28:default-fact-value"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": 3, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NoncurrentLiabilities", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NoncurrentLiabilities"
                            }, 
                            "Id": "4b62d33e-849c-4c4d-8132-844327376bfa", 
                            "Label": "Noncurrent Liabilities", 
                            "Message": "fac:NoncurrentLiabilities[28,804,000,000 USD] = fac:Liabilities[56,615,000,000 USD] - fac:CurrentLiabilities[27,811,000,000 USD]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 28804000000, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NoncurrentAssets", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NoncurrentAssets"
                            }, 
                            "Id": "5d5eefb8-d022-44b7-8575-cadd6d377469", 
                            "Label": "Noncurrent Assets", 
                            "Message": "fac:NoncurrentAssets[58,751,000,000 USD] = fac:Assets[90,055,000,000 USD] - fac:CurrentAssets[31,304,000,000 USD]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 58751000000, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:CurrentAssets", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:AssetsCurrent"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:AssetsCurrent", 
                                "OutputConcept": "fac:CurrentAssets"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:CurrentAssets -> us-gaap:AssetsCurrent", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 31304000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:Liabilities", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:Liabilities"
                            }, 
                            "Id": "502dddba-aa21-4b3c-b124-437cf46a9ef5", 
                            "Label": "Liabilities", 
                            "Message": "fac:Liabilities[56,615,000,000 USD] = fac:LiabilitiesAndEquity[90,055,000,000 USD] -  ( CommitmentsAndContingencies[0] + TemporaryEquity[0] + fac:Equity[33,440,000,000 USD] )", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 56615000000, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:EquityAttributableToNoncontrollingInterest", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:MinorityInterest"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:MinorityInterest", 
                                "OutputConcept": "fac:EquityAttributableToNoncontrollingInterest"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:EquityAttributableToNoncontrollingInterest -> us-gaap:MinorityInterest", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 267000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:EquityAttributableToParent", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:StockholdersEquity"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:StockholdersEquity", 
                                "OutputConcept": "fac:EquityAttributableToParent"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:EquityAttributableToParent -> us-gaap:StockholdersEquity", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 33173000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:CommitmentsAndContingencies", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:CommitmentsAndContingencies"
                            }, 
                            "Label": "Default fact value", 
                            "Message": "fac:CommitmentsAndContingencies = 0", 
                            "Type": "xbrl28:default-fact-value"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": 3, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:RedeemableNoncontrollingInterest", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:RedeemableNoncontrollingInterest"
                            }, 
                            "Label": "Default fact value", 
                            "Message": "fac:RedeemableNoncontrollingInterest = 0", 
                            "Type": "xbrl28:default-fact-value"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "instant"
                    }, 
                    "Decimals": 3, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", 
                                "ValidatedConcepts": [
                                    "fac:IncomeLossFromContinuingOperationsAfterTax"
                                ], 
                                "ValidatedFacts": [
                                    "7071152c-91c7-4c4c-83e8-4d31679a7528"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "IS5", 
                            "Label": "[IS5] IncomeLossFromContinuingOperationsAfterTax = IncomeLossFromContinuingOperationsBeforeTax - IncomeTaxExpenseBenefit", 
                            "Message": "fac:IncomeLossFromContinuingOperationsAfterTax[8,626,000,000 USD] = fac:IncomeLossFromContinuingOperationsBeforeTax[11,477,000,000 USD] - fac:IncomeTaxExpenseBenefit[2,851,000,000 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", 
                                "ValidatedConcepts": [
                                    "fac:IncomeLossFromContinuingOperationsBeforeTax"
                                ], 
                                "ValidatedFacts": [
                                    "90ab11e6-6c76-4224-ad73-93527b960178"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "IS4", 
                            "Label": "[IS4] IncomeLossFromContinuingOperationsBeforeTax = IncomeLossBeforeEquityMethodInvestments + IncomeLossFromEquityMethodInvestments", 
                            "Message": "fac:IncomeLossFromContinuingOperationsBeforeTax[11,477,000,000 USD] = fac:IncomeLossBeforeEquityMethodInvestments[10,875,000,000 USD] + fac:IncomeLossFromEquityMethodInvestments[602,000,000 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:IncomeLossBeforeEquityMethodInvestmentsValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:IncomeLossBeforeEquityMethodInvestmentsValidation", 
                                "ValidatedConcepts": [
                                    "fac:IncomeLossBeforeEquityMethodInvestments"
                                ], 
                                "ValidatedFacts": [
                                    "c9bfa2c0-0de2-4fa2-90b9-1b4ac9aa30f9"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "IS3", 
                            "Label": "[IS3] IncomeLossBeforeEquityMethodInvestments = OperatingIncomeLoss + NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                            "Message": "fac:IncomeLossBeforeEquityMethodInvestments[10,875,000,000 USD] = fac:OperatingIncomeLoss[10,228,000,000 USD] + fac:NonoperatingIncomeLossPlusInterestAndDebtExpense[647,000,000 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:GrossProfitValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:GrossProfitValidation", 
                                "ValidatedConcepts": [
                                    "fac:GrossProfit"
                                ], 
                                "ValidatedFacts": [
                                    "e27b5cbd-2850-4cb9-bf2e-c13dfd3e99bf"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "IS1", 
                            "Label": "[IS1] GrossProfit = Revenues - CostOfRevenue", 
                            "Message": "fac:GrossProfit[28,433,000,000 USD] = fac:Revenues[46,854,000,000 USD] - fac:CostOfRevenue[18,421,000,000 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:ComprehensiveIncomeLossValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:ComprehensiveIncomeLossValidation", 
                                "ValidatedConcepts": [
                                    "fac:ComprehensiveIncomeLoss"
                                ], 
                                "ValidatedFacts": [
                                    "0b19fc06-f36e-4a9e-bd20-990790938593"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "IS9", 
                            "Label": "[IS9] ComprehensiveIncomeLoss = ComprehensiveIncomeLossAttributableToParent + ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                            "Message": "fac:ComprehensiveIncomeLoss[8,576,000,000 USD] = fac:ComprehensiveIncomeLossAttributableToParent[8,537,000,000 USD] + fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest[39,000,000 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:ComprehensiveIncomeLossValidation2", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:ComprehensiveIncomeLossValidation2", 
                                "ValidatedConcepts": [
                                    "fac:ComprehensiveIncomeLoss"
                                ], 
                                "ValidatedFacts": [
                                    "0b19fc06-f36e-4a9e-bd20-990790938593"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "IS10", 
                            "Label": "[IS10] ComprehensiveIncomeLoss = NetIncomeLoss + OtherComprehensiveIncomeLoss", 
                            "Message": "fac:ComprehensiveIncomeLoss[8,576,000,000 USD] = fac:NetIncomeLoss[8,626,000,000 USD] + fac:OtherComprehensiveIncomeLoss[-50,000,000 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetCashFlowFromFinancingActivitiesValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NetCashFlowFromFinancingActivitiesValidation", 
                                "ValidatedConcepts": [
                                    "fac:NetCashFlowFromFinancingActivities"
                                ], 
                                "ValidatedFacts": [
                                    "1b4b6eb4-d779-4138-8239-aed0b02fd7d6"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "CF6", 
                            "Label": "[CF6] NetCashFlowFromFinancingActivities = NetCashFlowFromFinancingActivitiesContinuing + NetCashFlowFromFinancingActivitiesDiscontinued", 
                            "Message": "fac:NetCashFlowFromFinancingActivities[-3,745,000,000 USD] = fac:NetCashFlowFromFinancingActivitiesContinuing[-3,745,000,000 USD] + fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetCashFlowFromInvestingActivitiesValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NetCashFlowFromInvestingActivitiesValidation", 
                                "ValidatedConcepts": [
                                    "fac:NetCashFlowFromInvestingActivities"
                                ], 
                                "ValidatedFacts": [
                                    "a1b42bf4-ae76-4fda-974a-513dbf56ba8b"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "CF5", 
                            "Label": "[CF5] NetCashFlowFromInvestingActivities = NetCashFlowFromInvestingActivitiesContinuing + NetCashFlowFromInvestingActivitiesDiscontinued", 
                            "Message": "fac:NetCashFlowFromInvestingActivities[-4,214,000,000 USD] = fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] + NetCashFlowFromInvestingActivitiesDiscontinued[0]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects" : {
                        "sec:Archive" : "0000021344-14-000008",
                        "xbrl:Concept" : "fac:NetCashFlowFromOperatingActivitiesValidation",
                        "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344",
                        "xbrl:Period" : "2013-01-01/2013-12-31",
                        "sec:FiscalPeriod" : "FY",
                        "sec:FiscalYear" : 2013,
                        "sec:Accepted" : "20140227132423",
                        "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
                    },
                    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ],
                    "Type" : "BooleanValue",
                    "Value" : true,
                    "Decimals" : -6,
                    "Concept" : {
                        "PeriodType" : "duration",
                        "DataType" : "xbrli:monetaryItemType"
                    },
                    "AuditTrails" : [ {
                        "Id" : "CF4",
                        "Type" : "xbrl28:validation",
                        "Label" : "[CF4] NetCashFlowFromOperatingActivities = NetCashFlowFromOperatingActivitiesContinuing + NetCashFlowFromOperatingActivitiesDiscontinued",
                        "Message" : "fac:NetCashFlowFromOperatingActivities[10,542,000,000 USD] = fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] + fac:NetCashFlowFromOperatingActivitiesDiscontinued[0 USD]",
                        "Data" : {
                            "OutputConcept" : "fac:NetCashFlowFromOperatingActivitiesValidation",
                            "ValidatedConcepts" : [ "fac:NetCashFlowFromOperatingActivities" ],
                            "ValidatedFacts" : [ "c690ddc3-38a4-49e0-9d09-6287531e91cc" ],
                            "ValidationPassed" : true
                        }
                    } ],
                    "xbrl28:Type" : "xbrl28:validation",
                    "EntityRegistrantName" : "COCA COLA CO",
                    "Unit" : "iso4217:USD"
                },
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetIncomeLossValidation2", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NetIncomeLossValidation2", 
                                "ValidatedConcepts": [
                                    "fac:NetIncomeLoss"
                                ], 
                                "ValidatedFacts": [
                                    "ab418d2c-271b-44b3-acf4-ec29d021aa94"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "IS7", 
                            "Label": "[IS7] NetIncomeLoss = NetIncomeLossAttributableToParent + NetIncomeLossAttributableToNoncontrollingInterest", 
                            "Message": "fac:NetIncomeLoss[8,626,000,000 USD] = fac:NetIncomeLossAttributableToParent[8,584,000,000 USD] + fac:NetIncomeLossAttributableToNoncontrollingInterest[42,000,000 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", 
                                "ValidatedConcepts": [
                                    "fac:NetIncomeLossAvailableToCommonStockholdersBasic"
                                ], 
                                "ValidatedFacts": [
                                    "15d2221c-c224-415f-beb3-a09e0bcd4019"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "IS8", 
                            "Label": "[IS8] NetIncomeLossAvailableToCommonStockholdersBasic = NetIncomeLossAttributableToParent - PreferredStockDividendsAndOtherAdjustments", 
                            "Message": "fac:NetIncomeLossAvailableToCommonStockholdersBasic[8,584,000,000 USD] = fac:NetIncomeLossAttributableToParent[8,584,000,000 USD] - fac:PreferredStockDividendsAndOtherAdjustments[0 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetCashFlowContinuingValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NetCashFlowContinuingValidation", 
                                "ValidatedConcepts": [
                                    "fac:NetCashFlowContinuing"
                                ], 
                                "ValidatedFacts": [
                                    "b74d9ddb-c33a-4560-8fb2-9508722f1001"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "CF2", 
                            "Label": "[CF2] NetCashFlowContinuing = NetCashFlowFromOperatingActivitiesContinuing + NetCashFlowFromInvestingActivitiesContinuing + NetCashFlowFromFinancingActivitiesContinuing", 
                            "Message": "fac:NetCashFlowContinuing[2,583,000,000 USD] = fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] + fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] + fac:NetCashFlowFromFinancingActivitiesContinuing[-3,745,000,000 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetIncomeLossValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NetIncomeLossValidation", 
                                "ValidatedConcepts": [
                                    "fac:NetIncomeLoss"
                                ], 
                                "ValidatedFacts": [
                                    "ab418d2c-271b-44b3-acf4-ec29d021aa94"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "IS6", 
                            "Label": "[IS6] NetIncomeLoss = IncomeLossFromContinuingOperationsAfterTax + IncomeLossFromDiscontinuedOperationsNetOfTax + ExtraordinaryItemsOfIncomeExpenseNetOfTax", 
                            "Message": "fac:NetIncomeLoss[8,626,000,000 USD] = fac:IncomeLossFromContinuingOperationsAfterTax[8,626,000,000 USD] + IncomeLossFromDiscontinuedOperationsNetOfTax[0] + ExtraordinaryItemsOfIncomeExpenseNetOfTax[0]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects" : {
                        "sec:Archive" : "0000021344-14-000008",
                        "xbrl:Concept" : "fac:NetCashFlowDiscontinuedValidation",
                        "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344",
                        "xbrl:Period" : "2013-01-01/2013-12-31",
                        "sec:FiscalPeriod" : "FY",
                        "sec:FiscalYear" : 2013,
                        "sec:Accepted" : "20140227132423",
                        "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
                    },
                    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ],
                    "Type" : "BooleanValue",
                    "Value" : true,
                    "Decimals" : -6,
                    "Concept" : {
                        "PeriodType" : "duration",
                        "DataType" : "xbrli:monetaryItemType"
                    },
                    "AuditTrails" : [ {
                        "Id" : "CF3",
                        "Type" : "xbrl28:validation",
                        "Label" : "[CF3] NetCashFlowDiscontinued = NetCashFlowFromOperatingActivitiesDiscontinued + NetCashFlowFromInvestingActivitiesDiscontinued + NetCashFlowFromFinancingActivitiesDiscontinued",
                        "Message" : "fac:NetCashFlowDiscontinued[0 USD] = fac:NetCashFlowFromOperatingActivitiesDiscontinued[0 USD] + NetCashFlowFromInvestingActivitiesDiscontinued[0] + fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]",
                        "Data" : {
                            "OutputConcept" : "fac:NetCashFlowDiscontinuedValidation",
                            "ValidatedConcepts" : [ "fac:NetCashFlowDiscontinued" ],
                            "ValidatedFacts" : [ "1353f200-766a-4426-b1b4-b981f425d364" ],
                            "ValidationPassed" : true
                        }
                    } ],
                    "xbrl28:Type" : "xbrl28:validation",
                    "EntityRegistrantName" : "COCA COLA CO",
                    "Unit" : "iso4217:USD"
                },
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:OperatingIncomeLossValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:OperatingIncomeLossValidation", 
                                "ValidatedConcepts": [
                                    "fac:OperatingIncomeLoss"
                                ], 
                                "ValidatedFacts": [
                                    "d2a82c8b-b561-4acb-8fe0-a59af2b02264"
                                ], 
                                "ValidationPassed": false
                            }, 
                            "Id": "IS2", 
                            "Label": "[IS2] OperatingIncomeLoss = GrossProfit - OperatingExpenses + OtherOperatingIncomeExpenses", 
                            "Message": "fac:OperatingIncomeLoss[10,228,000,000 USD] = fac:GrossProfit[28,433,000,000 USD] - OperatingExpenses[0] + OtherOperatingIncomeExpenses[0]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": false, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:OperatingIncomeLossValidation2", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:OperatingIncomeLossValidation2", 
                                "ValidatedConcepts": [
                                    "fac:OperatingIncomeLoss"
                                ], 
                                "ValidatedFacts": [
                                    "d2a82c8b-b561-4acb-8fe0-a59af2b02264"
                                ], 
                                "ValidationPassed": false
                            }, 
                            "Id": "IS11", 
                            "Label": "[IS11] OperatingIncomeLoss = Revenues - CostsAndExpenses + OtherOperatingIncomeExpenses", 
                            "Message": "fac:OperatingIncomeLoss[10,228,000,000 USD] = fac:Revenues[46,854,000,000 USD] - CostsAndExpenses[0] + OtherOperatingIncomeExpenses[0]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": false, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetCashFlowValidation", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NetCashFlowValidation", 
                                "ValidatedConcepts": [
                                    "fac:NetCashFlow"
                                ], 
                                "ValidatedFacts": [
                                    "513ff3bf-3f12-4506-baab-a8b6e364a05b"
                                ], 
                                "ValidationPassed": true
                            }, 
                            "Id": "CF1", 
                            "Label": "[CF1] NetCashFlow = NetCashFlowFromOperatingActivities + NetCashFlowFromInvestingActivities + NetCashFlowFromFinancingActivities [+ ExchangeGainsLosses]", 
                            "Message": "fac:NetCashFlow[1,972,000,000 USD] = fac:NetCashFlowFromOperatingActivities[10,542,000,000 USD] + fac:NetCashFlowFromInvestingActivities[-4,214,000,000 USD] + fac:NetCashFlowFromFinancingActivities[-3,745,000,000 USD] + fac:ExchangeGainsLosses[-611,000,000 USD]", 
                            "Type": "xbrl28:validation"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "BooleanValue", 
                    "Unit": "iso4217:USD", 
                    "Value": true, 
                    "xbrl28:Type": "xbrl28:validation"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:IncomeStatementFormat", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:IncomeStatementFormat"
                            }, 
                            "Id": "is_IncomeStatementFormat", 
                            "Label": "Income Statement Format imputation", 
                            "Message": "fac:IncomeStatementFormat[Multi-step] = Multi-step (because fac:GrossProfit[28,433,000,000 USD], fac:CostOfRevenue[18,421,000,000 USD])", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NonNumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": "Multi-step", 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:BalanceSheetFormat", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:BalanceSheetFormat"
                            }, 
                            "Id": "bs_BalanceSheetFormat", 
                            "Label": "Balance Sheet Format imputation", 
                            "Message": "fac:BalanceSheetFormat[Classified] = Classified (because fac:CurrentAssets[31,304,000,000 USD], fac:NoncurrentAssets[58,751,000,000 USD], fac:NoncurrentLiabilities[28,804,000,000 USD], fac:CurrentLiabilities[27,811,000,000 USD])", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "DataType": "dei:submissionTypeItemType", 
                        "PeriodType": "duration"
                    }, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "sec:Accepted"
                    ], 
                    "Type": "NonNumericValue", 
                    "Unit": "xbrl:NonNumeric", 
                    "Value": "Classified", 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:IncomeStatementStartPeriodYearToDate", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:IncomeStatementStartPeriodYearToDate"
                            }, 
                            "Id": "gi_IncomeStatementStartPeriod", 
                            "Label": "Income Statement Start Period imputation", 
                            "Message": "fac:IncomeStatementStartPeriodYearToDate[2013-01-01] = facts:duration-for-fact(fac:OperatingIncomeLoss[10,228,000,000 USD]).Start", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NonNumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": "2013-01-01", 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:DocumentType", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "xbrl:Unit", 
                                "Member": "xbrl:NonNumeric", 
                                "OutputConcept": "dei:DocumentType"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "dei:DocumentType"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "dei:DocumentType", 
                                "OutputConcept": "fac:DocumentType"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:DocumentType -> dei:DocumentType", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "DataType": "dei:submissionTypeItemType", 
                        "PeriodType": "duration"
                    }, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "sec:Accepted"
                    ], 
                    "Type": "NonNumericValue", 
                    "Unit": "xbrl:NonNumeric", 
                    "Value": "10-K", 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:FiscalYearEnd", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "xbrl:Unit", 
                                "Member": "xbrl:NonNumeric", 
                                "OutputConcept": "dei:CurrentFiscalYearEndDate"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "dei:CurrentFiscalYearEndDate"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "dei:CurrentFiscalYearEndDate", 
                                "OutputConcept": "fac:FiscalYearEnd"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:FiscalYearEnd -> dei:CurrentFiscalYearEndDate", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "DataType": "xbrli:gMonthDayItemType", 
                        "PeriodType": "duration"
                    }, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "sec:Accepted"
                    ], 
                    "Type": "NonNumericValue", 
                    "Unit": "xbrl:NonNumeric", 
                    "Value": "--12-31", 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:EntityRegistrantName", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "xbrl:Unit", 
                                "Member": "xbrl:NonNumeric", 
                                "OutputConcept": "dei:EntityRegistrantName"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "dei:EntityRegistrantName"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "dei:EntityRegistrantName", 
                                "OutputConcept": "fac:EntityRegistrantName"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:EntityRegistrantName -> dei:EntityRegistrantName", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "DataType": "xbrli:normalizedStringItemType", 
                        "PeriodType": "duration"
                    }, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "sec:Accepted"
                    ], 
                    "Type": "NonNumericValue", 
                    "Unit": "xbrl:NonNumeric", 
                    "Value": "COCA COLA CO", 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:EntityCentralIndexKey", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "xbrl:Unit", 
                                "Member": "xbrl:NonNumeric", 
                                "OutputConcept": "dei:EntityCentralIndexKey"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "dei:EntityCentralIndexKey"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "dei:EntityCentralIndexKey", 
                                "OutputConcept": "fac:EntityCentralIndexKey"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:EntityCentralIndexKey -> dei:EntityCentralIndexKey", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "DataType": "dei:centralIndexKeyItemType", 
                        "PeriodType": "duration"
                    }, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "sec:Accepted"
                    ], 
                    "Type": "NonNumericValue", 
                    "Unit": "xbrl:NonNumeric", 
                    "Value": "0000021344", 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:EntityFilerCategory", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "xbrl:Unit", 
                                "Member": "xbrl:NonNumeric", 
                                "OutputConcept": "dei:EntityFilerCategory"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "dei:EntityFilerCategory"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "dei:EntityFilerCategory", 
                                "OutputConcept": "fac:EntityFilerCategory"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:EntityFilerCategory -> dei:EntityFilerCategory", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "DataType": "dei:filerCategoryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "sec:Accepted"
                    ], 
                    "Type": "NonNumericValue", 
                    "Unit": "xbrl:NonNumeric", 
                    "Value": "Large Accelerated Filer", 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:FiscalYear", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "xbrl:Unit", 
                                "Member": "xbrl:NonNumeric", 
                                "OutputConcept": "dei:DocumentFiscalYearFocus"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "dei:DocumentFiscalYearFocus"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "dei:DocumentFiscalYearFocus", 
                                "OutputConcept": "fac:FiscalYear"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:FiscalYear -> dei:DocumentFiscalYearFocus", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "DataType": "xbrli:gYearItemType", 
                        "PeriodType": "duration"
                    }, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "sec:Accepted"
                    ], 
                    "Type": "NonNumericValue", 
                    "Unit": "xbrl:NonNumeric", 
                    "Value": "2013", 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:FiscalPeriod", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "xbrl:Unit", 
                                "Member": "xbrl:NonNumeric", 
                                "OutputConcept": "dei:DocumentFiscalPeriodFocus"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "dei:DocumentFiscalPeriodFocus"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "dei:DocumentFiscalPeriodFocus", 
                                "OutputConcept": "fac:FiscalPeriod"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:FiscalPeriod -> dei:DocumentFiscalPeriodFocus", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "DataType": "dei:fiscalPeriodItemType", 
                        "PeriodType": "duration"
                    }, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "sec:Accepted"
                    ], 
                    "Type": "NonNumericValue", 
                    "Unit": "xbrl:NonNumeric", 
                    "Value": "FY", 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:BalanceSheetDate", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "xbrl:Unit", 
                                "Member": "xbrl:NonNumeric", 
                                "OutputConcept": "dei:DocumentPeriodEndDate"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "dei:DocumentPeriodEndDate"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "dei:DocumentPeriodEndDate", 
                                "OutputConcept": "fac:BalanceSheetDate"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:BalanceSheetDate -> dei:DocumentPeriodEndDate", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "DataType": "xbrli:dateItemType", 
                        "PeriodType": "duration"
                    }, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "sec:Accepted"
                    ], 
                    "Type": "NonNumericValue", 
                    "Unit": "xbrl:NonNumeric", 
                    "Value": "2013-12-31", 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetIncomeLoss", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:ProfitLoss"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:ProfitLoss", 
                                "OutputConcept": "fac:NetIncomeLoss"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:NetIncomeLoss -> us-gaap:ProfitLoss", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 8626000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:OperatingIncomeLoss", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:OperatingIncomeLoss"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:OperatingIncomeLoss", 
                                "OutputConcept": "fac:OperatingIncomeLoss"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:OperatingIncomeLoss -> us-gaap:OperatingIncomeLoss", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 10228000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:Revenues", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:SalesRevenueGoodsNet"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:SalesRevenueGoodsNet", 
                                "OutputConcept": "fac:Revenues"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:Revenues -> us-gaap:SalesRevenueGoodsNet", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 46854000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:GrossProfit", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:GrossProfit"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:GrossProfit", 
                                "OutputConcept": "fac:GrossProfit"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:GrossProfit -> us-gaap:GrossProfit", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 28433000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:CostOfRevenue", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:CostOfGoodsSold"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:CostOfGoodsSold", 
                                "OutputConcept": "fac:CostOfRevenue"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:CostOfRevenue -> us-gaap:CostOfGoodsSold", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 18421000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetCashFlowFromInvestingActivities", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:NetCashProvidedByUsedInInvestingActivities"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:NetCashProvidedByUsedInInvestingActivities", 
                                "OutputConcept": "fac:NetCashFlowFromInvestingActivities"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:NetCashFlowFromInvestingActivities -> us-gaap:NetCashProvidedByUsedInInvestingActivities", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": -4214000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:IncomeLossBeforeEquityMethodInvestments", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:IncomeLossBeforeEquityMethodInvestments"
                            }, 
                            "Id": "0cf36e1f-fa8d-4007-b083-008c9a2bd589", 
                            "Label": "Income (Loss) Before Equity Method Investments", 
                            "Message": "fac:IncomeLossBeforeEquityMethodInvestments[10,875,000,000 USD] = fac:IncomeLossFromContinuingOperationsBeforeTax[11,477,000,000 USD] - fac:IncomeLossFromEquityMethodInvestments[602,000,000 USD]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 10875000000, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetCashFlowFromInvestingActivitiesContinuing", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NetCashFlowFromInvestingActivitiesContinuing"
                            }, 
                            "Id": "bc4dacb2-95d1-45e7-8594-2ad4e7f9f8d9", 
                            "Label": "Net Cash Flow from Investing Activities, Continuing", 
                            "Message": "fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] = fac:NetCashFlowFromInvestingActivities[-4,214,000,000 USD] - NetCashFlowFromInvestingActivitiesDiscontinued[0]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": -4214000000, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:OperatingExpenses", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:OperatingExpenses"
                            }, 
                            "Label": "Default fact value", 
                            "Message": "fac:OperatingExpenses = 0", 
                            "Type": "xbrl28:default-fact-value"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 3, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetCashFlowFromFinancingActivities", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:NetCashProvidedByUsedInFinancingActivities"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:NetCashProvidedByUsedInFinancingActivities", 
                                "OutputConcept": "fac:NetCashFlowFromFinancingActivities"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:NetCashFlowFromFinancingActivities -> us-gaap:NetCashProvidedByUsedInFinancingActivities", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": -3745000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetCashFlowFromInvestingActivitiesDiscontinued", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NetCashFlowFromInvestingActivitiesDiscontinued"
                            }, 
                            "Label": "Default fact value", 
                            "Message": "fac:NetCashFlowFromInvestingActivitiesDiscontinued = 0", 
                            "Type": "xbrl28:default-fact-value"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 3, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects" : {
                        "sec:Archive" : "0000021344-14-000008",
                        "xbrl:Concept" : "fac:NetCashFlowFromOperatingActivitiesContinuing",
                        "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344",
                        "xbrl:Period" : "2013-01-01/2013-12-31",
                        "sec:FiscalPeriod" : "FY",
                        "sec:FiscalYear" : 2013,
                        "sec:Accepted" : "20140227132423",
                        "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
                    },
                    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ],
                    "Type" : "NumericValue",
                    "Value" : 10542000000,
                    "Decimals" : -6,
                    "Concept" : {
                        "PeriodType" : "duration",
                        "DataType" : "xbrli:monetaryItemType"
                    },
                    "AuditTrails" : [ {
                        "Id" : "50a01bf0-30ab-4d46-8418-066173dd2e67",
                        "Type" : "xbrl28:formula",
                        "Label" : "Net Cash Flow from Operating Activities, Continuing",
                        "Message" : "fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] = fac:NetCashFlowFromOperatingActivities[10,542,000,000 USD] - NetCashFlowFromOperatingActivitiesDiscontinued[0]",
                        "Data" : {
                            "OutputConcept" : "fac:NetCashFlowFromOperatingActivitiesContinuing"
                        }
                    } ],
                    "xbrl28:Type" : "xbrl28:formula",
                    "EntityRegistrantName" : "COCA COLA CO",
                    "Unit" : "iso4217:USD"
                },
                {
                    "Aspects" : {
                        "sec:Archive" : "0000021344-14-000008",
                        "xbrl:Concept" : "fac:NetCashFlowFromOperatingActivitiesDiscontinued",
                        "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344",
                        "xbrl:Period" : "2013-01-01/2013-12-31",
                        "sec:FiscalPeriod" : "FY",
                        "sec:FiscalYear" : 2013,
                        "sec:Accepted" : "20140227132423",
                        "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
                    },
                    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ],
                    "Type" : "NumericValue",
                    "Value" : 0,
                    "Decimals" : -6,
                    "Concept" : {
                        "PeriodType" : "duration",
                        "DataType" : "xbrli:monetaryItemType"
                    },
                    "AuditTrails" : [ {
                        "Id" : "e7f1c48e-4b36-429c-90cc-48634d543ab9",
                        "Type" : "xbrl28:formula",
                        "Label" : "Net Cash Flow from Operating Activities, Discontinued",
                        "Message" : "fac:NetCashFlowFromOperatingActivitiesDiscontinued[0 USD] = 0",
                        "Data" : {
                            "OutputConcept" : "fac:NetCashFlowFromOperatingActivitiesDiscontinued"
                        }
                    } ],
                    "xbrl28:Type" : "xbrl28:formula",
                    "EntityRegistrantName" : "COCA COLA CO",
                    "Unit" : "iso4217:USD"
                },
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetCashFlowFromOperatingActivities", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:NetCashProvidedByUsedInOperatingActivities"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:NetCashProvidedByUsedInOperatingActivities", 
                                "OutputConcept": "fac:NetCashFlowFromOperatingActivities"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:NetCashFlowFromOperatingActivities -> us-gaap:NetCashProvidedByUsedInOperatingActivities", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 10542000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:OtherOperatingIncomeExpenses", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:OtherOperatingIncomeExpenses"
                            }, 
                            "Label": "Default fact value", 
                            "Message": "fac:OtherOperatingIncomeExpenses = 0", 
                            "Type": "xbrl28:default-fact-value"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 3, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetCashFlowFromFinancingActivitiesDiscontinued", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NetCashFlowFromFinancingActivitiesDiscontinued"
                            }, 
                            "Id": "d9bd6917-a92a-497b-a8f1-4d8d6098fcec", 
                            "Label": "Net Cash Flow from Financing Activities, Discontinued", 
                            "Message": "fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD] = 0", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:IncomeLossFromEquityMethodInvestments", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:IncomeLossFromEquityMethodInvestments"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:IncomeLossFromEquityMethodInvestments", 
                                "OutputConcept": "fac:IncomeLossFromEquityMethodInvestments"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:IncomeLossFromEquityMethodInvestments -> us-gaap:IncomeLossFromEquityMethodInvestments", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 602000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:IncomeLossFromContinuingOperationsBeforeTax", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest", 
                                "OutputConcept": "fac:IncomeLossFromContinuingOperationsBeforeTax"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:IncomeLossFromContinuingOperationsBeforeTax -> us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 11477000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetIncomeLossAttributableToParent", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:NetIncomeLoss"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:NetIncomeLoss", 
                                "OutputConcept": "fac:NetIncomeLossAttributableToParent"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:NetIncomeLossAttributableToParent -> us-gaap:NetIncomeLoss", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 8584000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetCashFlowFromFinancingActivitiesContinuing", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NetCashFlowFromFinancingActivitiesContinuing"
                            }, 
                            "Id": "74a3bfc8-8ac4-483a-9325-a27fcb1342d6", 
                            "Label": "Net Cash Flow from Financing Activities, Continuing", 
                            "Message": "fac:NetCashFlowFromFinancingActivitiesContinuing[-3,745,000,000 USD] = fac:NetCashFlowFromFinancingActivities[-3,745,000,000 USD] - fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": -3745000000, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:ComprehensiveIncomeLoss", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest", 
                                "OutputConcept": "fac:ComprehensiveIncomeLoss"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:ComprehensiveIncomeLoss -> us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 8576000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:CostsAndExpenses", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:CostsAndExpenses"
                            }, 
                            "Label": "Default fact value", 
                            "Message": "fac:CostsAndExpenses = 0", 
                            "Type": "xbrl28:default-fact-value"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 3, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NonoperatingIncomeLoss", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NonoperatingIncomeLoss"
                            }, 
                            "Label": "Default fact value", 
                            "Message": "fac:NonoperatingIncomeLoss = 0", 
                            "Type": "xbrl28:default-fact-value"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 3, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:InterestAndDebtExpense", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:InterestAndDebtExpense"
                            }, 
                            "Label": "Default fact value", 
                            "Message": "fac:InterestAndDebtExpense = 0", 
                            "Type": "xbrl28:default-fact-value"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 3, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest", 
                                "OutputConcept": "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest -> us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 39000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NetIncomeLossAvailableToCommonStockholdersBasic"
                            }, 
                            "Id": "2c454b43-7933-41b8-ad05-a799dad6d4c0", 
                            "Label": "Net Income (Loss) Available to Common Stockholders, Basic", 
                            "Message": "fac:NetIncomeLossAvailableToCommonStockholdersBasic[8,584,000,000 USD] = fac:NetIncomeLossAttributableToParent[8,584,000,000 USD]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 8584000000, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:OtherComprehensiveIncomeLoss", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:OtherComprehensiveIncomeLoss"
                            }, 
                            "Id": "cd07373d-1c26-4278-86e9-9b4715dff5ea", 
                            "Label": "Other Comprehensive Income (Loss)", 
                            "Message": "fac:OtherComprehensiveIncomeLoss[-50,000,000 USD] = fac:ComprehensiveIncomeLoss[8,576,000,000 USD] - fac:NetIncomeLoss[8,626,000,000 USD]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": -50000000, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:IncomeLossFromContinuingOperationsAfterTax", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:IncomeLossFromContinuingOperationsAfterTax"
                            }, 
                            "Id": "7cf0211d-caad-47bd-81e1-cacd6e288ecc", 
                            "Label": "Income (Loss) from Continuing Operations After Tax", 
                            "Message": "fac:IncomeLossFromContinuingOperationsAfterTax[8,626,000,000 USD] = fac:NetIncomeLoss[8,626,000,000 USD] - IncomeLossFromDiscontinuedOperationsNetOfTax[0] - ExtraordinaryItemsOfIncomeExpenseNetOfTax[0]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 8626000000, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:ComprehensiveIncomeLossAttributableToParent", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:ComprehensiveIncomeNetOfTax"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:ComprehensiveIncomeNetOfTax", 
                                "OutputConcept": "fac:ComprehensiveIncomeLossAttributableToParent"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:ComprehensiveIncomeLossAttributableToParent -> us-gaap:ComprehensiveIncomeNetOfTax", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 8537000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetIncomeLossAttributableToNoncontrollingInterest", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest", 
                                "OutputConcept": "fac:NetIncomeLossAttributableToNoncontrollingInterest"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:NetIncomeLossAttributableToNoncontrollingInterest -> us-gaap:NetIncomeLossAttributableToNoncontrollingInterest", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 42000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:ExtraordinaryItemsOfIncomeExpenseNetOfTax", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:ExtraordinaryItemsOfIncomeExpenseNetOfTax"
                            }, 
                            "Label": "Default fact value", 
                            "Message": "fac:ExtraordinaryItemsOfIncomeExpenseNetOfTax = 0", 
                            "Type": "xbrl28:default-fact-value"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 3, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:IncomeLossFromDiscontinuedOperationsNetOfTax", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:IncomeLossFromDiscontinuedOperationsNetOfTax"
                            }, 
                            "Label": "Default fact value", 
                            "Message": "fac:IncomeLossFromDiscontinuedOperationsNetOfTax = 0", 
                            "Type": "xbrl28:default-fact-value"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 3, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:ExchangeGainsLosses", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents", 
                                "OutputConcept": "fac:ExchangeGainsLosses"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:ExchangeGainsLosses -> us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": -611000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:PreferredStockDividendsAndOtherAdjustments", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:PreferredStockDividendsAndOtherAdjustments"
                            }, 
                            "Id": "4b138859-c05a-4715-86d2-5e75cc0ec110", 
                            "Label": "Preferred Stock Dividends and Other Adjustments", 
                            "Message": "fac:PreferredStockDividendsAndOtherAdjustments[0 USD] = fac:NetIncomeLossAttributableToParent[8,584,000,000 USD] - fac:NetIncomeLossAvailableToCommonStockholdersBasic[8,584,000,000 USD]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects" : {
                        "sec:Archive" : "0000021344-14-000008",
                        "xbrl:Concept" : "fac:NetCashFlowDiscontinued",
                        "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344",
                        "xbrl:Period" : "2013-01-01/2013-12-31",
                        "sec:FiscalPeriod" : "FY",
                        "sec:FiscalYear" : 2013,
                        "sec:Accepted" : "20140227132423",
                        "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
                    },
                    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ],
                    "Type" : "NumericValue",
                    "Value" : 0,
                    "Decimals" : -6,
                    "Concept" : {
                        "PeriodType" : "duration",
                        "DataType" : "xbrli:monetaryItemType"
                    },
                    "AuditTrails" : [ {
                        "Id" : "260e6e0f-e6f4-48d2-8361-75cbfe04fe75",
                        "Type" : "xbrl28:formula",
                        "Label" : "Net Cash Flow, Discontinued",
                        "Message" : "fac:NetCashFlowDiscontinued[0 USD] = fac:NetCashFlowFromOperatingActivitiesDiscontinued[0 USD] + NetCashFlowFromInvestingActivitiesDiscontinued[0] + fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]",
                        "Data" : {
                            "OutputConcept" : "fac:NetCashFlowDiscontinued"
                        }
                    } ],
                    "xbrl28:Type" : "xbrl28:formula",
                    "EntityRegistrantName" : "COCA COLA CO",
                    "Unit" : "iso4217:USD"
                },
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetCashFlowContinuing", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NetCashFlowContinuing"
                            }, 
                            "Id": "d7c2ba1a-141f-4035-877b-e4c149478da8", 
                            "Label": "Net Cash Flow, Continuing", 
                            "Message": "fac:NetCashFlowContinuing[2,583,000,000 USD] = fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] + fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] + fac:NetCashFlowFromFinancingActivitiesContinuing[-3,745,000,000 USD]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 2583000000, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense"
                            }, 
                            "Id": "ee2117cd-9220-4ee2-a982-33f4074c1ebc", 
                            "Label": "Nonoperating Income (Loss) + Interest and Debt Expense", 
                            "Message": "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense[647,000,000 USD] = fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments[1,249,000,000 USD] - fac:IncomeLossFromEquityMethodInvestments[602,000,000 USD]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 647000000, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NetCashFlow", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease", 
                                "OutputConcept": "fac:NetCashFlow"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:NetCashFlow -> us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 1972000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments"
                            }, 
                            "Id": "6abca1d8-12f9-4b87-b410-9d5d9e9322a3", 
                            "Label": "Nonoperating Income (Loss) + Interest and Debt Expense + Income (Loss) from Equity Method Investments", 
                            "Message": "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments[1,249,000,000 USD] = fac:IncomeLossFromContinuingOperationsBeforeTax[11,477,000,000 USD] - fac:OperatingIncomeLoss[10,228,000,000 USD]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 1249000000, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:IncomeTaxExpenseBenefit", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "Dimension": "dei:LegalEntityAxis", 
                                "Member": "sec:DefaultLegalEntity", 
                                "OutputConcept": "us-gaap:IncomeTaxExpenseBenefit"
                            }, 
                            "Label": "Default dimension value", 
                            "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                            "Type": "xbrl28:dimension-default"
                        }, 
                        {
                            "Data": {
                                "OriginalConcept": "us-gaap:IncomeTaxExpenseBenefit", 
                                "OutputConcept": "fac:IncomeTaxExpenseBenefit"
                            }, 
                            "Label": "Concept map", 
                            "Message": "fac:IncomeTaxExpenseBenefit -> us-gaap:IncomeTaxExpenseBenefit", 
                            "Type": "xbrl28:concept-maps"
                        }
                    ], 
                    "Concept": {
                        "Balance": "DEBIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": -6, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 2851000000, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:ReturnOnEquity", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:ReturnOnEquity"
                            }, 
                            "Id": "fe735813-326b-4f09-a38e-8f80c80e816b", 
                            "Label": "Return on Equity (ROE)", 
                            "Message": "fac:ReturnOnEquity[0.26 USD] = fac:NetIncomeLoss[8,626,000,000 USD] div fac:Equity[33,440,000,000 USD]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 2, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0.25795454545454544, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:ReturnOnAssets", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:ReturnOnAssets"
                            }, 
                            "Id": "78e824dc-4b68-4a1b-9aa3-ec51d0f55335", 
                            "Label": "Return on Assets (ROA)", 
                            "Message": "fac:ReturnOnAssets[0.1 USD] = fac:NetIncomeLoss[8,626,000,000 USD] div fac:Assets[90,055,000,000 USD]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 2, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0.09578590861140414, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:ReturnOnSales", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:ReturnOnSales"
                            }, 
                            "Id": "de1806dc-ff91-47a9-a10b-fb631b268ae3", 
                            "Label": "Return on Sales (ROS)", 
                            "Message": "fac:ReturnOnSales[0.18 USD] = fac:NetIncomeLoss[8,626,000,000 USD] div fac:Revenues[46,854,000,000 USD]", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 2, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0.1841038118410381, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:SustainableGrowthRate", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:SustainableGrowthRate"
                            }, 
                            "Id": "9f8da807-3830-485d-8f97-6f77c9b1ab05", 
                            "Label": "Sustainable Growth Rate (SGR)", 
                            "Message": "fac:SustainableGrowthRate[0.35 USD] =  (  ( fac:NetIncomeLoss[8,626,000,000 USD] div fac:Revenues[46,854,000,000 USD] ) *  ( 1 +  ( fac:Assets[90,055,000,000 USD] - fac:Equity[33,440,000,000 USD] ) div fac:Equity[33,440,000,000 USD] ) ) div  (  ( 1 div  ( fac:Revenues[46,854,000,000 USD] div fac:Assets[90,055,000,000 USD] ) ) -  (  ( fac:NetIncomeLoss[8,626,000,000 USD] div fac:Revenues[46,854,000,000 USD] ) *  ( 1 +  ( fac:Assets[90,055,000,000 USD] - fac:Equity[33,440,000,000 USD] ) div fac:Equity[33,440,000,000 USD] ) ) )", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 2, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0.34762633996937214, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:PassedValidations", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:PassedValidations"
                            }, 
                            "Id": null, 
                            "Label": "Validation Statistics: Passed Validations", 
                            "Message": "count(fac:AssetsValidation, fac:GrossProfitValidation, fac:ComprehensiveIncomeLossValidation2, fac:ComprehensiveIncomeLossValidation, fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation, fac:NetIncomeLossValidation2, fac:IncomeLossFromContinuingOperationsAfterTaxValidation, fac:IncomeLossFromContinuingOperationsBeforeTaxValidation, fac:IncomeLossBeforeEquityMethodInvestmentsValidation, fac:EquityValidation, fac:NetCashFlowFromFinancingActivitiesValidation, fac:NetCashFlowFromInvestingActivitiesValidation, fac:NetCashFlowFromOperatingActivitiesValidation, fac:LiabilitiesValidation, fac:AssetsValidation2, fac:NetCashFlowDiscontinuedValidation, fac:NetCashFlowContinuingValidation, fac:NetIncomeLossValidation, fac:NetCashFlowValidation, fac:LiabilitiesAndEquityValidation)", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 0, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "pure", 
                    "Value": 20, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:FailedValidations", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:FailedValidations"
                            }, 
                            "Id": null, 
                            "Label": "Validation Statistics: Passed Validations", 
                            "Message": "count(fac:OperatingIncomeLossValidation, fac:OperatingIncomeLossValidation2)", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 0, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "pure", 
                    "Value": 2, 
                    "xbrl28:Type": "xbrl28:formula"
                }, 
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:NotApplicableValidations", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:NotApplicableValidations"
                            }, 
                            "Id": null, 
                            "Label": "Validation Statistics: Validations that couldn't be applied", 
                            "Message": "count()", 
                            "Type": "xbrl28:formula"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 0, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "pure", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:formula"
                },
                {
                    "Aspects": {
                        "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                        "sec:Accepted": "20140227132423", 
                        "sec:Archive": "0000021344-14-000008", 
                        "sec:FiscalPeriod": "FY", 
                        "sec:FiscalYear": 2013, 
                        "xbrl:Concept": "fac:ResearchAndDevelopment", 
                        "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                        "xbrl:Period": "2013-01-01/2013-12-31"
                    }, 
                    "AuditTrails": [
                        {
                            "Data": {
                                "OutputConcept": "fac:ResearchAndDevelopment"
                            }, 
                            "Label": "Default fact value", 
                            "Message": "fac:ResearchAndDevelopment = 0", 
                            "Type": "xbrl28:default-fact-value"
                        }
                    ], 
                    "Concept": {
                        "Balance": "CREDIT", 
                        "DataType": "xbrli:monetaryItemType", 
                        "PeriodType": "duration"
                    }, 
                    "Decimals": 3, 
                    "EntityRegistrantName": "COCA COLA CO", 
                    "KeyAspects": [
                        "xbrl:Concept", 
                        "xbrl:Entity", 
                        "xbrl:Period", 
                        "xbrl:Unit", 
                        "sec:Accepted"
                    ], 
                    "Type": "NumericValue", 
                    "Unit": "iso4217:USD", 
                    "Value": 0, 
                    "xbrl28:Type": "xbrl28:concept-maps"
                }
            ], 
            "NetworkIdentifier": "http://secxbrl.info/facts", 
            "Statistics": {
                "NumFacts": 96, 
                "TotalNumArchives": 104098, 
                "TotalNumEntities": 9728, 
                "TotalNumFacts": 74495005
            }, 
            "TableName": "xbrl:Facts"
        }
  let $diff := local:compare-fact-tables($expected, $actual)
  return if (empty($diff)) then true else { factTableDiff: [ ({ params : $params },$diff) ], expectedFactTable: $expected, actualFactTable: $actual }
};

local:check({
    cocacola: local:test-facttable(95, {
        report:"FundamentalAccountingConcepts",
        ticker:"ko",
        fiscalYear:"2013",
        fiscalPeriod:"Q1"}),
    aid: local:test-facttable(95, {
        aid:"0001193125-14-157120",
        report:"FundamentalAccountingConcepts"}),
    aid2: local:test-facttable(96, {
        aid:"0000732717-14-000022",
        report:"FundamentalAccountingConcepts"}),
    tickerrole: local:test-facttable(95, {
        report:"FundamentalAccountingConcepts",
        ticker:"ko",
        fiscalYear:"2012",
        fiscalPeriod:"Q1"}),
    tickerfyfprole: local:test-facttable(191, {
        report:"FundamentalAccountingConcepts",
        ticker:["ko","wmt"],
        fiscalYear:"2013",
        fiscalPeriod:"FY"}),
    allvalues : local:test-values(),
    otheroperatingincometest: local:test-facttable-fact("fac:OtherOperatingIncomeExpenses",
                                                        local:expected-OtherOperatingIncomeExpenses-ATnT-2013(),
                                                        {
        report:"FundamentalAccountingConcepts",
        ticker:"t",
        fiscalYear:"2013",
        fiscalPeriod:"FY"}),
    reportDoesntExist: local:test-report-does-not-exist({
        report:"report-not-found",
        ticker:"MSFT",
        fiscalYear:"ALL",
        fiscalPeriod:"FY"})
})
