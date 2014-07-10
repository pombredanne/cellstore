import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace session = "http://apps.28.io/session";

import module namespace util = "http://secxbrl.info/modules/util";

session:audit-call();

(: Query parameters :)
let $format as string?         := request:param-values("format")
let $ciks as string*           := distinct-values(request:param-values("cik"))
let $tags as string*           := distinct-values(request:param-values("tag"))
let $tickers as string*        := distinct-values(request:param-values("ticker"))
let $sics as string*           := distinct-values(request:param-values("sic"))
let $parameters := {|
    {
        CIKs: [ $ciks ],
        Tags: [ $tags ],
        Tickers: [ $tickers ],
        SICs: [ $sics ]
    },
    { Format: $format }[exists($format)]
|}


(: Object resolution :)
let $parameters as object := util:process-parameters($parameters)
let $entities := 
    for $entity in 
        if (exists(($ciks, $tags, $tickers, $sics)))
        then util:entities-from-parameters($parameters, {})
        else companies:companies()
    order by $entity.Profiles.SEC.CompanyName
    return $entity
return
    switch ($format)
        case "xml"  return { 
            response:content-type("application/xml");
            response:serialization-parameters({"omit-xml-declaration" : false});
            (session:comment("xml", {
                NumEntities: count($entities),
                TotalNumEntities: session:num-entities() 
            }),
            <Entities>{
                companies:to-xml($entities)
            }</Entities>)
        }
        case "text" case "csv" return {
            response:content-type("application/csv");
            string-join(companies:to-csv($entities))
        }
        case "excel" return {
            response:content-type("application/vnd.ms-excel");
            response:header("Content-Disposition", "attachment; filename=entities.csv");
            string-join(companies:to-csv($entities))
        }
        default return {
            response:content-type("application/json");
            response:serialization-parameters({"indent" : false});
            {|
                { "Entities" : [ $entities ] },
                session:comment("json", {
                        NumEntities: count($entities),
                        TotalNumEntities: session:num-entities() 
                    }) 
            |} 
        } 
