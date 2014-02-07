import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

(:
 : Retrieves facts for concepts, fiscal years / periods which the company with the 
 : CIK 4962 has reported in a fiscal report.
 :
 : The facts returned INCLUDE those in any explicit and typed dimensions 
 :)
fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
  ( "0000004962" ),
  ( "us-gaap:Assets" ),
  "FY",
  2010 to 2012)
