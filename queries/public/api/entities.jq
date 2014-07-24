import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace request = "http://www.28msec.com/modules/http-request";

declare function local:to-xml($entities as object*)
{ 
  (session:comment("xml", {
        NumEntities: count($entities),
        TotalNumEntities: session:num-entities() 
      }),
  <Entities>{
    for $e in $entities
    return
    <Entity>
        <ID>{$e._id}</ID>
        <Profile name="{$e.Profiles.SVS.Name}">
            <EntityRegistrantName>{$e.Profiles.SVS.CompanyName}</EntityRegistrantName>
            <CompanyType>{$e.Profiles.SVS.CompanyType}</CompanyType>
            <SIC>{$e.Profiles.SVS.SIC}</SIC>
            <SICDescription>{$e.Profiles.SVS.SICDescription}</SICDescription>
            <SICGroup>{$e.Profiles.SVS.SICGroup}</SICGroup>
            <Sector>{$e.Profiles.SVS.Sector}</Sector>
            <IsTrust>{$e.Profiles.SVS.IsTrust}</IsTrust>    
            <Tickers>{
                for $t in $e.Profiles.SVS.Tickers[]
                return <Ticker>{$t}</Ticker>
            }</Tickers>
            <Tags>
            {
                for $t in $e.Profiles.SVS.Tags[]
                return <Tag>{$t}</Tag>
            }
            </Tags>
        </Profile>
    </Entity>
  }</Entities>)
};

declare function local:to-csv($entities as object*) as string*
{
    csv:serialize(
        for $e in $entities
        return  {
            ID : $e._id,
            Profile : "SVS",
            EntityName : $e.Profiles.SVS.CompanyName,
            CompanyType : $e.Profiles.SVS.CompanyType,
            SIC : $e.Profiles.SVS.SIC,
            SICDescription : $e.Profiles.SVS.SICDescription,
            SICGroup :$e.Profiles.SVS.SICGroup,
            Sector : $e.Profiles.SVS.Sector,
            IsTrust : $e.Profiles.SVS.IsTrust,
            Tickers : string-join($e.Profiles.SVS.Tickers[], " "),
            Tags : string-join($e.Profiles.SVS.Tags[], " ")
        },
        { serialize-null-as : "" }
    )
};

let $format  := lower-case(request:param-values("format")[1])
let $ruts    := request:param-values("rut")
let $tags    := request:param-values("tag") ! upper-case($$) (: DOW30, SP500, FORTUNE100 :)
let $tickers := request:param-values("ticker")
let $entities := 
    for $entity in 
        if (exists(($ruts, $tags, $tickers)))
        then
            for $entity in (companies:companies($ruts),
                       companies:companies-for-tags($tags),
                       companies:companies-for-tickers($tickers))
            group by companies:eid($entity) (: duplicate elimination :)
            return $entity[1]
        else
            companies:companies()
    order by $entity.Profiles.SVS.CompanyName (: companies:name() ? :)
    return $entity
let $comment := 
{
    NumEntities: count($entities),
    TotalNumEntities: session:num-entities() 
}
let $result := { "Entities" : [ $entities ] }
let $serializers := {
    to-xml : function($res as object) as node() {
        <Entities>{
            companies:to-xml($res.Entities[])
        }</Entities>
    },
    to-csv : function($res as object) as string {
        string-join(companies:to-csv($res.Entities[]))
    }
}
return util:serialize($result, $comment, $serializers, $format, "entities")
