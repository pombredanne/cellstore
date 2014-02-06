declare namespace ext = "http://zorba.io/extensions";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace store = "http://www.28msec.com/modules/store";
import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";

import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";

variable $total := integer(request:param-values("size", "1000"));

(: Make sure the collection exists :)
if(is-available-collection("filingStatsCache2"))
then truncate("filingStatsCache2");
else
  create("filingStatsCache2");


(# ext:no-materialization #) {
let $entities := {|
    for $entity in mongo:find(
    mongo:connect(credentials:credentials("MongoDB", "xbrl")),
    "entities",
    {},
    {
        _id: 1,
        "Profiles.SEC.CompanyName": 1,
        "Profiles.SEC.CompanyType": 1,
        "Profiles.SEC.CIK": 1,
        "Profiles.SEC.Sector": 1,
        "Profiles.SEC.SIC": 1,
        "Profiles.SEC.Taxonomy": 1,
        "Profiles.SEC.Tickers": 1,
        "Profiles.SEC.Tags": 1
    },
    {}
)
    return {
        entities:eid($entity) : {
            companyName: $entity.Profiles.SEC.CompanyName,
            entityType:$entity.Profiles.SEC.CompanyType,
            CIK: $entity.Profiles.SEC.CIK,
            sector: $entity.Profiles.SEC.Sector,
            SIC: $entity.Profiles.SEC.SIC,
            taxonomy: $entity.Profiles.SEC.Taxonomy,
            tickers: $entity.Profiles.SEC.Tickers,
            stockIndexes: $entity.Profiles.SEC.Tags
        }
    }
|}
for $i in 1 + integer(count(collection("filingStatsCache2")) div 400) to integer(ceiling($total div 400))
let $archives := mongo:find(
    mongo:connect(credentials:credentials("MongoDB", "xbrl")),
    "archives",
    {},
    {
        _id: 1,
        Entity: 1,
        "Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus": 1,
        "Profiles.SEC.Fiscal.DocumentFiscalYearFocus": 1,
        "Profiles.SEC.Generator": 1,
        "Statistics.NumDistinctConcretePrimaryItemsInHypercubes": 1,
        "Statistics.NumDistinctConcretePrimaryItemsNotInHypercubes": 1,
        "Statistics.Profiles.SEC.NumExtensionConcepts": 1,
        "Statistics.NumFacts": 1,
        "Statistics.Profiles.SEC.NumExtensionFacts": 1
    },
    {to-skip: ($i - 1)*400, to-return: 400}
)
let $computed :=
   
    for $archive in $archives
    let $entity := $entities.($archive.Entity)
    let $fiscalYear := $archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus
    let $fiscalPeriod := $archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus
    let $qtyConcepts := $archive.Statistics.NumDistinctConcretePrimaryItemsInHypercubes + 
                        $archive.Statistics.NumDistinctConcretePrimaryItemsNotInHypercubes
    let $qtyExtConcepts := $archive.Statistics.Profiles.SEC.NumExtensionConcepts
    let $percentExtConceptUsage :=  try { ($qtyExtConcepts div $qtyConcepts)*100 } catch* { -1} 
    let $qtyFacts := $archive.Statistics.NumFacts
    let $qtyExtFacts := $archive.Statistics.Profiles.SEC.NumExtensionFacts
    let $percentExtFactUsage :=  try { ($qtyExtFacts div $qtyFacts)*100 } catch* { -1} 
    return {|
        $entity,
        {
            accessionNumber: archives:aid($archive),
            generator: $archive.Profiles.SEC.Generator,  
            fiscalYear: $fiscalYear,
            periodFocus: $fiscalPeriod,
            qtyConcepts: $qtyConcepts,
            qtyExtConcepts: $qtyExtConcepts,
            percentExtUsage: $percentExtConceptUsage,
            qtyFacts: $qtyFacts,
            qtyExtFacts: $qtyExtFacts,
            percentExtFactUsage: $percentExtFactUsage
        }
    |}
return
{
    insert("filingStatsCache2", $computed);
    store:flush();
}

},

count(collection("filingStatsCache2"))
