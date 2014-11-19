import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace session = "http://apps.28.io/session";
import module namespace user = "http://apps.28.io/user";
import module namespace reports = "http://apps.28.io/reports";
import module namespace archive = "http://zorba.io/modules/archive";

(: Query parameters :)
declare %rest:case-insensitive                variable $token        as string  external;
declare %rest:case-insensitive %rest:distinct variable $_id          as string* external;
declare %rest:case-insensitive %rest:distinct variable $user         as string* external;
declare %rest:case-insensitive                variable $public-read  as boolean external := false;
declare %rest:case-insensitive                variable $private      as boolean external := false;
declare %rest:case-insensitive                variable $onlyMetadata as boolean? external := false;
declare %rest:case-insensitive                variable $export       as boolean external := false;

try {
    (: ### INIT PARAMS :)
    let $authenticated-user := user:get-existing-by-id(session:ensure-valid($token))
    let $users := for $email in $user return user:get-existing-by-email($email)
    let $query := 
        {|
            switch(true)
            case (exists($_id)) return 
                { "_id" :  if(count($_id) gt 1 ) then { "$in" : [ $_id ] } else $_id }
            case $private return 
                { "$or":
                    [ 
                        {"Owner": $authenticated-user.email},
                        {"AccessControlList": { "$elemMatch": { "Type": "User", "Grantee" : $authenticated-user.email, "Permission": { "$in": [ "READ", "WRITE", "FULL_CONTROL" ]}}}}
                    ]
                }
            case $public-read and exists($users) return
                {
                    "Owner": {"$in": [$users ! $$.email]},
                    "ACL": { "$elemMatch": { "Type": "Group", "Grantee" : "http://28.io/groups/AllUsers", "Permission": { "$in": [ "READ", "WRITE", "FULL_CONTROL" ]}}}
                }
            case $public-read and empty($users) return
                {
                    "ACL": { "$elemMatch": { "Type": "Group", "Grantee" : "http://28.io/groups/AllUsers", "Permission": { "$in": [ "READ", "WRITE", "FULL_CONTROL" ]}}}
                }
            default return 
                {"Owner": $authenticated-user.email}
        |}
    
    let $reports as object* :=
        for $report in find("reports", $query)
        where reports:has-report-access-permission($report, $authenticated-user.email, "READ")
        return $report
    return 
        switch (true)
        
        (: ### AUTHORIZATION :)
        case not(session:has-right($token, "reports_get")) return {
            response:status-code(403);
            session:error("Forbidden: You are not authorized to access the requested resource", "json")
        }
        
        (: ### BAD REQUEST HANDLING :)
        case (empty($reports) and exists($_id))
        return {
            response:status-code(404);
            session:error("report not found", "json")
        }
        
        case ($export and empty($_id))
        return {
            response:status-code(400);
            session:error("export requested, but report _id missing", "json")
        }
        
        case ($export and count($_id) gt 1)
        return {
            response:status-code(400);
            session:error("export requested, but more than one report _id provided", "json")
        }
        
        (: ### EXPORT :)
        case ($export)
        return {
            let $report as object := 
                copy $rep := $reports[1]
                modify (
                        if(exists($rep.ACL))
                        then replace value of json $rep.ACL with []
                        else insert json { "ACL": [] } into $rep,
                        replace value of json $rep.Owner with ""
                    )
                return $rep
            let $last-modified as dateTime := dateTime($report.LastModified)
            let $filenamebase as string := replace($report.Label, " ", "_")
            let $archive as xs:base64Binary := 
                archive:create(
                    { 
                        "encoding": "UTF-8",
                        "last-modified" : $last-modified,
                        "name" : $filenamebase || ".xbrl.json"
                    },
                    serialize($report))
            return {
                response:content-type("application/zip");
                response:header("Content-Disposition", "attachment; filename=\"" || $filenamebase || ".xbrlb\"");
                $archive
            }

        }
        
        (: ### MAIN WORK :)
        default
        return {
            response:content-type("application/json");
            response:serialization-parameters({"indent" : true});
            
            [
                if($onlyMetadata)
                then
                    for $report in $reports
                    return {
                        _id: $report._id,
                        Label: $report.Label,
                        Description: $report.Description,
                        LastModified: $report.LastModified
                    }
                else $reports
            ]
        }
} catch session:expired {
    {
        response:status-code(401);
        session:error("Unauthorized: Login required", "json")
    }
}
