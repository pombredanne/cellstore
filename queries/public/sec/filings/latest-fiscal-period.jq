import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

(:
  Retrieves the latest fiscal period for which the entity with CIK 4281 submitted
  a filing.
:)
fiscal:latest-reported-fiscal-period("0000004962")
