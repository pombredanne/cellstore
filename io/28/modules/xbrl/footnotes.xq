jsoniq version "1.0";
(:
 : Copyright 2013 28msec Inc.
 :)


(:~
 : <p>This module provides functions for retrieving XBRL footnotes
 : (see section 4.11 Footnotes of the XBRL 2.1 specification).</p>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny

 :)
module namespace footnotes = "http://28.io/modules/xbrl/footnotes";

import module namespace string = "http://zorba.io/modules/string";

import module namespace facts = "http://28.io/modules/xbrl/facts";
import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace archives = "http://28.io/modules/xbrl/archives";

import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";

import schema namespace m = "http://www.28msec.com/modules/mongodb/types";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : Name of the collection the footnotes are stored in.
 :)
declare variable $footnotes:col as string := "footnotes";

(:~
 : Name of the field that points to the archive.
 :)
declare variable $footnotes:ARCHIVE as string := "Archive";

(:~
 : Name of the field that points to the facts linked to this footnote.
 :)
declare variable $footnotes:FACTS as string := "Facts";

(:~
 : Name of the field that holds the language attribute of the footnote.
 :)
declare variable $footnotes:LANG as string := "Lang";

(:~
 : <p>Return all footnotes.</p>
 : 
 : @return all footnotes.
 :) 
declare function footnotes:footnotes() as object*
{
  footnotes:footnotes-query({})
};

(:~
 : <p>Return the footnote with the given FNIDs.</p>
 : 
 : @param $footnote-or-ids the FNIDs or the footnotes themselves.
 :
 : @return the footnotes with the given FNIDs
 :         the empty sequence if no footnote was found or if the input is an
 : empty sequence.
 :) 
declare function footnotes:footnotes($footnote-or-ids as item*) as object?
{
  let $ids as string* :=
    for $s in $footnote-or-ids
    where $s instance of string
    return $s
  let $footnotes as object* :=
    for $s in $footnote-or-ids
    where $s instance of object
    return $s
  return 
    (
      $footnotes,
      if (exists($ids))
      then footnotes:footnotes-query(
             { "_id" : { "$in" : [ $ids ! footnotes:fnid($$) ] } })
      else ()
    )
};


(:~
 : <p>Return all footnotes reported within a given archive.</p>
 :
 : @param $archive-or-ids a sequence of archives or AIDs to filter.
 : @return all footnotes reported in these archives.
 :) 
declare function footnotes:footnotes-for-archives(
  $archive-or-ids as item*) as object*
{
  let $ids as string* := $archive-or-ids ! string(archives:aid($$))
  return
    footnotes:footnotes-query(
      { $footnotes:ARCHIVE : { "$in" : [ $ids ] } })
};

(:~
 : <p>Return all footnotes associated with the given facts.</p>
 :
 : @param $facts-or-ids a sequence of facts or fact IDs to filter
 : @return all footnotes associated with these facts.
 :) 
declare function footnotes:footnotes-for-facts(
  $facts-or-ids as item*) as object*
{
  footnotes:footnotes-for-facts($facts-or-ids, ())
};

(:~
 : <p>Return all footnotes associated with the given facts.</p>
 :
 : @param $facts-or-ids a sequence of facts or fact IDs to filter
 : @param $options <a href="facts#standard_options">standard fact retrieving options</a>.
 :
 : @return all footnotes associated with these facts.
 :) 
declare function footnotes:footnotes-for-facts(
  $facts-or-ids as item*,
  $options as object? ) as object*
{
  let $ids as string* := $facts-or-ids ! string(facts:fid($$))
  let $lang as string? := $options.$footnotes:LANG
  return
    footnotes:footnotes-query(
      {|
        { $footnotes:FACTS || "._id" : { "$in" : [ $ids ] } },
        if ($lang)
        then { $footnotes:LANG : $lang }
        else ()
      |})
};

(:~
 : <p>Return all footnotes that match the given search term.</p>
 :
 : @param $search the search query
 : @return all footnotes matching the given search query
 :)
declare function footnotes:footnotes-search($search as string) as object*
{
  let $conn := footnotes:connection()
  return mongo:run-cmd-deterministic(
           $conn, 
           {
             "text" : "footnotes",
             "search" : $search
           }).results[].obj
};

(:~
 :
 : <p>Converts the input to a normalized footnote id (FNID). The input
 : can be either an FNID, or a footnote object which contains an _id.</p>
 :
 : @param $footnote-or-id an footnote object or FNID.
 :
 : @error footnotes:INVALID-PARAMETER if the FNID or footnote is not valid.
 :
 : @return the normalized FNID.
 :)
declare function footnotes:fnid($footnote-or-id as item) as atomic
{
  typeswitch ($footnote-or-id)
  case object return
    let $id := $footnote-or-id._id
    return if(exists($id))
           then $id
           else error(QName("footnotes:INVALID-PARAMETER"), 
                      "Invalid footnote provided (no _id field)")
  case $id as atomic return m:oid($id)
  default return error(
      QName("footnotes:INVALID-PARAMETER"),
      "Invalid footnote or id (must be an object or an atomic): "
      || serialize($footnote-or-id))
};

(:~
 :)
declare %private %an:strictlydeterministic function footnotes:connection() as anyURI
{
  let $credentials :=
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return if (empty($credentials))
             then error(QName("footnotes:CONNECTION-FAILED"), "no xbrl MongoDB configured")
             else $credentials
  return
    try {
      mongo:connect($credentials)
    } catch mongo:* {
      error(QName("footnotes:CONNECTION-FAILED"), $err:description)
    }
};

(:~
 : <p>Queries MongoDB with a MongoDB query.</p>
 : 
 : @return all footnotes returned by this query.
 :) 
declare %private function footnotes:footnotes-query($query as object) as object*
{
  let $conn := footnotes:connection()
  return mongo:find($conn, $footnotes:col, $query)
};

