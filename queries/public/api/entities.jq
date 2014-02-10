import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace csv = "http://zorba.io/modules/json-csv";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";

declare function local:to-xml($entities as object*) as element()*
{
  <Entities>{
    for $e in $entities
    return
    <Entity>
        <ID>{$e._id}</ID>
        <Profile name="{$e.Profiles.SEC.Name}">
            <CompanyName>{$e.Profiles.SEC.CompanyName}</CompanyName>
            <CompanyType>{$e.Profiles.SEC.CompanyType}</CompanyType>
            <SIC>{$e.Profiles.SEC.SIC}</SIC>
            <SICDescription>{$e.Profiles.SEC.SICDescription}</SICDescription>
            <SICGroup>{$e.Profiles.SEC.SICGroup}</SICGroup>
            <Sector>{$e.Profiles.SEC.Sector}</Sector>
            <IsTrust>{$e.Profiles.SEC.IsTrust}</IsTrust>    
            <Tickers>{
                for $t in $e.Profiles.SEC.Tickers[]
                return <Ticker>{$t}</Ticker>
            }</Tickers>
            <Tags>
            {
                for $t in $e.Profiles.SEC.Tags[]
                return <Tag>{$t}</Tag>
            }
            </Tags>
        </Profile>
    </Entity>
  }</Entities>
};

declare function local:to-csv($entities as object*) as string*
{
    csv:serialize(
        for $e in $entities
        return  {
            ID : $e._id,
            Profile : "SEC",
            CompanyName : $e.Profiles.SEC.CompanyName,
            CompanyType : $e.Profiles.SEC.CompanyType,
            SIC : $e.Profiles.SEC.SIC,
            SICDescription : $e.Profiles.SEC.SICDescription,
            SICGroup :$e.Profiles.SEC.SICGroup,
            Sector : $e.Profiles.SEC.Sector,
            IsTrust : $e.Profiles.SEC.IsTrust,
            Tickers : string-join($e.Profiles.SEC.Tickers[], " "),
            Tags : string-join($e.Profiles.SEC.Tags[], " ")
        }
    )
};

declare function local:only-dow30($entities as object*) as boolean
{
    count(
        for $e in $entities
        where count($e.Profiles.SEC.Tags[]) gt 0 and $e.Profiles.SEC.Tags[] = "DOW30"
        return $e) eq count($entities)
};

declare function local:pad-ciks($ciks as string*) as string*
{
    for $cik in $ciks
    let $cik := normalize-space($cik)
    where $cik castable as integer
    return
        format-integer($cik cast as integer, "0000000000") cast as string
};

let $format  := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)
let $ciks    := local:pad-ciks(request:param-values("cik")) ! sec:normalize-cik($$)
let $indexes := request:param-values("index") ! upper-case($$) (: DOW30, SP500, FORTUNE100 :)
let $tickers := request:param-values("ticker")
let $entities := 
    for $e in 
        if (exists($ciks) or exists($indexes) or exists($tickers))
        then
            for $e in (entities:entities($ciks),
                       companies:companies-for-tags($indexes),
                       companies:companies-for-tickers($tickers))
            group by $e._id (: duplicate elimination :)
            return $e[1]
        else
            entities:entities()
    order by $e.Profiles.SEC.CompanyName
    return  $e
return
    switch ($format)
        case "xml"  return local:to-xml($entities)
        case "text"  return string-join(local:to-csv($entities), "")
        default return [ $entities ]