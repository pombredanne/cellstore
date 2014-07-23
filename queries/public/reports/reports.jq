import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";
import module namespace user = "http://apps.28.io/user";
import module namespace reports = "http://apps.28.io/reports";

declare namespace api = "http://apps.28.io/api";

try{
    (: ### INIT PARAMS :)
    let $id := request:param-values("_id")
    let $userids := request:param-values("user")
    let $public-read := request:param-values("public-read")
    let $private := request:param-values("private")
    
    let $authenticated-user := user:get-existing-by-id(session:validate())
    let $users := for $email in $userids return user:get-existing-by-email($email)
    
    let $query := 
        {|
            switch(true)
            case (exists($id)) return 
                { "_id" :  if(count($id) gt 1 ) then { "$in" : [ $id ] } else $id }
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
        
        (: ### AUTHENTICATION :)
        case not(session:valid()) return {
            response:status-code(401);
            session:error("Unauthorized: Login required", "json")
        }
        
        (: ### AUTHORIZATION :)
        case not(session:valid("reports_get")) return {
            response:status-code(403);
            session:error("Forbidden: You are not authorized to access the requested resource", "json")
        }
        
        (: ### BAD REQUEST HANDLING :)
        case (empty($reports) and exists($id))
        return {
            response:status-code(404);
            session:error("report not found", "json")
        }
        
        (: ### MAIN WORK :)
        default
        return {
            response:content-type("application/json");
            response:serialization-parameters({"indent" : true});
            
            [ $reports ]
        }
} catch session:expired {
    {
        response:status-code(401);
        session:error("Unauthorized: Login required", "json")
    }
} catch api:missing-parameter {
    if(exists($err:value) and $err:value.parameter eq "token")
    then
    {
        response:status-code(401);
        session:error("Unauthorized: Login required", "json")
    }
    else 
    {
        response:status-code(400);
        session:error($err:description, "json")
    }
}
