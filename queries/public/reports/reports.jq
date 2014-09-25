import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace session = "http://apps.28.io/session";
import module namespace api = "http://apps.28.io/api";
import module namespace user = "http://apps.28.io/user";
import module namespace reports = "http://apps.28.io/reports";

declare  %rest:case-insensitive %rest:distinct  variable $_id                 as string* external;
declare  %rest:case-insensitive %rest:distinct  variable $user                as string* external;
declare  %rest:case-insensitive                 variable $public-read         as string? external := "false"; (: backward compatibility :)
declare  %rest:case-insensitive                 variable $private             as string? external := "false"; (: backward compatibility :)

try{
    (: ### INIT PARAMS :)
    let $public-read as boolean := api:boolean($public-read)
    let $private as boolean := api:boolean($private)
    
    let $authenticated-user := user:get-existing-by-id(session:validate())
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
        case (empty($reports) and exists($_id))
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
