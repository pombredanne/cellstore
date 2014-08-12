jsoniq version "1.0";
(:
 : Copyright 2013 28msec Inc.
 :)


(:~
 : <p>This module provides functions for storing, retrieving, and modifying
 : concept maps. Concept maps can be used in BizQL queries.</p>
 :
 : <p>A concept map is a network of concepts that can be contained in a report schema.
 : It maps "virtual" concepts to reported concepts, which allows comparison across
 : archives that use different vocabularies (so-called extension facts).</p>
 : 
 : <p>With this module, you can retrieve the concept map associated with each report
 : schema. You can also query for facts by making implicitly use of the mapping.</p>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :
 :)
module namespace concept-maps = "http://28.io/modules/xbrl/concept-maps";

import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace facts = "http://28.io/modules/xbrl/facts";
import module namespace networks = "http://28.io/modules/xbrl/networks";
import module namespace report-schemas = "http://28.io/modules/xbrl/report-schemas";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : Joker for all archives or all concepts.
 :)
declare variable $concept-maps:ALL_OF_THEM as boolean := true;

(:~
 : <p>Retrieves all concept maps.</p>
 : 
 : @return all concept maps.
 :) 
declare function concept-maps:concept-maps() as object*
{
  networks:networks-for-components-and-short-names(report-schemas:report-schemas(), "ConceptMap")
};

(:~
 : <p>Return the concept maps from the given report schemas.</p>
 :
 : @param $rid the schemas containing the maps, or their RIDs (ConceptMap networks).
 : 
 : @return the concept maps from the report schemas.
 :) 
declare function concept-maps:concept-maps($report-schemas-or-ids as item*)
as object*
{
  networks:networks-for-components-and-short-names(
    report-schemas:report-schemas($report-schemas-or-ids), "ConceptMap")
};

(:~
 : <p>Resolves the supplied concepts according to the supplied concept map.</p>
 : 
 : @param $archive-or-ids a sequence of archives or AIDs (or $concept-maps:ALL_OF_THEM to do
 : no filter on archives).
 : @param $concepts a sequence of concept names (or $concept-maps:ALL_OF_THEM to do
 : no filter on concepts).
 : @param $concept-maps a sequence of concept maps.
 :
 : @return the resolved facts, with the concept name overriden with the new name.
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for.
 :) 
declare function concept-maps:facts-for-archives-and-concepts(
    $archive-or-ids as item*,
    $concepts as string*,
    $concept-maps as object*
) as object*
{
  concept-maps:facts-for-archives-and-concepts($archive-or-ids, $concepts, $concept-maps, {})
};


(:~
 : <p>Resolves the supplied concepts according to the supplied concept map.</p>
 : 
 : @param $archive-or-ids a sequence of archives or AIDs (or $concept-maps:ALL_OF_THEM to do
 : no filter on archives).
 : @param $concepts a sequence of concept names (or $concept-maps:ALL_OF_THEM to do
 : no filter on concepts).
 : @param $concept-maps a sequence of concept maps.
 : @param $options <a href="facts#standard_options">standard fact retrieving options</a>.
 :
 : @return the resolved facts, with the concept name overriden with the new name.
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for.
 :) 
declare function concept-maps:facts-for-archives-and-concepts(
    $archive-or-ids as item*,
    $concepts as string*,
    $concept-maps as object+,
    $options as object?
) as object*
{
  let $new-options as object? :=
    facts:merge-objects(
      {
        Filter: 
          {|
            if (not deep-equal($archive-or-ids, $concept-maps:ALL_OF_THEM)) 
            then { Archive: archives:aid($archive-or-ids) }
            else (),
            if (not deep-equal($concepts, $concept-maps:ALL_OF_THEM))
            then { 
                   Aspects: { "xbrl:Concept": $concepts }
                 }
            else ()
          |},
        concept-maps: $concept-maps
      },
      $options,
      true (: giving parameters higher priority :))
  return facts:facts-for($new-options)
};

