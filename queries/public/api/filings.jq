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
        XBRLInstanceURL : $a.InstanceURL
    }
};

let $format  := lower-case(request:param-values("format")[1])
let $ciks     := request:param-values("cik")
let $fids     := request:param-values("fid")
let $archives := (archives:archives($fids), filings:filings-for-companies($ciks))
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