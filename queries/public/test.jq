import module namespace mongodb = "http://www.28msec.com/modules/mongodb";
import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace sec-components = "http://xbrl.io/modules/bizql/profiles/sec/components";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";


let $filing := fiscal:filings-for-entities-and-fiscal-periods-and-years("0000040545","FY","2012")
let $sheet := sec-components:components-for-archives-and-disclosures($filing,$sec-components:BALANCE_SHEET)
return hypercubes:hypercubes-for-components($sheet)