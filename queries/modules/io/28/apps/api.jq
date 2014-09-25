jsoniq version "1.0";

module namespace api = "http://apps.28.io/api";

import module namespace session    = "http://apps.28.io/session";
import module namespace req        = "http://www.28msec.com/modules/http-request";
import module namespace resp       = "http://www.28msec.com/modules/http-response";
import module namespace sec-fiscal = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";

declare function api:parameter($name as string, $regexp as string, $default as string?)
as string?
{
  variable $param := req:param-values($name);
  if (exists($param) and not($param eq ""))
  then  
    if (matches($param, "^" || $regexp || "$"))
    then $param
    else fn:error(xs:QName("api:bad-parameter"), "Provided parameter " || $name || " with value " || $param || " does not match reg. expression " || $regexp || ".")
  else $default 
};

declare function api:parameter-enum($name as string, $enum as string*, $default as string?)
as string?
{
  variable $param := req:param-values($name);
  if (exists($param) and not($param eq ""))
  then 
    if ($param = $enum)
    then $param
    else fn:error(xs:QName("api:bad-parameter"), "Provided parameter " || $name || " with value " || $param || " is not one of these: " || string-join($enum,", ") || ".")
  else $default 
};

declare function api:required-parameter-enum($name as string, $enum as string*)
as string
{
  variable $param := api:parameter-enum($name, $enum, ());
  if (exists($param))
  then $param
  else fn:error(xs:QName("api:missing-parameter"), "Missing required parameter " || $name)
};

declare function api:parameter-boolean($name as string, $default as boolean)
as boolean
{
  boolean(api:parameter-enum($name, ("true","false"), if($default) then "true" else "false") eq "true")
};


declare function api:required-parameter($name as string, $regexp as string)
as string
{
  variable $param := api:parameter($name, $regexp, ());
  if (exists($param))
  then $param
  else fn:error(xs:QName("api:missing-parameter"), "Missing required parameter " || $name, { "parameter": $name })
};

declare %private function api:sgpl($count as integer, $singular as string, $plural as string)
as string
{ 
    if ($count eq 1)
    then $count || " " || $singular
    else $count || " " || $plural
};

declare function api:passed($timestamp as xs:dateTime?)
as string
{
    if (empty($timestamp) or $timestamp eq null)
    then "Never"
    else
        let $now := current-dateTime()
        let $difference := $now - $timestamp
        let $years := years-from-duration($difference)
        let $month := months-from-duration($difference)
        let $days := days-from-duration($difference)
        let $hours := hours-from-duration($difference)
        let $minutes := minutes-from-duration($difference)
        return
            if ($years gt 0) then api:sgpl($years,"year ago","years ago")
            else if ($month gt 0) then api:sgpl($month,"month ago","month ago")
            else if ($days gt 0) then api:sgpl($days, "day ago", "days ago")
            else if ($hours gt 0) then api:sgpl($hours, "hour ago", "hours ago")
            else if ($minutes gt 0) then api:sgpl($minutes, "minute ago", "minutes ago")
            else if ($difference div xs:dayTimeDuration("PT1S") lt 0) then "future"
            else "Just Now"        
};

declare function api:boolean($value as string) as boolean
{
    if ($value eq "")
    then true
    else boolean($value)
};

declare function api:success() as object
{
  { "success" : true }
};

declare function api:success($data as object()) as object
{
  {| 
     {"success" : true },
     $data
  |}
};

declare %an:sequential function api:check-and-return-results(
    $entities as object*,
    $results as item*,
    $format as string?
) as item*
{
    switch(session:check-access($entities, "data_sec"))
    case $session:ACCESS-ALLOWED return
        $results
    case $session:ACCESS-DENIED return {
          resp:status-code(403);
          session:error("accessing filings of an entity that is not in the DOW30", $format)
       }
    case $session:ACCESS-AUTH-REQUIRED return {
          resp:status-code(401);
          session:error("authentication required or session expired", $format)
       }
    default return error()
};

declare function api:normalize-facts(
    $facts as object*) as object*
{
    for $fact in $facts
    return {|
        {
            "Aspects" : {|
                trim($fact.Aspects, ("xbrl:Unit"))
            |}
        },
        trim($fact, ("Aspects", "_id")),
        { Unit: $fact.Aspects."xbrl:Unit" }[exists($fact.Aspects."xbrl:Unit")]
    |}
};

declare %an:sequential function api:serialize(
    $result as json-item,
    $comment as object,
    $serializers as object,
    $format as string?,
    $file-name as string) as item*
{
    switch ($format)
    case "xml" return {
        resp:serialization-parameters({"omit-xml-declaration" : false, indent : true });
        session:comment("xml", $comment),
        $serializers.to-xml($result)
    }
    case "text" case "csv" return {
        resp:content-type("text/csv");
        resp:header("Content-Disposition", "attachment; filename=" || $file-name || ".csv");
        $serializers.to-csv($result)
    }
    case "excel" return {
        resp:content-type("application/vnd.ms-excel");
        resp:header("Content-Disposition", "attachment; filename=" || $file-name || ".csv");
        $serializers.to-csv($result)
    }
    default return {
        resp:content-type("application/json");
        resp:serialization-parameters({"indent" : true});
        {|
            session:comment("json", $comment),
            $result
        |}
    }
};

declare function api:preprocess-fiscal-years($fiscal-years as string*) as integer*
{
  distinct-values(
    for $fy in $fiscal-years ! upper-case($$)
    return switch($fy)
           case "LATEST" return $sec-fiscal:LATEST_FISCAL_YEAR
           case "ALL" return $sec-fiscal:ALL_FISCAL_YEARS
           default return if($fy castable as integer) then integer($fy) else ()
  )
};

declare function api:preprocess-fiscal-periods($fiscal-periods as string*) as string*
{
  distinct-values(
    for $fp in $fiscal-periods ! upper-case($$)
    return if ($fp = ("Q1", "Q2", "Q3", "FY"))
           then $fp
           else if ($fp eq "ALL")
           then $sec-fiscal:ALL_FISCAL_PERIODS
           else error(xs:QName("local:INVALID-PERIOD"),
                      $fp || ": fiscalPeriod values must be one or more of Q1, Q2, Q3, FY, ALL")
  )
};

declare function api:preprocess-format($format as string?) as string?
{
  lower-case(($format, substring-after(req:path(), ".jq."))[1])
};

declare function api:preprocess-tags($tags as string*) as string*
{
  distinct-values($tags ! upper-case($$))
};
