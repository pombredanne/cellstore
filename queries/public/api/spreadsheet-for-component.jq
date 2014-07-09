jsoniq version "1.0";

import module namespace components = "http://xbrl.io/modules/bizql/components";
import module namespace components2 = "http://xbrl.io/modules/bizql/components2";
import module namespace archives = "http://xbrl.io/modules/bizql/archives";
import module namespace filings = "http://xbrl.io/modules/bizql/profiles/sec/filings";
import module namespace sec = "http://xbrl.io/modules/bizql/profiles/sec/core";
import module namespace entities = "http://xbrl.io/modules/bizql/entities";
import module namespace hypercubes = "http://xbrl.io/modules/bizql/hypercubes";
import module namespace hypercubes2 = "http://xbrl.io/modules/bizql/hypercubes2";
import module namespace conversion = "http://xbrl.io/modules/bizql/conversion";

import module namespace sec-networks = "http://xbrl.io/modules/bizql/profiles/sec/networks";
import module namespace networks = "http://xbrl.io/modules/bizql/networks";
import module namespace concept-maps = "http://xbrl.io/modules/bizql/concept-maps";

import module namespace response = "http://www.28msec.com/modules/http-response";

import module namespace session = "http://apps.28.io/session";
import module namespace util = "http://secxbrl.info/modules/util";

session:audit-call();

(: Query parameters :)
let $parameters as object := util:parameters()

(: Object resolution :)
let $entities as object* := util:entities($parameters.CIKs[], $parameters.Tags[], $parameters.Tickers[], $parameters.SICs[], ())
let $archive as object? :=
    (
        util:filings($entities, $parameters.FiscalYears[], $parameters.FiscalPeriods[]),
        archives:archives($parameters.AIDs[])
    )
let $entity as object? := entities:entities($archive.Entity)
let $components  :=
    (
    components:components($parameters.CID)[exists($parameters.CID)],
    if (exists(($parameters.Concepts[], $parameters.Disclosures[], $parameters.Roles[])))
    then (
            components2:components-by-archives-and-concepts($archive, $parameters.Concepts[]),
            sec-networks:networks-for-filings-and-disclosures($archive, $parameters.Disclosures[]),
            components2:components-by-archives-and-roles($archive, $parameters.Roles[])
        )
    else components:components-for-archives($archive))
let $component as object? := $components[1] (: only one for know :)

(: Fact resolution :)
let $definition-model := components2:standard-definition-models-for-components($component, {})
let $spreadsheet as object? :=
    components2:spreadsheet(
        $component,
        {
            FlattenRows: true,
            Eliminate: $parameters.Eliminate,
            Validate: $parameters.Validate,
            DefinitionModel: $definition-model
        })

let $results :=
        {
            response:content-type("application/json");
            response:serialization-parameters({"indent" : true});
            $spreadsheet
        }
return 
    util:check-and-return-results($entities, $results, $parameters.Format)