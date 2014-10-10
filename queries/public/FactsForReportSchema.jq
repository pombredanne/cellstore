import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace networks = "http://28.io/modules/xbrl/networks";
import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace facts = "http://28.io/modules/xbrl/facts";
import module namespace components = "http://28.io/modules/xbrl/components";
import module namespace reports = "http://28.io/modules/xbrl/reports";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace session = "http://apps.28.io/session";
import module namespace api = "http://apps.28.io/api";

import module namespace seq = "http://zorba.io/modules/sequence";

(: Query parameters :)
declare  %rest:case-insensitive                 variable $token         as string? external;
declare  %rest:env                              variable $request-uri   as string  external;
declare  %rest:case-insensitive                 variable $format        as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $aid           as string* external;
declare  %rest:case-insensitive                 variable $report        as string? external;
declare  %rest:case-insensitive %rest:distinct  variable $fiscalPeriod  as string+ external := "FY";

session:audit-call($token);

(: Post-processing :)
let $format as string? := api:preprocess-format($format, $request-uri)
let $fiscalPeriod as string* := api:preprocess-fiscal-periods($fiscalPeriod)

(: Object resolution :)
let $report-object   := reports:reports($report)
let $archives := archives:archives(distinct-values($aid))
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
      switch(session:has-access($token, $entities, "data_sec"))
      case $session:ACCESS-ALLOWED return {
        let $cached-archives := store:find("reportcache", { _id : { "$in" : [ $archives._id ! ($report || $$)]}})
        let $noncached-archives := seq:value-except($archives._id, $cached-archives._id ! substring-after($$, $report))
        (: Fact resolution :)
        let $facts := components:facts($report-object,
            {
                FilterOverride: {
                    "sec:Archive" : {
                        Type: "string",
                        Domain : [archives:aid($noncached-archives)]
                    },
                    "sec:FiscalYear" : {
                        Type: "integer"
                    },
                    "sec:FiscalPeriod" : {
                        Type: "string"
                    },
                    "xbrl:Entity" : {
                    }
                }
            }
        )
        let $network as object :=
            networks:networks-for-components-and-short-names($report-object, "Presentation")
        let $computed-archives :=
            for $facts-by-archive in $facts
            let $archive := $archives[$$._id eq $facts-by-archive.$facts:ASPECTS."sec:Archive"]
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
            if(empty($fiscalPeriod))
            then [ $cached-archives, $computed-archives ] 
            else [
                for $archive in ($cached-archives, $computed-archives)
                return
                    copy $a := $archive
                    modify (
                        for $objects in descendant-objects($a)
                        where exists($objects.Facts)
                        let $factPositionsToRemove := 
                            for $f at $pos in $objects.Facts[]
                            where not($f.Aspects."sec:FiscalPeriod" = $fiscalPeriod)
                            return $pos
                        where exists($factPositionsToRemove)
                        return replace value of json $objects.Facts with [ $objects.Facts[][not position() = $factPositionsToRemove] ]
                        )
                    return $a
            ]
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
