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

import module namespace mw = "http://28.io/modules/xbrl/mongo-wrapper";

import module namespace components = "http://28.io/modules/xbrl/components";

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
 : A helper variable holding the default language ("en-US")
 :)
declare variable $concepts:AMERICAN_ENGLISH as xs:string := "en-US";

(:~
 : The default component link role.
 :)
declare variable $concepts:DEFAULT_COMPONENT_LINK_ROLE as xs:string :=
    "http://www.xbrl.org/2003/role/link";

(:~
 : Allow any component link role
 :)
declare variable $concepts:ANY_COMPONENT_LINK_ROLE as xs:string :=
    "*";

(:~
 : The standard label role.
 :)
declare variable $concepts:STANDARD_LABEL_ROLE as xs:string :=
    "http://www.xbrl.org/2003/role/label";

(:~
 : The verbose label role.
 :)
declare variable $concepts:VERBOSE_LABEL_ROLE as xs:string :=
    "http://www.xbrl.org/2003/role/verboseLabel";

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
  mw:find($concepts:col,{})
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
  if (exists($archives))
  then mw:find($concepts:col,
    {|
      {
        $concepts:ARCHIVE : { "$in" : [ $archives ] }
      },
      {
        $concepts:ROLE : { "$in" :
          [ $component-roles, "http://www.xbrl.org/2003/role/link" ]
        }
      }[not $component-roles = $concepts:ANY_COMPONENT_LINK_ROLE],
      {
        $concepts:NAME : { "$in" : [ $concept-names ] }
      }[not $concept-names = $concepts:ALL_CONCEPT_NAMES]
    |}
  )
  else ()
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
  let $label-role-translated := replace($label-role, "\\.", "\uff0e")
  let $normalized-language := concepts:normalize-language($language)
  let $concepts as object* := ((
      $concepts[
          $$.$concepts:NAME    = $concept-names and
          (: concepts can be defined within an archive or outside of an archive - e.g. in a taxonomy :)
          ($$.$concepts:ARCHIVE = $archives or empty($$.$concepts:ARCHIVE) ) and
          $component-roles = ($concepts:ANY_COMPONENT_LINK_ROLE, $$.$concepts:ROLE)]
      )[1])
  let $concept-labels-groups-for-role as object* := (
      $concepts.$concepts:LABELS.$label-role,
      $concepts.$concepts:LABELS.$label-role-translated
  )
  for $concept-labels-group in $concept-labels-groups-for-role
  let $perfect-match := $concept-labels-group.$normalized-language
  return
    if ($perfect-match)
    then $concept-labels-group.$normalized-language
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

(:~
 : <p>Normalizes the language code. This normalized language code can then
 : be used to find the right labels in the concepts collection.</p>
 :
 : @param $language the language identifier.
 :
 : @return the normalized language.
 :)
declare function concepts:normalize-language($language as string) as string
{
  replace(lower-case($language), "_", "-")
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
 : @param $label-role the label role.
 : @param $language the label language.
 : @param $concepts the concepts in which the labels will be
 :                  searched (in the version-7 format).
 : @param $options Optional parameters to control language matching.
 :
 : @return the matching labels.
 :)
declare function concepts:labels(
    $concept-names as string*,
    $label-role as string,
    $language as string,
    $concepts as object*,
    $options as object?
  ) as string*
{
  let $label-role-translated := replace($label-role, "\\.", "\uff0e")
  let $normalized-language as string := concepts:normalize-language($language)

  for $concept as object in $concepts
  where ($concepts:ALL_CONCEPT_NAMES, $concept.$concepts:NAME) = $concept-names
  for $concept-labels as object* in $concept.$concepts:LABELS[]
  let $role := $concept-labels.Role
  where $role = ($label-role, $label-role-translated)
  let $perfect-match as object? := $concept-labels[$$.Language eq $normalized-language]
  let $approximate-languages as string* := concepts:approximate-languages(
    distinct-values($concept-labels.Language),
    $normalized-language,
    $options
  )
  let $approximate-matches as object* :=
    $concept-labels[$$.Language = $approximate-languages]
  return ($perfect-match, $approximate-matches)[1].Value
};


declare %private function concepts:approximate-languages(
    $all-languages as string*,
    $normalized-language as string,
    $options as object?
  ) as string*
{
    if(not $options.MatchDown cast as boolean? eq false)
    then $all-languages[starts-with($$, $normalized-language)]
    else (),
    if(not $options.MatchUp cast as boolean? eq false)
    then $all-languages[starts-with($normalized-language, $$)]
    else (),
    if ((not $options.MatchAnyVariant cast as boolean? eq false) and contains($normalized-language, "-"))
    then
      $all-languages[starts-with($$, substring-before($normalized-language, "-") || "-")]
    else ()
};
