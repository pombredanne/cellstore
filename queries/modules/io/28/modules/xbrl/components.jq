jsoniq version "1.0";
(:
 : Copyright 2012-2014 28msec Inc.
 :)

(:~
 : <p>This module provides functionality for retrieving components.</p>
 :
 : <p>Components help organizing the facts contained in archives
 : in smaller parts that "make sense" together. A component is identified
 : with a CID (component ID).</p>
 :
 : <p>A component is made of networks (see the networks module) and hypercubes
 : (see the hypercubes module).</p>
 :
 : <p>With this module, you can retrieve all components, all components belonging
 : to one or several archives. You can retrieve the CID of a component or retrieve
 : the components associated with a couple of CIDs.</p>
 :
 :)
module namespace components = "http://28.io/modules/xbrl/components";

import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace networks = "http://28.io/modules/xbrl/networks";
import module namespace resolution = "http://28.io/modules/xbrl/resolution";
import module namespace layout = "http://28.io/modules/xbrl/layout";
import module namespace hypercubes = "http://28.io/modules/xbrl/hypercubes";

import module namespace accountant = "http://28.io/modules/xbrl/profiles/accountant/converter";

import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : Name of the collection the components are stored in.
 :)
declare variable $components:col as xs:string := "components";

(:~
 : Name of the field pointing to the archive.
 :)
declare variable $components:ARCHIVE as xs:string := "Archive";

(:~
 : Name of the field pointing to the role.
 :)
declare variable $components:ROLE as xs:string := "Role";

(:~
 : Name of the field pointing to the default language.
 :)
declare variable $components:DEFAULT-LANGUAGE as xs:string := "DefaultLanguage";

(:~
 : <p>Retrieves all components.</p>
 : 
 : @return all components.
 :) 
declare function components:components() as object*
{
  let $conn := components:connection()
  return mongo:find($conn, $components:col, {})
};

(:~
 : <p>Retrieves the components with the given CIDs.</p>
 : 
 : @param $component-or-ids the CIDs or the components themselves.
 :
 : @return the components whose _id field matches one of these CIDs.
 :) 
declare function components:components($component-or-ids as item*) as object*
{
  let $ids as string* :=
    for $s in $component-or-ids
    where $s instance of string
    return $s
  let $components as object* :=
    for $s in $component-or-ids
    where $s instance of object
    return $s
  return
    (
      $components,
      if (exists($ids))
      then
        let $conn := components:connection()
        return mongo:find($conn, $components:col, { "_id" : { "$in" : [ $ids ! components:cid($$) ] } })
      else ()
    )
};

(:~
 : <p>Retrieves all components that belong to the supplied archives.</p>
 : 
 : @param $archive-or-id an archive or its AID.
 :
 : @return all components in the archive with this AID.
 :) 
declare function components:components-for-archives($archive-or-ids as item*) as object*
{
  let $conn := components:connection()
  for $archive-or-id in $archive-or-ids
  return mongo:find($conn, $components:col, { $components:ARCHIVE: archives:aid($archive-or-id) })
};

(:~
 : Retrieves all components for the supplied filings and roles.
 :
 : @param $archives-or-ids a sequence of archives or AIDs.
 : @param $roles a sequence of role URIs.
 :
 : @return the components.
 :)
declare function components:components-for-archives-and-roles(
    $archives-or-ids as item*,
    $roles as string*) as object*
{
    let $aids := archives:aid($archives-or-ids)
    let $conn :=   
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return
        try {
            mongo:connect($credentials)
        } catch mongo:* {
            error(QName("components:CONNECTION-FAILED"), $err:description)
        }
    return
        mongo:find($conn, "components", 
        {
            $components:ARCHIVE: { "$in" : [ $aids ] },
            "Role": { "$in" : [ $roles ] }
        })
};

(:~
 : Retrieves all components for the supplied filings and that use the supplied concepts.
 :
 : @param $archives-or-ids a sequence of archives or AIDs.
 : @param $concepts a sequence of concept names.
 :
 : @return the components.
 :)
declare function components:components-for-archives-and-concepts(
    $archives-or-ids as item*,
    $concepts as string*) as object*
{
    let $aids as string* := archives:aid($archives-or-ids)
    let $conn :=   
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return
        try {
            mongo:connect($credentials)
        } catch mongo:* {
            error(QName("components:CONNECTION-FAILED"), $err:description)
        }
    let $concepts := mongo:find($conn, "concepts", 
        {| 
            (
                { "Name" : { "$in" : [ $concepts ] } },
                { "Archive" : { "$in" : [ $aids ] } }
            )
        |})
    let $roles := $concepts.Role
    for $component in components:components-for-archives-and-roles($aids, $roles)
    where (some $concept in $concepts satisfies $concept.Archive eq $component.Archive and $concept.Role eq $component.Role)
    return $component
};

(:~
 : <p>Retrieves all definition models in a component.</p>
 :
 : @param $component a component object.
 : 
 : @return all definition models
 :)
declare function components:definition-models-for-components(
    $components as object*) as object*
{
    $components.DefinitionModels[]
};

(:~
 : <p>Retrieves definition models in a component
 : that have the supplied names.</p>
 :
 : @param $component a component object.
 : @param $names a sequence of names.
 :
 : @return the definition models.
 :)
declare function components:definition-models-for-components(
    $components as object*,
    $names as string*) as object
{
    $components.DefinitionModels[][$$.Name = $names]
};

(:~
 : <p>Selects a table from the component.</p>
 :
 : @param $component a component object.
 : @param $options <p>some optional parameters, including:</p>
 : <ul>
 :  <li>HypercubeName: a string specifying which hypercube to use. By default, one of the non-default hypercubes will be arbitrarily chosen. If none
 :  is available, the default hypercube will be picked.</li>
 : </ul>
 :
 : @error components:HYPERCUBE-DOES-NOT-EXIST if the specified hypercube is not found.
 : @return a definition model
 :)
declare function components:select-table(
    $component as object,
    $options as object?) as object
{
    let $user-chosen-table as object? := hypercubes:hypercubes-for-components($component, $options.HypercubeName)
    let $non-implicit-table as object? := hypercubes:hypercubes-for-components($component)[$$.Name ne "xbrl:DefaultHypercube"][1]
    let $implicit-table as object := hypercubes:hypercubes-for-components($component, "xbrl:DefaultHypercube")
    return
        switch(true)
        case exists($options.HypercubeName) and empty($user-chosen-table)
            return error(QName("components:HYPERCUBE-DOES-NOT-EXIST"), $options.HypercubeName || " : Hypercube does not exist.")
        case exists($user-chosen-table)
            return $user-chosen-table
        case exists($non-implicit-table)
            return $non-implicit-table
        default return $implicit-table
};

(:~
 :
 : <p>Retrieves all facts that are relevant to the
 : supplied component, and populates them with the default dimension values
 : when missing.</p>
 : <p>The default hypercube will be taken, and the concept maps and rules will
 : be used if any.</p>
 :
 : @param $component a component object.
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function components:facts(
    $component as object
)
as object*
{
  components:facts($component, {})
};

(:~
 :
 : <p>Retrieves all facts that are relevant to the
 : supplied component, and populates them with the default dimension values
 : when missing.</p>
 : 
 :
 : @param $report-or-id a report or its RID,
 : @param $options <a href="facts#standard_options">standard fact retrieving options</a> as well as
 : <ul>
 :   <li>FilterOverride: hypercube dimension specs (as defined as hypercubes:user-defined-hypercube)
 :   to override filters in the report's hypercube.</li>
 :   <li>HypercubeName: picks a different hypercube than the default one (xbrl:DefaultHypercube).</li>
 : </ul>
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function components:facts(
    $component as object,
    $options as object?
)
as object*
{
  let $concept-map := networks:networks-for-components-and-short-names(
      $component,
      "ConceptMap")
  let $rules := $component.Rules
  let $overriden-hypercube as object? :=
        if(exists($options.Hypercube))
        then $options.Hypercube
        else components:select-table($component, $options)
    let $hypercube :=
    if(exists($options.FilterOverride))
    then hypercubes:modify-hypercube(
      $overriden-hypercube,
      $options.FilterOverride
    )
    else $overriden-hypercube
  return hypercubes:facts(
          $hypercube,
          {|
            $options,
            { "ConceptMaps": $concept-map }[exists($concept-map)],
            { "Rules": $rules }[exists($rules)]
          |}
         )
};

(:~
 :
 : <p>Retrieves the spreadsheet-like rendering for the component.</p>
 : <p>The default definition model will be taken.</p>
 : <p>The default hypercube will be taken, and the concept maps and rules will
 : be used if any.</p>
 :
 : @param $component a component object.
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function components:spreadsheet(
    $component as object
)
as object*
{
  components:spreadsheet($component, {})
};

(:~
 :
 : <p>Retrieves the spreadsheet-like rendering for the component.</p>
 :
 : @param $report-or-id a report or its RID,
 : @param $options <a href="facts#standard_options">standard fact retrieving options</a> as well as
 : <ul>
 :   <li>FilterOverride: hypercube dimension specs (as defined as hypercubes:user-defined-hypercube)
 :   to override filters in the report's hypercube.</li>
 :   <li>HypercubeName: picks a different hypercube than the default one (xbrl:DefaultHypercube).</li>
 : </ul>
 :
 : 
 : @error err:XPTY0004 if zero, or more than one definition models are found.
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function components:spreadsheet(
    $component as object,
    $options as object?
)
as object*
{
    let $definition-model as object :=
        switch(true)
        case exists($options.DefinitionModel)
            return $options.DefinitionModel
        case (exists($options.DefinitionModelName))
            return components:definition-models-for-components($component, $options.DefinitionModelName)
        default
            return components:definition-models-for-components($component)
    let $overriden-hypercube as object? :=
        if(exists($options.Hypercube))
        then $options.Hypercube
        else components:select-table($component, $options)
    let $concept-map as object?:= networks:networks-for-components-and-short-names(
      $component,
      "ConceptMap")
    let $rules as array? := $component.Rules
    let $new-options as object :=
        {|
            trim($options, "Rules"),
            {"ConceptMaps": $concept-map }[exists($concept-map)],
            { "Rules": [ ( flatten($rules[]), flatten($options.Rules) ) ] }[exists(($rules, $options.Rules))],
            {
                Hypercube:
                    if(exists($options.FilterOverride))
                    then hypercubes:modify-hypercube(
                        $overriden-hypercube,
                        $options.FilterOverride
                    )
                    else $overriden-hypercube
            }[exists($overriden-hypercube)]
        |}
    let $structural-model as object := resolution:resolve(
        $definition-model,
        $component,
        $new-options)
    let $layout-model as object := layout:layout($structural-model, $new-options)
    let $accountant-model as object := accountant:flatten-row-headers($layout-model)
    return
        if($options.FlattenRows)
        then $accountant-model
        else $layout-model
};

(:~
 : Return the number of hypercubes in each of the given components.
 :
 : @param $components sequence of components.
 :
 : @return the said number of hypercubes
 :)
declare function components:num-hypercubes($components as object*) as integer*
{
  $components ! $$.Statistics.NumHypercubes
};

(:~
 : Return the number of networks in each of the given components.
 :
 : @param $components sequence of components.
 :
 : @return the said number of networks
 :)
declare function components:num-networks($components as object*) as integer*
{
  $components ! $$.Statistics.NumNetworks
};

(:~
 : Return the number of (distinct) explicit dimensions in each of the given components.
 :
 : @param $components sequence of components.
 :
 : @return the said number of dimensions
 :)
declare function components:num-explicit-dimensions($components as object*) as integer*
{
  $components ! $$.Statistics.NumDistinctExplicitDimensions
};

(:~
 : Return the number of (distinct) domains in each of the given components.
 :
 : @param $components sequence of components.
 :
 : @return the said number of domains
 :)
declare function components:num-domains($components as object*) as integer*
{
  $components ! $$.Statistics.NumDistinctDomains
};

(:~
 : Return the number of (distinct) members in each of the given components.
 :
 : @param $components sequence of components.
 :
 : @return the said number of members
 :)
declare function components:num-members($components as object*) as integer*
{
  $components ! $$.Statistics.NumDistinctMembers
};

(:~
 : Return the number of (distinct) concrete primary items being
 : in a hypercube for each of the given components.
 :
 : @param $components sequence of components.
 :
 : @return the said number of primary items
 :)
declare function components:num-concrete-primary-items-in-hypercubes($components as object*) as integer*
{
  $components ! $$.Statistics.NumDistinctConcretePrimaryItemsInHypercubes
};

(:~
 : Return the number of (distinct) abstract primary items being
 : in a hypercube for each of the given components.
 :
 : @param $components sequence of components.
 :
 : @return the said number of primary items
 :)
declare function components:num-abstract-primary-items-in-hypercubes($components as object*) as integer*
{
  $components ! $$.Statistics.NumDistinctAbstractPrimaryItemsInHypercubes
};

(:~
 : Return the number of (distinct) concrete primary items not being
 : in a hypercube for each of the given components.
 :
 : @param $components sequence of components.
 :
 : @return the said number of primary items
 :)
declare function components:num-concrete-primary-items-not-in-hypercubes($components as object*) as integer*
{
  $components ! $$.Statistics.NumDistinctConcretePrimaryItemsNotInHypercubes
};

(:~
 : Return the number of (distinct) abstract primary items not being
 : in a hypercube for each of the given components.
 :
 : @param $components sequence of components.
 :
 : @return the said number of primary items
 :)
declare function components:num-distinct-abstract-primary-items-not-in-hypercubes($components as object*) as integer*
{
  $components ! $$.Statistics.NumDistinctAbstractPrimaryItemsNotInHypercubes
};

(:~
 :
 : <p>Converts the input to a normalized component id (CID). The input
 : can be either an CID, or an component object which contains an _id.</p>
 :
 : @param $component-or-id an component object or an CID.
 :
 : @error components:INVALID_PARAMETER if the CID or component is not valid.
 :
 : @return the normalized CID.
 :)
declare function components:cid($component-or-id as item) as atomic
{
  typeswitch ($component-or-id)
  case object return
    let $id := $component-or-id._id
    return if(exists($id))
           then $id
           else error(QName("components:INVALID_PARAMETER"), 
                      "Invalid component provided (no _id field)")
  case $id as atomic return $id
  default return error(
      QName("components:INVALID_PARAMETER"),
      "Invalid component or id (must be an object or an atomic): "
      || serialize($component-or-id))
};

(:~
 :)
declare %private %an:strictlydeterministic function components:connection() as anyURI
{
  let $credentials :=
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return if (empty($credentials))
             then error(QName("components:CONNECTION-FAILED"), "no xbrl MongoDB configured")
             else $credentials
  return
    try {
      mongo:connect($credentials)
    } catch mongo:* {
      error(QName("components:CONNECTION-FAILED"), $err:description)
    }
};

