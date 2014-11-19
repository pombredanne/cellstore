import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace session = "http://apps.28.io/session";
import module namespace user = "http://apps.28.io/user";
import module namespace reports = "http://apps.28.io/reports";
import module namespace archive = "http://zorba.io/modules/archive";

import schema namespace mongos = "http://www.28msec.com/modules/mongodb/types";

(: Query parameters :)
declare %rest:body-text        variable $body-text        as string external;
(: in case of an import the body is a zip binary :)
declare %rest:body-binary      variable $body-binary      as base64Binary external; 
declare %rest:case-insensitive variable $token            as string  external;
declare %rest:case-insensitive variable $validation-only  as boolean external := false;
declare %rest:case-insensitive variable $public-read      as boolean external := false;
declare %rest:case-insensitive variable $private          as boolean external := false;
declare %rest:case-insensitive variable $import           as boolean external := false;
declare %rest:case-insensitive variable $_id              as string? external;
declare %rest:case-insensitive variable $label            as string? external;

try {
    (: ### INIT PARAMS :)
    let $body as string := 
        if($import)
        then
            archive:extract-text(base64Binary($body-binary))[1]
        else
            $body-text
    let $authenticated-user := user:get-existing-by-id(session:ensure-valid($token))
    let $report as object? :=
        if(exists($body))
        then 
            let $r := parse-json($body)
            return
                switch(true)
                case ($private) return reports:make-private-read($r)
                case ($public-read) return reports:make-public-read($r)
                default return $r
        else ()
    let $report as object? :=
        if(exists($report) and (exists(($_id, $label))))
        then
            copy $rep := $report
            modify (
                    if(exists($_id)) then replace value of json $rep._id with $_id else (),
                    if(exists($label)) then replace value of json $rep.Label with $label else ()
                )
            return $rep
        else $report
    let $id as string? := 
        if(exists($report))
        then $report."_id"
        else ()
    let $existing-report as object? := 
        if(exists($id))
        then find("reports", { "_id" :  $id })
        else ()
    
    return 
        switch (true)
        
        (: ### AUTHORIZATION :)
        (: user authorized to validate report? :)
        case ($validation-only and not(session:has-right($token, "reports_validate"))) 
        
        (: user authorized to update report? :)
        case (exists($id) and exists($existing-report) and 
            (not(session:has-right($token, "reports_edit")) or not(reports:has-report-access-permission($existing-report, $authenticated-user.email, "WRITE"))))
        
        (: user authorized to create a report? :)
        case (exists($id) and empty($existing-report) and 
              not(session:has-right($token, "reports_create")))
        return {
            response:status-code(403);
            session:error("Forbidden: You are not authorized to access the requested resource", "json")
        }
        
        (: ### BAD REQUEST HANDLING :)
        case (empty($report))
        return {
            response:status-code(400);
            session:error("mandatory request content missing", "json")
        }
        
        case ((empty($id) or $id eq "") and exists($report))
        return {
            response:status-code(400);
            session:error("report: mandatory _id field missing or empty in report object", "json")
        }
        
        (: ### MAIN WORK :)
        (: report validation :)
        case ($validation-only)
        return {
            response:content-type("application/json");
            response:serialization-parameters({"indent" : true});
            
            [
                reports:validate($report)
            ]
        }
         
        (: update existing report :)
        case (exists($existing-report))
        return {
            response:content-type("application/json");
            response:serialization-parameters({"indent" : true});
            
            let $report := reports:validate-and-update-report-properties($report, $existing-report, $authenticated-user.email)
            return
                {
                    db:edit($existing-report,$report);
                    if (is-available-collection("reportcache"))
                    then db:delete(find("reportcache", { "_id" : { "$regex" : mongos:regex("^" || $existing-report."_id" || ".*" ) }}));
                    else create("reportcache");
            
                    $report
                }
        }
        
        (: create new report :)
        default
        return {
            response:content-type("application/json");
            response:serialization-parameters({"indent" : true});
            
            let $report := reports:validate-and-update-report-properties($report, $existing-report, $authenticated-user.email)
            return
                {
                    db:insert("reports", $report);
                    if (is-available-collection("reportcache"))
                    then 
                        if(exists($id))
                        then db:delete(find("reportcache", { "_id" : { "$regex" : mongos:regex("^" || $id || ".*" ) }}));
                        else ();
                    else create("reportcache");
                    
                    $report
                }
        }
} catch reports:UNAUTHORIZED {
    {
        response:status-code(403);
        session:error("Access denied: " || $err:description, "json")
    }
} catch reports:CONFLICT {
    {
        response:status-code(409);
        session:error("Conflict: " || $err:description, "json")
    }
} catch session:expired {
    {
        response:status-code(401);
        session:error("Unauthorized: Login required (session expired)", "json")
    }
}
