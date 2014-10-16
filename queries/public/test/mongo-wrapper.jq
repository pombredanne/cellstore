import module namespace mw = "http://28.io/modules/xbrl/mongo-wrapper";
import module namespace mongo = "http://www.28msec.com/modules/mongodb";

declare function local:first-index-filed($index as string) as string
{
  if (starts-with($index, "_"))
  then "_" || substring-before(substring($index, 2), "_")
  else substring-before($index, "_")
};

declare function local:check-index($conn as anyURI, $coll as string, $index as string) as object
{
  let $field := local:first-index-filed($index)
  return subsequence(mongo:find($conn, $coll, {"$query": {$field: {"$exists": true}} , "$hint": $index}, {$field: 1}),1,1)
};

let $indexes:=
  let $conn := mw:connection()
  for $coll in keys($mw:ALL-INDEXES)
  for $index in members($mw:ALL-INDEXES($coll))
  return local:check-index($conn, $coll, $index)
return 
  if (count($indexes) eq 21)
  then "OK"
  else error(QName("mw:TEST-FAIL"), "Expected 21 indexes, got " || count($indexes))
  
 

(:)
{ "archives" : [ "_id_", "Entity_hashed" ], "components" : [ "_id_", "Archive_hashed", "Profiles.SEC.Disclosure_hashed", "Role_hashed" ], "concepts" : [ "_id_", "Archive_1_Role_1_Name_1", "Name_1_Archive_1" ], "entities" : [ "_id_", "Profiles.SEC.CompanyType_hashed", "Profiles.SEC.SIC_hashed", "Profiles.SEC.Sector_hashed", "Profiles.SEC.Tags_1", "Profiles.SEC.Tickers_1" ], "facts" : [ "_id_", "Aspects.xbrl:Concept_1_Aspects.xbrl:Entity_1_Aspects.sec:FiscalYear_1_Aspects.sec:FiscalPeriod_1", "Aspects.sec:Archive_1_Aspects.xbrl:Concept_1" ], "footnotes" : [ "_id_", "Archive_hashed", "Facts._id_1_Lang_1" ] }:)