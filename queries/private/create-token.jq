import module namespace user = "http://apps.28.io/user";
import module namespace session = "http://apps.28.io/session";

let $expiration := fn:current-dateTime() + xs:yearMonthDuration("P10Y")
let $user := user:get-existing-by-email("d@28.io")
return session:start($user._id, $expiration)
  