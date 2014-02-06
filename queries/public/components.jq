import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace csv = "http://zorba.io/modules/json-csv";


declare function local:summary-to-xml($components as object*) as element()*
{
    for $c in $components
    return
    <Component>
        <ComponentId>{$c.ComponentId}</ComponentId>
        <AccessionNumber>{$c.AccessionNumber}</AccessionNumber>
        <NetworkLabel>{$c.NetworkLabel}</NetworkLabel>
        <NetworkIdentifier>{$c.NetworkIdentifier}</NetworkIdentifier>
        <Category>{$c.Category}</Category>
        <SubCategory>{$c.SubCategory}</SubCategory>
        <Table>{$c.Table}</Table>
        <Disclosure>{$c.Disclosure}</Disclosure>
    </Component>
};

declare function local:to-csv($filings as object*) as string*
{
    csv:serialize($filings)
};

declare function local:members($component)
{
    $component.Hypercubes."xbrl:DefaultHypercube".Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain".Members
};

declare function local:presentation($component)
{
    $component.Networks[][$$.ShortName eq "Presentation"]
};

declare function local:concepts($component)
{
    let $network := local:presentation($component)
    let $root-key := exactly-one(keys($network.Trees))
    return keys($network.Trees.$root-key.To)       
};


declare function local:table($component)
{
    let $hypercubes := $component.Hypercubes
    let $keys := keys($hypercubes)
    return
        if (count($keys) gt 1)
        then $keys[$$ ne "xbrl:DefaultHypercube"]
        else "bizql:ImpliedTable"
};

declare function local:disclosure($component)
{
    let $disclosure := $component.Profiles.SEC.Disclosure
    return if (exists($disclosure)) then $disclosure else "UncategorizedInformation"
};

declare function local:component-summary($component)
{
    {
        ComponentId : $component._id,
        AccessionNumber : $component.Archive,
        NetworkLabel : $component.Label,
        NetworkIdentifier : $component.Role,
        Category : local:category($component),
        SubCategory : local:sub-category($component),
        Table : local:table($component),
        Disclosure : local:disclosure($component)
    }
};

declare function local:sub-category($component) as string
{
    let $is-text-block := let $members := local:members($component)
                          let $concepts := local:concepts($component)
                          return
                            if (count($concepts) gt 1)
                            then false
                            else if ($members.$concepts.DataType eq "nonnum:textBlockItemType")
                            then true
                            else false
    return if ($is-text-block) then "TextBlock" else "Detail"
};

declare function local:category($component) as string
{
    normalize-space(tokenize($component.Label, "-")[2])
};

let $archive := archives:aid(request:param-values("accession"))
let $format := lower-case(substring-after(request:path(), ".jq."))
let $archiveObject := let $archive := archives:archives(request:param-values("accession"))
                      return if (empty($archive))
                             then error(xs:QName("local:PARAMETER-MISSING"))
                             else $archive
let $cik := entities:entities($archiveObject.Entity)._id
let $entity-registrant-name := entities:entities($archiveObject.Entity).Profiles.SEC.CompanyName
let $res := { 
                AccessionNumber : $archive,
                CIK : $cik,
                EntityRegistrantName : $entity-registrant-name,
                Components: [ for $a in if (exists($archive))
                                       then components:components-for-archives($archive)
                                       else error(xs:QName("local:foo"))
                             let $disclosure := local:disclosure($a)
                             where $disclosure ne "DefaultComponent"
                             where count(keys(local:presentation($a).Trees)) gt 0
                             order by $a.Label
                             
                             return local:component-summary($a) ]
            }  
return
    switch ($format)
    case "xml"  return 
        <Components AccessionNumber="{$res.AccessionNumber}" 
                    EntityRegistrantName="{$res.EntityRegistrantName}"
                    CIK="{$cik}">{
            local:summary-to-xml($res.Components[])
        }</Components>
    case "text"  return
        string-join(local:to-csv($res.Components[]), "")
    default return $res