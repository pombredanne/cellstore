import module namespace fiscal = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";
import module namespace sec-networks = "http://28.io/modules/xbrl/profiles/sec/networks";

let $filing := fiscal:filings-for-entities-and-fiscal-periods-and-years( 21344, "FY", 2012 )
return sec-networks:networks-for-filings-and-disclosures($filing, "BalanceSheet")
