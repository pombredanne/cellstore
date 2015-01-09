import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace test = "http://apps.28.io/test";

declare %an:nondeterministic function local:test-example1() as item
{
  let $expected :=
  [
  {
    "FiscalYear": null,
    "FiscalPeriod": null
  }, {
    "FiscalYear" : 2014,
    "FiscalPeriod" : "Q1"
  }, {
    "FiscalYear" : 2014,
    "FiscalPeriod" : "Q2"
  }, {
    "FiscalYear" : 2014,
    "FiscalPeriod" : "Q3"
  }, {
    "FiscalYear" : 2013,
    "FiscalPeriod" : "FY"
  }, {
    "FiscalYear" : 2013,
    "FiscalPeriod" : "Q1"
  }, {
    "FiscalYear" : 2013,
    "FiscalPeriod" : "Q2"
  }, {
    "FiscalYear" : 2013,
    "FiscalPeriod" : "Q3"
  }, {
    "FiscalYear" : 2012,
    "FiscalPeriod" : "FY"
  }, {
    "FiscalYear" : 2012,
    "FiscalPeriod" : "Q1"
  }, {
    "FiscalYear" : 2012,
    "FiscalPeriod" : "Q2"
  }, {
    "FiscalYear" : 2012,
    "FiscalPeriod" : "Q3"
  }, {
    "FiscalYear" : 2011,
    "FiscalPeriod" : "FY"
  }, {
    "FiscalYear" : 2011,
    "FiscalPeriod" : "Q3"
  }, {
    "FiscalYear" : 2010,
    "FiscalPeriod" : "FY"
  }, {
    "FiscalYear" : 2009,
    "FiscalPeriod" : "FY"
  } ]
  let $endpoint := "periods"
  let $params := {tag:"ALL"}
  let $request := test:invoke($endpoint, $params)
  let $status as integer := $request[1]
  let $actual as array? := $request[2].Periods
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

local:check({
    example1: local:test-example1()
})
