import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";
import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";

(:
  Retrieves the filings for the fiscal period 2012 submitted by a sector,
  and outputs the assets reported for this period as well as
  other information.
:)
for $entity in companies:companies-for-sector("Chemicals/Allied Products")
let $filings := fiscal:filings-for-entities-and-fiscal-periods-and-years($entity, "FY", "2012")
let $doc-period-end-date := filings:end-date($filings)
let $assets := sec:main-facts-for-archives-and-concepts($filings, "us-gaap:Assets").Value
return {
  cik: $entity._id,
  entity: $entity.Profiles.SEC.CompanyName,
  fiscalPeriod: "FY",
  fiscalYear: 2012,
  documentPeriodEndDate: $doc-period-end-date,
  assets: $assets
}
