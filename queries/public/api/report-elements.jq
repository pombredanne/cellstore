import module namespace api = "http://apps.28.io/api";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace hypercubes = "http://28.io/modules/xbrl/hypercubes";
import module namespace components = "http://28.io/modules/xbrl/components";
import module namespace reports = "http://28.io/modules/xbrl/reports";
import module namespace concept-maps = "http://28.io/modules/xbrl/concept-maps";

import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";

import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";
 
import module namespace csv = "http://zorba.io/modules/json-csv";
import module namespace seq = "http://zorba.io/modules/sequence";

declare namespace concepts = "http://www.28msec.com/modules/bizql/concepts";

declare function local:to-csv($concepts as item*, $onlyNames as boolean) as string
{
    if ($onlyNames)
    then
        string-join(("Name", $concepts), "
")
    else
        string-join(csv:serialize($concepts, { serialize-null-as : "" }))
};

declare function local:to-xml($concepts as item*, $onlyNames as boolean) as element()*
{
    for $c in $concepts
    return
        <ReportElement>{
             if ($onlyNames)
             then
                <Name>{$c}</Name>
             else (
                <Name>{$c.Name}</Name>,
                <Label>{$c.Label}</Label>,
                <IsNillable>{$c.IsNillable}</IsNillable>,
                <IsAbstract>{$c.IsAbstract}</IsAbstract>,
                <PeriodType>{$c.PeriodType}</PeriodType>,
                <Balance>{$c.Balance}</Balance>,
                <SubstitutionGroup>{$c.SubstitutionGroup}</SubstitutionGroup>,
                <DataType>{$c.DataType}</DataType>,
                <BaseType>{$c.BaseType}</BaseType>,
                <ClosestSchemaBuiltinType>{$c.ClosestSchemaBuiltinType}</ClosestSchemaBuiltinType>,
                <IsTextBlock>{$c.IsTextBlock}</IsTextBlock>,
                <ComponentRole>{$c.ComponentRole}</ComponentRole>,  
                <ComponentLabel>{$c.ComponentLabel}</ComponentLabel>,
                <AccessionNumber>{$c.AccessionNumber}</AccessionNumber>,
                <CIK>{$c.CIK}</CIK>,
                <EntityRegistrantName>{$c.EntityRegistrantName}</EntityRegistrantName>,
                <FiscalYear>{$c.FiscalYear}</FiscalYear>,
                <FiscalPeriod>{$c.FiscalPeriod}</FiscalPeriod>
             )
        }</ReportElement>
};

declare function local:concepts-for-archives($aids as string*, $projection as object) as object*
{
    let $conn :=   
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return
        try {
            mongo:connect($credentials)
        } catch mongo:* {
            error(QName("concepts:CONNECTION-FAILED"), $err:description)
        }
    return
        mongo:find($conn, "concepts", 
        {
            "Archive": { "$in" : [ $aids ] }
        },
        $projection,
        {})
};

declare function local:concepts-for-archives($aids as string*, $names as string*, $map as string?) as object*
{
    let $conn :=   
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return
        try {
            mongo:connect($credentials)
        } catch mongo:* {
            error(QName("concepts:CONNECTION-FAILED"), $err:description)
        }
    let $map := if (exists($map)) then concept-maps:concept-maps($map) else ()
    
    let $all-concepts-computable-by-maps as string* := keys($map.Trees)

    let $concepts-computable-by-maps as object* := 
        for $c in $names[$$ = $all-concepts-computable-by-maps] 
        return $map.Trees.$c
    
    let $mapped-names := (keys($concepts-computable-by-maps.To ), $concepts-computable-by-maps.To [].Name)
        
    let $concepts-not-computable-by-maps as string* := seq:value-except($names, $mapped-names)
    let $results-not-computed-by-maps := mongo:find($conn, "concepts", 
        {
            "Name" : { "$in" : [ $concepts-not-computable-by-maps ] },
            "Archive": { "$in" : [ $aids ] }
        })
    let $results-computed-by-maps := 
        for $c in mongo:find($conn, "concepts", 
            {
                "Name" : { "$in" : [ $mapped-names ] },
                "Archive": { "$in" : [ $aids ] }
            })
        group by $c.Component
        let $c := $c[1]
        let $map-concept := (for $candidate in $concepts-computable-by-maps
                            where $c.Name = (keys($candidate.To), $candidate.To[].Name)
                            return $candidate)[1]
        return
            copy $n := $c
            modify (
                replace value of json $n.Name with $map-concept.Name,
                insert json  { Origin : $c.Name } into $n)
            return $n
    return ($results-not-computed-by-maps, $results-computed-by-maps)
};

declare function local:concepts-for-archives-and-labels($aids as string*, $labels as string) as object*
{
    let $conn :=
        let $credentials := credentials:credentials("MongoDB", "xbrl")
        return
            try {
                mongo:connect($credentials)
            } catch mongo:* {
                error(QName("components:CONNECTION-FAILED"), $err:description)
            }
    return mongo:run-cmd-deterministic(
        $conn,
        {
            "text" : "concepts",
            "filter" : { "Archive" : { "$in" : [ $aids ] } },
            "search" : $labels,
            "limit" : 100,
            "score" : { "$meta" : "textScore" },
            "sort" : { score: { "$meta" : "textScore" } }
        }).results[].obj
}; 

(: Query parameters :)
declare  %rest:case-insensitive                 variable $token         as string? external;
declare  (:%rest:env:)                          variable $request-uri   as string  external := ""; (: backward compatibility :)
declare  %rest:case-insensitive                 variable $format        as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $cik           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $tag           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker        as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $sic           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $fiscalYear    as string* external := "LATEST";
declare  %rest:case-insensitive %rest:distinct  variable $fiscalPeriod  as string* external := "FY";
declare  %rest:case-insensitive %rest:distinct  variable $aid           as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $label         as string* external;
declare  %rest:case-insensitive                 variable $map           as string? external;
declare  %rest:case-insensitive                 variable $report        as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $name          as string* external;

session:audit-call($token);

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $fiscalYear as integer* := api:preprocess-fiscal-years($fiscalYear)
let $fiscalPeriod as string* := api:preprocess-fiscal-periods($fiscalPeriod)
let $tag as string* := api:preprocess-tags($tag)

(: Object resolution :)
let $entities as object* := 
    companies:companies(
        $cik,
        $tag,
        $ticker,
        $sic)
let $archives as object* := fiscal-core:filings(
    $entities,
    $fiscalPeriod,
    $fiscalYear,
    $aid)
let $entities as object* :=
    ($entities[$$._id = $archives.Entity],
    let $not-found := $archives.Entity[not $entities._id = $$]
    where exists($not-found)
    return entities:entities($not-found))
let $onlyNames   := let $o := request:param-values("onlyNames")[1] return if (exists($o)) then ($o cast as boolean) else false
let $map as item* :=
    if(exists($report))
    then reports:concept-map($report)
    else $map

let $concepts := if (exists($name))
                 then local:concepts-for-archives($archives._id, $name, $map)
                 else if (exists($label))
                      then local:concepts-for-archives-and-labels($archives._id, $label[1])
                      else if($onlyNames)
                           then local:concepts-for-archives($archives._id, { Name: 1 })
                           else local:concepts-for-archives($archives._id, {})
let $result := {
    ReportElements : [
        if ($onlyNames) 
        then distinct-values($concepts.Name)
        else
            let $all-aids := $concepts.Archive
            let $roles := $concepts.Role
            let $components := components:components-for-archives-and-roles($all-aids, $roles)
            return
            for $concept in $concepts
            group by $archive := $concept.Archive,  $role := $concept.Role
            let $component as object := $components[$$.Archive eq $archive and $$.Role eq $role]
            let $default-hc as object := hypercubes:hypercubes-for-components($component, "xbrl:DefaultHypercube")
            let $members as object* := $default-hc.Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain".Members
            let $archive as object := $archives[$$._id eq $archive]
            let $entity as object := $entities[$$._id eq $archive.Entity]
            let $metadata := {
                ComponentRole : $component.Role,
                ComponentLabel : $component.Label,
                AccessionNumber : $archive._id,
                CIK : $entity._id,
                EntityRegistrantName : $entity.Profiles.SEC.CompanyName,
                FiscalYear : $archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus,
                FiscalPeriod : $archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus
            }
            for $concept in $concept
            let $original-name := ($concept.Origin, $concept.Name)[1]
            return {|
                project($concept, ("Name", "Origin")),
                trim($members.$original-name, "Name"),
                $metadata
            |}
    ]
}
let $comment := {
    NumConcepts: count($concepts),
    TotalNumConcepts: session:num-concepts()
}
let $serializers := {
    to-xml : function($res as object) as node() {
        <ReportElements>{
                    local:to-xml($res.ReportElements[], $onlyNames)
                }</ReportElements>
    },
    to-csv : function($res as object) as string {
        local:to-csv($res.ReportElements[], $onlyNames)
    }
}
let $results := api:serialize($result, $comment, $serializers, $format, "report-elements")
return api:check-and-return-results($token, $entities, $results, $format)
