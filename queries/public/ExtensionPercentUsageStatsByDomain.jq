import module namespace req = "http://www.28msec.com/modules/http-request";
import module namespace base64 = "http://zorba.io/modules/base64";
import module namespace mongo = "http://www.28msec.com/modules/mongodb";

declare function local:crossDomainSelector($stats as object, $domains as string*) as string? {
   let $assembly := string-join((
       for $domain in $domains 
        return $domain||"="||$stats.$domain
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
       let $members := if(exists($domainAndMembers.members[])) then  $domainAndMembers.members[] else () 
       return   if($stats.$domain = $members) then    
                    "true"
                else if(empty($members)) then "true" 
                else ()
    return 
        if(count($matches) eq count($domainsAndMembers)) then
            true
        else
            false
};


declare %an:sequential function local:sliceAndDice($yearFocus, $periodFocus, $domainsAndMembers)
{
   
        let $filingStats := collection("filingStatsCache2")[$$.qtyConcepts castable as decimal]
        for $stats in $filingStats[local:filterByDomain($$,$domainsAndMembers)]
        let $year := try { $stats.fiscalYear cast as integer } catch* { 0 }
        where $stats.periodFocus = $periodFocus and $year eq $yearFocus 
        order by $stats.percentExtUsage
        group by $domainGroup := local:crossDomainSelector($stats,$domainsAndMembers.domain)
       
        let $qty := count($stats)
        let $min := $stats[1]
        let $max := $stats[last()]
        let $median := $stats[round($qty div 2) cast as integer]
        let $bottomQuartile := $stats[max((1,round($qty div 4))) cast as integer]
        let $topQuartile :=  $stats[$qty - round($qty div 4) cast as integer]
        
        return {
            selector : $domainGroup,
            fiscalYear : $yearFocus,
            fiscalPeriod : $periodFocus,
            min: $min.percentExtUsage,
            bottomQuartile:  $bottomQuartile.percentExtUsage,
            median: $median.percentExtUsage,
            topQuartile: $topQuartile.percentExtUsage,
            max : $max.percentExtUsage,
            qty: $qty
        }
      
  
};

declare function local:gatherIndexTags() as string* {
  distinct-values(
    let $conn := mongo:connect("xbrl")
    return mongo:find($conn, "entities", { "Profiles.SEC.Tags" : { "$exists" : true } }, { "Profiles.SEC.Tags" : 1}, {}).Profiles.SEC.Tags[]
    )
};

declare %an:sequential function local:aggregateByIndexAndDice($yearFocus, $periodFocus, $domainsAndMembers) {
   let $stockIndexDomainAndMembers := $domainsAndMembers[$$.domain="stockIndex"]
   let $otherDomainsAndMembers := $domainsAndMembers[not($$.domain="stockIndex")]
   let $stockIndexes := if(exists($stockIndexDomainAndMembers.members[])) then $stockIndexDomainAndMembers.members[] else local:gatherIndexTags()
   
   for $stats in collection("filingStatsCache2")[local:filterByDomain($$,$otherDomainsAndMembers)][$$.qtyConcepts castable as decimal]
        let $year := try { $stats.fiscalYear cast as integer } catch* { 0 }
        where $stats.periodFocus eq $periodFocus and $year eq $yearFocus 
   for $stockIndex in $stockIndexes[$$ = $stats.stockIndexes[]]
        let $indexSelector := "stockIndex="||$stockIndex 
        order by $stats.percentExtUsage
        group by $domainGroup := string-join(($indexSelector,local:crossDomainSelector($stats,$otherDomainsAndMembers.domain)),",") 
        let $qty := count($stats)
        let $min := $stats[1]
        let $max := $stats[last()]
        let $median := $stats[round($qty div 2) cast as integer]
        let $bottomQuartile := $stats[max((1,round($qty div 4))) cast as integer]
        let $topQuartile :=  $stats[$qty - round($qty div 4) cast as integer]
        return {
            selector: $domainGroup,
            fiscalYear : $yearFocus,
            fiscalPeriod : $periodFocus,
            min: $min.percentExtUsage,
            bottomQuartile:  $bottomQuartile.percentExtUsage,
            median: $median.percentExtUsage,
            topQuartile: $topQuartile.percentExtUsage,
            max : $max.percentExtUsage,
            qty: $qty 
        }
};
(: NB: $validDomains := ("generator","stockIndex","entityType","sector"); :)
(: We process inbound request :) 

let $yearFocus := req:param-values("fiscalYearFocus","2012")
return 
if ($yearFocus eq "") then {
    let $requestObject := parse-json(base64:decode(req:binary-content()))
    let $domainsAndMembers := if ($requestObject.domainsAndMembers[]) then $requestObject.domainsAndMembers[] else {domain:"stockIndex", members:[]}
    (:let $domainsAndMembers := if ($requestObject.domainsAndMembers[]) then $requestObject.domainsAndMembers[] else {domain:"generator", members:["WebFilings","IBM Cognos"]}:)
   
    let $yearFocus := if($requestObject.fiscalYearFocus) then $requestObject.fiscalYearFocus else "2012"
    let $periodFocus := if($requestObject.fiscalPeriodFocus) then $requestObject.fiscalPeriodFocus else "FY"
    let $result := if(exists($domainsAndMembers[$$.domain="stockIndex"])) 
       then local:aggregateByIndexAndDice(int($yearFocus), $periodFocus, $domainsAndMembers)
       else local:sliceAndDice(int($yearFocus), $periodFocus, $domainsAndMembers)
    return { 
         {ExtensionUsageStatsByDomain:[$result],
         domain: $domainsAndMembers.domain,
         members: $domainsAndMembers.members,
         yearFocus: $yearFocus,
         periodFocus: $periodFocus,
         method: "POST"}
    }
} else { (: url encoded parameter for single domain, memberCSV :)
    let $yearFocus := req:param-values("fiscalYearFocus","2012")
    let $periodFocus := req:param-values("fiscalPeriodFocus","FY")
    let $domain := req:param-values("domainName","generator")
    let $members := tokenize(req:param-values("memberSelectionCSV","WebFilings,IBM Cognos"),",")
    let $domainsAndMembers := {domain:$domain,members:[$members]}
    let $result := if(exists($domainsAndMembers[$$.domain="stockIndex"])) 
        then local:aggregateByIndexAndDice(int($yearFocus), $periodFocus, $domainsAndMembers)
        else local:sliceAndDice(int($yearFocus), $periodFocus, $domainsAndMembers)
    return {
        {
            ExtensionUsageStatsByDomain:[$result],
            domain: $domainsAndMembers.domain,
            members: $domainsAndMembers.members,
            yearFocus: $yearFocus,
            periodFocus: $periodFocus,
            method: "GET"
            
        }
    }
    
}

                             