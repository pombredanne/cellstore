import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";
import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";

declare function local:isReadable($report as object, $authenticated-user-email as string) as boolean
{
    if($report.Owner eq $authenticated-user-email) 
    then true
    else 
        boolean(
            distinct-values(
                for $right in $report.ACL[]
                return
                    if($right.Grantee eq "http://28.io/groups/AllUsers" and $right.Permission eq "READ")
                    then true
                    else ()
            ))
};

try{
    let $id := request:param-values("_id")
    let $userids := request:param-values("user")
    let $public-read := request:param-values("public-read")
    let $private := request:param-values("private")
    
    let $authenticated-user := user:get-existing-by-id(session:validate())
    let $users := for $email in $userids return user:get-existing-by-email($email)
    
    let $query := 
        {|
            if(exists($id))
            then { "_id" :  if(count($id) gt 1 ) then { "$in" : [ $id ] } else $id }
            else (),
            switch(true)
            case $private return 
                {
                    "Owner": $authenticated-user.email,
                    "AccessControlList": { "$not": {"$elemMatch": { "Type": "Group", "Grantee" : "http://28.io/groups/AllUsers", "Permission": "READ"}}}
                }
            case $public-read return             {
                    "Owner": if($users) then {"$in": [$users ! $$.email]} else $authenticated-user.email,
                    "AccessControlList": { "$elemMatch": { "Type": "Group", "Grantee" : "http://28.io/groups/AllUsers", "Permission": "READ"}}
                }
            default return 
                {"Owner": $authenticated-user.email}
        |}
    
    let $reports as object* :=
        for $report in find("reports", $query)
        where local:isReadable($report, $authenticated-user.email)
        return $report
    return 
        switch (true)
        
        case not(session:valid()) return {
            response:status-code(401);
            session:error("Unauthorized: Login required", "json")
        }
        
        case not(session:valid("reports_get")) return {
            response:status-code(403);
            session:error("Forbidden: You are not authorized to access the requested resource", "json")
        }
        
        case (empty($reports) and exists($id))
        return {
            response:status-code(404);
            session:error("report not found", "json")
        }
        
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