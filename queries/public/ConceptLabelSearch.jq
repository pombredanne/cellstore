import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

let $company := companies:companies-for-tickers("axp")
for $archive in archives:archives-for-entities($company)
where fiscal:fiscal-period($archive) eq "FY" and fiscal:fiscal-year($archive) eq "2012"
for $r in components:components-for-archives($archive)
let $matches :=
    let $members := $r.Hypercubes."xbrl:DefaultHypercube".Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain".Members
    for $k in keys($members)
    let $member := $members($k)
    where contains(lower-case($member.Label), "long-term debt")
    return $member
where exists($matches)
let $count := count($matches)
order by $count descending
return {
    Archive : $r.Archive,
    Label : $r.Label,
    NumConcepts : $matches
}