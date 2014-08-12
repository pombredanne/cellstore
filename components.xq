jsoniq version "1.0";
(:
 : Copyright 2012-2013 28msec Inc.
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
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :)
module namespace components = "http://28.io/modules/xbrl/components";

import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace facts = "http://28.io/modules/xbrl/facts";

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
 : Return the number of hypercubes in each of the given components.
 :
 : @param $components-or-ids list of archives or IDs
 :
 : @return the said number of hypercubes
 :)
declare function components:num-hypercubes($components-or-ids as item*) as integer*
{
  components:components($components-or-ids) ! $$.Statistics.NumHypercubes
};

(:~
 : Return the number of networks in each of the given components.
 :
 : @param $components-or-ids list of archives or IDs
 :
 : @return the said number of networks
 :)
declare function components:num-networks($components-or-ids) as integer*
{
  components:components($components-or-ids) ! $$.Statistics.NumNetworks
};

(:~
 : Return the number of (distinct) explicit dimensions in each of the given components.
 :
 : @param $components-or-ids list of archives or IDs
 :
 : @return the said number of dimensions
 :)
declare function components:num-explicit-dimensions($components-or-ids) as integer*
{
  components:components($components-or-ids) ! $$.Statistics.NumDistinctExplicitDimensions
};

(:~
 : Return the number of (distinct) domains in each of the given components.
 :
 : @param $components-or-ids list of archives or IDs
 :
 : @return the said number of domains
 :)
declare function components:num-domains($components-or-ids) as integer*
{
  components:components($components-or-ids) ! $$.Statistics.NumDistinctDomains
};

(:~
 : Return the number of (distinct) members in each of the given components.
 :
 : @param $components-or-ids list of archives or IDs
 :
 : @return the said number of members
 :)
declare function components:num-members($components-or-ids) as integer*
{
  components:components($components-or-ids) ! $$.Statistics.NumDistinctMembers
};

(:~
 : Return the number of (distinct) concrete primary items being
 : in a hypercube for each of the given components.
 :
 : @param $components-or-ids list of archives or IDs
 :
 : @return the said number of primary items
 :)
declare function components:num-concrete-primary-items-in-hypercubes($components-or-ids) as integer*
{
  components:components($components-or-ids) ! $$.Statistics.NumDistinctConcretePrimaryItemsInHypercubes
};

(:~
 : Return the number of (distinct) abstract primary items being
 : in a hypercube for each of the given components.
 :
 : @param $components-or-ids list of archives or IDs
 :
 : @return the said number of primary items
 :)
declare function components:num-abstract-primary-items-in-hypercubes($components-or-ids) as integer*
{
  components:components($components-or-ids) ! $$.Statistics.NumDistinctAbstractPrimaryItemsInHypercubes
};

(:~
 : Return the number of (distinct) concrete primary items not being
 : in a hypercube for each of the given components.
 :
 : @param $components-or-ids list of archives or IDs
 :
 : @return the said number of primary items
 :)
declare function components:num-concrete-primary-items-not-in-hypercubes($components-or-ids) as integer*
{
  components:components($components-or-ids) ! $$.Statistics.NumDistinctConcretePrimaryItemsNotInHypercubes
};

(:~
 : Return the number of (distinct) abstract primary items not being
 : in a hypercube for each of the given components.
 :
 : @param $components-or-ids list of archives or IDs
 :
 : @return the said number of primary items
 :)
declare function components:num-distinct-abstract-primary-items-not-in-hypercubes($components-or-ids) as integer*
{
  components:components($components-or-ids) ! $$.Statistics.NumDistinctAbstractPrimaryItemsNotInHypercubes
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

