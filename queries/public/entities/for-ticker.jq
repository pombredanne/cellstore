import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";

for $e in companies:companies-for-tickers("kO")
return
{
  CompanyName : $e.Profiles.SEC.CompanyName,
  Tickers : $e.Profiles.SEC.Tickers
}

