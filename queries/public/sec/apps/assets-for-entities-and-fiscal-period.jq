import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";
import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";

(:
  Retrieves the filings for the fiscal period 2012 submitted by three SEC
  entities, and outputs the assets reported for this period as well as
  other information.
:)
for $entity in ("0000019617", "0000021344")
let $filings := fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, "FY", "2012")
let $doc-period-end-date := filings:end-date($filings)
let $assets := sec:main-facts-for-archives-and-concepts($filings, "us-gaap:Assets").Value
return {
  cik: $entity,
  entity: entities:entities(sec:normalize-cik($entity)).Profiles.SEC.CompanyName,
  fiscalPeriod: "FY",
  fiscalYear: 2012,
  documentPeriodEndDate: $doc-period-end-date,
  assets: $assets
}
