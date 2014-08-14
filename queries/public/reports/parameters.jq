jsoniq version "1.0";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace entities ="http://28.io/modules/xbrl/entities";
import module namespace mongo = "http://www.28msec.com/modules/mongodb";

let $param := lower-case(request:param-values("parameter"))

let $years :=
    (
        "LATEST",
        if(month-from-date(current-date()) gt 4) 
        then year-from-date(current-date()) + 1
        else (),
        for $year in 2009 to fn:year-from-date(current-date())
        order by $year descending
        return $year    
    )
    

let $periods := ("FY", "Q3", "Q2", "Q1")

let $sics := 
    let $c := mongo:connect("xbrl", {})
    return 
        for $s in mongo:find($c, "sics")
        group by $s.ID
        let $s := $s[1]
        return {
            ID: $s.ID,
            Description: $s.Description,
            Sector: $s.Sector
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
