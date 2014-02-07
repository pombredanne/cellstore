import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";

(:
 : Retrieves facts for concepts, fiscal years / periods which the company with the 
 : CIK 4962 has reported in a submitted fiscal report.
 :
 : The facts returned are NEITHER in any explicit nor typed dimension (default behavior)
 :)
fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
  ( "0000004962" ),
  ( "us-gaap:Assets" ),
  "FY",
  2010 to 2012)
