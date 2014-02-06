import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";

let $e := companies:companies-for-tags("DOW30")
return
{
  count : count($e)
}


