import module namespace facts = "http://xbrl.io/modules/bizql/facts";

(:
  Retrieve all facts associated with the concept us-gaap:Assets.
:)
facts:facts-for-concepts("us-gaap:Revenues")
