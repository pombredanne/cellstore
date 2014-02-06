import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace csv = "http://zorba.io/modules/json-csv";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";


declare function local:to-xml($entities as object*) as element()*
{
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

let $ciks := tokenize(request:param-values("cik"), ",") ! sec:normalize-cik($$)
let $format := lower-case(substring-after(request:path(), ".jq."))
let $res := [
                for $e in
                    if (exists($ciks))
                    then entities:entities($ciks)
                    else entities:entities()
                          
                order by $e.Profiles.SEC.CompanyName
                return $e
            ]
return
    switch ($format)
    case "xml"  return 
        <entities>{
            local:to-xml($res[])
        }</entities>
    case "text"  return
        string-join(local:to-csv($res[]), "")
    default return $res