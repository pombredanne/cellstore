(:
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";


sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years("0001408057","us-gaap:NetIncomeLoss", "Q2", 2012)
return archives:archives-for-entities(sec:normalize-cik($cik))[$$.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus eq "FY"]
:)


import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace components = "http://xbrl.io/modules/bizql/components";


let $cik:= "0000021344"


for $a in archives:archives-for-entities(sec:normalize-cik($cik))
return
    {
    filing: $a,    
    numcomp: count(components:components-for-archives($a))
}


