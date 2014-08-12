jsoniq version "1.0";
(:
 : Copyright 2012-2013 28msec Inc.
 :)

(:~
 : <p>This module provides functionality for creating and manipulating fact tables.
 : </p>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :)
module namespace fact-tables = "http://28.io/modules/xbrl/fact-tables";

import module namespace facts = "http://28.io/modules/xbrl/facts";
import module namespace components = "http://28.io/modules/xbrl/components";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 :
 : <p>Generates a fact table containing facts associated with
 : all concepts in the template, and with all associated dimensions
 : as specified in the template.</p>
 :
 : @param $template-or-model-or-model-id a template (can be a model) or an MID.
 :
 : @return a sequence of facts with populated default dimension values.
 :)
declare function fact-tables:fact-table-as-objects(
  $template-or-model-or-model-id as item) as object*
{
  fact-tables:fact-table-as-objects($template-or-model-or-model-id, ())
};

(:~
 :
 : <p>Generates a fact table containing facts associated with
 : all concepts in the template, and with all associated dimensions
 : as specified in the template.</p>
 :
 : @param $template-or-model-or-model-id a template (can be a model) or an MID.
 : @param $options further optional parameters:
 : - concept-map a concept map or its name (no concept map used if absent).
 : - archives an array of AIDs to use instead of the ones specified in the template.
 : - facts-for-archives-and-concepts a function used to retrieve the concepts in
 : an archive. facts:facts-for-archives-and-concepts#3 is used by default, but it
 : is possible to supply another function that, for examples, filters irrelevant
 : facts out.
 : @return a sequence of facts with populated default dimension values.
 :)
declare function fact-tables:fact-table-as-objects(
  $template-or-model-or-model-id as item,
  $options as object?) as object*
{
  (: @TODO: why is ModelStructure used here? does this still exist? :)
  let $model := fact-tables:resolve-component-or-template($template-or-model-or-model-id)
  let $table := $model.ModelStructure.Table
  let $default-dimension-value-map := {|
    {
      "xbrl:Concept" : null,
      "xbrl:Entity" : null,
      "xbrl:Period" : null,
      "xbrl:Unit" : null
    },
    $table.Aspects[][not $$.Name = ("xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit")] ! { $$.Name : $$.Members[[1]][ends-with($$.Label, "[Domain]")].Name }
  |}
  let $non-optional-dimensions := keys($default-dimension-value-map)[$default-dimension-value-map.($$) eq null]
  let $line-items := descendant-objects($table.LineItems).Concepts[].Name
  let $concept-map := $options.concept-map
  let $archives := (($options.archives, [ $model.AccessionNumber ])[1])[]
  return if (exists($concept-map))
  then
    let $all-mapped-concepts := $line-items ! $concept-map.mappings.($$)[]
    let $all-facts-by-archive-and-mapped-concept := {|
        for $facts in facts:facts-for-archives-and-concepts($archives, 
                                                            $all-mapped-concepts,
                                                            $options)
        group by $archive := $facts.Archive
        return { $archive : {|
            for $facts-for-archive in $facts
            group by $concept := $facts-for-archive.Aspects."xbrl:Concept"
            return { $concept : [ $facts-for-archive ] }
        |} }
    |}
    for $archive in $archives
    for $line-item in $line-items
    let $mapped-concepts := $concept-map.mappings.($line-item)
    let $mapped-facts := {
      variable $nb := size($mapped-concepts);
      variable $i := 1;
      variable $found := false;
      variable $result := ();
      while (not $found and $i le $nb)
      {
        $result := $all-facts-by-archive-and-mapped-concept.$archive.($mapped-concepts[[$i]])[];
        if (empty($result))
        then
          $i := $i + 1;
        else
          $found := true;
      }
      $result
    }
    for $fact in $mapped-facts
    where (
      every $key in keys($fact.Aspects)
      satisfies exists($default-dimension-value-map.$key)
    ) and (
      every $key in $non-optional-dimensions
      satisfies exists($fact.Aspects.$key)
    )
    return
      copy $populated := $fact
      modify (
        replace value of json $populated.Aspects."xbrl:Concept" with $line-item,
        for $dimension in $table.Aspects[].Name
        let $value := $populated.Aspects.($dimension)
        return if (empty($value))
               then insert json { $dimension: $default-dimension-value-map.$dimension }
                    into $populated.Aspects
               else ()
      )
      return $populated
  else
    for $fact in facts:facts-for-archives-and-concepts($archives, $line-items, $options)
    where (
      every $key in keys($fact.Aspects)
      satisfies exists($default-dimension-value-map.$key)
    ) and (
      every $key in $non-optional-dimensions
      satisfies exists($fact.Aspects.$key)
    )
    return
      copy $populated := $fact
      modify
        for $dimension in $table.Aspects[].Name
        let $value := $populated.Aspects.($dimension)
        return if (empty($value))
               then insert json { $dimension: $default-dimension-value-map.$dimension }
                    into $populated.Aspects
               else ()
      return $populated
};

(:~
 : <p>Generates a fact table by populating the supplied template.</p>
 :
 : @param $template-or-model-or-model-id a template (can be a model) or an MID.
 :
 : @return the populated template.
 :)
declare function fact-tables:fact-table-populated(
  $template-or-model-or-model-id as item) as object
{
  fact-tables:fact-table-populated($template-or-model-or-model-id, ())
};

(:~
 : <p>Generates a fact table by populating the supplied template.</p>
 :
 : @param $template-or-model-or-model-id a template (can be a model) or an MID.
 : @param $options further optional parameters:
 : - concept-map a concept map or its name (no concept map used if absent).
 : - archives an array of AIDs to use instead of the ones specified in the template.
 : - facts-for-archives-and-concepts a function used to retrieve the concepts in
 : an archive. facts:facts-for-archives-and-concepts#3 is used by default, but it
 : is possible to supply another function that, for examples, filters irrelevant
 : facts out.
 :
 : @return the populated template.
 :)
declare function fact-tables:fact-table-populated(
  $template-or-model-or-model-id as item,
  $options as object?) as object
{
  let $model := fact-tables:resolve-component-or-template($template-or-model-or-model-id)
  let $fact-table-by-concepts := {|
    for $f in fact-tables:fact-table-as-objects($model, $options)
    group by $concept := $f.Aspects."xbrl:Concept"
    return { $concept : [ $f ] }
  |}
  return
    copy $result := $model
    modify
      let $table := $result.ModelStructure.Table
      for $line-item in descendant-objects($table.LineItems).Concepts[]
      let $name := $line-item.Name
      return insert json { "Facts" : $fact-table-by-concepts.$name } into $line-item
    return $result
};

(:~
 :
 : <p>Generates a fact table containing facts associated with
 : all concepts in the template, and with all associated dimensions
 : as specified in the template.</p>
 :
 : @param $template-or-model-or-model-id a template or a model object or an MID.
 :
 : @return an array of arrays containing flat facts.
 :)
declare function fact-tables:fact-table(
  $template-or-model-or-model-id as item) as array
{
  fact-tables:fact-table($template-or-model-or-model-id, ())
};

(:~
 :
 : <p>Generates a fact table containing facts associated with
 : all concepts in the template, and with all associated dimensions
 : as specified in the template.</p>
 :
 : @param $template-or-model-or-model-id a template or a model object or an MID.
 : @param $options further optional parameters:
 : - concept-map a concept map or its name (no concept map used if absent).
 : - archives an array of AIDs to use instead of the ones specified in the template.
 : - facts-for-archives-and-concepts a function used to retrieve the concepts in
 : an archive. facts:facts-for-archives-and-concepts#3 is used by default, but it
 : is possible to supply another function that, for examples, filters irrelevant
 : facts out.
 :
 : @return an array of arrays containing flat facts.
 :)
declare function fact-tables:fact-table(
  $template-or-model-or-model-id as item,
  $options as object?) as array
{
  let $model := fact-tables:resolve-component-or-template($template-or-model-or-model-id)
  let $table := $model.ModelStructure.Table
  let $dimensions := distinct-values(("xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", $table.Aspects[].Name))
  return  [
    [ $dimensions, "Value", "Unit" ],
    for $fact in fact-tables:fact-table-as-objects($template-or-model-or-model-id, $options)
    return [
      $dimensions ! $fact.Aspects.($$),
      $fact.Value
    ]
  ]
};

(:~
 :
 :)
declare %private function fact-tables:resolve-component-or-template($template-or-model-or-model-id as item)
as object
{
  (components:components($template-or-model-or-model-id),
   if($template-or-model-or-model-id instance of object) then $template-or-model-or-model-id else ())[1]
};

(:~
 :
 : <p>Filters the fact table by removing dimensions and removing facts associating
 : these dimensions with a non-default value.</p>
 :
 : @param $fact-table a fact table.
 : @param $dimensions the dimensions to restrict.
 : @param $model-or-id the model corresponding to the fact table.
 :
 : @return the filtered fact table.
 :)
declare function fact-tables:collapse($fact-table as array, $model-or-id as item, $dimensions as string*)
as array
{
  [
    let $model := components:components($model-or-id)
    let $table := $model.ModelStructure.Table
    let $all-dimensions := $table.Aspects[]
    let $positions-to-filter := for $i in 1 to count($all-dimensions)
                                where $all-dimensions[$i].Name = $dimensions or empty($dimensions)
                                return $i
    let $default-values := for $i in $positions-to-filter
                           return $all-dimensions[$i].Members[[1]].Name
    return
    for $fact at $position in $fact-table[]
    where $position eq 1 or (every $p in 1 to count($positions-to-filter)
                             satisfies $fact[[3 + $positions-to-filter[$p]]] eq $default-values[$p])
    return copy $copy := $fact
           modify for $i in $positions-to-filter return delete json $copy[[3 + $i]]
           return $copy
  ]
};

(:~
 :
 : <p>Filters the fact table by removing all dimensions and removing facts associating
 : these dimensions with a non-default value.</p>
 :
 : @param $fact-table a fact table.
 : @param $model-or-id the model corresponding to the fact table.
 :
 : @return the filtered fact table.
 :)
declare function fact-tables:collapse($fact-table as array, $model-or-id as item)
as array
{
  fact-tables:collapse($fact-table, $model-or-id, ())
};
