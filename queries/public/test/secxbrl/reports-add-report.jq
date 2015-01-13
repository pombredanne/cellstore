import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace config = "http://apps.28.io/config";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace random = "http://zorba.io/modules/random";

declare variable $newId as string := random:uuid();
declare variable $newReport as object :=
    {
        "_id" : $newId,
        "Archive" : null,
        "Label" : "Add test",
        "Description" : "",
        "Owner" : "support@28.io",
        "Role" : "http://reports.28.io",
        "Prefix" : "t",
        "Networks" : [ {
            "LinkName" : "link:presentationLink",
            "LinkRole" : "http://reports.28.io",
            "ArcName" : "link:presentationArc",
            "ArcRole" : "http://www.xbrl.org/2003/arcrole/parent-child",
            "Kind" : "InterConceptTreeNetwork",
            "ShortName" : "Presentation",
            "CyclesAllowed" : "undirected",
            "Trees" : [
                {
                    "Id" : "3ef962e3-a913-464e-94be-f78a689d15ae",
                    "Name" : "t:ReportLineItems",
                    "Label" : "test",
                    "Order" : 1
                }
            ]
        } ],
        "Hypercubes" : {
            "xbrl:DefaultHypercube" : {
                "Name" : "xbrl:DefaultHypercube",
                "Label" : "test [Table]",
                "Aspects" : {
                    "xbrl:Concept" : {
                        "Name" : "xbrl:Concept",
                        "Label" : "Concept",
                        "Members" : [
                            {
                                "Name" : "t:ReportLineItems",
                                "Label" : "test",
                                "IsAbstract" : true
                            }
                        ]
                    }
                }
            }
        },
        "Rules" : [  ],
        "Filters" : {
            "cik" : [  ],
            "tag" : [ "DOW30" ],
            "fiscalYear" : [ 2014 ],
            "fiscalPeriod" : [ "FY" ],
            "fiscalPeriodType" : [ "instant", "YTD" ],
            "sic" : [  ]
        },
        "LastModified" : "2014-11-20T10:41:17.75774Z"
    };

declare %private function local:url($parameters as object?, $endpoint as string, $includeToken as boolean) as string
{
    "http://" || request:server-name() || ":" || request:server-port() ||
    "/v1/_queries/public/reports/" || $endpoint || ".jq?_method=POST&token=" || (if($includeToken) then $config:test-token else "{{token}}") || "&"||
    string-join(
        for $key in keys($parameters)
        for $value as string in (flatten($parameters.$key) ! string($$))
        return ($key||"="||$value),
        "&")
};

declare %private function local:check-response($url as string, $response as object, $body-checks as object?) as item
{
    let $status as integer := $response.status
    let $body as object := parse-json($response.body.content)
    return
        if($status eq 200 and (every $key in keys($body-checks) satisfies $body.$key eq $body-checks.$key))
        then true()
        else 
            {
                "url": $url,
                "status": $status,
                "reponse": $body
            }
};

declare %an:sequential function local:add-report() as item*
{
    let $parameters := {
    }
    let $endpoint as string := "add-report"
    let $url := local:url($parameters, $endpoint, true())
    let $request := http-client:post($url, serialize($newReport))
    return local:check-response(
                local:url($parameters, $endpoint, false()),
                $request, 
                {
                    "_id": $newId,
                    "Label": $newReport.Label
                })
};

declare %an:sequential function local:check($o as object) as object
{
    if (not(every $k in (keys($o) ! $o.$$) satisfies ($k instance of boolean and $k)))
    then {
            response:status-code(500);
            $o
    } else
            $o
};

local:check({
    "add-report": local:add-report()
})
