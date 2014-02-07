jsoniq version "1.0";

module namespace session = "http://apps.28.io/session";

import module namespace random = "http://zorba.io/modules/random";
import module namespace user = "http://apps.28.io/user";
import module namespace api = "http://apps.28.io/api";

declare variable $session:tokens := "Tokens";
declare variable $session:VALID-TOKEN := "[a-z0-9\\-]+";

declare %an:sequential function session:start($user-id as xs:string, $expiration-date as xs:dateTime)
as string
{
    session:cleanup();
    
    variable $token := random:uuid();
    variable $session := 
      {
        "_id"           : $token,
        user-id         : $user-id,
        expiration-date : $expiration-date
      };
    db:insert($session:tokens, $session);
    
    $token
};

declare function session:get($token as string)
as string
{
    variable $session := find($session:tokens, { "_id" : $token });
    
    if (exists($session))
    then
        if ($session.expiration-date gt current-dateTime())
        then $session.user-id
        else fn:error(xs:QName("session:expired"), "Your session has expired at " || $session.expiration-date )
    else fn:error(xs:QName("session:expired"), "Your session is not valid")
};

declare %an:sequential function session:terminate($token as string)
as empty-sequence()
{
    variable $session := find($session:tokens, { "_id" : $token });
    
    if (exists($session))
    then db:delete($session);
    else ();
};


declare %an:sequential function session:cleanup()
as empty-sequence()
{
    for $session in collection($session:tokens)
    where $session.expiration-date le current-dateTime()
    return db:delete($session);
};

declare function session:validate()
as string
{
    variable $token := api:required-parameter("api_key", $session:VALID-TOKEN);
    session:get($token)
};

declare function session:validate($right-id as string)
as string
{    
    variable $user-id := session:validate();
    if (user:is-authorized($user-id, $right-id))
    then $user-id
    else fn:error(xs:QName("session:missing-authorization"), "User does not have required right " || $right-id)
};

declare %an:sequential function session:terminate()
as empty-sequence()
{
   session:terminate(api:required-parameter("api_key", $session:VALID-TOKEN))
};

