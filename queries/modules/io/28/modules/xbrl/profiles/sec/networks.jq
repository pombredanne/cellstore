jsoniq version "1.0";

(:
 : Copyright 2012-2013 28msec Inc.
 :)

(:~
 : <p>This module provides functionality for querying SEC networks in SEC filings.</p>
 : <p>SEC Networks are actually XBRL Components. In the SEC profiles, all XBRL networks
 : in an XBRL component must be consistent to each other. A way to look at it is that
 : the SEC Network can be identified with the XBRL presentation network it contains.</p>
 : 
 : <p>For XBRL-generic operations on XBRL components, use the
 : generic components module.</p>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :)
module namespace sec-networks = "http://28.io/modules/xbrl/profiles/sec/networks";

import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";
import module namespace csv = "http://zorba.io/modules/json-csv";

import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace components = "http://28.io/modules/xbrl/components";
import module namespace facts = "http://28.io/modules/xbrl/facts";
import module namespace networks = "http://28.io/modules/xbrl/networks";
import module namespace hypercubes = "http://28.io/modules/xbrl/hypercubes";

import module namespace sec = "http://28.io/modules/xbrl/profiles/sec/core";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : Disclosure for the balance sheet.
 :)
declare variable $sec-networks:BALANCE_SHEET as xs:string := "BalanceSheet";

(:~
 : Disclosure for the parenthetical balance sheet.
 :)
declare variable $sec-networks:BALANCE_SHEET_PARENTHETICAL as xs:string := "BalanceSheetParenthetical";

(:~
 : Disclosure for the income statement.
 :)
declare variable $sec-networks:INCOME_STATEMENT as xs:string := "IncomeStatement";

(:~
 : Disclosure for the parenthetical income statement.
 :)
declare variable $sec-networks:INCOME_STATEMENT_PARENTHETICAL as xs:string := "IncomeStatementParenthetical";

(:~
 : Disclosure for the statement of comprehensive income.
 :)
declare variable $sec-networks:STATEMENT_OF_COMPREHENSIVE_INCOME as xs:string := "StatementOfComprehensiveIncome";

(:~
 : Disclosure for the cash flow statement.
 :)
declare variable $sec-networks:CASH_FLOW_STATEMENT as xs:string := "CashFlowStatement";

(:~
 : Disclosure for the parenthetical cash flow statement.
 :)
declare variable $sec-networks:CASH_FLOW_STATEMENT_PARENTHETICAL as xs:string := "CashFlowStatementParenthetical";

(:~
 : Disclosure for the default component.
 :)
declare variable $sec-networks:DEFAULT_COMPONENT as xs:string := "DefaultComponent";

(:~
 : Disclosure for the document and entity information
 :)
declare variable $sec-networks:DOCUMENT_AND_ENTITY_INFO as xs:string := "DocumentAndEntityInformation";

(:~
 : <p>Retrieves all SEC Networks in a given filing.</p>
 : 
 : @param $archive-or-ids an arbitrary number of archive identifiers (AIDs) 
 :                          or archive objects. 
 :
 : @return all networks in the supplied filings.
 :) 
declare function sec-networks:networks-for-filings(
    $archives-or-ids as item*) as object*
{
  components:components-for-archives($archives-or-ids)
};

(:~
 : <p>Retrieves all SEC Networks that bear the supplied disclosures.</p>
 : 
 : @param $disclosure a list of disclosures.
 :
 : @return all models that match one of the disclosures.
 :) 
declare function sec-networks:networks-for-disclosures(
    $disclosures as string*) as object*
{
  let $conn := sec-networks:connection()
  for $disclosure in $disclosures
  return mongo:find($conn, $components:col, { "Profiles.SEC.Disclosure": $disclosure })
};

(:~
 : <p>Retrieves all models that belong to the archives given as first
 : parameter and that match the supplied disclosures.</p>
 : 
 : @param $archive-or-ids an arbitrary number of archive identifiers (AIDs) 
 :                          or archive objects. 
 : @param $disclosures a list of disclosures.
 :
 : @return all models in the archives and that match one of the disclosures.
 :) 
declare function sec-networks:networks-for-filings-and-disclosures(
    $archive-or-ids as item*,
    $disclosures as string*) as object*
{
  let $conn := sec-networks:connection()
  return mongo:find($conn, $components:col, {
    $components:ARCHIVE: { "$in" : [ $archive-or-ids ! archives:aid($$) ] },
    "Profiles.SEC.Disclosure": { "$in" : [ $disclosures ] }
  })
};

(:~
 : <p>Retrieves all models that belong to the archives given as first
 : parameter and that match the supplied category.</p>
 :
 : <p>A category can be any of "Statement", "Disclosure", "Document",
 : "Schedule", or "Unknown".</p>
 : 
 : @param $archive-or-ids an arbitrary number of archive identifiers (AIDs) 
 :                          or archive objects. 
 : @param $categories a list of categories.
 :
 : @return all said models
 :) 
declare function sec-networks:networks-for-filings-and-categories(
    $archive-or-ids as item*,
    $categories as string*) as object*
{
  let $conn := sec-networks:connection()
  for $aid_or_archive in $archive-or-ids
  let $aid as atomic := archives:aid($aid_or_archive)
  for $category in $categories
  return mongo:find($conn, $components:col, {
    $components:ARCHIVE: $aid,
    "Profiles.SEC.Category": $category
  })
};

(:~
 : <p>Retrieves all models that belong to the archives given as first
 : parameter and that match the supplied roles/network identifier.</p>
 :
 : @param $archive-or-ids an arbitrary number of archive identifiers (AIDs) 
 :                          or archive objects. 
 : @param $roles a list of roles.
 :
 : @return all said models
 :) 
declare function sec-networks:networks-for-filings-and-roles(
    $archive-or-ids as item*,
    $roles as string*) as object*
{
  let $conn := sec-networks:connection()
  return mongo:find($conn, $components:col, {
    $components:ARCHIVE: { "$in" : [ $archive-or-ids ! archives:aid($$) ] },
    "Role": { "$in" : [ $roles ] }
  })
};

(:~
 : <p>Retrieves all models that belong to the archives given as first
 : parameter and that contain at least one report element with a given name.</p>
 :
 : @param $archive-or-ids an arbitrary number of archive identifiers (AIDs) 
 :                          or archive objects. 
 : @param $report-elements a list of contained report element names.
 :
 : @return all said models
 :) 
declare function sec-networks:networks-for-filings-and-reportElements(
    $archive-or-ids as item*,
    $report-elements as string*) as object*
{
  let $conn := sec-networks:connection()
  let $ids := mongo:find($conn, "concepts", 
      {
         $components:ARCHIVE: { "$in" : [ $archive-or-ids ! archives:aid($$) ] },
         "Name" : { "$in" : [ $report-elements ] }
      }).Component
  return components:components($ids)
};

(:~
 : <p>Retrieves all models that belong to the archives given as first
 : parameter and whose label matches the given search string.</p>
 :
 : <p>The result of the function is limited to 100.</p>
 :
 : @param $archive-or-ids an arbitrary number of archive identifiers (AIDs) 
 :                          or archive objects. 
 : @param $label-search-term a search term to search in labels
 :
 : @return all said models
 :) 
declare function sec-networks:networks-for-filings-and-label(
    $archive-or-ids as item*,
    $label-search-term as string*) as object*
{
  sec-networks:networks-for-filings-and-label(
    $archive-or-ids, $label-search-term, 100)
};


(:~
 : <p>Retrieves all models that belong to the archives given as first
 : parameter and whose label matches the given search string.</p>
 :
 : <p>The result of the function is limited to 100.</p>
 :
 : @param $archive-or-ids an arbitrary number of archive identifiers (AIDs) 
 :                          or archive objects. 
 : @param $label-search-term a search term to search in labels
 : @param $limit limit the number of search results
 :
 : @return all said models
 :) 
declare function sec-networks:networks-for-filings-and-label(
    $archive-or-ids as item*,
    $label-search-term as string*,
    $limit as integer) as object*
{
  let $conn := sec-networks:connection()
  return mongo:run-cmd-deterministic($conn, {
    "text" : $components:col,
    "filter" : { "Archive" : { "$in" : [ $archive-or-ids ! archives:aid($$) ] } },
    "search" : $label-search-term,
    "limit" : $limit,
    "score" : { "$meta" : "textScore" },
    "sort" : { score: { "$meta" : "textScore" } }
  }).results[].obj
};


(:~
:)
declare %private function sec-networks:model-structures-recursive(
    $component as object,
    $xbrl-concepts as object*,
    $ancestor as string,
    $depth as integer)
    as object*
{
  for $xbrl-concept in $xbrl-concepts
  order by $xbrl-concept.Order
  let $main-object := hypercubes:hypercubes-for-components($component, "xbrl:DefaultHypercube")
      .Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain".Members.($xbrl-concept.Name)
  let $kind :=
      switch($main-object.SubstitutionGroup)
      case "xbrldt:hypercubeItem" return "Table"
      case "xbrldt:dimensionItem" return "Axis"
      default return switch($ancestor)
                     case "Table" return "LineItems"
                     case "Axis"
                     case "Member" return "Member"
                     default return if ($main-object.IsAbstract) then "Abstract" else "Concept"
  return {|
    {
      "Kind" : $kind,
      "Name" : $main-object.Name,
      "Label" : $main-object.Label,
      "Depth" : $depth
    },
    if (exists($xbrl-concept.Order))
    then { "Order" : $xbrl-concept.Order }
    else (),
    if ($kind eq "Concept")
    then trim($main-object, ("Name", "Label"))
    else (),
    let $children := sec-networks:model-structures-recursive(
                         $component,
                         (values($xbrl-concept.To), $xbrl-concept.To[]),
                         $kind,
                         $depth + 1
                     )
    return if (exists($children)) then { Children: [ $children ] } else ()
  |}
};

(:~
 : <p>Computes the model structure of the supplied SEC Network, which is a hierarchy
 : of SEC Report Elements (Tables, Axes, Members, LineItems, Abstracts, Concepts).</p>
 : 
 : @param $networks a sequence of SEC Network objects.
 :
 : @return the model structures of these SEC Networks.
 :
 :)
declare function sec-networks:model-structures($networks as object*) as object*
{
  for $sec-network in $networks
  let $presentation-network := networks:networks-for-components-and-short-names(
      $sec-network,
      $networks:PRESENTATION_NETWORK)
  return sec-networks:model-structures-recursive(
      $sec-network,
      values($presentation-network.Trees),
      "None",
      1)
};

(:~
 : <p>Retrieves the components with the given CID, or belonging to the given archives and corresponding to one of report
 : elements, concepts, disclosures, roles or label search.</p>
 :
 : @param $archives-or-aids a sequence of archives or AIDs.
 : @param $components-or-ids a sequence of components or their CIDs.
 : @param $report-elements a sequence of report element names.
 : @param $concepts a sequence of concept names.
 : @param $disclosures a sequence of disclosures.
 : @param $roles a sequence of role URIs.
 : @param $search a sequence of label search strings.
 : 
 : @return a sequence of components.
 :)
declare function sec-networks:components(
    $archives-or-aids as item*,
    $components-or-ids as item*,
    $report-elements as string*,
    $disclosures as string*,
    $roles as string*,
    $search as string*) as object*
{
    let $archives as object* := archives:archives($archives-or-aids)
    return(
        components:components($components-or-ids)[exists($components-or-ids)],
        if (exists(($report-elements, $disclosures, $roles, $search)))
        then (
                components:components-for-archives-and-concepts($archives, $report-elements),
                sec-networks:networks-for-filings-and-disclosures($archives, $disclosures),
                components:components-for-archives-and-roles($archives, $roles),
                sec-networks:networks-for-filings-and-label($archives, $search)
            )
        else components:components-for-archives($archives)
    )
};

(:~
 : <p>Builds a standard definition model out of the specified component.</p>
 : <p>The concepts will be put on the y axis according to the presentation network.</p>
 : <p>The other dimensions are put on the x axis, with one breakdown for each.</p>
 : <p>Explicit dimensions are organized according to the dimension hierarchy from the domain-member network.</p>
 : <p>Typed dimensions are organized according to the actual values.</p>
 :
 : <p>One of the non-default hypercubes will be arbitrarily chosen. If none is available, the default hypercube will be picked.</p>
 : <p>Auto slicing will be performed against the fact table
 : 
 : @param $component a component object.
 :
 : @return a definition model
 :)
declare function sec-networks:standard-definition-models-for-components($components as object*) as object
{
    sec-networks:standard-definition-models-for-components($components, ())
};


(:~
 : <p>Builds a standard definition model out of the specified component.</p>
 : <p>The concepts will be put on the y axis according to the presentation network.</p>
 : <p>The other dimensions are put on the x axis, with one breakdown for each.</p>
 : <p>Explicit dimensions are organized according to the dimension hierarchy from the domain-member network.</p>
 : <p>Typed dimensions are organized according to the actual values.</p>
 :
 : @param $component a component object.
 : @param $options <p>some optional parameters, including:</p>
 : <ul>
 :  <li>HypercubeName: a string specifying which hypercube to use. By default, one of the non-default hypercubes will be arbitrarily chosen. If none
 :  is available, the default hypercube will be picked.</li>
 :  <li>AutoSlice: a boolean specifying whether or not slicing should be done automatically, looking at the fact table. Deactivating auto slicing will
 :  lead to better performance, but a more verbose table. If AutoSlice is active, dimensions with only one value in the fact pool will become
 : global filters rather than breakdowns on the x axis.</li>
 :  <li>Slicers: an object with forced slicers.</li>
 : </ul>
 :
 : @error components:HYPERCUBE-DOES-NOT-EXIST if the specified hypercube is not found.
 : @return a definition model
 :)
declare function sec-networks:standard-definition-models-for-components($components as object*, $options as object?) as object
{
    for $component in $components
    let $implicit-table as object := hypercubes:hypercubes-for-components($component, "xbrl:DefaultHypercube")
    let $table as object := components:select-table($component, $options)

    let $auto-slice as boolean := empty($options.AutoSlice) or $options.AutoSlice
    let $facts as object*:=
        if($auto-slice)
        then hypercubes:facts($table)
        else ()
    let $dimensions as string*:= keys($table.Aspects)
    let $values-by-dimension as object := {|
        for $d in $dimensions
        return { $d : [ distinct-values($facts.Aspects.$d) ] }
    |}
    let $auto-slice-dimensions as string* :=
        keys($values-by-dimension)[size($values-by-dimension.$$) eq 1 and not ($$ = ("xbrl:Period", "sec:FiscalYear",  "sec:FiscalPeriod") ) ]
    let $user-slice-dimensions as string* :=
        keys($options.Slicers)

    let $column-dimensions as string* := keys($values-by-dimension)[not $$ =
        ("xbrl:Concept",
         "xbrl:Period",
         "xbrl:Unit",
         "xbrl:Entity",
         "sec:Archive",
         "sec:FiscalYear",
         "sec:FiscalPeriod",
         $auto-slice-dimensions,
         $user-slice-dimensions)]
    
    let $x-breakdowns as object* := (
        sec-networks:standard-period-breakdown()[not (($auto-slice-dimensions, $user-slice-dimensions) = "xbrl:Period")],
        for $d as string in $column-dimensions
        let $metadata as object? := descendant-objects($implicit-table)[$$.Name eq $d]
        return
            if($d = ("sec:Accepted", "sec:FiscalYear", "sec:FiscalPeriod"))
            then sec-networks:standard-typed-dimension-breakdown(
                $d,
                $values-by-dimension.$d[])
            else sec-networks:standard-explicit-dimension-breakdown(
                $d,
                $metadata.Label,
                keys($table.Aspects.$d.Domains),
                $component.Role),
        sec-networks:standard-entity-breakdown()[not (($auto-slice-dimensions, $user-slice-dimensions) = "xbrl:Entity")]
    )

    let $lineitems as string* := sec-networks:line-items-report-elements($component).Name
    let $presentation-network as object? := networks:networks-for-components-and-short-names($component, "Presentation")
    let $roots as string* := keys($presentation-network.Trees)
    let $lineitems as string* := if(exists($lineitems)) then $lineitems else $roots
    let $y-breakdowns as object := sec-networks:standard-concept-breakdown($lineitems, $component.Role)

    return {
        ModelKind: "DefinitionModel",
        Labels: [$component.Label],
        Parameters: {},
        Breakdowns: {
            "x" : [
                $x-breakdowns
            ],
            "y": [
                $y-breakdowns
            ]
        },
        TableFilters: {|
            for $d as string in distinct-values(($auto-slice-dimensions, $user-slice-dimensions))
            return if($d = $user-slice-dimensions)
                   then { $d : $options.Slicers.$d }
                   else { $d : $values-by-dimension.$d[] },
            if (not $auto-slice)
            then { "sec:Archive" : $component.Archive }
            else ()
        |}
    }
};

(:~
 : <p>Returns all SEC Tables contained in the supplied SEC Networks.</p>
 :
 : <p>SEC Tables are XBRL hypercubes.</p>
 : 
 : @param $networks a sequence of SEC Network objects.
 : @param $options <a href="core#standard_options">standard SEC BizQL options</a>.
 :
 : @return the SEC Tables.
 :
 :)
declare function sec-networks:tables($networks as object*, $options as object?) as object*
{
  let $include-implied-table as boolean := if(exists($options("IncludeImpliedTable")))
                                           then $options("IncludeImpliedTable")
                                           else false
  for $sec-network in $networks
  let $default-hypercube as object := hypercubes:hypercubes-for-components($sec-network, "xbrl:DefaultHypercube")
  let $hypercube-metadata as object* := values(
      $default-hypercube.Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain".Members
  )[$$.SubstitutionGroup eq "xbrldt:hypercubeItem"]
  return if (exists($hypercube-metadata) or not $include-implied-table)
         then $hypercube-metadata
         else {
           Name: "xbrl28:ImpliedTable",
           Label: "BizQL SEC Implied Table"
         }
};

(:~
 : <p>Returns the names of all SEC Tables contained in the supplied SEC Networks.</p>
 :
 : <p>SEC Tables are XBRL hypercubes.</p>
 : 
 : @param $networks a sequence of SEC Network objects.
 : @param $options <a href="core#standard_options">standard SEC BizQL options</a>.
 :
 : @return the names of the SEC Tables.
 :
 :)
declare function sec-networks:table-names($networks as object*) as string*
{
  let $names := $networks.Hypercubes[].Name
  return if (exists($names)) then $names else "xbrl28:ImpliedTable"
};

(:~
 : <p>Returns all SEC Tables contained in the supplied SEC Networks.</p>
 :
 : <p>SEC Tables are XBRL hypercubes.</p>
 : 
 : @param $networks a sequence of SEC Network objects.
 :
 : @return the SEC Tables.
 :
 :)
declare function sec-networks:tables($networks as object*) as object*
{
  sec-networks:tables($networks, ())
};

(:~
 : <p>Returns all SEC Axes contained in the supplied SEC Networks.</p>
 :
 : <p>SEC Axes are XBRL dimensions.</p>
 : 
 : @param $networks-or-ids a sequence of SEC Network objects, or their XBRL Component IDs.
 :
 : @return the SEC Axes.
 :
 :)
declare function sec-networks:axes($networks-or-ids as item*) as object*
{
  let $model-structure := sec-networks:model-structures($networks-or-ids)
  for $object in
    ($model-structure, descendant-objects($model-structure))[$$.Kind eq "Axis"]
  group by $name := $object.Name
  return trim($object[1], "Children")
};

(:~
 : <p>Returns all SEC Members contained in the supplied SEC Networks.</p>
 :
 : <p>SEC Members are XBRL members that are in the transitive closure of SEC Axes
 : via the dimension-domain and domain-member relations.</p>
 : 
 : @param $networks-or-ids a sequence of SEC Network objects, or their XBRL Component IDs.
 :
 : @return the SEC Members.
 :
 :)
declare function sec-networks:members($networks-or-ids as item*) as object*
{
  let $model-structure := sec-networks:model-structures($networks-or-ids)
  for $object in
    ($model-structure, descendant-objects($model-structure))[$$.Kind eq "Member"]
  group by $name := $object.Name
  return trim($object[1], "Children")
};

(:~
 : <p>Returns all SEC LineItems report elements contained in the supplied SEC Networks.</p>
 : <p>This is not to be confused with the "line items" terminology, which includes all
 : SEC Abstracts and SEC Concepts.</p>
 :
 : <p>SEC LineItems report elements are XBRL abstract primary items that are top-level in their
 : association with an XBRL hypercube (source of an all relation).</p>
 : 
 : @param $networks-or-ids a sequence of SEC Network objects, or their XBRL Component IDs.
 :
 : @return the SEC LineItems report elements.
 :
 :)
declare function sec-networks:line-items-report-elements($networks-or-ids as item*) as object*
{
  let $model-structure := sec-networks:model-structures($networks-or-ids)
  for $object in
    ($model-structure, descendant-objects($model-structure))[$$.Kind eq "LineItems"]
  group by $name := $object.Name
  return trim($object[1], "Children")
};

(:~
 : <p>Returns all SEC Abstracts contained in the supplied SEC Networks.</p>
 :
 : <p>SEC Abstracts are XBRL abstract primary items that may or may not be associated
 : with a hypercube -- except those that are SEC LineItems (i.e., source of an all relation).</p>
 : 
 : @param $networks a sequence of SEC Network objects.
 :
 : @return the SEC Abstracts.
 :
 :)
declare function sec-networks:abstracts($networks as object*) as object*
{
  for $sec-network in $networks
  let $default-hypercube as object := hypercubes:hypercubes-for-components($sec-network, "xbrl:DefaultHypercube")
  let $abstract-metadata as object* := values(
      $default-hypercube.Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain".Members
  )[not $$.SubstitutionGroup = ("xbrldt:hypercubeItem", "xbrldt:dimensionItem")][$$.IsAbstract]
  let $tables := sec-networks:tables($sec-network)
  let $presentation-network := networks:networks-for-components-and-short-names(
      $sec-network,
      $networks:PRESENTATION_NETWORK)
  where not $abstract-metadata.Name
      = descendant-objects($presentation-network)[$$.Name = $tables.Name].To[].Name
  return $abstract-metadata
};

(:~
 : <p>Returns all SEC Concepts contained in the supplied SEC Networks.</p>
 :
 : <p>SEC Concepts are XBRL concrete primary items that may or may not be associated
 : with a hypercube.</p>
 : 
 : @param $networks a sequence of SEC Network objects.
 :
 : @return the SEC Concepts.
 :
 :)
declare function sec-networks:concepts($networks as object*) as object*
{
  for $sec-network in $networks
  let $default-hypercube as object := hypercubes:hypercubes-for-components($sec-network, "xbrl:DefaultHypercube")
  let $concept-metadata as object* := values(
      $default-hypercube.Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain".Members
  )[not $$.SubstitutionGroup = ("xbrldt:hypercubeItem", "xbrldt:dimensionItem")][not $$.IsAbstract]
  return $concept-metadata
};

(:~
 : <p>Returns all SEC Line Items (Concepts and Abstracts) contained in the
 : supplied SEC Networks. Not to be confused with the LineItems report element.</p>
 :
 : @param $networks-or-ids a sequence of SEC Network objects, or their XBRL Component IDs.
 :
 : @return the SEC Line Items.
 :
 :)
declare function sec-networks:line-items($networks-or-ids as item*) as object*
{
  let $model-structure := sec-networks:model-structures($networks-or-ids)
  for $object in
    ($model-structure, descendant-objects($model-structure))[$$.Kind = ("Concept", "Abstract")]
  group by $name := $object.Name
  return trim($object[1], "Children")
};

(:~
 : Return the number of SEC Tables in each of the given components.
 :
 : @param $networks-or-ids list of components or IDs
 :
 : @return the said number of tables
 :)
declare function sec-networks:num-tables($networks-or-ids as item*) as integer*
{
  components:num-hypercubes($networks-or-ids)
};

(:~
 : Return the number of (distinct) SEC report elements in each of the given components.
 :
 : @param $networks list of components.
 :
 : @return the said number of report elements
 :)
declare function sec-networks:num-report-elements($networks as object*) as integer*
{
  for $c in $networks
  return sum(
    (
      components:num-concrete-primary-items-in-hypercubes($c),
      components:num-abstract-primary-items-in-hypercubes($c),
      components:num-concrete-primary-items-not-in-hypercubes($c),
      components:num-distinct-abstract-primary-items-not-in-hypercubes($c)
    )
  )
};

(:~
 : Return the number of (distinct) SEC Axes in each of the given components.
 :
 : @param $networks-or-ids list of components or IDs
 :
 : @return the said number of axes
 :)
declare function sec-networks:num-axes($networks-or-ids as item*) as integer*
{
  components:num-explicit-dimensions($networks-or-ids)
};

(:~
 : Return the number of (distinct) SEC Members in each of the given components.
 :
 : @param $networks list of components.
 :
 : @return the said number of members
 :)
declare function sec-networks:num-members($networks as object*) as integer*
{
  for $c in $networks
  return $c.Statistics.NumDistinctMembers
};

(:~
 : Return the number of (distinct) SEC LineItems report elements in each of the given components.
 :
 : @param $networks list of components.
 :
 : @return the said number of line items
 :)
declare function sec-networks:num-line-items($networks as object*) as integer*
{
  $networks ! $$.Statistics.Profiles.SEC.NumDistinctReportElementNamesEndingWithLineItems
};

(:~
 : Return the number of (distinct) SEC Abstracts in each of the given components.
 :
 : @param $networks list of components.
 :
 : @return the said number of abstracts
 :)
declare function sec-networks:num-abstracts($networks as object*) as integer*
{
  for $c in $networks
  let $s := $c.Statistics
  return  $s.NumDistinctAbstractPrimaryItemsInHypercubes
          + $s.NumDistinctAbstractPrimaryItemsNotInHypercubes
          - $s.Profiles.SEC.NumDistinctReportElementNamesEndingWithLineItems
          - $s.NumDistinctDomains
          - $s.NumDistinctMembers
};

(:~
 : Return the number of (distinct) SEC Concepts in each of the given components.
 :
 : @param $networks list of components.
 :
 : @return the said number of concepts
 :)
declare function sec-networks:num-concepts($networks as object*) as integer*
{
  for $c in $networks
  let $s := $c.Statistics
  return  $s.NumDistinctConcretePrimaryItemsInHypercubes
          + $s.NumDistinctConcretePrimaryItemsNotInHypercubes
};

(:~
 :
 : <p>Retrieves all facts belonging to the SEC Network.</p>
 :
 : @param $networks-or-ids a sequence of SEC Network objects, or their XBRL Component IDs.
 : @return a sequence of facts.
 :)
declare function sec-networks:facts(
    $networks-or-ids as item*
)
as object*
{
  sec-networks:facts($networks-or-ids, ())
};

(:~
 :
 : <p>Retrieves all facts belonging to the SEC Network.</p>
 :
 : @param $networks-or-ids a sequence of SEC Network objects, or their XBRL Component IDs.
 : @return a array populated with fact values.
 :)
declare function sec-networks:fact-tables(
    $networks-or-ids as item*
)
as array
{
  sec-networks:fact-tables($networks-or-ids, ())
};

(:~
 :
 : <p>Retrieves all facts belonging to the SEC Networks and populates the model structures.</p>
 :
 : @param $networks-or-ids a sequence of SEC Network objects, or their XBRL Component IDs.
 :
 : @return the populated model structures (Facts array fields).
 :)
declare function sec-networks:populated-model-structures(
    $networks-or-ids as item*
)
as object*
{
  sec-networks:populated-model-structures($networks-or-ids, ())
};

(:~
 :
 : <p>Retrieves all facts belonging to the SEC Network.</p>
 :
 : @param $networks a sequence of SEC Network objects.
 : @param $options <a href="core#standard_options">standard SEC BizQL options</a>.
 :
 : @return a sequence of facts.
 :)
declare function sec-networks:facts(
    $networks as object*,
    $options as object?
)
as object*
{
  for $component as object in $networks
  for $table as string? allowing empty in sec-networks:table-names($component)[$$ ne "xbrl28:ImpliedTable"]
  let $hypercube as object? := hypercubes:hypercubes-for-components($component, $table)
  let $hypercube as object := if (exists($hypercube))
                              then $hypercube
                              else sec:dimensionless-hypercube({
                                  Concepts: [ sec-networks:line-items($component).Name ]
                              })
  let $facts := hypercubes:facts-for-hypercube(
    $hypercube,
    $component.Archive,
    if (exists($options.Filter.Profiles.SEC.Fiscal))
    then $options
    else facts:merge-objects(
        { Filter: { "Profiles.SEC.Fiscal" : { "$exists" : true } } },
        $options,
        true
    )
  )
  return sec:hide-amended-facts($facts, $options)
};

(:~
 :
 : <p>Retrieves all facts belonging to the SEC Network.</p>
 :
 : @param $networks a sequence of SEC Network objects.
 : @param $options <a href="core#standard_options">standard SEC BizQL options</a>.
 :
 : @return a array of arrays filled with fact values.
 :)
declare function sec-networks:fact-tables(
    $networks as object*,
    $options as object?
)
as array
{
  for $component as object in $networks
  for $table as string? allowing empty in sec-networks:table-names($component)[$$ ne "xbrl28:ImpliedTable"]
  let $hypercube as object? := hypercubes:hypercubes-for-components($component, $table)
  let $hypercube as object := if (exists($hypercube))
                              then $hypercube
                              else sec:dimensionless-hypercube({
                                  Concepts: [ sec-networks:line-items($component).Name ]
                              })
  return hypercubes:fact-table-for-hypercube(
      $hypercube,
      $component.Archive,
      {|
        $options,
        { "facts-for-archives-and-concepts": sec:facts-for-archives-and-concepts#3 }
      |}
  )
};

(:~
 :
 : <p>Retrieves all facts belonging to the SEC Networks and populates the model structures.</p>
 :
 : @param $networks-or-ids a sequence of SEC Network objects, or their XBRL Component IDs.
 : @param $options <a href="core#standard_options">standard SEC BizQL options</a>.
 :
 : @return the populated model structures (Facts array fields).
 :)
declare function sec-networks:populated-model-structures(
    $networks-or-ids as item*,
    $options as object?
)
as object*
{
  let $fact-table-by-concepts := {|
    for $f in sec-networks:facts($networks-or-ids, $options)
    group by $concept := $f.Aspects."xbrl:Concept"
    return { $concept : [ $f ] }
  |}
  return
    copy $result := sec-networks:model-structures($networks-or-ids)
    modify
      for $concept in ($result, descendant-objects(values($result)))[$$.Kind eq "Concept"]
      let $name := $concept.Name
      return insert json { "Facts" : $fact-table-by-concepts.$name } into $concept
    return $result
};

(:~
 : 
 : <p>Returns the disclosures of the suplied networks.</p>
 :
 : @param $networks a sequence of SEC Network objects.
 : @return the disclosure names, or "UncategorizedInformation" if none.
 : 
 :)
declare function sec-networks:disclosures($networks as object*) as string+
{
  for $component in $networks
  let $disclosure := $component.Profiles.SEC.Disclosure
  return if (exists($disclosure))
         then $disclosure
         else "UncategorizedInformation"
};

(:~
 :
 : <p>Return the categories of the supplied SEC networks (Statement, Disclosure, Document or Schedule).</p>
 :
 : @param $networks a sequence of SEC Network objects.
 :
 : @return the category of each network.
 :)
declare function sec-networks:categories($networks as object*) as string*
{
  for $component in $networks
  return normalize-space(tokenize($component.Label, "-")[2])
};

(:~
 :
 : <p>Return the sub-categories of the supplied SEC networks (Detail, TextBlockLevel4, TextBLockLevel1to3).</p>
 :
 : @param $networks-or-ids a sequence of SEC Network objects, or their XBRL Component IDs.
 :
 : @return the sub-category of each network.
 :)
declare function sec-networks:sub-categories($networks-or-ids as item*) as string*
{
  for $network in $networks-or-ids
  let $numbers :=
    for $concept in sec-networks:concepts($network)
    group by $is-text-block := $concept.IsTextBlock
    return {
      if($is-text-block) then "TextBlocks" else "NonTextBlocks": count($concept)
    }
  return switch(true)
         case $numbers.NonTextBlocks gt 0 and not $numbers.TextBlocks gt 0 return "Detail"
         case $numbers.NonTextBlocks gt 0 return "TextBlockLevel4"
         case $numbers.TextBlocks gt 0 return "TextBlockLevel1To3"
         default return "Unknown"
};

(:~
 :
 : <p>Return summary information for the supplied SEC networks.</p>
 :
 : @param $networks a sequence of SEC Network objects.
 :
 : @return one object per network, containing a summary.
 :)
declare function sec-networks:summaries($networks as object*) as object*
{
  for $component in $networks
  return {
    NetworkLabel : $component.Label,
    NetworkIdentifier : $component.Role,
    Category : sec-networks:categories($component),
    SubCategory : sec-networks:sub-categories($component),
    Table : sec-networks:table-names($component)[1],
    Disclosure : sec-networks:disclosures($component),
    ReportElements : sec-networks:num-report-elements($component),
    Tables : sec-networks:num-tables($component),
    Axis : sec-networks:num-axes($component),
    Members : sec-networks:num-members($component),
    LineItems : sec-networks:num-line-items($component),
    Concepts : sec-networks:num-concepts($component),
    Abstracts : sec-networks:num-abstracts($component)
  }
};

(:~
 : <p>Returns an XML representation of the given component summaries.</p>
 :
 : @param $summaries summaries of the components to convert to XML.
 :
 : @return a sequence of elements, each one representing one component summary as XML
 :)
declare function sec-networks:summaries-to-xml($summaries as object*) as element()*
{
  for $s in $summaries
  return
    <Component>
        <NetworkLabel>{$s.NetworkLabel}</NetworkLabel>
        <NetworkIdentifier>{$s.NetworkIdentifier}</NetworkIdentifier>
        <Category>{$s.Category}</Category>
        <SubCategory>{$s.SubCategory}</SubCategory>
        <Table>{jn:flatten($s.Table)}</Table>
        <Disclosure>{$s.Disclosure}</Disclosure>
        <Tables>{$s.Tables}</Tables>
        <Axis>{$s.Axis}</Axis>
        <Members>{$s.Members}</Members>
        <LineItems>{$s.LineItems}</LineItems>
        <Concepts>{$s.Concepts}</Concepts>
        <Abstracts>{$s.Abstracts}</Abstracts>
    </Component>
};

(:~
 : <p>Returns a CSV representation of the given network summaries.</p>
 :
 : <p>Commas are used as column separators. Abscent values are serialized
 : as empty strings.</p>
 :
 : @param $summaries summaries of the networks to convert to CSV.
 :
 : @return a sequence of strings, each one representing one networks summary as CSV
 :)
declare function sec-networks:summaries-to-csv($summaries as object*) as string*
{
  csv:serialize($summaries, { serialize-null-as : "" })
};

(:~
 : <p>Returns the standard period breakdown.</p>
 :
 : @return the period breakdown.
 :)
declare %private function sec-networks:standard-period-breakdown() as object
{
    {
        BreakdownLabels: [ "Period breakdown" ],
        BreakdownTrees: [
            {
                Kind: "Rule",
                Abstract: true,
                Labels: [ "Period [Axis]" ],
                Children: [ {
                    Kind: "Aspect",
                    Aspect: "xbrl:Period"
                } ]
            }
        ]
    }
};

declare %private function sec-networks:standard-typed-dimension-breakdown($dimension-name as string, $dimension-values as atomic*) as object
{
    {
        BreakdownLabels: [ $dimension-name || " breakdown" ],
        BreakdownTrees: [
            {
                Kind: "Rule",
                Labels: [ $dimension-name || " [Axis]" ],
                Children: [
                    for $value in $dimension-values
                    return {
                        Kind: "Rule",
                        Labels: [ $value ],
                        AspectRulesSet: { "" : { $dimension-name : $value } }
                    }
                ]
            }
        ]
    }
};

declare %private function sec-networks:standard-explicit-dimension-breakdown(
    $dimension-name as string,
    $dimension-label as string,
    $domain-names as string*,
    $role as string) as object
{
    {
        BreakdownLabels: [ "Dimension Breakdown" ],
        BreakdownTrees: [
            {
                Kind: "Rule",
                Abstract: true,
                Labels: [ $dimension-label ],
                Children: [
                    for $domain as string in $domain-names
                    return {
                        Kind: "DimensionRelationship",
                        LinkRole: $role,
                        Dimension: $dimension-name,
                        RelationshipSource: $domain,
                        FormulaAxis: "descendant",
                        Generations: 0
                    }
                ]
            }
        ]
    }
};

declare %private function sec-networks:standard-entity-breakdown() as object
{
    {
        BreakdownLabels: [ "Entity breakdown" ],
        BreakdownTrees: [
            {
                Kind: "Rule",
                Abstract: true,
                Labels: [ "Reporting Entity [Axis]" ],
                ConstraintSets: { "" : {} },
                Children: [ {
                    Kind: "Aspect",
                    Aspect: "xbrl:Entity"
                } ]
            }
        ]
    }
};

declare %private function sec-networks:standard-concept-breakdown(
    $line-items-elements as string*,
    $role as string) as object
{
    {
        BreakdownLabels: [ "Breakdown on concepts" ],
        BreakdownTrees: [
            for $lineitems as string in $line-items-elements
            return {
                Kind: "ConceptRelationship",
                LinkName: "link:presentationLink",
                LinkRole: $role,
                ArcName: "link:presentationArc", 
                ArcRole: "http://www.xbrl.org/2003/arcrole/parent-child",
                RelationshipSource: $lineitems,
                FormulaAxis: "descendant",
                Generations: 0,
                RollUpAgainstCalculationNetwork: false
            }
        ]
    }
};


(:~
 :)
declare %private %an:strictlydeterministic function sec-networks:connection() as anyURI
{
  let $credentials :=
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return if (empty($credentials))
             then error(QName("sec-networks:CONNECTION-FAILED"), "no xbrl MongoDB configured")
             else $credentials
  return
    try {
      mongo:connect($credentials)
    } catch mongo:* {
      error(QName("sec-networks:CONNECTION-FAILED"), $err:description)
    }
};
