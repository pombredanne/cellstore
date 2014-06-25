jsoniq version "1.0";

import module namespace http-client =
    "http://zorba.io/modules/http-client";

let $schema := parse-json(
    http-client:get-text(
        "http://facs.beta.28.io/process-report-schema.jq"
    ).body.content
)
return
if(is-available-collection("reports"))
then {
    truncate("reports");
    insert("reports", $schema);
}
else
    create("reports", $schema);

"Report successfully added."
