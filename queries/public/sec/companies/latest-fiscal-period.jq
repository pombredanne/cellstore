import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

(:
 : Retrieves the latest fiscal period for which the company with the CIK 4281 submitted
 : a fiscal report.
 :)
fiscal:latest-reported-fiscal-period("0000004962")
