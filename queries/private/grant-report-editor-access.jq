import module namespace user = "http://apps.28.io/user";

(: set user email here :)
let $email := "d@28.io"

(: do not edit after this line :)
let $user := user:get-existing-by-email($email)
let $admin := user:get-existing-by-email("admin@28.io")
return 
    {
        user:assign-role($user."_id", "reports-admin", (), (), $admin."_id");
        user:assign-role($user."_id", "data", (), (), $admin."_id");
    }
    
