import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";

declare %an:nondeterministic function local:test-filings($expected as integer, $params as string) as atomic
{
    let $actual as integer := count(parse-json(http-client:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/filings.jq?_method=POST" || $params).body.content).Archives[])
    return if ($actual eq $expected) then true else "false [Actual="||$actual||", Expected="||$expected ||"]"
};

{
    Entities: {
        all: local:test-filings(1, "&ticker=ko"),
        dow30: local:test-filings(30, "&tag=DOW30"),
        cik: local:test-filings(1, "&cik=4962"),
        ticker: local:test-filings(3, "&ticker=wmt&fiscalYear=ALL"),
        fpall: local:test-filings(4, "&ticker=wmt&fiscalYear=2012&fiscalPeriod=ALL") ,
        fyfp: local:test-filings(1, "&ticker=wmt&fiscalYear=2012&fiscalPeriod=Q1"),
        sic: local:test-filings(1, "&sic=5053") 
    }
}
    (:


https://secxbrl-g.28.io/v1/_queries/public/api/facttable-for-component.jq?_method=POST&ticker=ko
https://secxbrl-g.28.io/v1/_queries/public/api/facttable-for-component.jq?_method=POST&ticker=ko&networkIdentifier=http://www.thecocacolacompany.com/role/ConsolidatedStatementsOfIncome
https://secxbrl-g.28.io/v1/_queries/public/api/facttable-for-component.jq?_method=POST&ticker=ko&concept=us-gaap:NetIncomeLoss
https://secxbrl-g.28.io/v1/_queries/public/api/facttable-for-component.jq?_method=POST&ticker=ko&fiscalYear=2012&fiscalPeriod=Q1&networkIdentifier=http://www.thecoca-colacompany.com/role/CondensedConsolidatedBalanceSheets

https://secxbrl-g.28.io/v1/_queries/public/api/spreadsheet-for-component.jq?_method=POST&ticker=ko
https://secxbrl-g.28.io/v1/_queries/public/api/spreadsheet-for-component.jq?_method=POST&ticker=ko&networkIdentifier=http://www.thecocacolacompany.com/role/ConsolidatedStatementsOfIncome
https://secxbrl-g.28.io/v1/_queries/public/api/spreadsheet-for-component.jq?_method=POST&ticker=ko&concept=us-gaap:NetIncomeLoss
https://secxbrl-g.28.io/v1/_queries/public/api/spreadsheet-for-component.jq?_method=POST&ticker=ko&fiscalYear=2012&fiscalPeriod=Q1&networkIdentifier=http://www.thecoca-colacompany.com/role/CondensedConsolidatedBalanceSheets

http://secxbrl-g.28.io/v1/_queries/public/api/spreadsheet-for-report.jq?_method=POST&report=FundamentalAccountingConcepts&ticker=ko&fiscalYear=LATEST&fiscalPeriod=Q1
http://secxbrl-g.28.io/v1/_queries/public/api/spreadsheet-for-report.jq?_method=POST&report=FundamentalAccountingConcepts&ticker=ko&fiscalYear=2012&fiscalPeriod=Q1
http://secxbrl-g.28.io/v1/_queries/public/api/spreadsheet-for-report.jq?_method=POST&report=FundamentalAccountingConcepts&ticker=ko&fiscalYear=2012&fiscalPeriod=ALL
http://secxbrl-g.28.io/v1/_queries/public/api/spreadsheet-for-report.jq?_method=POST&report=FundamentalAccountingConcepts&ticker=ko&ticker=wmt&fiscalYear=LATEST&fiscalPeriod=FY&eliminate=true

http://secxbrl-g.28.io/v1/_queries/public/api/facttable-for-report.jq?_method=POST&report=FundamentalAccountingConcepts&ticker=ko&fiscalYear=LATEST&fiscalPeriod=Q1
http://secxbrl-g.28.io/v1/_queries/public/api/facttable-for-report.jq?_method=POST&report=FundamentalAccountingConcepts&ticker=ko&fiscalYear=2012&fiscalPeriod=Q1
http://secxbrl-g.28.io/v1/_queries/public/api/facttable-for-report.jq?_method=POST&report=FundamentalAccountingConcepts&ticker=ko&fiscalYear=2012&fiscalPeriod=ALL
http://secxbrl-g.28.io/v1/_queries/public/api/facttable-for-report.jq?_method=POST&report=FundamentalAccountingConcepts&ticker=ko&ticker=wmt&fiscalYear=LATEST&fiscalPeriod=FY&eliminate=true
:)