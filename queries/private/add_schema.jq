(:insert("reportschemas", copy $o := collection("reportschemas")
modify replace value of json $o._id with "foo"
return $o):)
let $c:= find ("reportschemas",{ "_id": "foo" })
return delete($c)