import module namespace reports = "http://apps.28.io/reports";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";
import module namespace user = "http://apps.28.io/user";

declare function local:isAllowed($report as object, $authenticated-user-email as string, $rights as string*) as boolean
{
    if($report.Owner eq $authenticated-user-email) 
    then true
    else 
        boolean(
            distinct-values(
                for $right in $report.ACL[]
                return
                    if($right.Grantee eq $authenticated-user-email and $right.Permission = $rights)
                    then true
                    else ()
            ))
};

declare function local:isPublicReadable($report as object) as boolean
{
    boolean(
        distinct-values(
            for $right in $report.ACL[]
            return
                if($right.Grantee eq "http://28.io/groups/AllUsers" and $right.Permission eq "READ")
                then true
                else ()
        ))
};

declare function local:ensurePublicRead($report as object) as object
{
    if(local:isPublicReadable($report))
    then $report
    else
        {|
            trim($report, "ACL"),
            { "ACL": [
                {
                      "Type": "Group",
                      "Grantee": "http://28.io/groups/AllUsers",
                      "Permission": "READ"
                },
                flatten($report.ACL)
            ]}
        |}
};

declare function local:ensurePrivateRead($report as object) as object
{
    if(local:isPublicReadable($report))
    then 
        {|
            trim($report, "ACL"),
            { "ACL": [
                for $ac in flatten($report.ACL)
                where not($ac.Type eq "Group" and $ac.Grantee eq "http://28.io/groups/AllUsers")
                return
                    $ac
            ]}
        |}
    else $report
};

declare function local:ensureReportProperties($report as object, $existing-report as object?, $authenticated-user-email as string) as object
{
    let $report :=
        if(empty($existing-report))
        then $report
        else 
            if($existing-report.LastModified eq $report.LastModified)
            then $report
            else 
                error(xs:QName("reports:conflict"), "The stored report (last modified: " || $existing-report.LastModified 
                      || ") contains changes that are newer than the report (last modified: " || $report.LastModified || ") to store.")
    return 
        copy $r := $report
        modify (
            if(exists($report.LastModified))
            then replace value of json $r.LastModified with string(current-dateTime())
            else insert json { "LastModified": string(current-dateTime()) } into $r,
            if(empty($r.Owner))
            then insert json { "Owner": $authenticated-user-email } into $r
            else ()
        )
        return $r
};

try {
    
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
                    case ($private) return local:ensurePrivateRead($r)
                    case ($public-read) return local:ensurePublicRead($r)
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
        
        case not(session:valid()) return {
            response:status-code(401);
            session:error("Unauthorized: Login required", "json")
        }
        
        case (exists($validation-only) and not(session:valid("reports_validate"))) 
        case (exists($id) and exists($existing-report) and 
            (not(session:valid("reports_edit")) or not(local:isAllowed($existing-report, $authenticated-user.email, ( "FULL_CONTROL", "WRITE")))))
        case (exists($id) and empty($existing-report) and 
            (not(session:valid("reports_create")) or not(local:isAllowed($report, $authenticated-user.email, ( "FULL_CONTROL", "WRITE")))))
        case (
            (exists(request:param-values("public-read")) or exists(request:param-values("public-read"))) 
            and not(local:isAllowed($report, $authenticated-user.email, ( "FULL_CONTROL"))))
        return {
            response:status-code(403);
            session:error("Forbidden: You are not authorized to access the requested resource", "json")
        }
        
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
            
            {
                db:edit($existing-report,local:ensureReportProperties($report, $existing-report, $authenticated-user.email));
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
            
            {
                db:insert("reportschemas", local:ensureReportProperties($report, $existing-report, $authenticated-user.email));
                $report
            }
        }
} catch reports:conflict {
    {
        response:status-code(409);
        session:error("Conflict: " || $err:description, "json")
    }
} catch session:expired {
    {
        response:status-code(401);
        session:error("Unauthorized: Login required", "json")
    }
}