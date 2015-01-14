jsoniq version "1.0";

module namespace conversion = "http://28.io/modules/xbrl/conversion";

import module namespace csv = "http://zorba.io/modules/json-csv";

declare %private variable $conversion:STANDARD_LABELS :=
    {
        "xbrl28:Archive" : "Accession Number",
        "xbrl:Concept" : "Concept",
        "xbrl:Entity" : "Entity",
        "xbrl:Period" : "Period",
        "sec:FiscalPeriod" : "Fiscal Period",
        "sec:FiscalYear" : "Fiscal Year",
        "sec:FiscalPeriodType" : "Fiscal Period Type",
        "sec:Accepted" : "Accepted",
        "xbrl:Unit": "Unit",
        "dei:LegalEntityAxis": "Legal Entity"
    };

declare %private function conversion:aspect-label(
    $aspect as string,
    $fact as object) as string
{
    ($fact.Labels.$aspect, $conversion:STANDARD_LABELS.$aspect, $aspect)[1]
};

declare %private function conversion:aspect-value-or-label(
    $aspect as string,
    $fact as object) as atomic
{
    let $aspect-value as atomic := $fact.Aspects.($aspect)
    let $labels as object? := $fact.Labels
    return
        switch(true)
        case ($aspect-value instance of string and exists($labels.($aspect-value)))
          return $labels.($aspect-value)
        default return $aspect-value
};

declare function conversion:get-standard-labels($fact as object, $entityName as string?) as object {
    {|
        for $aspect as string in keys($fact.Aspects)
        let $aspect-label as string := conversion:aspect-label($aspect, $fact)
        let $aspect-value as atomic := conversion:aspect-value-or-label($aspect, $fact)
        return
            (
                {
                    $aspect : $aspect-label
                },
                switch(true)
                case ($aspect eq "xbrl:Entity" and starts-with($aspect-value, "http://www.sec.gov/CIK "))
                  return {
                      $aspect-value : ($entityName, substring-after($aspect-value, "http://www.sec.gov/CIK "))[1]
                  }
                case ($aspect eq "xbrl:Unit" and starts-with($aspect-value, "iso4217:"))
                  return {
                      $aspect-value : substring-after($aspect-value, "iso4217:")
                  }
                default return ()
            ),
        if(exists($fact.Unit) and starts-with($fact.Unit, "iso4217:"))
        then
            {
                $fact.Unit : substring-after($fact.Unit, "iso4217:")
            }
        else ()
    |}
};

declare function conversion:facts-to-csv(
    $facts as object*,
    $options as object?) as string?
{
    let $projection :=
        if($options.Caller eq "Report")
        then ("Value",
              "Decimals",
              "EntityRegistrantName",
              "ReportedConcept")
        else ("Value",
              "Type",
              "Decimals")
    let $use-labels as boolean := exists($facts.Labels)
    return if (exists($facts)) (: bug in csv:serialize :)
           then string-join(
                csv:serialize(
                    for $fact in $facts
                    return
                        {|
                            if($use-labels)
                            then
                                for $aspect as string in keys($fact.Aspects)[$$ ne "sec:Archive"]
                                let $aspect-label as string := conversion:aspect-label($aspect, $fact)
                                let $aspect-value as atomic := conversion:aspect-value-or-label($aspect, $fact)
                                return
                                    {
                                        $aspect-label : $aspect-value
                                    }
                            else
                                $fact.Aspects,
                            {
                                "Unit":
                                    if(starts-with($fact.Unit, "iso4217:"))
                                    then substring-after($fact.Unit, "iso4217:")
                                    else $fact.Unit
                            }[exists($fact.Unit)],
                            project($fact, $projection)
                        |},
                    { serialize-null-as : "" }
                )
            )
            else ()
};

declare function conversion:facts-to-xml(
    $facts as object*,
    $options as object?) as element()*
{
    for $fact in $facts
    let $aspects := $fact.Aspects
    let $use-labels as boolean := exists($facts.Labels)
    return
        <Fact>{
            <Aspects>{
                for $aspect in keys($aspects)
                return
                    <Aspect>
                        <Name>{
                            if($use-labels)
                            then attribute { "label" } { conversion:aspect-label($aspect, $fact) }
                            else (),
                            $aspect
                        }</Name>
                        <Value>{
                            if($use-labels)
                            then attribute { "label" } { conversion:aspect-value-or-label($aspect, $fact) }
                            else (),
                            $aspects.$aspect
                        }</Value>
                    </Aspect>
            }</Aspects>,
            if($options.Caller eq "Report")
            then (
                <Value>{$fact.Value}</Value>,
                <Type>{$fact.Type}</Type>,
                <Unit>{$fact.Unit}</Unit>[exists($fact.Unit)],
                <Decimals>{$fact.Decimals}</Decimals>[exists($fact.Decimals)],
                <EntityRegistrantName>{$fact.EntityRegistrantName}</EntityRegistrantName>,
                conversion:audittrail-to-xml($fact.AuditTrails)[exists($fact.AuditTrails)]
            ) else (
                <Type>{$fact.Type}</Type>,
                <Value>{$fact.Value}</Value>,
                <Unit>{$fact.Unit}</Unit>[exists($fact.Unit)],
                <Decimals>{$fact.Decimals}</Decimals>[exists($fact.Decimals)]
            )
        }</Fact>
};

declare function conversion:audittrail-to-xml($audit as item) as element()
{
    <AuditTrails>{
        for $a in flatten($audit)
        return (
            <Type>{$a.Type}</Type>,
            <Label>{$a.Label}</Label>,
            <Message>{$a.Message}</Message>,
            <Data>{
                if (exists($a.Data.OriginalConcept))
                then <OriginalConcept>{$a.Data.OriginalConcept}</OriginalConcept>
                else (),
                if (exists($a.Data.OutputConcept))
                then <OutputConcept>{$a.Data.OutputConcept}</OutputConcept>
                else (),
                if (exists($a.Data.AuditTrails))
                then conversion:audittrail-to-xml($a.Data.AuditTrails)
                else ()
            }</Data>
        )
    }</AuditTrails>
};
