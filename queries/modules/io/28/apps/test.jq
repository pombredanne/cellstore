jsoniq version "1.0";
module namespace test = "http://apps.28.io/test";
import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace credentials = "http://apps.28.io/credentials";

declare %an:nondeterministic function test:invoke($endpoint as string, $parameters as object) as item*
{
  let $url as string:=
    "http://" || request:server-name() || ":" || request:server-port() ||
    "/v1/_queries/public/api/"||$endpoint||".jq?_method=POST&token="||$credentials:support-token||"&"||
    string-join(for $key in keys($parameters)
                for $value as string in flatten($parameters.$key)
                return ($key||"="||$value),
                "&")
  let $response as object := http-client:get($url)
  return ($response.status, parse-json($response.body.content))
};


declare %an:nondeterministic function test:invoke-public($endpoint as string, $parameters as object) as item*
{
  let $url as string:=
    "http://" || request:server-name() || ":" || request:server-port() ||
    "/v1/_queries/public/"||$endpoint||".jq?_method=POST&token="||$credentials:support-token||"&"||
    string-join(for $key in keys($parameters)
                for $value as string in flatten($parameters.$key)
                return ($key||"="||$value),
                "&")
  let $response as object := http-client:get($url)
  return ($response.status, parse-json($response.body.content))
};


(:    return
        if ($actual eq $expected)
        then true
        else "false [Actual="||$actual||", Expected="||$expected ||"]":)

declare function test:assert-eq(
    $expected as atomic,
    $actual as atomic?,
    $status as integer) as item
{
    switch(true)
    case $status ne 200 return { status: $status }
    case try {$expected eq $actual} catch * { false } return true
    default return
    {
        
        "expected": $expected,
        "actual": $actual
    }
};

declare function test:assert-deep-equal(
    $expected as json-item,
    $actual as json-item?,
    $status as integer) as item
{
    switch(true)
    case $status ne 200 return { status: $status }
    case deep-equal($expected, $actual) return true
    default return
    {
        
        "expected": $expected,
        "actual": $actual
    }
};
