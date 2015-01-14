import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace config = "http://apps.28.io/config";

<Entities>
  <Entity>
    <_id>http://info.edinet-fsa.go.jp E01225-000</_id>
    <Archives>
    {
      "http://" || request:server-name() || ":" || request:server-port() ||
        "/v1/_queries/public/api/filings.jq?_method=POST&token=" || $config:test-token || "&eid=http%3A%2F%2Finfo.edinet-fsa.go.jp%20E01225-000&format=xml&profile-name=japan&fiscalYear=ALL&fiscalPeriod=ALL"
    }
    </Archives>
    <Name>FSA</Name>
    <EDINETCode>E01225-000</EDINETCode>
    <SubmitterName>新日鐵住金株式会社</SubmitterName>
    <SubmitterNameAlphabetic>NIPPON STEEL &amp; SUMITOMO METAL CORPORATION</SubmitterNameAlphabetic>
    <SubmitterNamePhonetic>シンニッテツスミキンカブシキガイシャ</SubmitterNamePhonetic>
    <SubmitterType>内国法人・組合</SubmitterType>
    <SIC>5401</SIC>
    <Province>千代田区丸の内二丁目６番１号</Province>
    <Industry>Iron &amp; Steel</Industry>
    <CapitalStock>419524</CapitalStock>
    <AccountClosingDate> 3.31</AccountClosingDate>
    <IsListed>true</IsListed>
    <IsConsolidated>true</IsConsolidated>
    <Tags>NIKKEI</Tags>
  </Entity>
</Entities>
