jsoniq version "1.0";
(:
 : Copyright 2013 28msec Inc.
 :)


(:~
 : <p>This module provides functions for retrieving facts.</p>
 :
 : <p>Facts are the smallest reportable piece of information.</p>
 :
 : <p>Facts have a certain number of characteristics: the archive in
 : which they were reported, a number of XBRL aspects (concept, entity, period,
 : unit, further XBRL dimensions), as well as profile-specific information.</p>
 :
 : <p>With this module, you can retrieve facts by picking the characteristics
 : you would like your results to have. You can retrieve a fact with its FID
 : (Fact ID). You can extract information about facts (period, entity, etc).
 : You can perform a full-text search on fact values, and obtain footnotes.</p>
 :
 : <p>If you are interested in the structures in which facts can be organized (such
 : as hypercubes), look at the components module.</p>
 :
 : <p>Facts are stored in a MongoDB datasource called <b>xbrl</b>.</p>
 :
 : <h2 id="standard_options">Standard <code>$options</code> Parameter</h2>
 :
 : <p>Most functions in the BizQL package allow an additional <code>$options</code>
 :    parameter. The options parameter is a JSON object allowing the following
 :    fields:</p>
 :
 : <ul>
 : <li><b>Hypercube</b>: a hypercube object can be passed with the options to apply
 :     implicit filtering for it. Only facts belonging to this hypercube will be
 :     returned. Hypercube semantics (such as default dimension values) apply.
 :     By default, the dimensionless hypercube is used (no dimensions allowed, no filtering).
 :     You can override Hypercube with null to bypass hypercube semantics.</li>
 : <li><b>Filter</b>: an object specifying the fields to filter for. Filtering fields
 :     can be any field contained in facts, including profile specific fields, e.g.:
 :     <pre class="ace-static" ace-mode="java">
 :   {
 :     Filter:
 :       {
 :         Aspects:
 :         {
 :           "xbrl28:Archive": "0000034088-13-000011",
 :           "us-gaap:DefinedBenefitPlansDisclosuresDefinedBenefitPlansAxis" :
 :             "us-gaap:ForeignPensionPlansDefinedBenefitMember"
 :         },
 :         Profiles: {
 :           SEC: {
 :             Fiscal: {
 :               Year: [2011, 2012]
 :             }
 :           }
 :         }
 :       }
 :   }
 :   </pre>
 :   A filter must contain at least on of the fields Aspects.xbrl28:Archive, Aspects.xbrl:Concept,
 :   Aspects.xbrl:Period, or Aspects.xbrl:Entity.</li>
 : <li><b>ConceptMaps</b>:
 :   <ol><li>a string which is a name of a report schema that is stored in the
 :       reportschemas collection and from which to load a ConceptMap</li>
 :       <li>an object which is a ConceptMap network object</li>
 :       <li>an array of ConceptMap network objects (to learn more about concept-maps
 :       refer to the concept-maps module documentation)</li>
 :   </ol></li>
 : <li><b>Rules</b>:
 :   <ol><li>a string which is a name of a report schema that is stored in the
 :       reportschemas collection and from which to load Rules</li>
 :       <li>an object which is a Rule object</li>
 :       <li>an array of Rule objects</li>
 :   </ol></li>
 : <li><b>Validate</b>: if set to true, facts will be stamped with a validity flag.</li>
 : <li><b>include-footnotes</b>: include XBRL Footnotes in each fact (true | false)</li>
 : <li><b>Lang</b>: language identifier according to http://www.ietf.org/rfc/rfc3066.txt,
 :     i.e. only return footnotes etc. for this specific language</li>
 : <li><b>AuditTrail</b>: if set to "debug" the audit trails will be more verbose</li>
 : <li><b>facts-for-archives-and-concept</b> (deprecated, use filters instead):
 :     to override how underlying facts are
 :     resolved, for example with finer-grained, profile-specific filtering (option value
 :     must be a function item). facts:facts-for-archives-and-concepts#3 is used by
 :     default, but it is possible to supply another function that, for examples, filters
 :     irrelevant facts out.</li>
 : <li><b>cache-control</b>: configure the behavior of the internal caching mechanism
 :   <ol><li><i>no-cache</i>: do not cache any fetched fact.</li>
 :       <li><i>prefetch</i>: determine all dependent facts from rules, concept-maps, etc.
 :           and fetch them into the cache upfront (Depending on the case this will most
 :           likely fetch more facts then are needed by rules etc. and therefore is often
 :           not the right strategy).</li>
 :       <li><i>cache</i>: Cache facts as they are loaded from the store (default).</li>
 :   </ol></li>
 : </ul>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :)
module namespace facts = "http://28.io/modules/xbrl/facts";

import module namespace mw = "http://28.io/modules/xbrl/mongo-wrapper";

import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace concept-maps = "http://28.io/modules/xbrl/concept-maps";
import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace footnotes = "http://28.io/modules/xbrl/footnotes";
import module namespace hypercubes = "http://28.io/modules/xbrl/hypercubes";
import module namespace rules = "http://28.io/modules/xbrl/rules";
import module namespace concepts = "http://28.io/modules/xbrl/concepts";

import module namespace string = "http://zorba.io/modules/string";
import module namespace seq = "http://zorba.io/modules/sequence";
import module namespace reflection = "http://zorba.io/modules/reflection";

declare namespace ver = "http://zorba.io/options/versioning";

declare option ver:module-version "1.0";

(:~
 : Name of the collection the facts are stored in.
 :)
declare variable $facts:col as string := "facts";

(:~
 : Name of the field that points to the facts FID.
 :)
declare variable $facts:ID as string := "_id";

(:~
 : Name of the field that stores the aspects.
 :)
declare variable $facts:ASPECTS as string := "Aspects";

(:~
 : Name of the field that points to the archive.
 :)
declare variable $facts:ARCHIVE as string := "xbrl28:Archive";

(:~
 : Name of the concept aspect.
 :)
declare variable $facts:CONCEPT as string := "xbrl:Concept";

(:~
 : Name of the period aspect.
 :)
declare variable $facts:PERIOD as string := "xbrl:Period";

(:~
 : Name of the entity aspect.
 :)
declare variable $facts:ENTITY as string := "xbrl:Entity";

(:~
 : Name of the accepted aspect.
 :)
declare variable $facts:ACCEPTED as string := "sec:Accepted";

(:~
 : Name of the unit aspect.
 :)
declare variable $facts:UNIT as string := "xbrl:Unit";

(:~
 : Name of the field that stores the Footnotes (if populated).
 :)
declare variable $facts:FOOTNOTES as string := "Footnotes";

(:~
 : Joker for all archives or all concepts.
 :)
declare variable $facts:ALL_OF_THEM as boolean := true;

(:~
 : <p>Return the fact with the given FIDs.</p>
 :
 : @param $fact-or-ids the FIDs or the facts themselves.
 :
 : @return the facts with the given FIDs
 :         the empty sequence if no fact was found or if the input is an
 : empty sequence.
 :)
declare function facts:facts($fact-or-ids as item*) as object*
{
  let $ids as string* := $fact-or-ids[$$ instance of string]
  let $facts as object* := $fact-or-ids[$$ instance of object]
  return
    (
      $facts,
      if (exists($ids))
      then facts:facts-query({
          $facts:ID : if (count($ids) gt 1)
                      then { "$in" : [ facts:fid($ids) ] }
                      else facts:fid($ids)
      })
      else ()
    )
};

(:~
 : <p>Return all facts reported within given archives.</p>
 :
 : @param $archives-or-ids a sequence of archives or AIDs to filter.
 :
 : @return all facts reported in these archives.
 :)
declare function facts:facts-for-archives(
  $archives-or-ids as item*) as object*
{
  facts:facts-for-archives($archives-or-ids, ())
};

(:~
 : <p>Return all facts reported within a given archive.</p>
 :
 : @param $archives-or-ids a sequence of archives or AIDs to filter.
 : @param $options <a href="#standard_options">standard fact retrieving options</a>.
 : @return all facts reported in these archives.
 :)
declare function facts:facts-for-archives(
  $archives-or-ids as item*,
  $options as object?) as object*
{
  facts:facts-for-aspects(
    { $facts:ARCHIVE : [ archives:aid($archives-or-ids) ] },
    $options
  )
};

(:~
 : <p>Return all facts associated with the given aspects.</p>
 :
 : @param $aspects an object containing aspects to filter, among which
 : xbrl:Concept, xbrl:Entity and xbrl:Period (at least one of them is mandatory).
 :
 : @return all facts associated with these aspects.
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for and hypercubes:facts.
 :)
declare function facts:facts-for-aspects(
  $aspects as object) as object*
{
  facts:facts-for-aspects($aspects, ())
};

(:~
 : <p>Return all facts associated with the given aspects.</p>
 :
 : @param $aspects an object containing aspects to filter, among which
 : xbrl:Concept, xbrl:Entity and xbrl:Period (at least one of them is mandatory).
 : @param $options <a href="#standard_options">standard fact retrieving options</a>.
 :
 : @return all facts associated with these aspects.
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for and hypercubes:facts.
 :)
declare function facts:facts-for-aspects(
  $aspects as object,
  $options as object?) as object*
{
  let $filter as object := {
    "Filter" : {
      $facts:ASPECTS : $aspects
    }
  }
  return
    facts:facts-for(
     facts:merge-objects($filter, $options, true (: giving parameters higher priority :))
    )
};

(:~
 : <p>Return facts associated with given concepts.</p>
 :
 : @param $concepts the concepts.
 : @return facts associated with these concepts.
 :)
declare function facts:facts-for-concepts(
  $concepts as string*) as object*
{
  facts:facts-for-concepts($concepts,())
};

(:~
 : <p>Return facts associated with given concepts.</p>
 :
 : @param $concepts the concepts.
 : @param $options <a href="#standard_options">standard fact retrieving options</a>.
 :
 : @return facts associated with these concepts.
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for and hypercubes:facts.
 :)
declare function facts:facts-for-concepts(
  $concepts as string*,
  $options as object?) as object*
{
  facts:facts-for-aspects(
    { $facts:CONCEPT : [ $concepts ] },
    $options
  )
};

(:~
 : <p>Return facts reported by the given entities.</p>
 :
 : @param $entities-or-ids the entities or EIDs.
 :
 : @return facts reported by the given entities.
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for and hypercubes:facts.
 :)
declare function facts:facts-for-entities(
  $entities-or-ids as item*) as object*
{
  facts:facts-for-aspects(
    { $facts:ENTITY: [ entities:eid($entities-or-ids) ] }
  )
};

(:~
 : <p>Return all facts reported in a given archive, and associated with a
 : given entity, concept, period and/or other aspects.</p>
 :
 : @param $archives-or-ids a sequence of archive or archive IDs to filter (or $facts:ALL_OF_THEM to
 : do not filter on archives).
 : @param $aspects an object containing aspects to filter, among which
 : xbrl:Concept, xbrl:Entity and xbrl:Period (at least one of them is mandatory).
 :
 : @return all facts satisfying all supplied conditions.
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for and hypercubes:facts.
 :)
declare function facts:facts-for-archives-and-aspects(
  $archives-or-ids as item*,
  $aspects as object) as object*
{
  facts:facts-for-archives-and-aspects($archives-or-ids, $aspects, ())
};

(:~
 : <p>Return all facts associated with a given entity, concept, period
 : and/or other aspects.</p>
 :
 : @param $archives-or-ids a sequence of archive or archive IDs to filter (or $facts:ALL_OF_THEM to
 : do not filter on archives).
 : @param $aspects an object containing aspects to filter, among which
 :                 xbrl:Concept, xbrl:Entity and xbrl:Period (all optional).
 : @param $options <a href="#standard_options">standard fact retrieving options</a>.
 :
 : @return all facts satisfying all supplied conditions.
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for and hypercubes:facts.
 :)
declare function facts:facts-for-archives-and-aspects(
  $archives-or-ids as item*,
  $aspects as object,
  $options as object?) as object*
{
  let $filter as object :=
    {
      "Filter" :
        {
          $facts:ASPECTS :
            {|
              if (not deep-equal($archives-or-ids, $facts:ALL_OF_THEM))
              then { $facts:ARCHIVE: [ archives:aid($archives-or-ids) ] }
              else (),
              $aspects
            |}
        }
    }
  return
    facts:facts-for(
      facts:merge-objects($filter, $options, true (: giving parameters higher priority :))
    )
};

(:~
 : <p>Return facts associated with given concepts and archives.</p>
 :
 : @param $archives-or-ids a sequence of archive or archive IDs to filter (or $facts:ALL_OF_THEM to
 : do not filter on archives).
 : @param $concepts the concepts (or $facts:ALL_OF_THEM to do no filter on concepts).
 : @return facts associated with these concepts and archives.
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for and hypercubes:facts.
 :)
declare function facts:facts-for-archives-and-concepts(
  $archives-or-ids as item*,
  $concepts as item*) as object*
{
  facts:facts-for-archives-and-concepts($archives-or-ids, $concepts, ())
};

(:~
 : <p>Return facts associated with given concepts and archives.</p>
 :
 : @param $archives-or-aids a sequence of archive or archive IDs to filter (or $facts:ALL_OF_THEM to
 : do not filter on archives).
 : @param $concepts the concepts (or $facts:ALL_OF_THEM to do no filter on concepts).
 : @param $options <a href="#standard_options">standard fact retrieving options</a>.
 :
 : @return facts associated with these concepts.
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for and hypercubes:facts.
 :)
declare function facts:facts-for-archives-and-concepts(
  $archives-or-ids as item*,
  $concepts as item*,
  $options as object?) as object*
{
  facts:facts-for-archives-and-aspects(
    $archives-or-ids,
    if (not deep-equal($concepts, $facts:ALL_OF_THEM))
    then { $facts:CONCEPT : [ $concepts treat as string* ] }
    else {},
    $options
  )
};

(:~
 : <p>Helper function to get the prefix of a given fact`s xbrl:Concept aspect.</p>
 :
 : @param $fact a fact object.
 :
 : @return the prefix of the fact's xbrl:Concept aspect or empty sequence if the
 :         concept doesn't have a prefix.
 :)
declare function facts:prefix-from-fact-concept(
  $fact as object) as string?
{
  let $concept-name as string := $fact.Aspects.$facts:CONCEPT
  let $tokenz := string:split($concept-name,":")
  return
    if (exists($tokenz[2]))
    then (: ok: has a prefix :) $tokenz[1]
    else (: no ns prefix found :) ()
};

(:~
 : <p>Return all facts that match the given search term.</p>
 :
 : @param $search the search query
 :
 : @return all facts matching the given search query
 :)
declare function facts:facts-search($search as string) as object*
{
  mw:run-cmd-deterministic(
	{
      "text" : "facts",
      "search" : $search
    }).results[].obj
};

(:~
 :
 : <p>Converts the input to a normalized fact id (FID). The input
 : can be either an FID, or a fact object which contains an _id.</p>
 :
 : @param $facts-or-ids a sequence of fact objects or FIDs.
 :
 : @error facts:INVALID-PARAMETER if the FID or fact is not valid.
 :
 : @return the normalized FIDs.
 :)
declare function facts:fid($facts-or-ids as item*) as atomic*
{
  for $fact-or-id in $facts-or-ids
  return typeswitch ($fact-or-id)
  case object return
    let $id := $fact-or-id.$facts:ID
    return if(exists($id))
           then $id
           else error(QName("facts:INVALID-PARAMETER"),
                      "Invalid fact provided (no " || $facts:ID || " field)")
  case $id as atomic return $id
  default return error(
      QName("facts:INVALID-PARAMETER"),
      "Invalid fact or id (must be an object or an atomic): "
      || serialize($fact-or-id))
};

(:~
 : <p>Queries MongoDB with a MongoDB query.</p>
 :
 : @return all facts returned by this query.
 :)
declare %private %an:strictlydeterministic function facts:facts-query-cached($query as string) as object*
{
  let $query as object := parse-json($query)
  return mw:find($facts:col, $query)
};

(:~
 : <p>Queries MongoDB with a MongoDB query.</p>
 :
 : @return all facts returned by this query.
 :)
declare %private function facts:facts-query($query as object) as object*
{
  mw:find($facts:col, $query)
};

(:~
 : <p>Retrieves the concept against which a fact is reported.</p>
 :
 : @param $fact-or-id a fact or its FID.
 : @return the concept name.
 :)
declare function facts:concept-for-fact($fact-or-id as item)
as string
{
  facts:facts($fact-or-id).$facts:ASPECTS.$facts:CONCEPT
};

(:~
 :
 : <p>Populates a sequence of facts with their associated footnotes.
 : More in detail, in each returned fact object an additional field
 : Footnotes is added which contains all connected footnotes in an
 : array.</p>
 :
 : @param $fact-or-ids the FIDs or the facts themselves.
 :
 : @return a sequence of facts with populated Footnotes field.
 :)
declare function facts:populate-with-footnotes(
  $fact-or-ids as item*) as object*
{
  facts:populate-with-footnotes($fact-or-ids, ())
};

(:~
 : <p>Populates a sequence of facts with their associated footnotes.
 : More in detail, in each returned fact object an additional field
 : Footnotes is added which contains all connected footnotes in an
 : array.</p>
 :
 : @param $fact-or-ids the FIDs or the facts themselves.
 : @param $options <a href="#standard_options">standard fact retrieving options</a>.
 :
 : @return a sequence of facts with populated Footnotes field.
 :)
declare function facts:populate-with-footnotes(
  $fact-or-ids as item*,
  $options as object?) as object*
{
  let $facts as object* := facts:facts($fact-or-ids)
  for $fact in $facts
  let $footnotes as object* :=
    for $footnote in footnotes:footnotes-for-facts($fact, $options)
    let $f as object :=
      (
        for $factref in $footnote.Facts[][$$.$facts:ID eq $fact.$facts:ID]
        order by $factref.Priority descending
        return $factref
      )[1]
    order by $f.Order ascending
    return
      {
        $facts:ID : $footnote._id,
        "LinkRole": $footnote.LinkRole,
        "Order": $f.Order,
        "Priority": $f.Priority,
        "Use": $f.Use,
        "Lang": $footnote.Lang,
        "Value": $footnote.Value
      }
  return
    {|
      for $key in keys($fact)
      where $key ne $facts:FOOTNOTES
      return { $key: $fact.$key },
      if (empty($footnotes))
      then ()
      else { $facts:FOOTNOTES : [ $footnotes ] }
    |}
};

(:~
 : <p>Retrieves all the labels with the given label role and language for
 : all concepts used in the fact and matching a concept in the list of
 : concepts. Concepts used in a fact include not only those from the
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
declare function facts:labels(
    $facts as object*,
    $component-roles as string*,
    $label-role as string,
    $language as string,
    $concepts as object*,
    $options as object?
  ) as object?
{
    let $concept-names as string* :=
        distinct-values(values($facts.Aspects)[string($$) = $concepts.Name])
    let $archives := $facts.Aspects.$facts:ARCHIVE
    return
        {|
            for $name in $concept-names
            let $label as string? :=
                concepts:labels(
                    $name, $archives, $component-roles,
                    $label-role, $language, $concepts, $options)[1]
            return
                {
                    $name: $label
                },
            for $key in distinct-values(keys($facts.Aspects))
            where not string($facts.Aspects.$key) = $concept-names
            return
                { $facts.Aspects.$key : "Default Legal Entity" }[$key eq "dei:LegalEntityAxis" and $facts.Aspects.$key eq "sec:DefaultLegalEntity"]
        |}
};

(:~
 : <p>Retrieves all the labels with the given label role and language for
 : all concepts used in the fact and matching a concept in the list of
 : concepts. Concepts used in a fact include not only those from the
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
 : @param $label-role the label role.
 : @param $language the label language.
 : @param $concepts the concepts in which the labels will be
 :                  searched (in the version-7 format).
 : @param $options optional parameters to control language matching.
 :
 : @return an object with matching concepts as keys and labels as values.
 :)
declare function facts:labels(
    $facts as object*,
    $label-role as string,
    $language as string,
    $concepts as object*,
    $options as object?
  ) as object?
{
    let $concept-names as string* :=
        distinct-values((values($facts.Aspects), keys($facts.Aspects))[string($$) = $concepts.Name])
    return
        {|
            for $name in $concept-names
            let $label as string? :=
                concepts:labels(
                    $name,
                    $label-role,
                    $language,
                    $concepts,
                    $options)[1]
            return
                {
                    $name: $label
                },
            for $key in distinct-values(keys($facts.Aspects))
            where not string($facts.Aspects.$key) = $concept-names
            return
                { $facts.Aspects.$key : "Default Legal Entity" }[$key eq "dei:LegalEntityAxis" and $facts.Aspects.$key eq "sec:DefaultLegalEntity"]
        |}
};

(:~
 : <p>Retrieves the eid of the entity who reported a fact.</p>
 :
 : @param $fact-or-id a fact or its FID.
 :
 : @return the eid.
 :)
declare function facts:entity-for-fact($fact-or-id as item)
as string
{
  facts:facts($fact-or-id).$facts:ASPECTS.$facts:ENTITY
};

(:~
 : <p>Retrieves the instant period for which a fact was reported.</p>
 :
 : @param $fact-or-id a fact or its FID.
 : @param $options Some options among which:
 : <ul>
 :  <li>Typed: true to cast to date or dateTime (default), false to return strings.</li>
 : </ul>
 :
 : @return the instance period, or the empty sequence if it is not instant.
 :)
declare function facts:instant-for-fact($fact-or-id as item, $options as object?)
as atomic?
{
  let $str := facts:facts($fact-or-id).$facts:ASPECTS.$facts:PERIOD
  return switch(true)
         case $options.Typed eq false return $str
         case $str castable as xs:date return xs:date($str)
         case $str castable as xs:dateTime return xs:dateTime($str)
         default return ()
};

(:~
 : <p>Retrieves the instant period for which a fact was reported.</p>
 :
 : @param $fact-or-id a fact or its FID.
 :
 : @return the instance period, or the empty sequence if it is not instant.
 :)
declare function facts:instant-for-fact($fact-or-id as item)
as atomic?
{
  facts:instant-for-fact($fact-or-id, ())
};

(:~
 : <p>Retrieves the duration period for which a fact was reported.</p>
 :
 : @param $fact-or-id a fact or its FID.
 : @param $options Some options among which:
 : <ul>
 :  <li>Typed: true to cast to date or dateTime (default), false to return strings.</li>
 : </ul>
 :
 :
 : @return the duration period as an object with Start and End, or the empty sequence if it is not instant.
 :)
declare function facts:duration-for-fact($fact-or-id as item, $options as object?)
as object?
{
  let $str := facts:facts($fact-or-id).$facts:ASPECTS.$facts:PERIOD
  let $tokens := string:split($str, "/")
  where count($tokens) eq 2
  let $cast := for $i in 1 to 2
               let $str := $tokens[$i]
               return switch(true)
	              case $options.Typed eq false return $str
	              case $str castable as xs:date return xs:date($str)
	              case $str castable as xs:dateTime return xs:dateTime($str)
	              default return ()
  where count($cast) eq 2
  return { Start: $cast[1], End: $cast[2] }
};

(:~
 : <p>Retrieves the duration period for which a fact was reported.</p>
 :
 : @param $fact-or-id a fact or its FID.
 :
 : @return the duration period as an object with Start and End, or the empty sequence if it is not instant.
 :)
declare function facts:duration-for-fact($fact-or-id as item)
as object?
{
  facts:duration-for-fact($fact-or-id, ())
};

(:~
 : <p>Tests whether a fact is reported forever.</p>
 :
 : @param $fact-or-id a fact or its FID.
 :
 : @return true if its period is forever, false otherwise.
 :)
declare function facts:is-fact-forever($fact-or-id as item)
as boolean
{
  let $str := facts:facts($fact-or-id).$facts:ASPECTS.$facts:PERIOD
  return $str eq "forever"
};

(:~
 : <p>Return all facts that match a given filter object optionally interpreted
 :    in the context of an optionally given hypercube.</p>
 :
 : @param $options <a href="#standard_options">standard fact retrieving options</a>.
 :
 : @error facts:INVALID-RULE-TYPE the type of a rule is not unknown/invalid
 : @error facts:RULE-EXECUTION-ERROR a rule raised an error whilst being executed
 : @error facts:FILTER-TOO-GENERIC The filter object must have at least one of the
 :        fields Aspects.xbrl28:Archive, Aspects.xbrl:Concept, Aspects.xbrl:Period, or
 :        Aspects.xbrl:Entity.
 : @return all facts satisfying the filter and options.
 :)
declare function facts:facts-for(
  $options as object?) as object*
{
  let $hypercube as object? := facts:from-options("Hypercube", $options)
  let $rules as object* := facts:from-options("Rules", $options)
  let $concept-maps as object* := facts:from-options("ConceptMaps", $options)
  let $cache as object? := facts:from-options("Cache", $options)
  let $filter as object? := facts:from-options("Filter", $options)
  let $validate-facts as boolean := facts:from-options("Validate", $options)

  let $options := trim($options, ("Rules", "Filter", "Hypercube", "concept-maps", "Cache", "ConceptMaps"))

  let $aligned-filter as object := facts:align-filter-to-hypercube($filter, $hypercube)
  let $concepts as string* := facts:aspect-values-from-filter($aligned-filter, $facts:CONCEPT)

  let $validation-map as object := {|
    for $rule in $rules
    let $validation-concepts as string* := $rule.ComputableConcepts[]
    for $validated-concept as string in $rule.ValidatedConcepts[]
    where $validated-concept = $concepts
    group by $validated-concept
    return { $validated-concept : [ $validation-concepts ] }
  |}
  let $validation-concepts as string* := values($validation-map)[]
  let $queried-concepts as string* :=
    if($validate-facts) then distinct-values(($concepts, $validation-concepts))
                        else $concepts

  let $facts := facts:facts-for-internal(
    $queried-concepts,
    $hypercube,
    $aligned-filter,
    $concept-maps,
    $rules,
    $cache,
    $options)

  return if ($validate-facts)
         then facts:validate($facts, $concepts, $validation-map, $options)
         else $facts
};

(:~
 : <p>Stamps the facts with a validation flag. The flag depends on the value of the
 : validation fact associated with the original fact in the validation map.</p>
 :
 : @param $facts the original facts.
 : @param $concepts the original concepts.
 : @param $validation-map a map associating each concept with the validating concepts.
 : @param $options the options.
 :
 : @return the stamped facts (only those being explicitly asked by the user, not
 : the validating ones).
 :)
declare %private function facts:validate(
    $facts as object*,
    $concepts as string*,
    $validation-map as object,
    $options as object?) as object*
{
  for $facts in $facts

  group by $canonical-filter-string :=
    facts:canonical-grouping-key($facts, $facts:CONCEPT)

  for $fact in $facts
  let $concept := $fact.$facts:ASPECTS.$facts:CONCEPT
  where $concept = $concepts
  let $validation-concepts as string* := $validation-map.$concept[]
  let $validation-facts as object* :=
      $facts[$$.$facts:ASPECTS.$facts:CONCEPT = $validation-concepts]
  let $is-valid as boolean := not $validation-facts.Value = false
  let $audit-trail-option as string :=
      facts:from-options("audit-trail", $options)
  let $audit-trail := {
    Type: "xbrl28:validation-stamp",
    Label: "Validation stamp",
    Message: if($is-valid)
      then "All " || count($validation-facts) || " related validation rules pass."
      else count($validation-facts[$$.Value eq false]) || " related validation rules fail.",
    Data: {|
      { AuditTrails: [ $validation-facts.AuditTrails[] ] },
      { SourceFacts: [ $validation-facts ] }[$audit-trail-option eq "debug"]
    |}
  }
  return if(exists($validation-facts))
         then copy $f := $fact
              modify (
	         insert json { Valid: $is-valid } into $f,
                 if(exists($f.AuditTrails))
                 then append json $audit-trail into $f.AuditTrails
                 else insert json { AuditTrails: [ $audit-trail ] } into $f
              )
              return $f
         else $fact
};

(:~
 : <p>This is a helper function that returns all facts that match a given filter
 :    object optionally interpreted in the context of an optionally given hypercube.</p>
 : <p>This function is meant for use in	   business rules to push down parameters (often
 : as they are) to underlying calls. End users should use facts-for#1 instead.</p>
 :
 : @param $concepts a list of concepts for which to fetch facts.
 : @param $hypercube a hypercube (the domains will be ignored).
 : @param $aligned-filter an aligned filter (concept filters will be ignored and $concepts will
 : be used instead).
 : @param $concept-maps a sequence of concept maps.
 : @param $rules a sequence of rules.
 : @param $cache the recursively computed facts cache (considered by rules as a
 : blackbox that is just passed down).
 : @param $options <a href="#standard_options">standard fact retrieving options, except
 : those covered by the above parameters</a>.
 :
 : @error facts:INVALID-RULE-TYPE the type of a rule is not unknown/invalid
 : @error facts:RULE-EXECUTION-ERROR a rule raised an error whilst being executed
 : @error facts:FILTER-TOO-GENERIC The filter object must have at least one of the
 :        fields Aspects.xbrl28:Archive, Aspects.xbrl:Concept, Aspects.xbrl:Period, or
 :        Aspects.xbrl:Entity.
 : @return all facts satisfying the filter and options.
 :)
declare function facts:facts-for-internal(
  $concepts as string*,
  $hypercube as object?,
  $aligned-filter as object,
  $concept-maps as object*,
  $rules as object*,
  $cache as object*,
  $options as object?) as object*
{
  let $cache-filter-index as string :=
    facts:canonically-serialize-object($aligned-filter, $facts:CONCEPT)

  (: ### 0. prepopulate cache from known dependencies? ### :)
  let $cache :=
    facts:prepopulate-cache($cache,
                            $options,
                            $concepts,
                            $rules,
                            $concept-maps,
                            $aligned-filter,
                            $hypercube,
                            $cache-filter-index)

  (: ### 1. partition concepts ### :)

  (: Learn about what concepts can be computed where :)
  let $concepts-from-cache as string* := keys($cache)[exists($cache.$$.$cache-filter-index)]
  let $default-rules := $rules[empty(jn:flatten($$.ComputableConcepts))]
  let $all-concepts-computable-by-rules as string* :=
      if(empty($default-rules))
      then jn:flatten($rules.ComputableConcepts)
      else
          (: default rules are applied to every concept :)
          $concepts
  let $all-concepts-computable-by-maps as string* := $concept-maps.Trees[].Name

  (: determine concepts that should be computed with the cache :)
  let $concepts-in-cache as string* := $concepts[$concepts-from-cache = $$]

  (: determine concepts that should be computed with rules :)
  let $concepts-not-in-cache as string* := $concepts[not $concepts-from-cache = $$]
  let $concepts-computable-by-rules as string* :=
      $concepts-not-in-cache[$$ = $all-concepts-computable-by-rules]

  (: determine concepts that should be computed with maps :)
  let $concepts-not-computable-by-rules-but-maps as string* :=
      $concepts-not-in-cache[(not $$ = $all-concepts-computable-by-rules) and
                             $$ = $all-concepts-computable-by-maps]

  (: determine concepts that should be fetched with a direct lookup :)
  let $concepts-not-computable-by-rules-or-maps as string* :=
      $concepts-not-in-cache[(not $$ = $all-concepts-computable-by-rules) and
                             (not $$ = $all-concepts-computable-by-maps)]

  (: ### 2. free lunch from cache? ### :)
  let $cache-hit-results as object* :=
      facts:facts-from-cache($concepts-in-cache, $cache-filter-index, $cache)

  (: ### 3. issue a direct lookup ### :)
  let $direct-lookup-results as object* :=
    facts:facts-for-direct($concepts-not-computable-by-rules-or-maps,
                           $aligned-filter,
                           $hypercube,
                           $options)

  let $cache as object* :=
    facts:update-cache($cache,
                       $options,
                       $direct-lookup-results,
                       $concepts-not-computable-by-rules-or-maps,
                       $cache-filter-index)

  (: ### 4. try mapped concepts - if any concepts to filter with that were not found ### :)
  let $concept-map-results :=
    facts:facts-for-archives-and-concepts-and-concept-maps(
        $aligned-filter,
        $concepts-not-computable-by-rules-but-maps,
        $hypercube,
        $aligned-filter,
        $concept-maps,
        $cache,
        $options)

  let $cache as object* := facts:update-cache($cache,
                                              $options,
                                              $concept-map-results,
                                              $concepts-not-computable-by-rules-but-maps,
                                              $cache-filter-index)

  (: ### 5. apply business rules - if any concepts to filter by rules ### :)
  let $business-rule-results as object* :=
      facts:facts-for-concepts-and-rules($concepts-computable-by-rules,
                                         $rules,
                                         $options,
                                         $hypercube,
                                         $aligned-filter,
                                         $concept-maps,
                                         $cache)


  (: ### 6. And return everything found ### :)
  return (
      $cache-hit-results,
      $business-rule-results,
      $direct-lookup-results,
      $concept-map-results
  )
};

(:~
 :)
declare %private function facts:from-options(
    $option-name as string,
    $options as object?
) as item*
{
  (: might be an array of report schemas/objects
     or a single object or a report schema name :)
  let $concept-maps := jn:flatten(($options.concept-maps, $options.ConceptMaps)[1])
  let $rules := jn:flatten($options.Rules)
  return
    switch(true)
    case ($option-name eq "concept-maps" or $option-name eq "ConceptMaps")
    return
      switch (true)
      case $concept-maps instance of xs:string*
        return concept-maps:concept-maps($concept-maps)
      default return $concept-maps

    case ($option-name eq "Rules")
    return
      switch (true)
      case $rules instance of xs:string*
        return rules:rules($rules)
      default return $rules

    case ($option-name eq "Hypercube")
    return
      switch (true)
      case ( $options.Hypercube instance of null )
        return ()
      case exists($options.Hypercube)
        return $options.Hypercube
      default
        return hypercubes:dimensionless-hypercube()

    case ($option-name eq "Validate")
    return let $option-value as boolean? := $options.Validate
           return ($option-value, false)[1]

    case ($option-name eq "audit-trail" or $option-name eq "AuditTrail")
    return
        lower-case((
          $options."audit-trail",
          $options.AuditTrail,
          "production"
        )[1])

    default return $options.$option-name
};

(:~
 : fetch facts computed by rules
 :
 : @error facts:INVALID-RULE-TYPE the type of a rule is not unknown/invalid
 : @error facts:RULE-EXECUTION-ERROR a rule raised an error whilst being executed
 :)
declare %private function facts:facts-for-concepts-and-rules(
    $concepts-computable-by-rules as string*,
    $rules as object*,
    $options as object?,
    $hypercube as object?,
    $aligned-filter as object,
    $concept-maps as object*,
    $cache as object*
) as object*
{
  if(empty($concepts-computable-by-rules) or empty($rules))
  then ()
  else
    let $concepts-computable-by-rules :=
      let $concepts-that-matter :=
        (
          for $key in distinct-values(jn:flatten($rules.ComputableConcepts))
          return
            (
              $key,
              $rules[jn:flatten($$.ComputableConcepts) = $key].DependsOn[]
            )
        )
      for $concept in $concepts-computable-by-rules
      (: primary order to make sure rules that many other rules depend on are executed first :)
      let $count := count($concepts-that-matter[$$ eq $concept])
      (: secondary order to make sure the rules with less depencies are executed first :)
      let $dependencies-count := count($rules[jn:flatten($$.ComputableConcepts) = $concept].DependsOn[])
      order by $count descending, $dependencies-count ascending
      return $concept
    let $options as object? :=
      if (facts:from-options("cache-control", $options) eq "no-cache" and
          exists(facts:from-options("debug", $options)))
      then $options
      else
      {|
        if(exists(facts:from-options("cache-control", $options)))
        then (trim($options, ("cache-control")), { "cache-control": "no-cache" })
        else ($options, { "cache-control": "no-cache" }),
        (: this prevents the connection to be created inside of eval.
           If the first connection is created inside of eval it will be closed
           after finishing the evaled query. To prevent this we create the
           connection here outside of eval. :)
        if (empty(facts:from-options("debug", $options)))
        then { "debug": { "connection": string(mw:connection()) }}
        else ()
      |}
  let $default-rules as object* := $rules[empty(jn:flatten($$.ComputableConcepts))]
  let $non-default-rules as object* := $rules[exists(jn:flatten($$.ComputableConcepts))]
  return
    if(exists($default-rules))
    then
      let $current-rule as object := head($default-rules)
      let $recursive-rules as object* := (tail($default-rules), $non-default-rules)
      return
          facts:facts-for-rules(
              $current-rule,
              $concepts-computable-by-rules,
              $hypercube,
              $aligned-filter,
              $concept-maps,
              $recursive-rules,
              $cache,
              $options)
  else
    for $concept as string in $concepts-computable-by-rules
    let $prioritized-rules as object* :=
        $non-default-rules[$$.ComputableConcepts[] = $concept]
    let $other-rules as object* :=
        $non-default-rules[not $$.ComputableConcepts[] = $concept]
    let $current-rule as object := head($prioritized-rules)
    let $recursive-rules as object* :=
        (tail($prioritized-rules), $other-rules)
            [not $$.ComputableConcepts[] = $current-rule.HideRulesForConcepts[]]
    return
      facts:facts-for-rules(
          $current-rule,
          $concept,
          $hypercube,
          $aligned-filter,
          $concept-maps,
          $recursive-rules,
          $cache,
          $options)
};

(:~
 : execute a set of rules with options
 :
 : @error facts:INVALID-RULE-TYPE the type of a rule is not unknown/invalid
 : @error facts:RULE-EXECUTION-ERROR a rule raised an error whilst being executed
 :)
declare %private
        %an:strictlydeterministic
        %an:exclude-from-cache-key(5, 6, 7, 8)
        function facts:facts-for-rules(
    $rules-to-evaluate as object+,
    $concepts as string*,
    $hypercube as object?,
    $aligned-filter as object,
    $concept-maps as object*,
    $rules as object*,
    $cache as object*,
    $options as object?
) as object*
{
  for $rule in $rules-to-evaluate
  let $type := $rule.Type
  return
    switch(true)
    case ($type = ("xbrl28:formula", "xbrl28:validation"))
    return
      let $formula := $rule.Formula
      return
        try {
          (# Q{http://xqlint.io}xqlint varrefs($concepts, $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) #) {
            reflection:eval($formula)[$$.Aspects.$facts:CONCEPT = $concepts]
          }
        } catch * {
          let $ser-params :=
            <output:serialization-parameters xmlns:output="http://www.w3.org/2010/xslt-xquery-serialization">
              <output:indent value="yes"/>
              <output:omit-xml-declaration value="yes"/>
            </output:serialization-parameters>
          let $error-details :=
            {
              "error": true,
              "code": $err:code,
              "description": $err:description,
              "value": $err:value,
              "line-number": $err:line-number,
              "column-number": $err:column-number,
              "stack-trace": $zerr:stack-trace
            }
          let $message :=
            if($err:code eq xs:QName("facts:RULE-EXECUTION-ERROR"))
            then
                $err:description
            else
                "Error executing rule '" || $rule.Label
                    || "'.

Details: (" || $err:code || ") location:" || $err:line-number || ":" || $err:column-number || " " || $err:description || "
Object: [" || serialize($err:value, $ser-params) || "]
Stacktrace:
"  || serialize($zerr:stack-trace, $ser-params)
          return
            error(xs:QName("facts:RULE-EXECUTION-ERROR"),
                  $message,
                  $error-details)
        }

    default return error(
      QName("facts:INVALID-RULE-TYPE"),
      "Invalid rule type : '" || $type || "' of rule with label: '"
      || $rule.Label || "'")
};

(:~
 : fetch free lunch facts from cache if possible
 :)
declare %private function facts:facts-from-cache(
    $concepts as string*,
    $cache-filter-index as string,
    $cache as object*
) as object*
{
  if(empty($cache))
  then ()
  else
    for $concept in $concepts
    return $cache.$concept.$cache-filter-index[]
};

(:~
 : issue a direct lookup of facts from the store
 :)
declare %private function facts:facts-for-direct(
    $concepts-not-computable-by-rules-or-maps as string*,
    $filter as object,
    $hypercube as object?,
    $options as object?
) as object*
{
  let $all-concepts as string* :=
    facts:aspect-values-from-filter($filter, $facts:CONCEPT)
  return
    switch(true)
    case not exists($all-concepts)
    (: there are no concepts at all to filter -- do a direct lookup in any case :)
    return facts:facts-for-direct($filter,
                                  $hypercube,
                                  $options)
    case exists($concepts-not-computable-by-rules-or-maps)
    (: there are concepts to filter -- only take those not convered by rules :)
    return
        let $aligned-filter := facts:merge-objects(
              {
                "Aspects": {
                  "xbrl:Concept": [ $concepts-not-computable-by-rules-or-maps ]
                }
              },
              $filter,
              true (: prioritize first object :)
        )
        return facts:facts-for-direct($aligned-filter,
                                      $hypercube,
                                      $options)
    default return ()
};

(:~
 :)
declare %private function facts:facts-for-direct(
    $filter as object,
    $hypercube as object?,
    $options as object?
) as object*
{
  let $query as object := facts:filter-to-mongo-query($filter)
  return
    if (some $array in descendant-arrays($filter)
        satisfies size($array) eq 0)
    then
      (: if the user filters for a value which is not in the value space
         of the hypercube the result can only be empty:)
       ()
    else
      let $found as object* := facts:facts-query-cached(serialize($query))

      let $include-footnotes as boolean? := facts:from-options("include-footnotes", $options)
      let $facts as object* :=

        (: only return facts that belong to the hypercube, i.e. have no
           additional axis :)
        if (exists($hypercube))
        then
          let $keys := keys($hypercube.$facts:ASPECTS)
          let $hypercube-dimensions as object* :=
            for $dimension in $keys
            where exists($hypercube.$facts:ASPECTS.$dimension.Default)
            return $hypercube.$facts:ASPECTS.$dimension
          let $hc-dimension-names := $keys
          for $fact in $found[every $key in flatten($$.KeyAspects)
                              satisfies $key = ($keys,
                                                $facts:ENTITY,
                                                $facts:CONCEPT,
                                                $facts:PERIOD,
                                                $facts:UNIT)]
          return
            (: add default dimension members if they are omitted
               remove dimensions that are not in the hypercube :)
            copy $populated := $fact
            modify
              let $replacements := {|
                for $dimension in $hypercube-dimensions
                let $name as xs:string := $dimension.Name
                let $dimension-value := $populated.$facts:ASPECTS.$name
                where empty($dimension-value)
                return { $name: $dimension.Default }
              |}
              let $removals := seq:value-except(keys($fact.$facts:ASPECTS), $hc-dimension-names)
              (: where count(keys($replacements)) gt 0 :)
              return (
                insert json $replacements into $populated.$facts:ASPECTS,
                $removals ! (delete json $populated($facts:ASPECTS)($$)),
                let $audit-trails := keys($replacements) ! {
                  Type: "xbrl28:dimension-default",
                  Label: "Default dimension value",
                  Message: $$ || ".Default = \"" || $replacements.($$) || "\"",
                  Data: {
                    Dimension: $$,
                    Member: $replacements.($$),
                    OutputConcept: $fact.$facts:ASPECTS.$facts:CONCEPT
                  }
                }
                return if(exists($populated.AuditTrails))
                       then append json $audit-trails into $populated.AuditTrails
                       else insert json { AuditTrails: [ $audit-trails ] } into $populated
              )
            return $populated

        else $found

      return
        if ($include-footnotes)
        then facts:populate-with-footnotes($facts, $options)
        else $facts
};

(:~
 : fetch facts from concept maps
 :)
declare %private function facts:facts-for-archives-and-concepts-and-concept-maps(
    $filter as object?,
    $concepts as string*,
    $hypercube as object?,
    $aligned-filter as object,
    $concept-maps as object*,
    $cache as object*,
    $options as object*
) as object*
{
  if (empty($concepts) or empty($concept-maps))
  then
    (: concept maps only work if concepts and concept-maps are given :)
    ()
  else
    let $archive-or-ids :=
      if (exists( $filter.$facts:ASPECTS.$facts:ARCHIVE ))
      then jn:flatten( $filter.$facts:ASPECTS.$facts:ARCHIVE )
      else $facts:ALL_OF_THEM
    let $facts-for-archives-and-concepts :=
        if (exists($options.facts-for-archives-and-concepts))
        then $options.facts-for-archives-and-concepts
        else facts:facts-for-archives-and-concepts#3

    let $all-mapped-concepts as string* :=
      distinct-values(
        for $object in $concept-maps.Trees[]
        where $object.Name = $concepts
        let $children as object* := $object.To[]
        return
          if (exists($children))
          then $children.Name
          else $object.Name
      )

    let $new-options as object* :=
      (: @TODO: why do we remove concept-maps here? :)
      copy $new := trim($options, ("concept-maps", "ConceptMaps", "cache-control"))
      modify (switch(true)
              case exists($new.Filter.Aspects.$facts:CONCEPT)
                  return
                    replace value of json $new.Filter.Aspects.$facts:CONCEPT
                            with [ $all-mapped-concepts ]
              case exists($new.Filter.Aspects)
                  return
                    insert json { "xbrl:Concept" : [ $all-mapped-concepts ] }
                           into $new.Filter.Aspects
              case exists($new.Filter)
                  return
                    insert json
                        { "Aspects" :
                          { "xbrl:Concept" : [ $all-mapped-concepts ] } }
                      into $new.Filter
              default
                  return
                    insert json
                        { "Filter" :
                          { "Aspects" :
                            { "xbrl:Concept" : [ $all-mapped-concepts ] } } }
                      into $new,
              if(exists($new.Hypercube.Aspects.$facts:CONCEPT.Members))
              then delete json $new.Hypercube.Aspects.$facts:CONCEPT.Members
              else (),
              insert json { "cache-control" : "no-cache" } into $new
            )
      return $new

    let $underlying-facts :=
      if(exists($options.facts-for-archives-and-concepts))
      then $facts-for-archives-and-concepts($archive-or-ids, $all-mapped-concepts, $new-options)
      else facts:facts-for-internal(
          $all-mapped-concepts,
          $hypercube,
          $aligned-filter,
          (),
          (),
          $cache,
          $new-options)
    let $audit-trail-option as string :=
        facts:from-options("AuditTrail", $options)
    return
    for $facts in $underlying-facts
    group by $uncovered-filter :=
        facts:canonical-grouping-key($facts, $facts:CONCEPT)
    return
    for $object in $concept-maps.Trees[]
    where $object.Name = $concepts
    let $concept := $object.Name
    let $children as object* := $object.To[]
    for $fact as object in
          for $candidate-concept in $children.Name
          let $facts := $facts[$$.Aspects.$facts:CONCEPT = $candidate-concept]
          where exists($facts)
          count $c
          where $c eq 1
          return $facts
    return
      copy $populated := $fact
      modify (replace value of json
                  $populated.Aspects.$facts:CONCEPT with $concept,
              let $orig-concept as string :=
                facts:concept-for-fact($populated)
              let $audit-trail := {
                Type: "xbrl28:concept-maps",
                Label: "Concept map",
                Message: $concept || " -> " || $orig-concept,
                Data: {|
                  { OriginalConcept: $orig-concept,
                    OutputConcept: $concept },
                  if($audit-trail-option eq "debug")
                  then { SourceFacts: [ $fact ] }
                  else ()
                |}
              }
              return if(exists($populated.AuditTrails))
                     then append json $audit-trail into $populated.AuditTrails
                     else insert json { AuditTrails: [ $audit-trail ] } into $populated,

              if(exists($populated."xbrl28:Type"))
              then replace value of json $populated."xbrl28:Type" with "xbrl28:concept-maps"
              else insert json { "xbrl28:Type" : "xbrl28:concept-maps" } into $populated
             )
      return $populated
};

(:~
 : get all atomic values from an aspect. Ignore values that are objects.
 :)
declare %private function facts:aspect-values-from-filter(
  $filter as object?,
  $aspect as string) as atomic*
{
  switch (true)
  case ($filter.$facts:ASPECTS.$aspect instance of object)
  (: e.g. { "$exists" : true } :)
  return ()
  case ($filter.$facts:ASPECTS.$aspect instance of array)
  return distinct-values(jn:flatten($filter.$facts:ASPECTS.$aspect))
  default return $filter.$facts:ASPECTS.$aspect
};

(:~
 :)
declare %private function facts:align-filter-to-hypercube(
  $filter as object?,
  $hypercube as object?) as object
{
  let $aligned-filter as object :=
      if(exists($hypercube))
      then let $aspects as object? :=
            facts:align-aspects($hypercube.$facts:ASPECTS,
                                $filter.$facts:ASPECTS)
           return {|
               for $key in keys($filter)
               where not($key = ($facts:ASPECTS))
               return { $key : $filter.$key },
               if (count(keys($aspects)) ge 1)
               then { Aspects: $aspects }
               else ()
          |}
      else $filter
  return
    if (empty((
        $aligned-filter.$facts:ASPECTS.$facts:ARCHIVE,
        $aligned-filter.$facts:ASPECTS.$facts:CONCEPT,
        $aligned-filter.$facts:ASPECTS.$facts:PERIOD,
        $aligned-filter.$facts:ASPECTS.$facts:ENTITY
    )))
    then error(QName("facts:FILTER-TOO-GENERIC"),
                 "The filter object must have at least one of the fields "  || $facts:ASPECTS || "."
                 || $facts:ARCHIVE || ", " || $facts:ASPECTS || "." || $facts:CONCEPT
                 || ", " || $facts:ASPECTS || "." || $facts:PERIOD || ", "
                 || "or " || $facts:ASPECTS || "." || $facts:ENTITY
                 || ". Provided Filter object: " || serialize($filter))
    else $aligned-filter
};

(:~
 :)
declare %private function facts:align-aspects(
  $hypercube-aspects as object?,
  $filter-aspects as object?) as object?
{
  {|
    for $dimension-name in keys($hypercube-aspects)

    (: handling explicit and typed dimensions (but only those restricted by an enumeration here :)
    let $dimension as object := $hypercube-aspects.$dimension-name
    let $typed-dimension as boolean := $dimension.Kind = "TypedDimension"
    let $hypercube-domains :=
      if ($typed-dimension)
      then $dimension.DomainRestriction.Enumeration
      else $dimension.Members[]
    let $hypercube-restricts := exists($hypercube-domains)
    let $hypercube-members as atomic* :=
      if ($typed-dimension)
      then flatten($hypercube-domains)
      else ($hypercube-domains, descendant-objects($hypercube-domains)).Name
    let $hypercube-default as atomic? := $dimension.Default
    let $hypercube-has-default as boolean := exists($hypercube-default)

    let $filter-restricts := exists($filter-aspects.$dimension-name)
    let $filter-members := jn:flatten($filter-aspects.$dimension-name)

    let $intersection-members :=
      switch(true)
      case $hypercube-restricts and $filter-restricts return $filter-members[$$ = $hypercube-members]
      case $hypercube-restricts return $hypercube-members
      case $filter-restricts return $filter-members
      default return ()

    return
      switch(true)

      (: one of the filter or the hypercube restricts allowed members :)
      case $filter-restricts or $hypercube-restricts
          return { $dimension-name : [ $intersection-members, if ($intersection-members = $hypercube-default) then null else () ] }

      (: no member restriction, and no default -> The dimension MUST exist :)
      case not $hypercube-has-default and
           not $dimension-name = ($facts:ENTITY, $facts:PERIOD)
          return { $dimension-name : { "$exists": true } }

      (: no member restriction, a default -> Any fact will do w.r.t. this aspect :)
      default
          return ()
  |}
};

(:~
 :)
declare %private function facts:filter-to-mongo-query($filter as object) as object
{
  {|
    for $key in jn:keys($filter)
    let $value := $filter.$key
    return
      if(starts-with($key, "$"))
      then { $key : $value }
      else
      typeswitch ($value)
      case object return facts:filter-to-mongo-query( $key, $value )
      case array return {
          $key : if (size($value) gt 1) then { "$in" : $value } else $value[]
      }
      default return { $key : $value }
  |}
};

(:~
 :)
declare %private function facts:filter-to-mongo-query($prefix as xs:string, $filter as object) as object*
{
    for $key in jn:keys($filter)
    let $value := $filter.$key
    return
      if(starts-with($key, "$"))
      then { $prefix : { $key : $value } }
      else
      typeswitch ($value)
      case object return facts:filter-to-mongo-query( $prefix || "." || $key, $value)
      case array return {
          $prefix || "." || $key :
          if (size($value) gt 1) then { "$in" : $value } else $value[]
      }
      default return { $prefix || "." || $key : $value }
};

(:~
 : <p>Helper function to deep-merge two objects. If the two given objects have
 :    fields with the same name they are merged, which means:
 :      1. if the values of the fields are objects then these are merged
 :      2. in any other case the fields are accumulated into an array.</p>
 :
 : <p>The third parameter can be used to priotitize the first object. If the first
 :    object is prioritized and both objects contain fields with the same name,
 :    the fields are either merged (in case of two object values) or the value of
 :    the first object is taken.</p>
 :
 : @param $o1 first object
 : @param $o2 second object
 : @param $prioritize-first-object boolean flag to give the first object higher
 :        priority in the merge
 :
 : @return one merge object or an empty-sequence (in case both input objects are empty).
 :)
declare function facts:merge-objects(
  $o1 as object?,
  $o2 as object?,
  $prioritize-first-object as boolean) as object?
{
  if (empty($o1) or empty($o2))
  then ($o1, $o2)
  else
    {|
      let $all-keys as string* :=
        distinct-values( (keys($o1), keys($o2)) )
      for $key in $all-keys
      let $subo1 as item? := $o1.$key
      let $subo2 as item? := $o2.$key
      return {
        $key :
        switch(true)
        case empty($subo1) or empty($subo2)
            return ($subo1, $subo2)
        case ($subo1, $subo2) instance of object*
            return facts:merge-objects($subo1, $subo2, $prioritize-first-object)
        case $prioritize-first-object
            return $subo1
        default
            return [ ($subo1, $subo2) ! (typeswitch($$)
                                         case array return $$[]
                                         default return $$) ]
      }
    |}
};

(:~
 : <p>Generates a grouping key for a fact. It is done by building
 : a canonical serialization of its key aspects.
 : This serialized format is helpful for identifying and grouping facts from
 : the same slice or dice. Since no aspect is covered, the generated key
 : uniquely identifies the cell in which a fact lies, providing
 : the key aspects are sound.</p>
 :
 : @param $facts the facts for which to generate a grouping key.
 :
 : @return the serialized grouping keys.
 :)
declare function facts:canonical-grouping-key(
  $facts as object*) as string*
{
  facts:canonical-grouping-key($facts, ())
};

(:~
 : <p>Generates a grouping key for a fact. It is done by building
 : a canonical serialization of its non-covered key aspects.
 : This serialized format is helpful for identifying and grouping facts from
 : the same slice or dice.</p>
 :
 : @param $facts the facts for which to generate a grouping key.
 : @param $covered-aspects the aspects that are covered and that are not grouped on.
 :
 : @return the serialized grouping keys.
 :)
declare function facts:canonical-grouping-key(
  $facts as object*,
  $covered-aspects as string*) as string*
{
  for $fact in $facts
  return string-join(
    let $aspects as object := $fact.Aspects
    for $non-covered-key-aspect as string in $fact.KeyAspects[][not $$ = $covered-aspects]
    order by $non-covered-key-aspect
    return ($non-covered-key-aspect, string($aspects.$non-covered-key-aspect))
  , "|")
};

(:~
 : <p>Canonically serialize an object, i.e. serialize fields in an ordered way.
 :    Fields can be excluded from serialization (e.g. xbrl:Concept in case of
 :    serializing a filter)</p>
 :
 : @deprecated This function has been deprecated in favor of the fact specific
 :   function facts:canonical-grouping-key.
 :
 : @param $object the object to be canonically serialized
 : @param $exclude-fields the strings of field names to exclude from serialization
 :
 : @return the serialized object as string
 :)
declare function facts:canonically-serialize-object(
  $object as object,
  $exclude-fields as string*) as string
{
    switch(true)
    case $object.$facts:CONCEPT instance of string and
         $object.$facts:ENTITY instance of string and
         $object.$facts:PERIOD instance of string and
         $object.$facts:ACCEPTED instance of string
        return facts:canonical-grouping-key(
            {
                KeyAspects: [ keys($object)[not $$ = ($facts:ARCHIVE, "sec:FiscalYear", "sec:FiscalPeriod", "sec:FiscalPeriodType", "sec:IsExtension")]],
                Aspects: $object
            }, $exclude-fields)
    case exists($object.Aspects) and exists($object.KeyAspects)
        return facts:canonical-grouping-key($object, $exclude-fields)
    default return
      "{" ||
      string-join(
        for $key in keys($object)
        where not(some $ex in $exclude-fields satisfies $ex eq $key)
        order by $key
        let $val := $object.$key
        return
          $key || ":" || facts:canonically-serialize-items($val, $exclude-fields)
        , ",")
      || "}"
};

(:~
 : serialize items in a canonical way. this function is used in
 : facts:canonically-serialize-object#2 to recursively serialize an object.
 :)
declare %private function facts:canonically-serialize-items(
  $items as item*,
  $exclude-fields as string*) as string
{
  string-join(
    switch(true)
    case ($items instance of atomic*)
    return
      for $i in $items
      let $val := string($i)
      order by $val
      return $val

    case ($items instance of object*)
    return
      string-join(
        $items ! facts:canonically-serialize-object($$, $exclude-fields)
        , ",")

    case ($items instance of array*)
    return "[" || facts:canonically-serialize-items($items[], $exclude-fields) || "]"

    case ($items instance of function(*)*)
    return ""

    default return
    error(xs:QName("facts:CANONICAL-SERIALIZATION-ERROR"),
          "serialization of item '" || serialize($items) || "' not implemented")
  , ",")
};

(:~
 : put some facts into the Cache field of an options object. The
 : cache-filter-index is used to allow correct caching for specific filters.
 :)
declare %private function facts:update-cache(
  $cache as object*,
  $options as object?,
  $facts-found as object*,
  $queried-concepts as string*,
  $cache-filter-index as string
) as object*
{
  if (facts:from-options("cache-control", $options) eq "no-cache")
  then $cache
  else
    let $cache-additions :=
        for $concept in distinct-values($queried-concepts)
        let $facts as object* := $facts-found[$$.$facts:ASPECTS.$facts:CONCEPT eq $concept]
        return {
          $concept: { $cache-filter-index : [ $facts ] }
        }
    for $c in ($cache-additions, $cache)
    group by $concept := keys($c)
    return switch(count($c))
           case 1 return $c
           case 2 return facts:merge-objects($c[1], $c[2], true)
           default return error()
};

(:~
 : use rules, concept-maps, and filters to determine all potential facts needed
 : and put them into the cache. Requires the cache-control field to be set to
 : "prefetch".
 :)
declare %private function facts:prepopulate-cache(
  $cache as object*,
  $options as object?,
  $concepts as string*,
  $rules as object*,
  $concept-maps as object*,
  $aligned-filter as object,
  $hypercube as object?,
  $cache-filter-index as string
) as object*
{
  if (not(facts:from-options("cache-control", $options) eq "prefetch"))
  then $cache
  else
    let $concepts :=
      facts:get-dependent-concepts($concepts, $rules, $concept-maps)
    let $direct-lookup-results as object* :=
      facts:facts-for-direct($concepts,
                             $aligned-filter,
                             $hypercube,
                             $options)
    return
      facts:update-cache($cache,
                         $options,
                         $direct-lookup-results,
                         $concepts,
                         $cache-filter-index)
};

(:~
 : flatten deep structure of concept-maps
 :)
declare %private function facts:flatten-concept-maps(
  $concept-maps as object*
) as object*
{
  facts:flatten-concept-maps($concept-maps, $concept-maps.Trees[].Name)
};

(:~
 : flatten deep structure of concept-maps
 : @param $concepts is optional and restricts the resulting
 :        mappings to only these concepts
 :)
declare %private function facts:flatten-concept-maps(
  $concept-maps as object*,
  $concepts as string*
) as object*
{
    for $concept in $concept-maps.Trees[]
    where $concept.Name = $concepts
    let $key := $concept.Name
    let $val as object* := $concept.To[].Name
    where exists($val)
    return {$key:[$val]}
};

(:~
 : get all dependent concepts from a set of rules, concepts-maps and concepts.
 :)
declare %private function facts:get-dependent-concepts(
  $concepts as string*,
  $rules as object*,
  $concept-maps as object*
) as string*
{
  let $flat-concept-maps :=
    facts:flatten-concept-maps($concept-maps)
  let $concepts-not-to-prefetch :=
    (
      keys($flat-concept-maps),
      jn:flatten($rules.ComputableConcepts)
    )
  return
    distinct-values(
      for $concept in $concepts
      return
        facts:get-dependent-concepts-internal($concept,
                                              $rules,
                                              $flat-concept-maps)
    )[not($$ = $concepts-not-to-prefetch)]
};

(:~
 : get all dependent concepts from rules, concept-maps, and concepts
 : recursively. This is a helper function for facts:get-dependent-concepts#3.
 : Use facts:get-dependent-concepts#3 instead.
 :)
declare %private function facts:get-dependent-concepts-internal(
  $concept as string,
  $rules as object*,
  $flat-concept-maps as object*
) as string*
{
  let $concept-rules := $rules[jn:flatten($$.ComputableConcepts) = $concept]
  let $concept-mappings := jn:flatten($flat-concept-maps.$concept)

  let $new-rules := $rules[not(jn:flatten($$.ComputableConcepts) = $concept)]
  let $new-maps := $flat-concept-maps[not(exists($$.$concept))]

  return
    (
      for $rule in $concept-rules
      let $deps := jn:flatten($rule.DependsOn)
      for $dep in $deps
      return facts:get-dependent-concepts-internal($dep,
                                                   $new-rules,
                                                   $new-maps),
      for $mapping in $concept-mappings
      return facts:get-dependent-concepts-internal($mapping,
                                                   $new-rules,
                                                   $new-maps),
      if(empty($concept-rules) and empty($concept-mappings))
      then $concept
      else ()
    )
};
