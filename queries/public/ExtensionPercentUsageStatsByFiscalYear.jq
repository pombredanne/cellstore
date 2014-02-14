import module namespace req = "http://www.28msec.com/modules/http-request";
import module namespace base64 = "http://zorba.io/modules/base64";

(:
  Calculate percentage use of extension elements for every filing.
:)
declare function local:crossDomainSelector($stats as object, $domains as string*) as string? {
   let $assembly := string-join((
       for $domain in $domains 
        return $domain||"='"||$stats.$domain||"'"
       ),";")
    return if(string-length($assembly) eq 0) then
               ()
            else
               $assembly
};

declare function local:filterByDomain($stats as object,$domainsAndMembers as object*) as boolean {
    let $matches := 
       for $domainAndMembers in $domainsAndMembers
       let $domain := $domainAndMembers.domain
       return if($stats.$domain = $domainAndMembers.members[]) then    
            "true"
       else
            ()
    return 
        if(count($matches) eq count($domainsAndMembers)) then
            true
        else
            false
};

declare %an:sequential function local:sliceAndDice($startYear as integer, $endYear as integer,$domainsAndMembers as object*) { 
   
        let $filingStats := collection("filingStatsCache2")[$$.qtyConcepts castable as decimal]
        for $stats in $filingStats[local:filterByDomain($$,$domainsAndMembers)]
        let $year := try { $stats.fiscalYear cast as integer } catch* { 0 }
        where $stats.periodFocus = "FY" and $year le $endYear and $year ge $startYear
        order by $stats.percentExtUsage
        let $yearSelector := "fiscalYear='"||$year||"'"
        group by $domainGroup := string-join(($yearSelector, local:crossDomainSelector($stats,$domainsAndMembers.domain)),";")
        let $qty := count($stats)
        let $groupYear :=  $year[1]
        order by $groupYear
        let $min := $stats[1]
        let $max := $stats[last()]
        let $median := $stats[round($qty div 2) cast as integer]
        let $bottomQuartile := $stats[max((1,round($qty div 4))) cast as integer]
        let $topQuartile :=  $stats[$qty - round($qty div 4) cast as integer]
        return {
            selector: $domainGroup,
            fiscalYear: $groupYear,
            min: $min.percentExtUsage,
            bottomQuartile:  $bottomQuartile.percentExtUsage,
            median: $median.percentExtUsage,
            topQuartile: $topQuartile.percentExtUsage,
            max : $max.percentExtUsage,
            qty: $qty
        }
 
};

declare %an:sequential function local:aggregateByIndexAndDice($startYear as integer, $endYear as integer,$domainsAndMembers as object*)
{ 
    let $stockIndexDomainAndMembers := $domainsAndMembers[$$.domain="stockIndex"]
    let $otherDomainsAndMembers := $domainsAndMembers[not($$.domain="stockIndex")]
    let $stockIndexes := $stockIndexDomainAndMembers.members[]
    for $stats in collection("filingStatsCache2")[local:filterByDomain($$,$otherDomainsAndMembers)][$$.qtyConcepts castable as decimal]
    let $year := try { $stats.fiscalYear cast as integer } catch* { 0}
    where $stats.periodFocus = "FY" and $year le $endYear and $year ge $startYear
    order by $stats.percentExtUsage
    for $stockIndex in $stockIndexes[$$ = $stats.stockIndexes[]]
    let $yearSelector := "fiscalYear='"||$year||"'"
    let $indexSelector := "stockIndex='"||$stockIndex||"'"
    group by $domainGroup := string-join(($yearSelector, $indexSelector, local:crossDomainSelector($stats,$otherDomainsAndMembers.domain)),";")
    let $qty := count($stats)
    order by $qty descending
    let $min := $stats[1]
    let $max := $stats[last()]
    let $median := $stats[round($qty div 2) cast as integer]
    let $bottomQuartile := $stats[max((1,round($qty div 4))) cast as integer]
    let $topQuartile :=  $stats[$qty - round($qty div 4) cast as integer]
    return {
        selector: $domainGroup,
        fiscalYear: max($year),
        min: $min.percentExtUsage,
        bottomQuartile:  $bottomQuartile.percentExtUsage,
        median: $median.percentExtUsage,
        topQuartile: $topQuartile.percentExtUsage,
        max : $max.percentExtUsage,
        qty: $qty
    }
 
};
variable $validDomains as string*:= ("generator","stockIndex","entityType","sector"); 

let $startYear := req:param-values("startYear","")
return 
if ($startYear eq "") then {
    let $requestObject := parse-json(base64:decode(req:binary-content()))
    let $domainsAndMembers := if(count($requestObject.domainsAndMembers[]) gt 0) then $requestObject.domainsAndMembers[] else () 
    let $startYear := if($requestObject.startYear) then $requestObject.startYear else 2000 
    let $endYear := if($requestObject.endYear) then $requestObject.endYear else 2050
    let $result := if(exists($domainsAndMembers[$$.domain="stockIndex"])) 
       then local:aggregateByIndexAndDice($startYear cast as int, $endYear cast as int, $domainsAndMembers)
       else local:sliceAndDice($startYear cast as int, $endYear cast as int, $domainsAndMembers)
    return { 
          {ExtensionUsageStatsByYears:[$result]}
    }
} else { (: url encoded parameter for single domain, memberCSV :)
    let $startYear := req:param-values("startYear","2000")
    let $endYear := req:param-values("endYear","2050")
    let $domain := req:param-values("domainName")
    let $members := tokenize(req:param-values("memberSelectionCSV"),",")
    let $domainsAndMembers := if(exists($domain)) then {domain:$domain,members:[$members]} else ()
    let $result := if(exists($domainsAndMembers[$$.domain="stockIndex"])) 
       then local:aggregateByIndexAndDice($startYear cast as int, $endYear cast as int, $domainsAndMembers)
       else local:sliceAndDice($startYear cast as int, $endYear cast as int, $domainsAndMembers)
    return { 
          {ExtensionUsageStatsByYears:[$result]}
    }
    
}

