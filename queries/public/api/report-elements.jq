import module namespace api = "http://apps.28.io/api";

import module namespace session = "http://apps.28.io/session";

import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace hypercubes = "http://28.io/modules/xbrl/hypercubes";
import module namespace components = "http://28.io/modules/xbrl/components";
import module namespace concepts = "http://28.io/modules/xbrl/concepts";
import module namespace reports = "http://28.io/modules/xbrl/reports";
import module namespace concept-maps = "http://28.io/modules/xbrl/concept-maps";
import module namespace config = "http://apps.28.io/config";

import module namespace multiplexer = "http://28.io/modules/xbrl/profiles/multiplexer";

import module namespace mw = "http://28.io/modules/xbrl/mongo-wrapper";
 
import module namespace csv = "http://zorba.io/modules/json-csv";
import module namespace seq = "http://zorba.io/modules/sequence";


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

declare function local:concepts-for-archives(
    $aids as string*,
    $names as string*,
    $map as object?,
    $options as object?) as object*
{
    let $projection as object := if($options.OnlyNames eq true) then { Name: 1 } else {}
    let $concepts-computable-by-maps as object* := 
        switch(true)
            case not exists($map) return ()
            case not exists($names) return values($map.Trees)
            default return
                let $keys as string* := keys($map.Trees)
                for $concept as string in $names[$$ = $keys]
                return $map.Trees.$concept
    let $mapped-names as string* := (keys($concepts-computable-by-maps.To ), $concepts-computable-by-maps.To [].Name)
    let $concepts-not-computable-by-maps as string* := seq:value-except($names, $mapped-names)

    let $all-results as object* := mw:find($concepts:col, 
        {
            "Archive": { "$in" : [ $aids ] }
        },
        $projection)
    let $results-not-computed-by-maps as object* := mw:find($concepts:col, 
        {
            "Name" : { "$in" : [ $concepts-not-computable-by-maps ] },
            "Archive": { "$in" : [ $aids ] }
        },
        $projection)
    let $results-computed-by-maps as object* := 
        let $all-results as object* := mw:find($concepts:col, 
            {
                "Name" : { "$in" : [ $mapped-names ] },
                "Archive": { "$in" : [ $aids ] }
            },
            $projection)
        for $concept as object in $concepts-computable-by-maps
        for $result as object in
            for $candidate-concept in (keys($concept.To), $concept[].Name)
            let $facts := $all-results[$$.Name = $candidate-concept]
            where exists($facts)
            count $c
            where $c eq 1
            return $facts
        let $map-concept := (for $candidate in $concepts-computable-by-maps
                            where $result.Name = (keys($candidate.To), $candidate.To[].Name)
                            return $candidate)[1]
        return
            copy $n := $result
            modify (
                replace value of json $n.Name with $map-concept.Name,
                insert json  { Origin : $result.Name } into $n)
            return $n
    return if(empty($map) and empty($names))
           then $all-results
           else ($results-not-computed-by-maps, $results-computed-by-maps)
};

declare function local:concepts-for-archives-and-labels($aids as string*, $labels as string) as object*
{
   mw:run-cmd-deterministic(
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
declare  %rest:case-insensitive                 variable $token         as string?  external;
declare  %rest:case-insensitive                 variable $profile-name  as string  external := $config:profile-name;
declare  %rest:env                              variable $request-uri   as string   external;
declare  %rest:case-insensitive                 variable $format        as string?  external;
declare  %rest:case-insensitive %rest:distinct  variable $cik           as string*  external;
declare  %rest:case-insensitive %rest:distinct  variable $tag           as string*  external;
declare  %rest:case-insensitive %rest:distinct  variable $ticker        as string*  external;
declare  %rest:case-insensitive %rest:distinct  variable $sic           as string*  external;
declare  %rest:case-insensitive %rest:distinct  variable $fiscalYear    as string*  external := "LATEST";
declare  %rest:case-insensitive %rest:distinct  variable $fiscalPeriod  as string*  external := "FY";
declare  %rest:case-insensitive %rest:distinct  variable $aid           as string*  external;
declare  %rest:case-insensitive %rest:distinct  variable $label         as string*  external;
declare  %rest:case-insensitive                 variable $map           as string?  external;
declare  %rest:case-insensitive                 variable $report        as string?  external;
declare  %rest:case-insensitive %rest:distinct  variable $name          as string*  external;
declare  %rest:case-insensitive                 variable $onlyNames     as boolean? external := false;

session:audit-call($token);

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $fiscalYear as integer* := api:preprocess-fiscal-years($fiscalYear)
let $fiscalPeriod as string* := api:preprocess-fiscal-periods($fiscalPeriod)
let $tag as string* := api:preprocess-tags($tag)

(: Object resolution :)
let $entities := multiplexer:entities(
  $profile-name,
  $eid,
  $cik,
  $tag,
  $ticker,
  $sic)

let $archives as object* := multiplexer:filings(
  $profile-name,
  $entities,
  $fiscalPeriod,
  $fiscalYear,
  $aid)

let $entities as object* :=
    ($entities[$$._id = $archives.Entity],
    let $not-found := $archives.Entity[not $entities._id = $$]
    where exists($not-found)
    return entities:entities($not-found))
let $map as object? :=
    if(exists($report))
    then reports:concept-map($report)
    else concept-maps:concept-maps($map)
let $concepts :=
    if($profile-name eq "sec")
    then
        if (exists($label))
            then local:concepts-for-archives-and-labels($archives._id, $label[1])
            else local:concepts-for-archives($archives._id, $name, $map, { OnlyNames: $onlyNames })
    else
        if (exists($label))
            then local:concepts-for-archives-and-labels($aid, $label[1])
            else local:concepts-for-archives($aid, $name, $map, { OnlyNames: $onlyNames })

let $result :=
    if($profile-name eq "sec")
    then {
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
    else {
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
                let $metadata := {
                    ComponentRole : $component.Role,
                    ComponentLabel : $component.Label,
                    AccessionNumber : $archive._id,
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
return api:check-and-return-results($token, $results, $format)
