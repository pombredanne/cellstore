import module namespace report-schemas="http://xbrl.io/modules/bizql/report-schemas";

let $schemas := {
    availableSchemas:[
        report-schemas:report-schemas() ! report-schemas:rid($$)
    ]
}
return $schemas

(: general comments

it's common practice to use the same prefixes everywhere:
entities
archives
components
hypercubes
networks
facts

sec (sec/core)
companies (sec/companies)
filings (sec/filings)
sec-components (sec/components)
sec-fiscal (sec/fiscal/core)

Also, the formatting can be standardized.

:)