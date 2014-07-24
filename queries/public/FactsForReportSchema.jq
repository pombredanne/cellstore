(: SVS OK :)
import module namespace report-schemas = "http://xbrl.io/modules/bizql/report-schemas";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace networks = "http://xbrl.io/modules/bizql/networks";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace components2 = "http://xbrl.io/modules/bizql/components2";
import module namespace reports = "http://xbrl.io/modules/bizql/reports";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

import module namespace seq = "http://zorba.io/modules/sequence";

session:audit-call();

let $format  := lower-case(request:param-values("format")[1])
let $aids     := request:param-values("aid")
let $report   := request:param-values("report")[1]
let $report-object   := reports:reports($report)

let $archives := archives:archives(distinct-values($aids))
let $entities := entities:entities($archives.Entity)
return switch(true)
    case empty($archives) return {
        response:status-code(404);
        session:error("entities or archives not found (valid parameters: aid)", $format)
    }
    case empty($report-object) return {
        response:status-code(404);
        session:error("report does not exist", $report)
    }
    default return
      switch(session:check-access($entities, "data_sec"))
      case $session:ACCESS-ALLOWED return {
        let $cached-archives := store:find("reportcache", { _id : { "$in" : [ $archives._id ! ($report || $$)]}})
        let $noncached-archives := seq:value-except($archives._id, $cached-archives._id ! substring-after($$, $report))
        let $facts := components2:facts($report-object,
            {
                FilterOverride: {
                    "sec:Archive" : {
                        Type: "string",
                        Domain : [archives:aid($noncached-archives)]
                    }
                }
            }
        )
        let $network as object :=
            networks:networks-for-components-and-short-names($report-object, "Presentation")
        let $computed-archives :=
            for $facts-by-archive in $facts
            let $archive := $archives[$$._id eq $facts-by-archive.Archive]
            group by $archive._id
            return
                copy $result := $network
                modify (
                    insert json { Generator: $archive[1].Profiles.SEC.Generator } into $result,
                    for $concept in descendant-objects(values($result.Trees))[exists($$.Name)]
                    let $name := $concept.Name
                    return (
                        insert json {
                            "Facts" : [ $facts-by-archive[$$.$facts:ASPECTS.$facts:CONCEPT eq $name] ]
                        } into $concept
                    ),
                    insert json { "_id" : $report || $archive[1]._id } into $result)
                return
                    $result
        return  {
            if (exists($computed-archives))
            then db:insert("reportcache", $computed-archives);
            else ();
            [ $cached-archives, $computed-archives ] 
        }
      }
    case $session:ACCESS-DENIED return {
          response:status-code(403);
          session:error("accessing filings of an entity that is not in the DOW30", $format)
       }
    case $session:ACCESS-AUTH-REQUIRED return {
          response:status-code(401);
          session:error("authentication required or session expired", $format)
       }
    default return error()
