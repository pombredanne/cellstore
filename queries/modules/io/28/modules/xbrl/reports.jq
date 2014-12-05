jsoniq version "1.0";
(:
 : Copyright 2014 28msec Inc.
 :)


(:~
 : <p>This module provides functions for storing, retrieving, and modifying
 : reports. Reports can be used in BizQL queries. They can be
 : instantiated generating a business report.</p>
 :
 : <p>Reports are nothing else than a user-defined component. However,
 : one of their hypercubes (the default hypercube), as well as two of their
 : networks (presentation, concept-map) are special. A reports is identified
 : with an RID (Report schema ID).</p>
 :
 : <p>With this module, you can retrieve facts belonging to a report.
 : The concept map network will be used 
 : by default to map the report's concepts to reported concepts.</p>
 :
 : <p>Reports are stored in the collection reports in
 : the project's MongoDB database.</p>
 :
 : <p>A report needs to be a syntactically valid JSound document.</p>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :
 :)
module namespace reports = "http://28.io/modules/xbrl/reports";

import module namespace networks = "http://28.io/modules/xbrl/networks";
import module namespace concepts = "http://28.io/modules/xbrl/concepts";
import module namespace components = "http://28.io/modules/xbrl/components";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : Name of the collection the reports are stored in.
 :)
declare variable $reports:col as string := "reports";

(:~
 : <p>Retrieves all reports.</p>
 : 
 : @return all reports.
 :) 
declare function reports:reports() as object*
{
  collection($reports:col)
};

(:~
 : <p>Return the reports with the given RIDs.</p>
 :
 : @param $reports-or-ids the report ids (RIDs) or the
 : reports themselves.
 : 
 : @return the reports with the given RIDs or the 
 :   empty sequence if no report was found or the input
 : is an empty sequence.
 :) 
declare function reports:reports($reports-or-ids as item*) as object*
{
  let $ids as string* :=
    for $s in $reports-or-ids
    where $s instance of string
    return $s
  let $schemas as object* :=
    for $s in $reports-or-ids
    where $s instance of object
    return $s
  return
    (
      $schemas,
      if (exists($ids))
      then find($reports:col, 
                { "_id" : { "$in" : [ distinct-values($ids) ! reports:rid($$) ] } } )
      else ()
    )
};

(:~
 : <p>Return the concepts contained in reports.</p>
 :
 : @param $reports-or-ids the report ids (RIDs) or the
 : reports themselves.
 : 
 : @return the concepts from the reports in the same layout 
 : as the concepts module would provide
 :) 
declare function reports:concepts($reports-or-ids as item*) as object*
{
  let $reports as object* := reports:reports($reports-or-ids)
  for $report in $reports
  let $language as string := concepts:normalize-language(( $report.$components:DEFAULT-LANGUAGE , $concepts:AMERICAN_ENGLISH )[1])
  let $role as string := ( $report.Role, $concepts:DEFAULT_COMPONENT_LINK_ROLE )[1]
  let $report-concepts as object* := $report.Concepts[]
  for $report-concept in $report-concepts
  return
    {
      Role: $role,
      Name: $report-concept.Name,
      Labels: {
        $concepts:STANDARD_LABEL_ROLE: {
          $language: $report-concept.Label
        }
      }
    }
};


(:~
 : <p>Adds the given report to the database.</p>
 :
 : @param $report the report schema to add.
 : 
 : @return the empty sequence.
 :
 : @error reports:INVALID-REPORT if the given report object does not
 :   contain a name field
 : @error reports:EXISTS if a report with the given name already exists
 :) 
declare %an:sequential function reports:add($report as object) as ()
{
  if (empty($report._id))
  then error(QName("reports:INVALID-REPORT"),
    "report does not contain mandatory _id field.");
  else if (exists(reports:reports($report._id)))
       then fn:error(QName("reports:EXISTS"),
                     $report._id || ": report already exists");
       else insert($reports:col, $report);
};


(:~
 : <p>Updates a report.</p>
 :
 : <p>Replaces a report in the database with the given report.
 : The report to be replaced is identified by the value of the _id
 : field of the given schema (RID).</p>
 : 
 : @param $report the new report
 : 
 : @return the empty sequence
 :
 : @error reports:DOES-NOT-EXIST if a report with the given name does not exist.
 :) 
declare %an:sequential function reports:update($report as object)
as ()
{
  let $existing := reports:reports($report._id)
  return if (empty($existing))
         then error(QName("reports:DOES-NOT-EXIST"),
             $report._id || ": report does not exist");
         else edit($existing, $report);
};

(:~
 : <p>Deletes a report from the database.</p>
 : 
 : @param $report-or-id the report to delete or its RID.
 :
 : @return the empty sequence.
 :
 : @error report:DOES-NOT-EXIST if no report with the given RID exists.
 :) 
declare %an:sequential function reports:delete($report-or-id as item)
as ()
{
  let $report := reports:reports($report-or-id)
  let $id := reports:rid($report-or-id)
  return if (empty($report))
  then error(QName("reports:DOES-NOT-EXIST"),
    $id || ": report does not exist");
  else delete($report);
};

(:~
 :
 : <p>Converts the input to a normalized report identifier (RID). The input
 : can be either a pure RID, or a report object which contains an RID.</p>
 :
 : @param $report-or-id a report identifier (RID)) or a report object.
 :
 : @error reports:INVALID_PARAMETER if the RID or report is not valid
 :
 : @return the normalized RID.
 :)
declare function reports:rid($report-or-id as item) as atomic
{
  typeswitch ($report-or-id)
  case object return
    let $rid := $report-or-id._id
    return if(exists($rid))
           then $rid
           else error(QName("reports:INVALID_PARAMETER"), 
                      "report does not contain mandatory _id field.")
  case $rid as atomic return $rid
  default return error(
      QName("reports:INVALID_PARAMETER"),
      serialize($report-or-id) || ": Invalid report or RID (must be an object or an atomic): "
  )
};

(:~
 : Returns the concept map network contained in the report, if any.
 :
 : @param $report-or-id a report identifier (RID)) or a report object.
 : @return the concept map or the empty sequence.
 :)
declare function reports:concept-map($report-or-id as item) as object?
{
    let $report as object? := reports:reports($report-or-id)
    return networks:networks-for-components-and-short-names(
        $report,
        "ConceptMap")
};

(:~
 : Returns the rules contained in the report, if any.
 :
 : @param $report-or-id a report identifier (RID)) or a report object.
 : @return the rule objects.
 :)
declare function reports:rules($report-or-id as item) as object*
{
    let $report as object? := reports:reports($report-or-id)
    return $report.Rules[]
};
