import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace test = "http://apps.28.io/test";
import module namespace config = "http://apps.28.io/config";

declare variable $local:expected as object :=
    {
      "dow30" : [ "http://www.sec.gov/CIK 0000066740", "http://www.sec.gov/CIK 0000004962", "http://www.sec.gov/CIK 0000732717", "http://www.sec.gov/CIK 0000012927", "http://www.sec.gov/CIK 0000018230", "http://www.sec.gov/CIK 0000093410", "http://www.sec.gov/CIK 0000858877", "http://www.sec.gov/CIK 0000021344", "http://www.sec.gov/CIK 0000030554", "http://www.sec.gov/CIK 0000034088", "http://www.sec.gov/CIK 0000040545", "http://www.sec.gov/CIK 0000886982", "http://www.sec.gov/CIK 0000354950", "http://www.sec.gov/CIK 0000050863", "http://www.sec.gov/CIK 0000051143", "http://www.sec.gov/CIK 0000200406", "http://www.sec.gov/CIK 0000019617", "http://www.sec.gov/CIK 0000063908", "http://www.sec.gov/CIK 0000789019", "http://www.sec.gov/CIK 0000310158", "http://www.sec.gov/CIK 0000320187", "http://www.sec.gov/CIK 0000078003", "http://www.sec.gov/CIK 0000080424", "http://www.sec.gov/CIK 0000086312", "http://www.sec.gov/CIK 0000101829", "http://www.sec.gov/CIK 0000731766", "http://www.sec.gov/CIK 0000732712", "http://www.sec.gov/CIK 0001403161", "http://www.sec.gov/CIK 0000104169", "http://www.sec.gov/CIK 0001001039" ],
      "generic" : [ "http://www.sec.gov/CIK 0000004962" ],
      "cik" : [ "http://www.sec.gov/CIK 0000004962" ],
      "ticker" : [ "http://www.sec.gov/CIK 0000104169" ],
      "ticker2" : [ "http://www.sec.gov/CIK 0000021344", "http://www.sec.gov/CIK 0000104169" ],
      "sic" : [ "http://www.sec.gov/CIK 0001585644", "http://www.sec.gov/CIK 0001608249", "http://www.sec.gov/CIK 0001023731", "http://www.sec.gov/CIK 0001089511", "http://www.sec.gov/CIK 0000104777", "http://www.sec.gov/CIK 0001047919", "http://www.sec.gov/CIK 0000732717", "http://www.sec.gov/CIK 0000879585", "http://www.sec.gov/CIK 0001122063", "http://www.sec.gov/CIK 0001104358", "http://www.sec.gov/CIK 0001205727", "http://www.sec.gov/CIK 0000018926", "http://www.sec.gov/CIK 0000716133", "http://www.sec.gov/CIK 0001161706", "http://www.sec.gov/CIK 0001457737", "http://www.sec.gov/CIK 0001304421", "http://www.sec.gov/CIK 0001086740", "http://www.sec.gov/CIK 0001352819", "http://www.sec.gov/CIK 0001084384", "http://www.sec.gov/CIK 0001101239", "http://www.sec.gov/CIK 0000766561", "http://www.sec.gov/CIK 0001062613", "http://www.sec.gov/CIK 0001504678", "http://www.sec.gov/CIK 0000020520", "http://www.sec.gov/CIK 0001071411", "http://www.sec.gov/CIK 0000075679", "http://www.sec.gov/CIK 0000808461", "http://www.sec.gov/CIK 0001061322", "http://www.sec.gov/CIK 0000746210", "http://www.sec.gov/CIK 0001384929", "http://www.sec.gov/CIK 0001315255", "http://www.sec.gov/CIK 0001006837", "http://www.sec.gov/CIK 0001005731", "http://www.sec.gov/CIK 0001041954", "http://www.sec.gov/CIK 0001292653", "http://www.sec.gov/CIK 0001160142", "http://www.sec.gov/CIK 0001084752", "http://www.sec.gov/CIK 0000794323", "http://www.sec.gov/CIK 0001130888", "http://www.sec.gov/CIK 0001520744", "http://www.sec.gov/CIK 0001005699", "http://www.sec.gov/CIK 0000732412", "http://www.sec.gov/CIK 0000071557", "http://www.sec.gov/CIK 0001328571", "http://www.sec.gov/CIK 0001288359", "http://www.sec.gov/CIK 0001372041", "http://www.sec.gov/CIK 0000090721", "http://www.sec.gov/CIK 0001558294", "http://www.sec.gov/CIK 0001405660", "http://www.sec.gov/CIK 0001458704", "http://www.sec.gov/CIK 0001143238", "http://www.sec.gov/CIK 0001037949", "http://www.sec.gov/CIK 0000068622", "http://www.sec.gov/CIK 0001341319", "http://www.sec.gov/CIK 0000354963", "http://www.sec.gov/CIK 0000101830", "http://www.sec.gov/CIK 0000943117", "http://www.sec.gov/CIK 0001560158", "http://www.sec.gov/CIK 0001051512", "http://www.sec.gov/CIK 0001101688", "http://www.sec.gov/CIK 0001499355", "http://www.sec.gov/CIK 0000732712", "http://www.sec.gov/CIK 0001270400", "http://www.sec.gov/CIK 0001322791", "http://www.sec.gov/CIK 0001353505", "http://www.sec.gov/CIK 0001272830", "http://www.sec.gov/CIK 0001562636", "http://www.sec.gov/CIK 0001282266", "http://www.sec.gov/CIK 0000919742", "http://www.sec.gov/CIK 0001111634", "http://www.sec.gov/CIK 0001448962", "http://www.sec.gov/CIK 0001502756", "http://www.sec.gov/CIK 0001373444", "http://www.sec.gov/CIK 0001057758" ], 
      "sic-dow30": [ "http://www.sec.gov/CIK 0000732717", "http://www.sec.gov/CIK 0000732712" ],
      "mixed" : [ "http://www.sec.gov/CIK 0001585644", "http://www.sec.gov/CIK 0001608249", "http://www.sec.gov/CIK 0001023731", "http://www.sec.gov/CIK 0001089511", "http://www.sec.gov/CIK 0000104777", "http://www.sec.gov/CIK 0001047919", "http://www.sec.gov/CIK 0000004962", "http://www.sec.gov/CIK 0000732717", "http://www.sec.gov/CIK 0000879585", "http://www.sec.gov/CIK 0001122063", "http://www.sec.gov/CIK 0001104358", "http://www.sec.gov/CIK 0001205727", "http://www.sec.gov/CIK 0000018926", "http://www.sec.gov/CIK 0000716133", "http://www.sec.gov/CIK 0000021344", "http://www.sec.gov/CIK 0001161706", "http://www.sec.gov/CIK 0001457737", "http://www.sec.gov/CIK 0001304421", "http://www.sec.gov/CIK 0001086740", "http://www.sec.gov/CIK 0001352819", "http://www.sec.gov/CIK 0001084384", "http://www.sec.gov/CIK 0001101239", "http://www.sec.gov/CIK 0000766561", "http://www.sec.gov/CIK 0001062613", "http://www.sec.gov/CIK 0001504678", "http://www.sec.gov/CIK 0000020520", "http://www.sec.gov/CIK 0001071411", "http://www.sec.gov/CIK 0000075679", "http://www.sec.gov/CIK 0000808461", "http://www.sec.gov/CIK 0001061322", "http://www.sec.gov/CIK 0000746210", "http://www.sec.gov/CIK 0001384929", "http://www.sec.gov/CIK 0001315255", "http://www.sec.gov/CIK 0001006837", "http://www.sec.gov/CIK 0001005731", "http://www.sec.gov/CIK 0001041954", "http://www.sec.gov/CIK 0001292653", "http://www.sec.gov/CIK 0001160142", "http://www.sec.gov/CIK 0001084752", "http://www.sec.gov/CIK 0000794323", "http://www.sec.gov/CIK 0001130888", "http://www.sec.gov/CIK 0001520744", "http://www.sec.gov/CIK 0001005699", "http://www.sec.gov/CIK 0000732412", "http://www.sec.gov/CIK 0000071557", "http://www.sec.gov/CIK 0001328571", "http://www.sec.gov/CIK 0001288359", "http://www.sec.gov/CIK 0001372041", "http://www.sec.gov/CIK 0000090721", "http://www.sec.gov/CIK 0001558294", "http://www.sec.gov/CIK 0001405660", "http://www.sec.gov/CIK 0001458704", "http://www.sec.gov/CIK 0001143238", "http://www.sec.gov/CIK 0001037949", "http://www.sec.gov/CIK 0000068622", "http://www.sec.gov/CIK 0001341319", "http://www.sec.gov/CIK 0000354963", "http://www.sec.gov/CIK 0000101830", "http://www.sec.gov/CIK 0000943117", "http://www.sec.gov/CIK 0001560158", "http://www.sec.gov/CIK 0001051512", "http://www.sec.gov/CIK 0001101688", "http://www.sec.gov/CIK 0001499355", "http://www.sec.gov/CIK 0000732712", "http://www.sec.gov/CIK 0001270400", "http://www.sec.gov/CIK 0001322791", "http://www.sec.gov/CIK 0001353505", "http://www.sec.gov/CIK 0001272830", "http://www.sec.gov/CIK 0001562636", "http://www.sec.gov/CIK 0000104169", "http://www.sec.gov/CIK 0001282266", "http://www.sec.gov/CIK 0000919742", "http://www.sec.gov/CIK 0001111634", "http://www.sec.gov/CIK 0001448962", "http://www.sec.gov/CIK 0001502756", "http://www.sec.gov/CIK 0001373444", "http://www.sec.gov/CIK 0001057758" ],
      "mixed-dow30": [ "http://www.sec.gov/CIK 0000004962", "http://www.sec.gov/CIK 0000732717", "http://www.sec.gov/CIK 0000021344", "http://www.sec.gov/CIK 0000732712", "http://www.sec.gov/CIK 0000104169" ]
    };

declare %an:nondeterministic function local:test-example1() as item
{
  let $expected := 
  [ {
    "_id" : "http://www.sec.gov/CIK 0000021344",
    "Archives" : "http://" || request:server-name() || ":" || request:server-port() ||
      "/v1/_queries/public/api/filings.jq?_method=POST&token=" || $config:test-token || "&eid=http%3A%2F%2Fwww.sec.gov%2FCIK%200000021344&format=&profile-name=sec&fiscalYear=ALL&fiscalPeriod=ALL",
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
        "Tags" : [ "FORTUNE100", "DOW30", "RUSSELL1000", "SP500" ], 
        "IsTrust" : false
      }
    }
  } ]
  let $endpoint := "entities"
  let $params := {cik:"21344"}
  let $request := test:invoke($endpoint, $params)
  let $status as integer := $request[1]
  let $actual as array? := $request[2].Entities
  return test:assert-deep-equal($expected, $actual, $status, test:url($endpoint, $params))
};

declare %an:nondeterministic function local:test-entities(
    $expected as array,
    $params as object) as item
{
    let $endpoint := "entities"
    let $request := test:invoke($endpoint, $params)
    let $actual as array := [ $request[2].Entities[]._id ]
    let $status as integer := $request[1]
    return test:assert-eq-array($expected, $actual, $status, test:url($endpoint, $params))
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

let $dow30 := test:is-dow30()
return local:check({
    dow30: local:test-entities($local:expected.dow30, {tag:"DOW30"}),
    generic: local:test-entities($local:expected.generic, {eid:"http://www.sec.gov/CIK 0000004962", profile-name:"generic"}),
    cik: local:test-entities($local:expected.cik, {cik:"4962"}),
    ticker: local:test-entities($local:expected.ticker, {ticker:"wmt"}),
    ticker2: local:test-entities($local:expected.ticker2, {ticker:["wmt","ko"]}),
    sic: local:test-entities(if($dow30) then $local:expected.sic-dow30 else $local:expected.sic, {sic:"4813"}),
    mixed: local:test-entities(if($dow30) then $local:expected.mixed-dow30 else $local:expected.mixed, {cik:"4962", sic:"4813", ticker:[ "wmt", "ko" ]}),
    example1: local:test-example1()
})
