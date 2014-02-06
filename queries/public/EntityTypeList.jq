
declare function local:members() {
    for $stats in collection("filingStatsCache2")
    group by $type := $stats.entityType
    order by count($type) descending
    return {entityType: $type, count: count($stats)}
 };
 let $types := local:members()
 return {domain: "entityType", members:[$types]} 