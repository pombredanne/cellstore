import module namespace footnotes = "http://xbrl.io/modules/bizql/footnotes";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";

(:
  Retrieve XBRL footnotes for a specific fact. 

  Please note:
  - for most facts there are no footnotes
  
  For more info about XBRL footnotes see section "4.11 Footnotes" of the 
  XBRL 2.1 specification
:)

(: select a fact :)
let $equity-method-investments :=
 sec:facts-for-archives-and-concepts(
   "0000012927-13-000014", 
   "us-gaap:EquityMethodInvestments")

(: fetch the XBRL footnotes for it :)
return 
  footnotes:footnotes-for-facts($equity-method-investments)

