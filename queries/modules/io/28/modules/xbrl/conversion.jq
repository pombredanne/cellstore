jsoniq version "1.0";

module namespace conversion = "http://28.io/modules/xbrl/conversion";

import module namespace csv = "http://zorba.io/modules/json-csv";

declare function conversion:facts-to-csv(
    $facts as object*,
    $options as object?) as string? 
{
    let $projection :=
        if($options.Caller eq "Report")
        then ("Value",
              "Unit",
              "Decimals",
              "EntityRegistrantName",
              "ReportedConcept")
        else ("Unit",
              "Value",
              "Type",
              "Decimals")
    return if (exists($facts)) (: bug in csv:serialize :)
           then string-join(
                csv:serialize(
                    for $fact in $facts
                    return 
                        {|
                            if($fact.Labels)
                            then
                                for $aspect in keys($fact.Aspects)
                                let $aspect-value := $fact.Aspects.($aspect)
                                return
                                    if($aspect-value instance of string and exists($fact.Labels.($aspect-value)))
                                    then 
                                        {
                                            $aspect : $fact.Labels.($aspect-value)
                                        }
                                    else
                                        {
                                            $aspect : $aspect-value
                                        }
                            else
                                $fact.Aspects,
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
    return
        <Fact>{
            <Aspects>{
                for $aspect in keys($aspects)
                let $aspect-value := $aspects.$aspect
                return
                    <Aspect>
                        <Name>{$aspect}</Name>
                        <Value>{
                            if($fact.Labels and $aspect-value instance of string and exists($fact.Labels.($aspect-value)))
                            then attribute { "label" } { $fact.Labels.($aspect-value) } 
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


