jsoniq version "1.0";
(:
 : Copyright 2014 28msec Inc.
 :)

(:~
 : <p>This module provides functionality for retrieving concepts
 : and labels.</p>
 :
 : @author Federico Cavalieri
 :)
module namespace concepts = "http://28.io/modules/xbrl/concepts";

import module namespace components = "http://28.io/modules/xbrl/components";

import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : Name of the collection the concepts are stored in.
 :)
declare variable $concepts:col as xs:string := "concepts";

(:~
 : Name of the field pointing to the archive.
 :)
declare variable $concepts:ARCHIVE as xs:string := "Archive";

(:~
 : Name of the field pointing to the role.
 :)
declare variable $concepts:ROLE as xs:string := "Role";

(:~
 : Name of the field pointing to the name.
 :)
declare variable $concepts:NAME as xs:string := "Name";

(:~
 : Name of the field pointing to the labels.
 :)
declare variable $concepts:LABELS as xs:string := "Labels";

(:~
 : The default component link role.
 :)
declare variable $concepts:DEFAULT_COMPONENT_LINK_ROLE as xs:string :=
    "http://www.xbrl.org/2003/role/link";

(:~
 : The standard label role.
 :)
declare variable $concepts:STANDARD_LABEL_ROLE as xs:string :=
    "http://www.xbrl.org/2003/role/label";

(:~
 : A joker to ask for all concept names.
 :)
declare variable $concepts:ALL_CONCEPT_NAMES as xs:string := "";

(:~
 : <p>Retrieves all concepts.</p>
 : 
 : @return all concepts.
 :) 
declare function concepts:concepts() as object*
{
  let $conn := concepts:connection()
  return mongo:find($conn, $concepts:col, {})
};

(:~
 : <p>Retrieves the concepts which:
 :  - concept name matches a given one;
 :  - archive number matches that of a given component;
 :  - component role matches that of a given component or is the default 
 :    component role.
 : </p>
 :
 : @param $concept-names the concepts names.
 : @param $component-or-ids the CIDs or the components themselves.
 : 
 : @return the matching concepts.
 :) 
declare function concepts:concepts-for-components($concept-names as string*, 
    $component-or-ids as item*) as object*
{
  let $components := components:components($component-or-ids)
  return concepts:concepts($concept-names, $components.Archive[not $$ instance of null], $components.Role)
};

(:~
 : <p>Retrieves the concepts which:
 :  - concept name and archive number match a given one;
 :  - component role matches a given one or is the default 
 :    component role.
 : </p>
 :
 : @param $concept-names the concepts names.
 : @param $archives the archive numbers.
 : @param $component-roles the component roles.
 : 
 : @return the matching concepts.
 :) 
declare function concepts:concepts(
    $concept-names as string*,
    $archives as string*,
    $component-roles as string*
  ) as object*
{
  let $conn := concepts:connection()
  where exists($archives)
  return mongo:find($conn, $concepts:col, 
    {|
      {
        $concepts:ARCHIVE : { "$in" : [ $archives ] },
        $concepts:ROLE : { "$in" :
          [ $component-roles, "http://www.xbrl.org/2003/role/link" ]
        }
      },
      {
        $concepts:NAME : { "$in" : [ $concept-names ] }
      }[not $concept-names = $concepts:ALL_CONCEPT_NAMES]
    |}
  )
};


(:~
 : <p>Retrieves all the labels with the given label role and language in the 
 : matching concepts.</p>
 :
 : <p>Matching concepts are those which:
 :  - concept name matches a given one,
 :  - archive number matches that of a given component,
 :  - component role matches that of a given component or is the default 
 :    component role.
 : </p>
 :
 : <p>Language matching can either be exact, if no options are given,
 : or approximated, if at least one of the following options is given:</p>
 : <ul>
 :   <li>MatchDown: whether to match a more specific language, e.g.:
 :       "en" will match labels which language is "en" or "en-US".</li>
 :   <li>MatchUp: whether to match a less specific language, e.g.:
 :       "en-US" will match labels which language is "en-US" or "en".</li>
 : </ul>
 :
 : @param $concept-names the concepts names.
 : @param $component-or-ids the CIDs or the components themselves.
 : @param $label-role the label role.
 : @param $language the label language.
 : @param $options optional parameters to control language matching.
 : 
 : @return the matching labels.
 :)
 declare function concepts:labels-for-components(
     $concept-names as string*, 
     $component-or-ids as item*, 
     $label-role as string, 
     $language as string, 
     $options as object?
   ) as string*
{
  let $components := components:components($component-or-ids)
  let $concepts := concepts:concepts-for-components($concept-names, $components)
  return concepts:labels($concept-names, $components.Archive[not $$ instance of null], $components.Role, 
      $label-role, $language, $concepts, $options)
};

(:~
 : <p>Retrieves all the labels with the given label role and language in the 
 : matching concepts.</p>
 :
 : <p>Matching concepts are those which:
 :  - concept name matches a given one,
 :  - archive number matches that of a given component,
 :  - component role matches that of a given component or is the default 
 :    component role.
 : </p>
 :
 : <p>The set of concepts to search in is specified as a parameter.</p>
 :
 : <p>Language matching can either be exact, if no options are given,
 : or approximated, if at least one of the following options is given:</p>
 : <ul>
 :   <li>MatchDown: whether to match a more specific language, e.g.:
 :       "en" will match labels which language is "en" or "en-US".</li>
 :   <li>MatchUp: whether to match a less specific language, e.g.:
 :       "en-US" will match labels which language is "en-US" or "en".</li>
 :   <li>MatchAnyVariant: whether to match a different variant of the same
 :       language, e.g.: "en-US" will match labels which language is "en-US"
 :       or "en-UK".</li>
 : </ul>
 :
 : @param $concept-names the concepts names.
 : @param $component-or-ids the CIDs or the components themselves.
 : @param $label-role the label role.
 : @param $language the label language.
 : @param $concepts the concepts in which the labels will be 
 :                  searched.
 : @param $options optional parameters to control language matching.
 : 
 : @return the matching labels.
 :) 
declare function concepts:labels-for-components(
    $concept-names as string*, 
    $component-or-ids as item*, 
    $label-role as string, 
    $language as string, 
    $concepts as object*, 
    $options as object?
  ) as string*
{
  let $components := components:components($component-or-ids)
    return concepts:labels($concept-names, $components.Archive[not $$ instance of null], $components.Role, 
      $label-role, $language, $concepts, $options)
};

(:~
 : <p>Retrieves all the labels for all concepts used in the facts if 
 : either found in the report or found in the list of concepts
 : concepts. Concepts used in a fact includes not only those from the
 : 'xbrl:Concept' aspect, but also Members of any custom axis.</p>
 :
 : <p>The set of concepts to search in is specified as a parameter.</p>
 :
 : @param $facts a sequence of facts.
 : @param $report the report in which to search for concept labels.
 : @param $concepts additional list of concepts in which the labels will be 
 :                  searched.
 : 
 : @return an object with matching concepts as keys and labels as values.
 :) 
declare function concepts:labels-for-facts(
    $facts as object*, 
    $report as object?,
    $concepts as object*
  ) as object?
{
    let $concepts as object* := 
        (
            descendant-objects($report.Hypercubes."xbrl:DefaultHypercube".Aspects."xbrl:Concept".Domains)[exists($$.Name)],
            $concepts
        )
    let $concept-names as string* :=
        distinct-values(
            for $fact in $facts
            return
                keys($fact.Aspects)[string($fact.Aspects.($$)) = ($concepts.Name, "sec:DefaultLegalEntity")] ! $fact.Aspects.($$)
        )
    return 
        {|
            for $name in $concept-names
            let $label as string? := 
                if($name eq "sec:DefaultLegalEntity")
                then "Default Legal Entity"
                else $concepts[$$.Name eq $name][1].Label
            where exists($label)
            return 
                {
                    $name: $label
                }       
        |}
};

(:~
 : <p>Retrieves all the labels with the given label role and language for
 : all concepts used in the fact and matching a concept in the list of
 : concepts. Concepts used in a fact includes not only those from the
 : 'xbrl:Concept' aspect, but also Members of any custom axis.</p>
 :
 : <p>Matching concepts are those which:
 :  - concept name matches a given one,
 :  - archive number matches that of a given component,
 :  - component role matches that of a given component or is the default 
 :    component role.
 : </p>
 :
 : <p>The set of concepts to search in is specified as a parameter.</p>
 :
 : <p>Language matching can either be exact, if no options are given,
 : or approximated, if at least one of the following options is given:</p>
 : <ul>
 :   <li>MatchDown: whether to match a more specific language, e.g.:
 :       "en" will match labels which language is "en" or "en-US".</li>
 :   <li>MatchUp: whether to match a less specific language, e.g.:
 :       "en-US" will match labels which language is "en-US" or "en".</li>
 :   <li>MatchAnyVariant: whether to match a different variant of the same
 :       language, e.g.: "en-US" will match labels which language is "en-US"
 :       or "en-UK".</li>
 : </ul>
 :
 : @param $facts a sequence of facts.
 : @param $component-or-ids the CIDs or the components themselves.
 : @param $label-role the label role.
 : @param $language the label language.
 : @param $concepts the concepts in which the labels will be 
 :                  searched.
 : @param $options optional parameters to control language matching.
 : 
 : @return an object with matching concepts as keys and labels as values.
 :) 
declare function concepts:labels-for-facts(
    $facts as object*, 
    $component-or-ids as item*, 
    $label-role as string, 
    $language as string, 
    $concepts as object*, 
    $options as object?
  ) as object?
{
    let $components := components:components($component-or-ids)
    let $concept-names as string* :=
        distinct-values(
            for $fact in $facts
            return
                keys($fact.Aspects)[string($fact.Aspects.($$)) = $concepts.Name] ! $fact.Aspects.($$)
        )
    let $archives := $facts.Aspects."sec:Archive"
    return 
        {|
            for $name in $concept-names
            return 
                {
                    $name: concepts:labels(
                                $name, $archives, $components.Role,
                                $label-role, $language, $concepts, $options)
                }       
        |}
};

(:~
 : <p>Retrieves all the labels with the given label role and language in the 
 : matching concepts.</p>
 :
 : <p>Matching concepts are those which:
 :  - concept name and archive number match a given one;
 :  - component role matches a given one or is the default 
 :    component role.
 : </p>
 :
 : <p>Language matching can either be exact, if no options are given,
 : or approximated, if at least one of the following options is given:</p>
 : <ul>
 :   <li>MatchDown: whether to match a more specific language, e.g.:
 :       "en" will match labels which language is "en" or "en-US".</li>
 :   <li>MatchUp: whether to match a less specific language, e.g.:
 :       "en-US" will match labels which language is "en-US" or "en".</li>
 :   <li>MatchAnyVariant: whether to match a different variant of the same
 :       language, e.g.: "en-US" will match labels which language is "en-US"
 :       or "en-UK".</li>
 : </ul>
 :
 : @param $concept-names the concepts names.
 : @param $archives the archive numbers.
 : @param $component-roles the component roles.
 : @param $label-role the label role.
 : @param $language the label language.
 : @param $options optional parameters to control language matching.
 : 
 : @return the matching labels.
 :)
declare function concepts:labels(
    $concept-names as string*, 
    $archives as string*, 
    $component-roles as string*, 
    $label-role as string, 
    $language as string, 
    $options as object?
  ) as string*
{
  let $concepts := concepts:concepts($concept-names, $archives, $component-roles)
  return concepts:labels($concept-names, $archives, $component-roles, $label-role, $language,
      $concepts, $options)
};

(:~
 : <p>Retrieves all the labels with the given label role and language in the 
 : matching concepts.</p>
 :
 : <p>Matching concepts are those which:
 :  - concept name and archive number match a given one;
 :  - component role matches a given one or is the default 
 :    component role.
 : </p>
 :
 : <p>The set of concepts to search in is specified as a parameter.</p>
 :
 : <p>Language matching can either be exact, if no options are given,
 : or approximated, if at least one of the following options is given:</p>
 : <ul>
 :   <li>MatchDown: whether to match a more specific language, e.g.:
 :       "en" will match labels which language is "en" or "en-US".</li>
 :   <li>MatchUp: whether to match a less specific language, e.g.:
 :       "en-US" will match labels which language is "en-US" or "en".</li>
 :   <li>MatchAnyVariant: whether to match a different variant of the same
 :       language, e.g.: "en-US" will match labels which language is "en-US"
 :       or "en-UK".</li>
 : </ul>
 :
 : @param $concept-names the concepts names.
 : @param $archives the archive numbers.
 : @param $component-roles the component roles.
 : @param $label-role the label role.
 : @param $language the label language.
 : @param $concepts the concepts in which the labels will be 
 :                  searched.
 : @param $options Optional parameters to control language matching.
 : 
 : @return the matching labels.
 :)
declare function concepts:labels(
    $concept-names as string*, 
    $archives as string*, 
    $component-roles as string*, 
    $label-role as string, 
    $language as string, 
    $concepts as object*, 
    $options as object?
  ) as string*
{
  let $normalized-language := concepts:normalize-language($language)
  let $concept-labels-groups-for-role :=$concepts[
      $$($concepts:NAME)    = $concept-names and
      $$($concepts:ARCHIVE) = $archives and
      $$($concepts:ROLE)    = $component-roles]($concepts:LABELS)($label-role)
  for $concept-labels-group in $concept-labels-groups-for-role
  let $perfect-match := $concept-labels-group($normalized-language) 
  return 
    if ($perfect-match)
    then $concept-labels-group($normalized-language)
    else concepts:approximated-labels-match($concept-labels-group, $normalized-language, $options)
};


declare %private function concepts:approximated-labels-match(
    $concept-labels-group as object, 
    $normalized-language as string, 
    $options as object?
  ) as string*
{
  if ($options)
  then
    let $keys := keys($concept-labels-group)
    return
    (
      if ($options.MatchDown cast as boolean?)
      then 
        for $matching-key in $keys[starts-with($$, $normalized-language)]
        return $concept-labels-group($matching-key)
      else (),
      if ($options.MatchUp cast as boolean?)
      then 
        for $matching-key in $keys[starts-with($normalized-language, $$)]
        return $concept-labels-group($matching-key)
      else (),
      if ($options.MatchAnyVariant cast as boolean?)
      then 
        if (contains($normalized-language, "-"))
        then 
          for $matching-key in $keys[starts-with($$, substring-before($normalized-language, "-") || "-")]
          return $concept-labels-group($matching-key)
        else ()
      else ()      
    )
  else ()
};

declare %private function concepts:normalize-language($language as string) as string
{
  replace(lower-case($language), "_", "-")
};

declare %private %an:strictlydeterministic function concepts:connection() as anyURI
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
