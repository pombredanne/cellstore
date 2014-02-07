import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";

(:
  Retrieve facts including their XBRL footnotes. 

  Please note:
  - for most facts there are no footnotes
  
  For more info about XBRL footnotes see section "4.11 Footnotes" of the 
  XBRL 2.1 specification
:)
sec:facts-for-archives-and-concepts(
  "0000012927-13-000014", 
  "us-gaap:EquityMethodInvestments",
  { include-footnotes: true })

