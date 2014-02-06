import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace csv = "http://zorba.io/modules/json-csv";
import module namespace datetime = "http://www.zorba-xquery.com/modules/datetime";


declare function local:to-xml($filings as object*) as element()*
{
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
};

declare function local:to-csv($filings as object*) as string*
{
    csv:serialize($filings)
};

let $ciks := tokenize(request:param-values("cik"), ",") ! sec:normalize-cik($$)
let $format := lower-case(substring-after(request:path(), ".jq."))
let $res := [   
                for $a in if (exists($ciks))
                          then archives:archives-for-entities($ciks)
                          else error(xs:QName("local:PARAMETER-MISSING"))
                order by $a.Profiles.SEC.AcceptanceDatetime descending
                return {
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
            ]
return
    switch ($format)
    case "xml"  return 
        <filings>{
            local:to-xml($res[])
        }</filings>
    case "text"  return
        string-join(local:to-csv($res[]), "")
    default return $res