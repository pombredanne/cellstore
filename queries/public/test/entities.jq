import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";

declare variable $base-url := "http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/entities.jq?_method=POST";

declare %an:nondeterministic function local:test-example1() as item
{
  let $expected := 
  [ {
    "_id" : "http://www.sec.gov/CIK 0000021344", 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "CompanyName" : "COCA COLA CO", 
        "CompanyType" : "Corporation", 
        "CIK" : "0000021344", 
        "SIC" : "2080", 
        "SICDescription" : "BEVERAGES", 
        "SICGroup" : 9, 
        "Taxonomy" : "ci", 
        "Sector" : "Food/Kindred Products", 
        "Tickers" : [ "ko" ], 
        "Tags" : [ "DOW30", "SP500", "FORTUNE100" ], 
        "IsTrust" : false
      }
    }
  } ]
  let $url := $base-url || "&cik=21344"
  let $actual := parse-json(http-client:get($url).body.content).Entities
  return 
        if (deep-equal($expected, $actual))
        then true
        else 
        {
            
            "expected": $expected,
            "actual": $actual
        }
};

declare %an:nondeterministic function local:test-entities($expected as integer, $params as string) as atomic
{
    let $actual as integer := count(parse-json(http-client:get($base-url || $params).body.content).Entities[])
    return
        if ($actual eq $expected)
        then true
        else "false [Actual="||$actual||", Expected="||$expected ||"]"
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

let $db := request:param-values("db", "all-sec-filings")
return local:check({
    dow30: local:test-entities(30, "&tag=DOW30"),
    cik: local:test-entities(1, "&cik=4962"),
    ticker: local:test-entities(1, "&ticker=wmt"),
    ticker2: local:test-entities(2, "&ticker=wmt&ticker=ko"),
    sic: local:test-entities(switch($db) case "all-dow30" return 2 default return 74, "&sic=4813"),
    mixed: local:test-entities(switch($db) case "all-dow30" return 5 default return 77, "&cik=4962&sic=4813&ticker=wmt&ticker=ko"),
    example1: local:test-example1()
})
