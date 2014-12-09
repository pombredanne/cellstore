import module namespace mw = "http://28.io/modules/xbrl/mongo-wrapper";
import module namespace mongo = "http://www.28msec.com/modules/mongodb";

(:
  Given an index name returns the name of the index first field
:)
declare function local:first-index-field($index as string) as string
{
  if (starts-with($index, "_"))
  then "_" || substring-before(substring($index, 2), "_")
  else substring-before($index, "_")
};

declare function local:check-index($conn as anyURI, $coll as string, $index as string) as object?
{
  let $field := local:first-index-field($index)
  return subsequence(mongo:find($conn, $coll, {"$query": {$field: {"$exists": true}} , "$hint": $index}, {$field: 1}),1,1)
};

let $indexes:=
  let $conn := mw:connection()
  for $coll in keys($mw:ALL-INDEXES)
  for $index in members($mw:ALL-INDEXES($coll))
  return local:check-index($conn, $coll, $index)
return 
  if (count($indexes) eq 14)
  then "OK"
  else error(QName("mw:TEST-FAIL"), "Expected 21 indexes, got " || count($indexes))
