import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";
import module namespace user = "http://apps.28.io/user";
import module namespace reports = "http://apps.28.io/reports";

declare namespace api = "http://apps.28.io/api";

try {
    
    (: ### INIT PARAMS :)
    let $validation-only := request:param-values("validation-only")
    let $public-read := 
      let $pr := request:param-values("public-read")
      return ($pr eq "" or boolean($pr))
    let $private := 
      let $p := request:param-values("private")
      return ($p eq "" or boolean($p))
    let $authenticated-user := user:get-existing-by-id(session:validate())
    let $report as object? := 
       let $body := request:text-content()
       return 
            if(exists($body))
            then 
                let $r := parse-json($body)
                return
                    switch(true)
                    case ($private) return reports:make-private-read($r)
                    case ($public-read) return reports:make-public-read($r)
                    default return $r
            else ()
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
        
        (: ### AUTHENTICATION :)
        case not(session:valid()) return {
            response:status-code(401);
            session:error("Unauthorized: Login required", "json")
        }
        
        (: ### AUTHORIZATION :)
        (: user authorized to validate report? :)
        case (exists($validation-only) and not(session:valid("reports_validate"))) 
        
        (: user authorized to update report? :)
        case (exists($id) and exists($existing-report) and 
            (not(session:valid("reports_edit")) or not(reports:has-report-access-permission($existing-report, $authenticated-user.email, "WRITE"))))
        
        (: user authorized to create a report? :)
        case (exists($id) and empty($existing-report) and 
              not(session:valid("reports_create")))
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
        case (exists($validation-only) and ($validation-only eq "" or boolean($validation-only)))
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
            
            if (is-available-collection("reportcache"))
            then truncate("reportcache");
            else create("reportcache");
            
            let $report := reports:validate-and-update-report-properties($report, $existing-report, $authenticated-user.email)
            return
                {
                    db:edit($existing-report,$report);
                    $report
                }
        }
        
        (: create new report :)
        default
        return {
            response:content-type("application/json");
            response:serialization-parameters({"indent" : true});
            
            if (is-available-collection("reportcache"))
            then truncate("reportcache");
            else create("reportcache");
            
            let $report := reports:validate-and-update-report-properties($report, $existing-report, $authenticated-user.email)
            return
                {
                    db:insert("reports", $report);
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
} catch api:missing-parameter {
    if(exists($err:value) and $err:value.parameter eq "token")
    then
    {
        response:status-code(401);
        session:error("Unauthorized: Login required (token missing)", "json")
    }
    else 
    {
        response:status-code(400);
        session:error($err:description, "json")
    }
}
