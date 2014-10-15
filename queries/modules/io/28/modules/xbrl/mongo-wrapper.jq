module namespace mw = "http://28.io/modules/xbrl/mongo-wrapper";

import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";

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
