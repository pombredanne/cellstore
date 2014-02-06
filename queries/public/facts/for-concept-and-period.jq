import module namespace facts = "http://xbrl.io/modules/bizql/facts";

(:
  Retrieve all facts associated with the concept us-gaap:Assets and the period
  December 31st, 2012.
:)
facts:facts-for-aspects(
    {
      "xbrl:Concept" : "us-gaap:Assets",
      "xbrl:Period" : "2012-12-31"
    }
)
