import module namespace facts = "http://xbrl.io/modules/bizql/facts";

import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";

import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace csv = "http://zorba.io/modules/json-csv";
import module namespace session = "http://apps.28.io/session";


declare function local:to-xml($filings as object*) as node()*
{
    ( session:comment("xml"),
    <Filings>{
        for $f in $filings
        return
        <Filing>
            <CIK>{$f.CIK}</CIK>
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

declare function local:to-csv($filings as object*) as string*
{
    csv:serialize($filings, { serialize-null-as : "" })
};

declare function local:summary($a)
{
    {
        CIK : $a.Entity,
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
};

let $format      := lower-case(request:param-values("format")[1])
let $ciks        := distinct-values(companies:eid(request:param-values("cik")))
let $tags        := distinct-values(request:param-values("tag") ! upper-case($$))
let $tickers     := distinct-values(request:param-values("ticker"))
let $sics        := distinct-values(request:param-values("sic"))
let $fiscalPeriods := distinct-values(
                        for $fp in request:param-values("fiscalPeriod", "ALL")
                        return
                            if ($fp eq "ALL")
                            then ("Q1", "Q2", "Q3", "FY", "YTD1", "YTD2", "YTD3")
                            else $fp
                      )
let $aids     := request:param-values("aid")
let $ciks := ($ciks, 
    companies:companies-for-tags($tags),
    companies:companies-for-tickers($tickers),
    companies:companies-for-SIC($sics))
let $fiscalYears := distinct-values(
                    for $y in request:param-values("fiscalYear", "ALL")
                    return
                        if ($y eq "ALL")
                        then 2000 to 2014 (: hack that needs to be replaced by $fiscal:ALL_FISCAL_YEARS :)
                        else if ($y eq "LATEST")
                        then for $cik in $ciks
                             for $fp in $fiscalPeriods
                             return
                                (fiscal:latest-reported-fiscal-period($cik, $fp).year) cast as integer
                        else if ($y castable as integer)
                        then $y cast as integer
                        else () 
                )
let $archives := (archives:archives($aids),
                    for $fp in $fiscalPeriods, $fy in $fiscalYears
                    return
                      fiscal:filings-for-entities-and-fiscal-periods-and-years($ciks, $fp, $fy)) 
let $entities := companies:companies($archives.Entities)
return
    if (session:only-dow30($entities) or session:valid())
    then {
        let $archives :=
                for $a in $archives
                order by filings:acceptance-dateTimes($a) descending
                return local:summary($a)
        return
            switch ($format)
            case "xml"  return {
                response:serialization-parameters({"omit-xml-declaration" : false, indent : true });
                local:to-xml($archives)
            }
            case "csv" case "text" return {
                response:content-type("text/csv");
                response:header("Content-Disposition", "attachment; filename=filings.csv");
                string-join(local:to-csv($archives), "")
            }
            case "excel" return {
                response:content-type("application/vnd.ms-excel");
                response:header("Content-Disposition", "attachment; filename=filings.csv");
                string-join(local:to-csv($archives))
            }
            default return {
                response:content-type("application/json");
                response:serialization-parameters({"indent" : true});
                {|
                    { "Archives" : [ $archives ] },
                    session:comment("json")
                |}
            }
    } else {
        response:status-code(401);
        session:error("accessing filings of an entity that is not in the DOW30", $format)
    }