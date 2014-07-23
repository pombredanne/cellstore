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

let $format      := lower-case((request:param-values("format"), substring-after(request:path(), ".jq."))[1])
let $ciks        := distinct-values(companies:eid(request:param-values("rut")))
let $tags        := distinct-values(request:param-values("tag") ! upper-case($$))
let $tickers     := distinct-values(request:param-values("ticker"))
let $sics        := distinct-values(request:param-values("sic"))
let $fiscalYears := distinct-values(
                        for $y in request:param-values("fiscalYear", "LATEST")
                        return
                            if ($y eq "LATEST" or $y eq "ALL")
                            then $y
                            else if ($y castable as integer)
                            then $y cast as integer
                            else ()
                    )
let $fiscalPeriods := distinct-values(let $fp := request:param-values("fiscalPeriod", "FY")
                      return
                        if (($fp ! lower-case($$)) = "all")
                        then ("Q1", "Q2", "Q3", "Q4", "FY")
                        else $fp)
let $aids        := archives:aid(request:param-values("aid"))
let $archives    := (
                        local:filings($ciks, $tags, $tickers, $sics, $fiscalPeriods, $fiscalYears),
                        archives:archives($aids)
                    )
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
