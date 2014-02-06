import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";

(:
  Retrieves all SEC entities with the given SIC codes.
:)
companies:companies-for-SIC(("3600", "3674"))
