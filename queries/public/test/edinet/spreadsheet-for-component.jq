import module namespace test = "http://apps.28.io/test";

test:check-all-success({
    bs-one: test:invoke-and-assert-deep-equal-json(
      "spreadsheet-for-component",
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_QuarterlyConsolidatedBalanceSheet",
        merge: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-bs-one.jq")
    ),
    pl-one: test:invoke-and-assert-deep-equal-json(
      "spreadsheet-for-component",
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_YearToQuarterEndConsolidatedStatementOfIncome",
        merge: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-pl-one.jq")
    ),
    cf-one: test:invoke-and-assert-deep-equal-json(
      "spreadsheet-for-component",
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jpcrp/rol_NotesQuarterlyConsolidatedStatementOfCashFlows",
        merge: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-cf-one.jq")
    ),
    bs-companies: test:invoke-and-assert-deep-equal-json(
      "spreadsheet-for-component",
      {
        tag: "ALL",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_QuarterlyConsolidatedBalanceSheet",
        merge: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-bs-companies.jq")
    ),
    pl-companies: test:invoke-and-assert-deep-equal-json(
      "spreadsheet-for-component",
      {
        tag: "ALL",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_YearToQuarterEndConsolidatedStatementOfIncome",
        merge: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-pl-companies.jq")
    ),
    cf-companies: test:invoke-and-assert-deep-equal-json(
      "spreadsheet-for-component",
      {
        tag: "ALL",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jpcrp/rol_NotesQuarterlyConsolidatedStatementOfCashFlows",
        merge: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-cf-companies.jq")
    ),
    bs-periods: test:invoke-and-assert-deep-equal-json(
      "spreadsheet-for-component",
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "ALL",
        fiscalPeriod: "FY",
        role: "http://info.edinet-fsa.go.jp/jp/fr/gaap/role/ConsolidatedBalanceSheets",
        merge: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-bs-periods.jq")
    ),
    pl-periods: test:invoke-and-assert-deep-equal-json(
      "spreadsheet-for-component",
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "ALL",
        fiscalPeriod: "FY",
        role: "http://info.edinet-fsa.go.jp/jp/fr/gaap/role/ConsolidatedStatementsOfIncome",
        merge: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-pl-periods.jq")
    ),
    cf-periods: test:invoke-and-assert-deep-equal-json(
      "spreadsheet-for-component",
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "ALL",
        fiscalPeriod: "FY",
        role: "http://info.edinet-fsa.go.jp/jp/fr/gaap/role/ConsolidatedStatementsOfCashFlowsIndirect",
        merge: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-cf-periods.jq")
    )
})
