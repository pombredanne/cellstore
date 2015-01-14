import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace config = "http://apps.28.io/config";

{
  "_id" : "http://info.edinet-fsa.go.jp E01225-000",
  "Archives" : "http://" || request:server-name() || ":" || request:server-port() ||
    "/v1/_queries/public/api/filings.jq?_method=POST&token=" || $config:test-token || "&eid=http%3A%2F%2Finfo.edinet-fsa.go.jp%20E01225-000&format=&profile-name=japan&fiscalYear=ALL&fiscalPeriod=ALL",
  "Profiles" : {
    "FSA" : {
      "Name" : "FSA",
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
}
