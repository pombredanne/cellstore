import module namespace archives = "http://xbrl.io/modules/bizql/archives";

(:
  Retrieve an archive with its AID (Archive ID).
:)
let $id := "0001001039-13-000019"
return archives:archives($id)
