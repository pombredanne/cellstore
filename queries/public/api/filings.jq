import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace csv = "http://zorba.io/modules/json-csv";
import module namespace session = "http://apps.28.io/session";
import module namespace datetime = "http://www.zorba-xquery.com/modules/datetime";


declare function local:to-xml($filings as object*) as element()*
{
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
    }</Filings>
};

declare function local:to-csv($filings as object*) as string*
{
    csv:serialize($filings)
};

declare function local:summary($a)
{
    {
        CIK : $a.Entity,
        EntityRegistrantName : 
            facts:facts-for-archives-and-concepts($a, "dei:EntityRegistrantName").Value,
        FormType : $a.Profiles.SEC.FormType,
        FiscalYear : $a.Profiles.SEC.Fiscal.DocumentFiscalYearFocus,
        FiscalPeriod : $a.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus,
        Accepted : format-dateTime(
                        datetime:parse-dateTime(
                            $a.Profiles.SEC.AcceptanceDatetime, "%Y%m%d%H%M%S"),
                        "[Y0001]-[M01]-[D01]"),
        Generator : $a.Profiles.SEC.Generator,
        AccessionNumber: $a._id,
        SECFilingPage : $a.Profiles.SEC.SECFilingPage,
        XBRLInstanceURL : $a.InstanceURL
    }
};

declare function local:pad-ciks($ciks as string*) as string*
{
    for $cik in $ciks
    let $cik := normalize-space($cik)
    where $cik castable as integer
    return
        format-integer($cik cast as integer, "0000000000") cast as string
};

let $format  := lower-case(substring-after(request:path(), ".jq.")) (: text, xml, or json (default) :)
let $ciks    := distinct-values(local:pad-ciks(request:param-values("cik")) ! sec:normalize-cik($$))
let $entities := entities:entities($ciks)
return
    if (session:only-dow30($entities) or session:valid())
    then {
        let $archives :=
                for $a in archives:archives-for-entities($ciks)
                order by $a.Profiles.SEC.AcceptanceDatetime descending
                return local:summary($a)
        return
            switch ($format)
            case "xml"  return local:to-xml($archives)
            case "text"  return string-join(local:to-csv($archives), "")
            default return [ $archives ]
    } else {
        response:status-code(401);
        session:error("accessing filings of an entity that is not in the DOW30", $format)
    }