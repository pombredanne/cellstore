import module namespace user = "http://apps.28.io/user";
import module namespace config = "http://apps.28.io/config";

variable $user := user:get-by-email($credentials:support-user);

collection("Tokens")[
    $$."expiration-date" eq xs:dateTime("2016-09-12T22:17:23.851315Z") and
    $$."user-id" eq $user."_id"
]