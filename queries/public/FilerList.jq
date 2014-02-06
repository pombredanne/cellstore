 
 declare function local:members() {
    for $stats in collection("filingStatsCache2")
    group by $filer :=  $stats.companyName
    order by count($stats) descending
    return {filer: $filer, count: count($stats) }
 };
 let $filers := local:members()
 return {domain: "filer", members:[$filers]} 
 