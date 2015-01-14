import module namespace test = "http://apps.28.io/test";

test:check-all-success({
    example1: test:invoke-and-assert-deep-equal(
      "periods",
      {tag:"ALL"},
      function($b as item*) as item* { $b.Periods },
      test:get-expected-result("edinet/periods-expected1.jq")
    )
})
