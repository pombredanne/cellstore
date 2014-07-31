jsoniq version "1.0";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace entities ="http://xbrl.io/modules/bizql/entities";
import module namespace mongo = "http://www.28msec.com/modules/mongodb";

let $param := lower-case(request:param-values("parameter"))

let $years :=
    for $year in 2009 to fn:year-from-date(current-date())
    order by $year descending
    return $year

let $periods := ("FY", "Q3", "Q2", "Q1")

let $sics := 
    let $c := mongo:connect("xbrl", {})
    return 
        for $s in mongo:find($c, "sics")
        group by $s.ID
        return {
            ID: $s[1].ID,
            Description: $s[1].Description,
            Sector: $s[1].Sector
        }

let $tags := ("DOW30", "SP500", "FORTUNE100", "PJI")

let $entities :=
    for $entity in entities:entities()
    return {
        name: $entity.Profiles.SEC.CompanyName,
        tickers: $entity.Profiles.SEC.Tickers,
        cik: $entity.Profiles.SEC.CIK,
        tags: $entity.Profiles.SEC.Tags,
        sic: $entity.Profiles.SEC.SIC
    }

return
    {
        response:content-type("application/json");
        response:serialization-parameters({"indent" : true});
        
        switch (true)
        case $param eq "years"
        return 
            { 
                years: [ $years ]
            }
        case $param eq "periods"
        return 
            { 
                periods: [ $periods ]
            }
        case $param eq "sics"
        return 
            { 
                sics: [ $sics ]
            }
        case $param eq "tags"
        return 
            { 
                tags: [ $tags ]
            }
        case $param eq "entities"
        return 
            { 
                entities: [ $entities ]
            }
        default
        return 
            { 
                years: [ $years ],
                periods: [ $periods ],
                sics: [ $sics ],
                tags: [ $tags ],
                entities: [ $entities ]
            }
    }
