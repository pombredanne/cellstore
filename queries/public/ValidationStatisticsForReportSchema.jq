import module namespace report-schemas = "http://xbrl.io/modules/bizql/report-schemas";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace networks = "http://xbrl.io/modules/bizql/networks";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace facts = "http://xbrl.io/modules/bizql/facts";
import module namespace companies = "http://xbrl.io/modules/bizql/profiles/sec/companies";

import module namespace sec-fiscal = "http://xbrl.io/modules/bizql/profiles/sec/fiscal/core";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";

import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace session = "http://apps.28.io/session";

let $format  := lower-case(request:param-values("format")[1])
let $aids     := request:param-values("aid","0000012927-14-000004")
let $report   := request:param-values("report","FundamentalAccountingConcepts")[1]
let $schema   := report-schemas:report-schemas($report)
let $fiscalYears :=     for $y in request:param-values("fiscalYear")
                        return
                            if ($y castable as integer)
                            then integer($y)
                            else ()
let $fiscalPeriods := request:param-values("fiscalPeriod")
let $archives := archives:archives(distinct-values($aids))
let $entities := entities:entities($archives.Entity)
return switch(true)
    case empty($archives) return {
        response:status-code(404);
        session:error("entities or archives not found (valid parameters: aid)", $format)
    }
    case not (session:only-dow30($entities) or session:valid()) return {
        response:status-code(401);
        session:error("accessing facts of an entity that is not in the DOW30", $format)
    }
    case empty($report) return {
        response:status-code(404);
        session:error("report does not exist", $report)
    }
    default return {
        
        [
            let $network as object :=
                networks:networks-for-components-and-short-names($schema, "Presentation")
            let $validation-concepts := keys(descendant-objects(descendant-objects($network)."fac:Validations").To)
            let $concepts := ("fac:PassedValidations", "fac:FailedValidations", "fac:NotApplicableValidations")
            let $options := 
                {
                    concept-maps: $report, 
                    Rules: $report
                }
            let $facts := sec:facts-for-archives-and-concepts($archives, $concepts, $options)
                [if(empty($fiscalPeriods)) then true else ($$.Profiles.SEC.Fiscal.Period = $fiscalPeriods)]
                [if(empty($fiscalYears)) then true else ($$.Profiles.SEC.Fiscal.Year = $fiscalYears)]
            let $validation-details := sec:facts-for-archives-and-concepts($archives,$validation-concepts, $options)
                [if(empty($fiscalPeriods)) then true else ($$.Profiles.SEC.Fiscal.Period = $fiscalPeriods)]
                [if(empty($fiscalYears)) then true else ($$.Profiles.SEC.Fiscal.Year = $fiscalYears)]
            let $entities := companies:companies($entities)
            let $computed-archives :=
                    for $facts-by-archive in $facts
                    group by $archive := $facts-by-archive.Archive, 
                             $year := $facts-by-archive.Profiles.SEC.Fiscal.Year,
                             $period := $facts-by-archive.Profiles.SEC.Fiscal.Period
                    let $entity := $entities[$$."_id" eq $facts-by-archive[1].$facts:ASPECTS.$facts:ENTITY][1]
                    let $validation-details-by-archive := $validation-details[$$.Archive eq $archive]
                    return
                        let $PassedValidations as object? := $facts-by-archive[$$.$facts:ASPECTS.$facts:CONCEPT eq "fac:PassedValidations"]
                        let $FailedValidations as object? := $facts-by-archive[$$.$facts:ASPECTS.$facts:CONCEPT eq "fac:FailedValidations"]
                        let $NotApplicableValidations as object? := $facts-by-archive[$$.$facts:ASPECTS.$facts:CONCEPT eq "fac:NotApplicableValidations"]
                        let $NotAplicabelValidationsDetails as string* :=
                          let $applied := $validation-details-by-archive.$facts:ASPECTS.$facts:CONCEPT
                          let $NotApplicableConcepts := $validation-concepts[not($$ = $applied)]
                          let $NotApplicableRules := $schema.Rules[][$$.ComputableConcepts[] = $NotApplicableConcepts]
                          return $NotApplicableRules.Label
                        return
                            {
                                Entity : $entity.Profiles.SEC.CompanyName,
                                CIK : $entity.Profiles.SEC.CIK,
                                SIC : $entity.Profiles.SEC.SIC, 
                                SICDescription : $entity.Profiles.SEC.SICDescription,
                                FiscalYear: $year,
                                FiscalPeriod: $period,
                                PassedValidations : $PassedValidations.Value,
                                FailedValidations : $FailedValidations.Value,
                                NotApplicableValidations : $NotApplicableValidations.Value,
                                NotApplicableDetails: [$NotAplicabelValidationsDetails],
                                ValidationDetails: [$validation-details-by-archive]
                            }
            for $archive in $computed-archives
            order by $archive.PassedValidations descending, $archive.SICDescription ascending
            return  
                $archive
        ]
    }
