import module namespace util = "http://secxbrl.info/modules/util";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace concept-maps = "http://xbrl.io/modules/bizql/concept-maps";

import module namespace companies2 = "http://xbrl.io/modules/bizql/profiles/sec/companies2";
import module namespace fiscal-core = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace fiscal-core2 = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core2";

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

declare function local:concepts-for-archives($aids as string*) as object*
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
        })
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

session:audit-call();

(: Query parameters :)
let $format as string?         := request:param-values("format")
let $ciks as string*           := distinct-values(request:param-values("cik"))
let $tags as string*           := distinct-values(request:param-values("tag"))
let $tickers as string*        := distinct-values(request:param-values("ticker"))
let $sics as string*           := distinct-values(request:param-values("sic"))
let $fiscalYears as string*    := distinct-values(request:param-values("fiscalYear", "LATEST"))
let $fiscalPeriods as string*  := distinct-values(request:param-values("fiscalPeriod", "FY"))
let $aids as string*           := distinct-values(request:param-values("aid"))
let $labels as string*         := request:param-values("label")
let $map as string?            := request:param-values("map")
let $names as string*          := request:param-values("name")

(: Post-processing :)
let $format as string? := (: backwards compatibility, to be deprecated  :)
    lower-case(($format, substring-after(request:path(), ".jq."))[1])
let $tags as string* := (: backwards compatibility, to be deprecated :)
    distinct-values($tags ! upper-case($$))
let $fiscalYears as integer* :=
    for $fy in $fiscalYears ! upper-case($$)
    return switch($fy)
           case "LATEST" return $fiscal-core2:LATEST_FISCAL_YEAR
           case "ALL" return $fiscal-core:ALL_FISCAL_YEARS
           default return if($fy castable as integer) then integer($fy) else ()
let $fiscalPeriods as string* :=
    for $fp in $fiscalPeriods ! upper-case($$)
    return switch($fp)
           case "ALL" return $fiscal-core:ALL_FISCAL_PERIODS
           default return $fp


(: Object resolution :)
let $entities := 
    companies2:companies(
        $ciks,
        $tags,
        $tickers,
        $sics)
let $archives as object* := fiscal-core2:filings(
    $entities,
    $fiscalPeriods,
    $fiscalYears,
    $aids)
let $entities    := entities:entities($archives.Entity)
let $onlyNames   := let $o := request:param-values("onlyNames")[1] return if (exists($o)) then ($o cast as boolean) else false

let $concepts := if (exists($names))
                  then local:concepts-for-archives($archives._id, $names, $map)
                  else if (exists($labels))
                  then local:concepts-for-archives-and-labels($archives._id, $labels[1])
                  else local:concepts-for-archives($archives._id)
let $result := { Concepts : [ if ($onlyNames) 
            then distinct-values($concepts.Name)
            else for $c in $concepts
                 group by $component := $c.Component
                 let $component := components:components($component)
                 let $default-hc := hypercubes:hypercubes-for-components($component, "xbrl:DefaultHypercube")
                 let $members := $default-hc.Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain".Members
                 let $archive := archives:archives($c[1].Archive)
                 let $entity := entities:entities($archive.Entity)
                 return
                     for $name in if (exists($c.Origin)) then $c.Origin else $c.Name
                     return
                         copy $res := $members.$name
                         modify (
                            replace value of json $res.Name with $c.Name,
                            if (exists($c.Origin))
                            then insert json { Origin : $c.Origin } into $res
                            else (),
                            insert json { ComponentRole : $component.Role } into $res,
                            insert json { ComponentLabel : $component.Label } into $res,
                            insert json { AccessionNumber : $archive._id } into $res,
                            insert json { CIK : $entity._id } into $res,
                            insert json { EntityRegistrantName : $entity.Profiles.SEC.CompanyName } into $res,
                            insert json { FiscalYear : $archive.Profiles.SEC.Fiscal.DocumentFiscalYearFocus } into $res,
                            insert json { FiscalPeriod : $archive.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus } into $res
                         )
                         return $res ] }
let $comment := {
    NumConcepts: count($concepts),
    TotalNumConcepts: session:num-concepts()
}
let $serializers := {
    to-xml : function($res as object) as node() {
        <ReportElements>{
                    local:to-xml($res.Concepts[], $onlyNames)
                }</ReportElements>
    },
    to-csv : function($res as object) as string {
        local:to-csv($res.Concepts[], $onlyNames)
    }
}
let $results := util:serialize($result, $comment, $serializers, $format, "report-elements")
return 
    util:check-and-return-results($entities, $results, $format)
