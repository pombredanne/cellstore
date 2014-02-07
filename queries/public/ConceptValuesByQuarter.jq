jsoniq version "1.0";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace concept-maps = "http://xbrl.io/modules/bizql/concept-maps";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace req = "http://www.28msec.com/modules/http-request";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";
import module namespace datetime = "http://www.zorba-xquery.com/modules/datetime";



declare function local:sample-fact($archives, $concept) as object*
{
  let $conn :=   let $credentials :=
                                   let $credentials := credentials:credentials("MongoDB", "xbrl")
                                            return if (empty($credentials))
                                                           then error(QName("facts:CONNECTION-FAILED"), "no xbrl MongoDB configured")
                                           else $credentials
                                                           return
                                                                        try {
                                                                                mongo:connect($credentials)
                                                                        } catch mongo:* {
                                                                                error(QName("facts:CONNECTION-FAILED"), $err:description)
                                                                        }
  return mongo:find($conn, $facts:col,
                                                {
                                                  Archive : { "$in" : [ $archives ] },
                                                  "Aspects.xbrl:Concept" : $concept
                                                },
                                                { "to-return" : 1})
};


variable $cik := let $cik := req:param-values("cik","0000104169")
                 return if (empty($cik))
                            then error(QName("local:INVALID-REQUEST"), "cik: mandatory parameter not found")
                            else $cik;

variable $entity := let $entity := entities:entities(sec:normalize-cik($cik))
                    return if (empty($entity))
                           then  error(QName("local:INVALID-REQUEST"), "Given CIK:"||$cik|| " not found")
                           else  $entity;


variable $mapName := let $mapName := req:param-values("map","FundamentalAccountingConcepts")
                     return if(not(exists(concept-maps:concept-maps($mapName))))
                            then error(QName("local:INVALID-REQUEST"), "Given map:"||$mapName|| " not found")
                            else $mapName;


variable $concept := let $concept := req:param-values("conceptName","fac:NetIncomeLoss")
                     return if (empty($concept))
                            then error(QName("local:INVALID-REQUEST"),"conceptName: mandatory parameter not found")
                            else  $concept;
 
variable $conceptMap := if ($mapName eq "None") 
                    then ()
                    else concept-maps:concept-maps($mapName);
                               
variable $startYear :=  req:param-values("startYear","2000") cast as integer;
variable $endYear := req:param-values("endYear","3000") cast as integer;

variable $archives := archives:archives-for-entities($entity)
    [sec-fiscal:fiscal-year($$) cast as integer ge $startYear]
    [sec-fiscal:fiscal-year($$) cast as integer le $endYear];    

variable $fiscalPeriods := if(exists($conceptMap)) then ("FY","Q1","Q2","Q3")
                          else {
                             let $sampleFact := local:sample-fact($archives, $concept)
                             return if(exists($sampleFact) and exists(facts:instant-for-fact($sampleFact))) then ("FY","Q1","Q2","Q3")
                             else ("FY","YTD1","YTD2","YTD3")
                          };
let $res := 
    let $facts := 
        for $f in if(exists($conceptMap)) 
                  then sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years($entity,$concept, $fiscalPeriods, $startYear to $endYear, { "concept-maps" : [ $conceptMap ] } )
                  else sec-fiscal:facts-for-entities-and-concepts-and-fiscal-periods-and-years($entity,$concept, $fiscalPeriods, $startYear to $endYear)
        return {|
            $f,
            { AcceptanceDatetime : archives:archives($f.Archive).Profiles.SEC.AcceptanceDatetime cast as integer,
              DocEndDate: if(facts:instant-for-fact($f)) then facts:instant-for-fact($f) else facts:duration-for-fact($f).End
            }
        |}
    for $fact in $facts
    order by $fact.AcceptanceDatetime descending
    group by $fact.Profiles.SEC.Fiscal.Year, $fact.Profiles.SEC.Fiscal.Period 
    order by $fact[1].DocEndDate ascending
    
    (:let $value := if ($fact.Value castable as decimal)
                  then $fact.Value cast as decimal
                  else $fact.Value  :) 
    return {
        fiscalPeriod: $fact[1].Profiles.SEC.Fiscal.Period,
        fiscalYear: $fact[1].Profiles.SEC.Fiscal.Year,
        unit: $fact[1].Aspects."xbrl:Unit",
        value: if ($fact[1].Value castable as decimal)
                  then $fact[1].Value cast as decimal
                  else $fact[1].Value,
        decimals: $fact[1].Decimals
    }
return {
    cik: $cik,
    companyName: $entity.Profiles.SEC.CompanyName,
    map: $mapName,
    concept: $concept,
    valuesByQuarter: $res
    
    (:entity: $entity,
    archive: serialize($archive):)
}

(: seccore:latest-main-fact-for-concept must be renamed to seccore:main-facts-for-archives-and-concepts() after the next merge :)