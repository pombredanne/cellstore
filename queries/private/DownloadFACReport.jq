jsoniq version "1.0";

import module namespace http-client =
    "http://zorba.io/modules/http-client";

declare variable $schema := parse-json(
    http-client:get-text(
        "http://facs.beta.28.io/process-report-schema.jq"
    ).body.content
);

if(is-available-collection("reports"))
then ();
else create("reports", $schema);

let $record := find("reports", { "_id" : $schema."_id" })
return
if(empty($record))
then {
    insert("reports", $schema);
    "Report " || $schema."_id" || " successfully added."
}
else {
    db:edit($record, $schema);
    "Report " || $schema."_id" || " successfully edited."
}

