import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace config = "http://apps.28.io/config";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace random = "http://zorba.io/modules/random";

declare variable $newId as string := random:uuid();

declare %private function local:url($parameters as object?, $endpoint as string, $includeToken as boolean) as string
{
    "http://" || request:server-name() || ":" || request:server-port() ||
    "/v1/_queries/public/reports/" || $endpoint || ".jq?_method=POST&token=" || (if($includeToken) then $config:test-token else "{{token}}") || "&"||
    string-join(
        for $key in keys($parameters)
        for $value as string in (flatten($parameters.$key) ! string($$))
        return ($key||"="||$value),
        "&")
};

declare %an:sequential function local:export-facs-xbrlb() as item*
{
    let $parameters := {
        "_id": "supportFundamentalAccountingConcepts",
        "export": "true"
    }
    let $endpoint as string := "reports"
    let $url := local:url($parameters, $endpoint, true())
    let $request := http-client:get($url)
    return (local:url($parameters, $endpoint, false()),$request)
};

declare %an:sequential function local:import-facs-xbrlb($archive as xs:base64Binary) as item*
{
    let $parameters := {
        "import": "true",
        "_id": $newId,
        "label": encode-for-uri("Import test")
    }
    let $endpoint as string := "add-report"
    let $url := local:url($parameters, $endpoint, true())
    let $request := http-client:post($url, $archive)
    return (local:url($parameters, $endpoint, false()),$request)
};

declare %an:sequential function local:test-export-import() as item
{
  let $export := local:export-facs-xbrlb()
  let $export-url := $export[1]
  let $export-response := $export[2]
  let $status as integer := $export-response.status
  (:let $body as string := string:materialize($export-response.body.content):)
  return
      if($status ne 200)
      then 
        {
            "url": $export-url,
            "status": $status,
            "reponse": $export-response
        }
      else 
          let $fac-xbrlb as xs:base64Binary := xs:base64Binary($export-response.body.content)
          let $import := local:import-facs-xbrlb($fac-xbrlb)
          let $import-url := $import[1]
          let $import-response := $import[2]
          let $status as integer := $import-response.status
          let $body as object := parse-json($import-response.body.content)
          return
              if($status eq 200 and exists($body."Label") and $body.Label eq "Import test" and $body."_id" eq $newId)
              then true()
              else 
                    {
                        "url": $import-url,
                        "status": $status,
                        "reponse": $body
                    }
};

declare %an:sequential function local:check($o as object) as object
{
    if (not(every $k in (keys($o) ! $o.$$) satisfies ($k instance of boolean and $k)))
    then {
            response:status-code(500);
            $o
    } else
            $o
};

local:check({
    "export-import": local:test-export-import()
})
