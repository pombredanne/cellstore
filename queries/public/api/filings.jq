(: SVS OK:)
import module namespace facts = "http://xbrl.io/modules/bizql/facts";

import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";

import module namespace companies2 = "http://xbrl.io/modules/bizql/profiles/sec/companies2";
import module namespace fiscal-core = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace fiscal-core2 = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core2";

import module namespace util = "http://secxbrl.info/modules/util";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

session:audit-call();

declare function local:to-xml($filings as object*) as node()*
{
    ( session:comment("xml", {
        NumArchives: count($filings),
        TotalNumArchives: session:num-archives(),
        TotalNumEntities: session:num-entities()
    }),
    <Filings>{
        for $f in $filings
        return
        <Filing>
            <RUT>{$f.RUT}</RUT>
            <EntityRegistrantName>{$f.EntityRegistrantName}</EntityRegistrantName>
            <FormType>{$f.FormType}</FormType>
            <FiscalYear>{$f.FiscalYear}</FiscalYear>
            <FiscalPeriod>{$f.FiscalPeriod}</FiscalPeriod>
            <Accepted>{$f.Accepted}</Accepted>
            <Generator>{$f.Generator}</Generator>
            <AccessionNumber>{$f.AccessionNumber}</AccessionNumber>
            <SECFilingPage>{$f.SECFilingPage}</SECFilingPage>
            <XBRLInstanceURL>{$f.XBRLInstanceURL}</XBRLInstanceURL>
            <Networks>{$f.Networks}</Networks> 
            <ReportElements>{$f.ReportElements}</ReportElements> 
            <Tables>{$f.Tables}</Tables> 
            <Axis>{$f.Axis}</Axis> 
            <Members>{$f.Members}</Members> 
            <LineItems>{$f.LineItems}</LineItems> 
            <Concepts>{$f.Concepts}</Concepts> 
            <Abstracts>{$f.Abstracts}</Abstracts> 
            <Footnotes>{$f.Footnotes}</Footnotes> 
            <Facts>{$f.Facts}</Facts> 
            <ExtensionFacts>{$f.ExtensionFacts}</ExtensionFacts>  
            <ExtensionConcepts>{$f.ExtensionConcepts}</ExtensionConcepts> 
            <ExtensionAbstracts>{$f.ExtensionAbstracts}</ExtensionAbstracts> 
        </Filing>
    }</Filings>)
};

(: Post-processing :)
let $format as string? := (: backwards compatibility, to be deprecated  :)
    lower-case(($format, substring-after(request:path(), ".jq."))[1])
let $tags as string* := (: backwards compatibility, to be deprecated :)
    distinct-values($tags ! upper-case($$))
let $fiscalYears as integer* :=
    for $fy in $fiscalYears ! upper-case($$)
    return switch($fy)
           case "LATEST" return $fiscal-core2:LATEST_FISCAL_YEAR
           case "ALL" return $fiscal-core:ALL_FISCAL_YEARS
           default return if($fy castable as integer) then integer($fy) else ()
let $fiscalPeriods as string* :=
    for $fp in $fiscalPeriods ! upper-case($$)
    return switch($fp)
           case "ALL" return $fiscal-core:ALL_FISCAL_PERIODS
           default return $fp

(: Object resolution :)
let $entities := 
    companies2:companies(
        $ciks,
        $tags,
        $tickers,
        $sics)
let $archives as object* := fiscal-core2:filings(
    $entities,
    $fiscalPeriods,
    $fiscalYears,
    $aids)
let $entities as object* := companies:companies($archives.Entity)
let $summaries := for $f in filings:summaries($archives) 
                  order by $f.Accepted descending
                  return $f
let $result := { "Archives" : [ $summaries ] }
let $comment :=
{
    {
        RUT : $a.Entity,
        EntityRegistrantName : 
            facts:facts-for-archives-and-concepts($a, "dei:EntityRegistrantName").Value,
        FormType : filings:document-types($a),
        FiscalYear : fiscal:fiscal-year($a),
        FiscalPeriod : fiscal:fiscal-period($a),
        Accepted : filings:acceptance-dateTimes($a),
        Generator : filings:generators($a),
        AccessionNumber: $a._id,
        SECFilingPage : $a.Profiles.SEC.SECFilingPage,
        XBRLInstanceURL : $a.InstanceURL,
        Networks : filings:num-networks($a),
        ReportElements : filings:num-report-elements($a),
        Tables : filings:num-tables($a),
        Axis : filings:num-axes($a),
        Members : filings:num-members($a),
        LineItems : $a.Statistics.Profiles.SEC.NumDistinctReportElementNamesEndingWithLineItems,
        Concepts : filings:num-concepts($a),
        Abstracts : filings:num-abstracts($a),
        Footnotes : filings:num-footnotes($a),
        Facts: filings:num-facts($a),
        ExtensionFacts:  filings:num-extension-facts($a),
        ExtensionConcepts : filings:num-extension-concepts($a),
        ExtensionAbstracts : filings:num-extension-abstracts($a) 
    }
}
};

let $format      := lower-case(request:param-values("format")[1])
let $ruts        := distinct-values(companies:eid(request:param-values("rut")))
let $tags        := distinct-values(request:param-values("tag") ! upper-case($$))
let $tickers     := distinct-values(request:param-values("ticker"))
let $sics        := distinct-values(request:param-values("sic"))
let $fiscalPeriods := distinct-values(let $fp := request:param-values("fiscalPeriod", "FY")
                      return
                        if (($fp ! lower-case($$)) = "all")
                        then $fiscal:ALL_FISCAL_PERIODS
                        else if (($fp ! lower-case($$)) = "fy")
                        then ("FY", "Q4")
                        else $fp)
let $aids     := request:param-values("aid")
let $ruts := ($ruts, 
    companies:companies-for-tags($tags),
    companies:companies-for-tickers($tickers),
    companies:companies-for-SIC($sics))
let $fiscalYears := distinct-values(
                    for $y in request:param-values("fiscalYear", "LATEST")
                    return
                        if ($y eq "ALL")
                        then $fiscal:ALL_FISCAL_YEARS
                        else if ($y eq "LATEST")
                          then for $rut in $ruts
                               for $fp in $fiscalPeriods
                               return
                                   if ($fiscal:ALL_FISCAL_PERIODS eq $fp)
                                   then
                                       (fiscal:latest-reported-fiscal-period($rut).year) ! ($$ cast as integer) 
                                   else 
                                       (fiscal:latest-reported-fiscal-period($rut, $fp).year) ! ($$ cast as integer) 
                        else if ($y castable as integer)
                        then $y cast as integer
                        else ()
                )
let $archives := (archives:archives($aids),
                    for $fp in $fiscalPeriods, $fy in $fiscalYears
                    return
                      fiscal:filings-for-entities-and-fiscal-periods-and-years($ruts, $fp, $fy)) 
let $entities := companies:companies($archives.Entities)
return
    util:check-and-return-results($entities, $results, $format)
