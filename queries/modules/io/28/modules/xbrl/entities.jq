jsoniq version "1.0";
(:
 : Copyright 2013 28msec Inc.
 :)


(:~
 : <p>This module provides functions for retrieving information about entities.
 : Entities submit archives (see archives module),
 : for example, to a reporting authority. Entities
 : are identified with an EID (Entity ID).</p>
 :
 : <p>With this module, you can retrieve all entities, or a certain number of entities
 : with their EIDs, or obtain the EID of entities you already have.</p>
 :
 : <p>Entities are stored in a MongoDB datasource called <b>xbrl</b>.</p>
 :
 : <p>Each entity can be associated with a set of tags that makes it easier
 : to manage them. The e:entities#1 function
 : allows to retrieve all entities with a given tag.</p>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :
 :)
module namespace entities = "http://28.io/modules/xbrl/entities";

import module namespace mw = "http://28.io/modules/xbrl/mongo-wrapper";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : Name of the collection the entities are stored in.
 :)
declare variable $entities:col as string := "entities";

(:~
 : <p>Return all entities.</p>
 : 
 : @return all entities.
 :) 
declare function entities:entities() as object*
{
  mw:find($entities:col, {})
};

(:~
 : <p>Return the entities with the given EIDs.</p>
 : 
 : @param $entities-or-ids the ids of the entities (EIDs) or the entities themselves.
 :
 : @return the entities with the given EIDs
 :         the empty sequence if no entity was found or if the input is an
 : empty sequence.
 :) 
declare function entities:entities($entities-or-ids as item*) as object*
{
  let $ids as string* :=
    for $s in $entities-or-ids
    where $s instance of string
    return $s
  let $entities as object* :=
    for $s in $entities-or-ids
    where $s instance of object
    return $s
  return
    (
      $entities,
      if (exists($ids))
      then mw:find($entities:col, { "_id" : { "$in" : [ $ids ! entities:eid($$) ] } })
      else ()
    )
};

(:~
 :
 : <p>Converts the input to a normalized entity identifier (EID). The input
 : can be either an EID, or an entity object which contains an _id.</p>
 :
 : @param $entity-or-id a sequence of entity objects or EIDs.
 :
 : @error entities:INVALID_PARAMETER if the EID or entity is not valid.
 :
 : @return the normalized EIDs.
 :)
declare function entities:eid($entities-or-ids as item*) as atomic*
{
  for $entity-or-id in $entities-or-ids
  return
  typeswitch ($entity-or-id)
  case object return
    let $id := $entity-or-id._id
    return if(exists($id))
           then $id
           else error(QName("entities:INVALID_PARAMETER"), 
                      "Invalid entity provided (no _id field)")
  case $id as atomic return $id
  default return error(
      QName("entities:INVALID_PARAMETER"),
      "Invalid entity or id (must be an object or an atomic): "
      || serialize($entity-or-id))
};
