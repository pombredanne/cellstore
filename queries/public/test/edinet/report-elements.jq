import module namespace test = "http://apps.28.io/test";

test:check-all-success({
    taxonomy-label: test:invoke-and-assert-deep-equal(
      "report-elements",
      {aid:"STANDARD-TAXONOMY-2014", label:"\"Accounting policy for deferred assets\""},
      function($b as item*) as item* { $b.ReportElements },
      test:get-expected-result("edinet/report-elements-expected1.jq")
    ),
    taxonomy-name: test:invoke-and-assert-deep-equal(
      "report-elements",
      {aid:"STANDARD-TAXONOMY-2014", name:"jppfs-cor:CurrentAssets"},
      function($b as item*) as item* { $b.ReportElements },
      test:get-expected-result("edinet/report-elements-expected2.jq")
    ),
    company-label: test:invoke-and-assert-deep-equal(
      "report-elements",
      {cik:"E01225", label:"\"Loss of inactive facilities\""},
      function($b as item*) as item* { $b.ReportElements },
      test:get-expected-result("edinet/report-elements-expected3.jq")
    ),
    company-name: test:invoke-and-assert-deep-equal(
      "report-elements",
      {cik:"E01225", name:"jpcrp-cor:NotesConsolidatedStatementOfCashFlowsHeading"},
      function($b as item*) as item* { $b.ReportElements },
      test:get-expected-result("edinet/report-elements-expected4.jq")
    )
})
