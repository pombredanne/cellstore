module namespace mw = "http://28.io/modules/xbrl/mongo-wrapper";

import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";

(: Indexes declarations :)
declare variable $mw:ARCHIVES-ID as string := "_id_";
declare variable $mw:ARCHIVES-ENTITY as string := "Entity_hashed";

declare variable $mw:COMPONENTS-ID as string := "_id_";
declare variable $mw:COMPONENTS-ARCHIVE as string := "Archive_hashed";
declare variable $mw:COMPONENTS-PROFILE_SEC_DISCLOSURE as string := "Profiles.SEC.Disclosure_hashed";
declare variable $mw:COMPONENTS-ROLE as string := "Role_hashed";

declare variable $mw:CONCEPTS-ID as string := "_id_";
declare variable $mw:CONCEPTS-ARCHIVE-ROLE-NAME as string := "Archive_1_Role_1_Name_1";
declare variable $mw:CONCEPTS-NAME-ARCHIVE as string := "Name_1_Archive_1";

declare variable $mw:ENTITIES-ID as string := "_id_";
declare variable $mw:ENTITIES-PROFILES_SEC_COMPANYTYPE as string := "Profiles.SEC.CompanyType_hashed";
declare variable $mw:ENTITIES-PROFILES_SEC_SIC as string := "Profiles.SEC.SIC_hashed";
declare variable $mw:ENTITIES-PROFILES_SEC_SECTOR as string := "Profiles.SEC.Sector_hashed";
declare variable $mw:ENTITIES-PROFILES_SEC_TAGS as string := "Profiles.SEC.Tags_1";
declare variable $mw:ENTITIES-PROFILES_SEC_TICKERS as string := "Profiles.SEC.Tickers_1";

declare variable $mw:FACTS-ID as string := "_id_";
declare variable $mw:FACTS-AXCONCEPT_AXENTITY_ASFY_ASFP as object := "Aspects.xbrl:Concept_1_Aspects.xbrl:Entity_1_Aspects.sec:FiscalYear_1_Aspects.sec:FiscalPeriod_1";
declare variable $mw:FACTS-ASARCHIVE_AXCONCEPT as object := "Aspects.sec:Archive_1_Aspects.xbrl:Concept_1";

declare variable $mw:FOOTNOTES-ID as string := "_id_";
declare variable $mw:FOOTNOTES-ARCHIVE as string := "Archive_hashed";
declare variable $mw:FOOTNOTES-FACTS-LANG as string := "Facts._id_1_Lang_1";

declare variable $mw:ALL-INDEXES :=
{
  "archives" : [ $mw:ARCHIVES-ID, $mw:ARCHIVES-ENTITY ], 
  "components": [ $mw:COMPONENTS-ID, $mw:COMPONENTS-ARCHIVE, $mw:COMPONENTS-PROFILE_SEC_DISCLOSURE, $mw:COMPONENTS-ROLE ],
  "concepts": [ $mw:CONCEPTS-ID, $mw:CONCEPTS-ARCHIVE-ROLE-NAME, $mw:CONCEPTS-NAME-ARCHIVE ],  
  "entities": [ $mw:ENTITIES-ID, $mw:ENTITIES-PROFILES_SEC_COMPANYTYPE, $mw:ENTITIES-PROFILES_SEC_SIC, 
               $mw:ENTITIES-PROFILES_SEC_SECTOR, $mw:ENTITIES-PROFILES_SEC_TAGS, $mw:ENTITIES-PROFILES_SEC_TICKERS ],
  "facts": [ $mw:FACTS-ID, $mw:FACTS-AXCONCEPT_AXENTITY_ASFY_ASFP, $mw:FACTS-ASARCHIVE_AXCONCEPT ],
  "footnotes": [ $mw:FOOTNOTES-ID, $mw:FOOTNOTES-ARCHIVE, $mw:FOOTNOTES-FACTS-LANG ]
};

declare %an:strictlydeterministic function mw:connection() as anyURI
{
  let $credentials :=
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return if (empty($credentials))
             then error(QName("mw:CONNECTION-FAILED"), "no xbrl MongoDB configured")
             else $credentials
  return
    try {
      mongo:connect($credentials)
    } catch mongo:* {
      error(QName("mw:CONNECTION-FAILED"), $err:description)
    }
};

declare function mw:find($collection as string, $query as object) as object()*
{
  let $conn := mw:connection()
  return mongo:find($conn, $collection, mw:hint($collection, $query))
};

declare function mw:find($collection as string, $query as object, $projection as object) as object()*
{
  let $conn := mw:connection()
  return mongo:find($conn, $collection, mw:hint($collection, $query), $projection)
};

declare function mw:run-cmd-deterministic($command as object) as object*
{
  let $conn := mw:connection()
  return mongo:run-cmd-deterministic($conn, $command)
};

declare %private function mw:hint($collection as string, $query as object) as object
{
  switch($collection)
    case "archives"
      return mw:archives-hint($query)
    case "components"
      return mw:components-hint($query)
    case "concepts"
      return mw:concepts-hint($query)
    case "entities"
      return mw:entities-hint($query)
    case "facts"
      return mw:facts-hint($query)
    case "footnotes"
      return mw:footnotes-hint($query)
    default
      return $query
};

declare %private function mw:archives-hint($query as object) as object
{
  switch (true)
    case (exists($query("_id")))
      return { "$query": $query, "$hint": "_id_" }
    case (exists($query("Entity")))
      return { "$query": $query, "$hint": "Entity_hashed" }
    default
      return $query
};

declare %private function mw:components-hint($query as object) as object
{
  switch (true)
    case (exists($query("_id")))
      return { "$query": $query, "$hint": "_id_" }
    case (exists($query("Archive")))
      return { "$query": $query, "$hint": "Archive_hashed" }
    case (exists($query("Profiles.SEC.Disclosure")))
      return { "$query": $query, "$hint": "Profiles.SEC.Disclosure_hashed" }
    case (exists($query("Role")))
      return { "$query": $query, "$hint": "Role_hashed" }  
    default
      return $query
};

declare %private function mw:concepts-hint($query as object) as object
{
  switch (true)
    case (exists($query("_id")))
      return { "$query": $query, "$hint": "_id_" }
    case (exists($query("Archive")) and exists($query("Role")))
      return { "$query": $query, "$hint": "Archive_1_Role_1_Name_1" }
    case (exists($query("Archive")) and exists($query("Name")))
      return { "$query": $query, "$hint": "Name_1_Archive_1" }
    case (exists($query("Archive")))
      return { "$query": $query, "$hint": "Archive_1_Role_1_Name_1" }
    default
      return $query
};

declare %private function mw:entities-hint($query as object) as object
{
  switch (true)
    case (exists($query("_id")))
      return { "$query": $query, "$hint": "_id_" }
    case (exists($query("Profiles.SEC.CompanyType")))
      return { "$query": $query, "$hint": "Profiles.SEC.CompanyType_hashed" }
    case (exists($query("Profiles.SEC.SIC")))
      return { "$query": $query, "$hint": "Profiles.SEC.SIC_hashed" }
    case (exists($query("Profiles.SEC.Sector")))
      return { "$query": $query, "$hint": "Profiles.SEC.Sector_hashed" }
    case (exists($query("Profiles.SEC.Tags")))
      return { "$query": $query, "$hint": "Profiles.SEC.Tags_1" }
    case (exists($query("Profiles.SEC.Tickers")))
      return { "$query": $query, "$hint": "Profiles.SEC.Tickers_1" }
    default
      return $query
};

declare %private function mw:facts-hint($query as object) as object
{
    switch (true)
    case (exists($query("_id")))
      return { "$query": $query, "$hint": "_id_" }
    case (exists($query("Aspects.xbrl:Concept")) and 
          exists($query("Aspects.xbrl:Entity")) and 
          exists($query("Aspects.sec:FiscalYear")) and 
          exists($query("Aspects.sec:FiscalPeriod")))
      return { "$query": $query, "$hint": "Aspects.xbrl:Concept_1_Aspects.xbrl:Entity_1_Aspects.sec:FiscalYear_1_Aspects.sec:FiscalPeriod_1" }
    case (exists($query("Aspects.sec:Archive")) and exists($query("Aspects.xbrl:Concept")))
      return { "$query": $query, "$hint": "Aspects.sec:Archive_1_Aspects.xbrl:Concept_1" }
    default
      return $query
};

declare %private function mw:footnotes-hint($query as object) as object
{
    switch (true)
    case (exists($query("_id")))
      return { "$query": $query, "$hint": "_id_" }    
    case (exists($query("Archive")))
      return { "$query": $query, "$hint": "Archive_hashed" }
    case (exists($query("Facts._id")) and exists($query("Lang")))
      return { "$query": $query, "$hint": "Facts._id_1_Lang_1" }
    default
      return $query
};
