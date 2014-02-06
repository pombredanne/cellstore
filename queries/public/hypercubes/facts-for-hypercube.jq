import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace networks = "http://xbrl.io/modules/bizql/networks";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace report-schemas = "http://xbrl.io/modules/bizql/report-schemas";

import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

 facts:facts-for-archives(
    fiscal:filings-for-entities-and-fiscal-periods-and-years("0000104169", "Q3", "2013")
    
)