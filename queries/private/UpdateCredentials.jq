import module namespace credentials = "http://www.28msec.com/modules/credentials";
let $category := "MongoDB"
let $name := "xbrl"
let $credentials :=     
  {
   "conn-string" : "portal.m0.mongolayer.com:27017",
   "db" : "all-dow30",
   "user" : "28msec",
   "pass" : "dsf789s7dyufn"
  }
return 
  if (credentials:credentials($category, $name))
  then credentials:update-credentials($category, $name, (), (), $credentials)
  else credentials:add-credentials($category, $name, $credentials)

