jsoniq version "1.0";
(:
 : Copyright 2013 28msec Inc.
 :)


(:~
 : <p>This module provides functions for retrieving metadata about archives.</p>
 :
 : <p>Archives represent the granularity of "report shipping", i.e., an entity
 : reports one archive at a time. An archive is identified with an AID (archive ID).</p>
 :
 : <p>Archives are made of reported facts (see facts module),
 : which are structured and organized in components (see components module).</p>
 :
 : <p>With this module, you can retrieve all archives, or a certain number of archives
 : with their AIDs, or obtain the AID of archives you already have. You can also retrieve
 : all archives submitted by one or several entities.</p>
 :
 : <p>Archive information is stored in a MongoDB datasource called <b>xbrl</b>.</p>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :
 :)
module namespace archives = "http://28.io/modules/xbrl/archives";

import module namespace entities = "http://28.io/modules/xbrl/entities";

import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : Name of the collection the archives are stored in.
 :)
declare variable $archives:col as string := "archives";

(:~
 : Name of the field which points to the reporting entity.
 :)
declare variable $archives:ENTITY as string:= "Entity";

(:~
 : <p>Retrieves all archives.</p>
 : 
 : @return all archives.
 :) 
declare function archives:archives() as object*
{
  let $conn := archives:connection()
  return archives:find($conn, {})
};

(:~
 : <p>Retrieves the archives with the given AIDs.</p>
 :
 : @param $id the ids of the archives (AIDs) or the archives themselves.
 : 
 : @return the archives with the given AIDs
 :         the empty sequence if no archive was found or if the input is an
 : empty sequence.
 :) 
declare function archives:archives($archive-or-ids as item*) as object*
{
  let $ids as string* :=
    for $s in $archive-or-ids
    where $s instance of string
    return $s
  let $archives as object* :=
    for $s in $archive-or-ids
    where $s instance of object
    return $s
  return
    (
      $archives,
      if (exists($ids))
      then
        let $conn := archives:connection()
        return archives:find($conn, { "_id" : { "$in" : [ archives:aid($ids) ] } })
      else ()
    )
};

(:~
 :
 : <p>Returns the entities that submitted the supplied archives.</p>
 :
 : @param $archives-or-ids a sequence of archives or their identifiers (AID).
 : @return the submitting entities.
 :
 :)
declare function archives:entities($archives-or-ids as item*) as object*
{
  let $archives := archives:archives($archives-or-ids)
  let $eids := $archives.Entity
  return entities:entities($eids)
};

(:~
 : <p>Return all archives created by the supplied entities.</p>
 : 
 : @param $entities-or-ids arbitrary number of entity objects or EIDs.
 :
 : @return all archives created by these entities.
 :) 
declare function archives:archives-for-entities($entities-or-ids as item*) as object*
{
  let $conn := archives:connection()
  for $cik-or-entity in $entities-or-ids
  let $eid as xs:string := entities:eid($cik-or-entity)
  return archives:find($conn, { $archives:ENTITY : $eid })
};

(:~
 : Return the number of hypercubes in each of the given archives.
 :
 : @param $archives-or-ids list of archives or IDs
 :
 : @return the said number of hypercubes
 :)
declare function archives:num-hypercubes($archives-or-ids as item*) as integer*
{
  archives:archives($archives-or-ids) ! $$.Statistics.NumHypercubes
};

(:~
 : Return the number of networks in each of the given archives.
 :
 : @param $archives-or-ids list of archives or IDs
 :
 : @return the said number of networks
 :)
declare function archives:num-networks($archives-or-ids as item*) as integer*
{
  archives:archives($archives-or-ids) ! $$.Statistics.NumNetworks
};

(:~
 : Return the number of (distinct) explicit dimensions in each of the given archives.
 :
 : @param $archives-or-ids list of archives or IDs
 :
 : @return the said number of dimensions
 :)
declare function archives:num-explicit-dimensions($archives-or-ids as item*) as integer*
{
  archives:archives($archives-or-ids) ! $$.Statistics.NumDistinctExplicitDimensions
};

(:~
 : Return the number of (distinct) domains in each of the given archives.
 :
 : @param $archives-or-ids list of archives or IDs
 :
 : @return the said number of domains
 :)
declare function archives:num-domains($archives-or-ids as item*) as integer*
{
  archives:archives($archives-or-ids) ! $$.Statistics.NumDistinctDomains
};

(:~
 : Return the number of (distinct) members in each of the given archives.
 :
 : @param $archives-or-ids list of archives or IDs
 :
 : @return the said number of members
 :)
declare function archives:num-members($archives-or-ids as item*) as integer*
{
  archives:archives($archives-or-ids) ! $$.Statistics.NumDistinctMembers
};

(:~
 : Return the number of (distinct) concrete primary items being
 : in a hypercube for each of the given archives.
 :
 : @param $archives-or-ids list of archives or IDs
 :
 : @return the said number of primary items
 :)
declare function archives:num-concrete-primary-items-in-hypercubes($archives-or-ids as item*) as integer*
{
  archives:archives($archives-or-ids) ! $$.Statistics.NumDistinctConcretePrimaryItemsInHypercubes
};

(:~
 : Return the number of (distinct) abstract primary items being
 : in a hypercube for each of the given archives.
 :
 : @param $archives-or-ids list of archives or IDs
 :
 : @return the said number of primary items
 :)
declare function archives:num-abstract-primary-items-in-hypercubes($archives-or-ids as item*) as integer*
{
  archives:archives($archives-or-ids) ! $$.Statistics.NumDistinctAbstractPrimaryItemsInHypercubes
};

(:~
 : Return the number of (distinct) concrete primary items not being
 : in a hypercube for each of the given archives.
 :
 : @param $archives-or-ids list of archives or IDs
 :
 : @return the said number of primary items
 :)
declare function archives:num-concrete-primary-items-not-in-hypercubes($archives-or-ids as item*) as integer*
{
  archives:archives($archives-or-ids) ! $$.Statistics.NumDistinctConcretePrimaryItemsNotInHypercubes
};

(:~
 : Return the number of (distinct) abstract primary items not being
 : in a hypercube for each of the given archives.
 :
 : @param $archives-or-ids list of archives or IDs
 :
 : @return the said number of primary items
 :)
declare function archives:num-distinct-abstract-primary-items-not-in-hypercubes($archives-or-ids as item*) as integer*
{
  archives:archives($archives-or-ids) ! $$.Statistics.NumDistinctAbstractPrimaryItemsNotInHypercubes
};

(:~
 : Return the number of facts of each of the given archives.
 :
 : @param $archives-or-ids list of archives or IDs
 :
 : @return the said number of facts
 :)
declare function archives:num-facts($archives-or-ids as item*) as integer*
{
  archives:archives($archives-or-ids) ! $$.Statistics.NumFacts
};

(:~
 : Return the number of XBRL footnotes of each of the given archives.
 :
 : @param $archives-or-ids list of archives or IDs
 :
 : @return the said number of footnotes
 :)
declare function archives:num-footnotes($archives-or-ids as item*) as integer*
{
  archives:archives($archives-or-ids) ! $$.Statistics.NumFootnotes
};

(:~
 : Return the number of components of each of the given archives.
 :
 : @param $archives-or-ids list of archives or IDs
 :
 : @return the said number of components
 :)
declare function archives:num-components($archives-or-ids as item*) as integer*
{
  archives:archives($archives-or-ids) ! $$.Statistics.NumComponents
};

(:~
 :
 : <p>Converts the input to a normalized archive identifier (AID). The input
 : can be either a pure AID, or an archive object which contains an AID.</p>
 :
 : @param $archives-or-ids a sequence of archive objects or identifiers (AID).
 :
 : @error archives:INVALID_PARAMETER if the AID or archive is not valid
 :
 : @return the normalized AIDs.
 :)
declare function archives:aid($archives-or-ids as item*) as atomic*
{
  for $archive-or-id in $archives-or-ids
  return
  typeswitch ($archive-or-id)
  case object return
    let $aid := $archive-or-id._id
    return if(exists($aid))
           then $aid
           else error(QName("archives:INVALID_PARAMETER"), 
                      "Invalid archive provided (no _id field)")
  case $aid as atomic return $aid
  default return error(
      QName("archives:INVALID_PARAMETER"),
      "Invalid archive or AID (must be an object or an atomic): "
      || serialize($archive-or-id))
};

declare function archives:find($conn as anyURI, $query as object) as object()*
{
  mongo:find($conn, $archives:col, archives:hinted-query($query))
};

declare %private function archives:hinted-query($query as object) as object
{
  switch (true)
    case (exists($query("_id")))
      return { "$query": $query, "$hint": "_id_" }
    default
      return $query
};

(:~
 :)
declare %private %an:strictlydeterministic function archives:connection() as anyURI
{
  let $credentials :=
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return if (empty($credentials))
             then error(QName("archives:CONNECTION-FAILED"), "no xbrl MongoDB configured")
             else $credentials
  return
    try {
      mongo:connect($credentials)
    } catch mongo:* {
      error(QName("archives:CONNECTION-FAILED"), $err:description)
    }
};
