jsoniq version "1.0";

import module namespace api = "http://apps.28.io/api";
import module namespace session = "http://apps.28.io/session";

session:terminate();
api:success()