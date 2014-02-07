import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
 
for $fact in sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
    entities:entities(),
    "us-gaap:Assets",
    "FY",
    (),
    { Hypercube: hypercubes:dimensionless-hypercube() }
)
let $fyf := sec-fiscal:fiscal-year($fact)
group by $fyf
return {
    FiscalYearFocus : $fyf,
    SumAssets : format-number(sum($fact.Value), "000,000"),
    Units : distinct-values($fact.Aspects."xbrl:Unit"),
    Reports : count(distinct-values($fact.Archive))
}
