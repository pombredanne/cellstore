
 declare function local:members() {
    for $stats in  collection("filingStatsCache2")
   
    group by $generator := $stats.generator
    order by count($stats) descending
    return {generator: $generator, filings: count($stats)}
 };
 let $generators := local:members()
 return {domain: "generator", members:[$generators]} 
 