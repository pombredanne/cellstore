jsoniq version "1.0";

module namespace util = "http://secxbrl.info/modules/util";

import module namespace session = "http://apps.28.io/session";
import module namespace response = "http://www.28msec.com/modules/http-response";

declare %an:sequential function util:check-and-return-results(
    $entities as object*,
    $results as item*,
    $format as string?
) as item*
{
    switch(session:check-access($entities, "data_sec"))
    case $session:ACCESS-ALLOWED return
        $results
    case $session:ACCESS-DENIED return {
          response:status-code(403);
          session:error("accessing filings of an entity that is not in the DOW30", $format)
       }
    case $session:ACCESS-AUTH-REQUIRED return {
          response:status-code(401);
          session:error("authentication required or session expired", $format)
       }
    default return error()
};

declare function util:normalize-facts(
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

declare %an:sequential function util:serialize(
    $result as json-item,
    $comment as object,
    $serializers as object,
    $format as string?,
    $file-name as string) as item*
{
    switch ($format)
    case "xml" return {
        response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
        session:comment("xml", $comment),
        $serializers.to-xml($result)
    }
    case "text" case "csv" return {
        response:content-type("text/csv");
        response:header("Content-Disposition", "attachment; filename=" || $file-name || ".csv");
        $serializers.to-csv($result)
    }
    case "excel" return {
        response:content-type("application/vnd.ms-excel");
        response:header("Content-Disposition", "attachment; filename=" || $file-name || ".csv");
        $serializers.to-csv($result)
    }
    default return {
        response:content-type("application/json");
        response:serialization-parameters({"indent" : true});
        {|
            session:comment("json", $comment),
            $result
        |}
    }
};

declare function util:preprocess-fiscal-years($fiscal-years as string*) as integer*
{
  distinct-values(
    for $fy in $fiscal-years ! upper-case($$)
    return switch($fy)
           case "LATEST" return $sec-fiscal:LATEST_FISCAL_YEAR
           case "ALL" return $sec-fiscal:ALL_FISCAL_YEARS
           default return if($fy castable as integer) then integer($fy) else ()
  )
};

declare function util:preprocess-fiscal-periods($fiscal-periods as string*) as string*
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

declare function util:preprocess-format($format as string?) as string?
{
  lower-case(($format, substring-after(request:path(), ".jq."))[1])
};

declare function util:preprocess-tags($tags as string*) as string*
{
  distinct-values($tags ! upper-case($$))
};