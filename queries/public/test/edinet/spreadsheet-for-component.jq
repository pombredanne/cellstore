import module namespace test = "http://apps.28.io/test";

test:check-all-success({
    bs-one: test:invoke-and-assert-deep-equal(
      "spreadsheet-for-component",
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_QuarterlyConsolidatedBalanceSheet",
        merge: "true",
        eliminate: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-bs-one.jq"),
      { TrimIdField: true }
    ),
    bs-one-en: test:invoke-and-assert-deep-equal(
      "spreadsheet-for-component",
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_QuarterlyConsolidatedBalanceSheet",
        language: "en",
        merge: "true",
        eliminate: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-bs-one-en.jq"),
      { TrimIdField: true }
    ),
    pl-one: test:invoke-and-assert-deep-equal(
      "spreadsheet-for-component",
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_YearToQuarterEndConsolidatedStatementOfIncome",
        merge: "true",
        eliminate: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-pl-one.jq"),
      { TrimIdField: true }
    ),
    cf-one: test:invoke-and-assert-deep-equal(
      "spreadsheet-for-component",
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jpcrp/rol_NotesQuarterlyConsolidatedStatementOfCashFlows",
        merge: "true",
        eliminate: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-cf-one.jq"),
      { TrimIdField: true }
    ),
    bs-companies: test:invoke-and-assert-deep-equal(
      "spreadsheet-for-component",
      {
        tag: "ALL",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_QuarterlyConsolidatedBalanceSheet",
        merge: "true",
        eliminate: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-bs-companies.jq"),
      { TrimIdField: true }
    ),
    pl-companies: test:invoke-and-assert-deep-equal(
      "spreadsheet-for-component",
      {
        tag: "ALL",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_YearToQuarterEndConsolidatedStatementOfIncome",
        merge: "true",
        eliminate: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-pl-companies.jq"),
      { TrimIdField: true }
    ),
    cf-companies: test:invoke-and-assert-deep-equal(
      "spreadsheet-for-component",
      {
        tag: "ALL",
        fiscalYear: "2014",
        fiscalPeriod: "Q1",
        role: "http://disclosure.edinet-fsa.go.jp/role/jpcrp/rol_NotesQuarterlyConsolidatedStatementOfCashFlows",
        merge: "true",
        eliminate: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-cf-companies.jq"),
      { TrimIdField: true }
    ),
    bs-periods: test:invoke-and-assert-deep-equal(
      "spreadsheet-for-component",
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "ALL",
        fiscalPeriod: "FY",
        role: "http://info.edinet-fsa.go.jp/jp/fr/gaap/role/ConsolidatedBalanceSheets",
        merge: "true",
        eliminate: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-bs-periods.jq"),
      { TrimIdField: true }
    ),
    pl-periods: test:invoke-and-assert-deep-equal(
      "spreadsheet-for-component",
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "ALL",
        fiscalPeriod: "FY",
        role: "http://info.edinet-fsa.go.jp/jp/fr/gaap/role/ConsolidatedStatementsOfIncome",
        merge: "true",
        eliminate: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-pl-periods.jq"),
      { TrimIdField: true }
    ),
    cf-periods: test:invoke-and-assert-deep-equal(
      "spreadsheet-for-component",
      {
        eid: "http://info.edinet-fsa.go.jp E01225-000",
        fiscalYear: "ALL",
        fiscalPeriod: "FY",
        role: "http://info.edinet-fsa.go.jp/jp/fr/gaap/role/ConsolidatedStatementsOfCashFlowsIndirect",
        merge: "true",
        eliminate: "true"
      },
      function($b as item*) as item* { $b },
      test:get-expected-result("edinet/spreadsheet-for-component-expected-cf-periods.jq"),
      { TrimIdField: true }
    )
})
