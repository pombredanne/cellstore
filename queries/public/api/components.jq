import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace csv = "http://zorba.io/modules/json-csv";
import module namespace session = "http://apps.28.io/session";

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

let $format   := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)
let $aid      := archives:aid(request:param-values("aid")[1])
let $archive  := archives:archives($aid)
let $entity   := entities:entities($archive.Entity)
return
    if (session:only-dow30($entity) or session:valid())
    then {
        for $a in $archive
        let $res := 
            { 
                CIK : $archive.Entity,
                EntityRegistrantName : $entity.Profiles.SEC.CompanyName,
                Components: [ for $c in components:components-for-archives($a)
                              let $disclosure := local:disclosure($c)
                              where $disclosure ne "DefaultComponent" and
                                    count(keys(local:presentation($c).Trees)) gt 0
                              order by $c.Label
                              return local:component-summary($c)
                            ]
            }  
        return
            switch ($format)
            case "xml" return 
                <Components EntityRegistrantName="{$res.EntityRegistrantName}"
                            CIK="{$res.CIK}">{
                local:summary-to-xml($res.Components[])
            }</Components>
            case "text"  return string-join(local:to-csv($res.Components[]), "")
            default return $res
    } else {
        response:status-code(401);
        session:error("accessing components of an entity that is not in the DOW30", $format)
    }