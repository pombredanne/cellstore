jsoniq version "1.0";
(:
 : Copyright 2013 28msec Inc.
 :)


(:~
 : <p>This module provides functions for storing, retrieving, and modifying
 : report schemas. Report schemas can be used in BizQL queries. They can be
 : instantiated generating a business report.</p>
 :
 : <p>Report schemas are nothing else than a user-defined component. However,
 : one of their hypercubes (the default hypercube), as well as two of their
 : networks (presentation, concept-map) are special. A report schema is identified
 : with an RID (Report schema ID).</p>
 :
 : <p>With this module, you can retrieve facts from an archive according to a report
 : schema. You can retrieve them as a (2D) fact table, or populate the presentation
 : network of the report schema with them. The concept map network will be used 
 : by default to map the report schema concepts to reported concepts.</p>
 :
 : <p>Report schemas are stored in the collection reportschemas in
 : the project's MongoDB database.</p>
 :
 : <p>A report schema needs to be a syntactically valid JSound document.</p>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :
 :)
module namespace report-schemas = "http://28.io/modules/xbrl/report-schemas";

import module namespace hypercubes = "http://28.io/modules/xbrl/hypercubes";
import module namespace networks = "http://28.io/modules/xbrl/networks";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : Name of the collection the report schemas are stored in.
 :)
declare variable $report-schemas:col as string := "reports";

(:~
 : Joker for all archives.
 :)
declare variable $report-schemas:ALL_ARCHIVES as boolean := true;

(:~
 : <p>Retrieves all report schemas.</p>
 : 
 : @return all report schemas.
 :) 
declare function report-schemas:report-schemas() as object*
{
  collection($report-schemas:col)
};

(:~
 : <p>Return the report schemas with the given names (RIDs).</p>
 :
 : @param $report-schemas-or-ids the ids of the report schemas (RIDs) or the
 : report schemas themselves.
 : 
 : @return the report schemas with the given RIDs or the 
 :   empty sequence if no report schema was found or the input
 : is an empty sequence.
 :) 
declare function report-schemas:report-schemas($report-schemas-or-ids as item*) as object*
{
  let $ids as string* :=
    for $s in $report-schemas-or-ids
    where $s instance of string
    return $s
  let $schemas as object* :=
    for $s in $report-schemas-or-ids
    where $s instance of object
    return $s
  return
    (
      $schemas,
      if (exists($ids))
      then find($report-schemas:col, 
                { "_id" : { "$in" : [ $ids ! report-schemas:rid($$) ] } } )
      else ()
    )
};

(:~
 : <p>Adds the given report schema to the database.</p>
 :
 : @param $report-schema the report schema to add.
 : 
 : @return the empty sequence.
 :
 : @error report-schemas:INVALID-SCHEMA if the given report schema object does not
 :   contain a name field
 : @error report-schemas:EXISTS if a report schema with the given name already exists
 :) 
declare %an:sequential function report-schemas:add($report-schema as object) as ()
{
  if (empty($report-schema._id))
  then error(QName("report-schemas:INVALID-SCHEMA"),
    "schema object does not contain an _id field");
  else if (exists(report-schemas:report-schemas($report-schema._id)))
       then fn:error(QName("report-schemas:EXISTS"),
                     $report-schema._id || ": report schema already exists");
       else insert($report-schemas:col, $report-schema);
};


(:~
 : <p>Updates a report schema.</p>
 :
 : <p>Replaces a report schema in the database with the given schema.
 : The schema to be replaced is identified by the value of the _id
 : field of the given schema (RID).</p>
 : 
 : @param $report-schema the new report schema
 : 
 : @return the empty sequence
 :
 : @error report-schemas:DOES-NOT-EXIST if a report schema with the given name does not exist.
 :) 
declare %an:sequential function report-schemas:update($report-schema as object)
as ()
{
  let $existing := report-schemas:report-schemas($report-schema._id)
  return if (empty($existing))
         then error(QName("report-schemas:DOES-NOT-EXIST"),
             $report-schema._id || ": report-schema with given id does not exist");
         else edit($existing, $report-schema);
};

(:~
 : <p>Deletes a report schema from the database.</p>
 : 
 : @param $report-schema-or-id the report schema to delete or its RID.
 :
 : @return the empty sequence.
 :
 : @error report-schemas:DOES-NOT-EXIST if no report schema with the given RID
 :   exists.
 :) 
declare %an:sequential function report-schemas:delete($report-schema-or-id as item)
as ()
{
  let $report-schema := report-schemas:report-schemas($report-schema-or-id)
  let $id := report-schemas:rid($report-schema-or-id)
  return if (empty($report-schema))
  then error(QName("report-schemas:DOES-NOT-EXIST"),
    $id || ": report schema with given _id does not exist");
  else delete($report-schema);
};

(:~
 :
 : <p>Converts the input to a normalized report schema identifier (RID). The input
 : can be either a pure RID, or a report schema object which contains an RID.</p>
 :
 : @param $report-schema-or-id a report schema identifier (RID)) or a report schema object.
 :
 : @error report-schemas:INVALID_PARAMETER if the RID or report schema is not valid
 :
 : @return the normalized RID.
 :)
declare function report-schemas:rid($report-schema-or-id as item) as atomic
{
  typeswitch ($report-schema-or-id)
  case object return
    let $rid := $report-schema-or-id._id
    return if(exists($rid))
           then $rid
           else error(QName("report-schemas:INVALID_PARAMETER"), 
                      "Invalid report schema provided (no _id field)")
  case $rid as atomic return $rid
  default return error(
      QName("report-schemas:INVALID_PARAMETER"),
      "Invalid report schema or RID (must be an object or an atomic): "
      || serialize($report-schema-or-id))
};

(:~
 :
 : <p>Retrieves all facts from the supplied archives, that are relevant to the
 : supplied schema, and populates them with the default dimension values
 : when missing.</p>
 : 
 :
 : @param $schema a report schema or its RID,
 : @param $archives a sequence of archives or their AIDs or $report-schemas:ALL_ARCHIVES for no filtering.
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function report-schemas:facts(
    $schema as item,
    $archives as item*
)
as object*
{
  report-schemas:facts($schema, $archives, {})
};


(:~
 :
 : <p>Retrieves all facts from the supplied archives, that are relevant to the
 : supplied schema, and populates them with the default dimension values
 : when missing.</p>
 : 
 :
 : @param $schema a report schema or its RID,
 : @param $archives a sequence of archives or their AIDs or $report-schemas:ALL_ARCHIVES for no filtering.
 : @param $options <a href="facts#standard_options">standard fact retrieving options</a> as well as
 :        <ul>
 :          <li>HypercubeName: the name of a hypercube to be taken from the schema (only used if
 :          the Hypercube option is absent.</li>
 :        </ul>
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function report-schemas:facts(
    $schema as item,
    $archives as item*,
    $options as object?
)
as object*
{
  let $schema := report-schemas:report-schemas($schema)
  let $concept-map := networks:networks-for-components-and-short-names(
      $schema,
      "ConceptMap")
  let $rules := $schema.Rules
  let $hypercube :=
    if(exists($options.Hypercube))
    then $options.Hypercube
    else if(exists($options.HypercubeName))
         then hypercubes:hypercubes-for-components(
             $schema,
             $options.HypercubeName)
         else hypercubes:hypercubes-for-components($schema)
  return hypercubes:facts-for-hypercube(
      $hypercube,
      $archives,
      {|
        $options,
        { "ConceptMaps": $concept-map }[exists($concept-map)],
        { "Rules": $rules }[exists($rules)]
      |}
  )
};


(:~
 :
 : <p>Retrieves all facts from the supplied archives, that are relevant to the
 : supplied schema, and populates them with the default dimension values
 : when missing.</p>
 : 
 :
 : @param $schema a schema or its RID,
 : @param $archives a sequence of archives or their AIDs.
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function report-schemas:fact-table(
  $schema as item,
  $archives as item*
)
as array
{
  report-schemas:fact-table($schema, $archives, {})
};


(:~
 :
 : <p>Retrieves all facts from the supplied archives, that are relevant to the
 : supplied schema, and populates them with the default dimension values
 : when missing.</p>
 : 
 :
 : @param $schema a schema or its RID,
 : @param $archives a sequence of archives or their AIDs or $report-schemas:ALL_ARCHIVES for no filtering.
 : @param $options <a href="facts#standard_options">standard fact retrieving options</a> as well as
 :        <ul>
 :          <li>HypercubeName: the name of a hypercube to be taken from the schema (only used if
 :          the Hypercube option is absent.</li>
 :        </ul>
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function report-schemas:fact-table(
  $schema as item,
  $archives as item*,
  $options as object?) as array
{
  let $schema := report-schemas:report-schemas($schema)
  let $hypercube :=
    if(exists($options.Hypercube))
    then $options.Hypercube
    else if(exists($options.HypercubeName))
         then hypercubes:hypercubes-for-components(
             $schema,
             $options.HypercubeName)
         else hypercubes:hypercubes-for-components($schema)
  let $facts := report-schemas:facts($schema, $archives, $options)
  return hypercubes:fact-table-for-hypercube-and-facts($hypercube, $facts)
};

(:~
 :
 : <p>Populates a concept-tree network with all facts from the supplied archives,
 : that are relevant to the
 : supplied schema. Default dimension values are added to the facts
 : when missing.</p>
 : 
 : @param $schema.
 : @param $archives a sequence of archives or their AIDs or $report-schemas:ALL_ARCHIVES for no filtering.
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function report-schemas:populate-with-facts(
  $schema as item,
  $archives as item*
)
as object*
{
  report-schemas:populate-with-facts($schema, $archives, {})
};


(:~
 :
 : <p>Populates a concept-tree network with all facts from the supplied archives,
 : that are relevant to the
 : supplied schema. Default dimension values are added to the facts
 : when missing.</p>
 : 
 : @param $schema.
 : @param $archives a sequence of archives or their AIDs or $report-schemas:ALL_ARCHIVES for no filtering.
 : @param $options <a href="facts#standard_options">standard fact retrieving options</a> as well as
 :        <ul>
 :          <li>HypercubeName: the name of a hypercube to be taken from the schema (only used if
 :          the Hypercube option is absent.</li>
 :        </ul>
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function report-schemas:populate-with-facts(
  $schema as item,
  $archives as item*,
  $options as object?) as object*
{
  hypercubes:populate-networks-with-retrieved-facts(
    networks:networks-for-components-and-short-names(report-schemas:report-schemas($schema), "Presentation"),
    report-schemas:facts($schema, $archives, $options)
  )
};
