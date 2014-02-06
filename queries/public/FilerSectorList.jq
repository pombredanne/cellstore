
declare function local:members() {
    for $stats in collection("filingStatsCache2")
    group by $sector :=  $stats.sector
    order by count($stats) descending
    return {sector: $sector, count: count($stats) }
 };
 let $sectors := local:members()
 return {domain: "sector", members:[$sectors]} 