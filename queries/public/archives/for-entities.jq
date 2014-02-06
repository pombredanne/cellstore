import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace req = "http://www.28msec.com/modules/http-request";

(:
  Retrieve the archives filed by the supplied entities.
  Many BizQL functions, like archives-for-entities, accept sequences.
:)

let $cik:= req:param-values("cik", ("0000021344","0000012927"))
for $c in $cik

return archives:archives-for-entities(sec:normalize-cik($c))
