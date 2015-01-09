import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace test = "http://apps.28.io/test";
import module namespace config = "http://apps.28.io/config";

declare variable $local:expected as object :=
    {
      "all" : [ "http://info.edinet-fsa.go.jp E01225-000", "http://info.edinet-fsa.go.jp E01264-000", "http://info.edinet-fsa.go.jp E02166-000", "http://info.edinet-fsa.go.jp E02274-000", "http://info.edinet-fsa.go.jp E02513-000", "http://info.edinet-fsa.go.jp E02529-000", "http://info.edinet-fsa.go.jp E04147-000", "http://info.edinet-fsa.go.jp E04425-000", "http://info.edinet-fsa.go.jp E04430-000", "http://info.edinet-fsa.go.jp EDINET-000" ]
    };

declare %an:nondeterministic function local:test-example1() as item
{
  let $expected :=
  [ {
    "_id" : "http://info.edinet-fsa.go.jp E01225-000",
    "Archives" : "http://" || request:server-name() || ":" || request:server-port() ||
      "/v1/_queries/public/api/filings.jq?_method=POST&token=" || $config:test-token || "&eid=http%3A%2F%2Finfo.edinet-fsa.go.jp%20E01225-000&format=json&profile-name=japan&fiscalYear=ALL&fiscalPeriod=ALL",
    "Profiles" : {
      "JAPAN" : {
        "Name" : "JAPAN",
        "EDINETCode" : "E01225-000",
        "SubmitterName" : "新日鐵住金株式会社",
        "SubmitterNameAlphabetic" : "NIPPON STEEL & SUMITOMO METAL CORPORATION",
        "SubmitterNamePhonetic" : "シンニッテツスミキンカブシキガイシャ",
        "SubmitterType" : "内国法人・組合",
        "SIC" : "5401",
        "Province" : "千代田区丸の内二丁目６番１号",
        "Industry" : "Iron & Steel",
        "CapitalStock" : 419524,
        "AccountClosingDate" : " 3.31",
        "IsListed" : true,
        "IsConsolidated" : true,
        "Tags" : [ "NIKKEI" ]
      }
    }
  } ]
  let $endpoint := "entities"
  let $params := {cik:"E01225"}
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

local:check({
    all: local:test-entities($local:expected.all, {}),
    example1: local:test-example1()
})
