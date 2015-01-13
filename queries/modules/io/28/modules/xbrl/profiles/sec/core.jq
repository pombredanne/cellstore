jsoniq version "1.0";

(:
 : Copyright 2012-2013 28msec Inc.
 :)

(:~
 : <p>This module provides functionality for querying XBRL Models of financial reports submitted to the SEC.
 : </p>
 :
 : <h2 id="standard_options">Standard <code>$options</code> Parameter</h2>
 :
 : <p>Most functions in the BizQL package allow an additional <code>$options</code>
 :    parameter. The options parameter is a JSON object which is defined in the documentation
 :    of the <a href="../../facts#standard_options">facts module</a>.</p>
 :
 : <p>In addition to the option fields defined in the 
 :    <a href="../../facts#standard_options">facts module</a> the following 
 :    fields can be used in the options of a function in the SEC profile:</p>
 : 
 : <ul>
 : <li><b>HideAmendedFacts</b>: if set to true (default behavior) all facts that have been
 :     amended are not included in the result.</li>
 : <li><b>IncludeImpliedTable</b>: set to true in order to output the implied table if 
 :     there is no Table (default is false).</li>
 : </ul>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :)
module namespace sec = "http://28.io/modules/xbrl/profiles/sec/core";

import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace facts = "http://28.io/modules/xbrl/facts";
import module namespace hypercubes = "http://28.io/modules/xbrl/hypercubes";
import module namespace networks = "http://28.io/modules/xbrl/networks";
import module namespace report-schemas = "http://28.io/modules/xbrl/report-schemas";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : Scheme for the SEC entity identifiers (i.e. http://www.sec.gov/CIK)
 :)
declare variable $sec:CIK as xs:string := "http://www.sec.gov/CIK";

(:~
 : Joker value for all archives or all concepts.
 :)
declare variable $sec:ALL_OF_THEM as boolean := true;

(:~
 : All prefixes pre-declared in SEC's EDGAR.
 :)
declare variable $sec:EDGAR_PREFIXES :=
  ( "xbrli", "link", "xl", "xlink", "xbrldt", "xbrldi", "nonnum", 
    "num", "ref", "us-gaap", "dei", "us-types", "invest", "country", 
    "currency", "exch", "naics", "sic", "stpr", "rr", "rr-ent", 
    "rr-cal", "rr-def", "rr-pre" );

(:~
 : All SEC characteristics that are always there with their defaults
 :)
declare variable $sec:DEFAULTS as object := {
    "dei:LegalEntityAxis" : {
      Default: "sec:DefaultLegalEntity",
      Domain: [ "sec:DefaultLegalEntity" ]
    },
    "sec:Accepted" : {
      Type: "xs:string"
    },
    "sec:FiscalYear" : {
      Type: "xs:integer"
    },
    "sec:FiscalPeriod" : {
      Type: "xs:string"
    }
  };

(:~
 : <p>Return all facts that match a given filter object optionally interpreted
 :    in the context of an optionally given hypercube.
 :    Only returns the facts that match the fiscal focus of the archive they
 :    belong to.</p>
 :
 : @param $options <a href="#standard_options">standard fact retrieving options</a>.
 :
 : @error facts:INVALID-RULE-TYPE the type of a rule is not unknown/invalid
 : @error facts:RULE-EXECUTION-ERROR a rule raised an error whilst being executed
 : @error facts:FILTER-TOO-GENERIC The filter object must have at least one of the 
 :        fields Archive, Aspects.xbrl:Concept, Aspects.xbrl:Period, or 
 :        Aspects.xbrl:Entity.
 : @return all facts satisfying the filter and options.
 :) 
declare function sec:facts-for(
  $options as object?) as object*
{
  let $facts := facts:facts-for($options)
  return sec:hide-amended-facts($facts, $options)
};

(:~
 :
 : <p>Retrieves all facts in the supplied hypercube, across all archives.</p>
 : <p>Default values will be populated automatically.</p>
 : <p>Only returns the facts that match the fiscal focus of the archive they
 :    belong to.</p>
 : 
 :
 : @param $hypercube a hypercube.
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function sec:facts-for-hypercube(
    $hypercube as object
)
as object*
{
  sec:facts-for({ Hypercube: $hypercube })
};

(:~
 :
 : <p>Retrieves all facts in the supplied hypercube, across all archives.</p>
 : <p>Default values will be populated automatically.</p>
 : <p>Only returns the facts that match the fiscal focus of the archive they
 :    belong to.</p>
 : 
 :
 : @param $hypercube a hypercube.
 : @param $options <a href="facts#standard_options">standard fact retrieving options</a>.
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function sec:facts-for-hypercube(
    $hypercube as object,
    $options as object?
)
as object*
{
  let $options as object := facts:merge-objects(
    { Hypercube: $hypercube },
    $options,
    true
  )
  return sec:facts-for($options)
};

(:~
 : <p>Retrieves the facts associated with the supplied concepts
 : from the supplied archive, that match the fiscal focus of the archive.</p>
 : 
 : @deprecated use sec:facts-for#1 and sec:user-defined-hypercube#1 instead.
 : 
 : @param $archive_or_ids a sequence of archives or their ids or $sec:ALL_OF_THEM for no filtering.
 : @param $concepts the concepts or $sec:ALL_OF_THEM for no filtering.
 :
 : @return the latest facts associated with the supplied concept.
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for and hypercubes:facts.
 :) 
declare function sec:facts-for-archives-and-concepts(
    $archive_or_ids as item*,
    $concepts as item*) as object*
{
  sec:facts-for-archives-and-concepts($archive_or_ids, $concepts, ())
};

(:~
 : <p>Retrieves the facts associated with the supplied concepts
 : from the supplied archive, that match the fiscal focus of the archive.</p>
 :
 : @deprecated use sec:facts-for#1 and sec:user-defined-hypercube#1 instead.
 : 
 : @param $archive_or_ids a sequence of archives or their ids or $sec:ALL_OF_THEM for no filtering.
 : @param $concepts the concepts or $sec:ALL_OF_THEM for no filtering.
 : @param $options <a href="#standard_options">standard SEC BizQL options</a>.
 :
 : @return the latest facts associated with the supplied concept.
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for and hypercubes:facts.
 :) 
declare function sec:facts-for-archives-and-concepts(
    $archive_or_ids as item*,
    $concepts as item*,
    $options as object?) as object*
{
  let $options := if(empty($options.Hypercube))
                  then facts:merge-objects(
                      {
                          "Hypercube" : sec:dimensionless-hypercube(())
                      },
                      $options,
                      true)
                  else $options
  let $facts := 
    facts:facts-for-archives-and-concepts(
      $archive_or_ids, 
      $concepts, 
      $options)
  return sec:hide-amended-facts($facts, $options)
};

(:~
 :
 : <p>Filters a list of facts and returns only the latest amending facts.
 :    Accordingly, all amended facts are filtered out.</p>
 : 
 : @param $facts a list of facts.
 : @param $options optional parameters:
 :   <ul>
 :     <li>HideAmendedFacts (boolean, true by default): activates or deactivates amendment hiding. If false,
 :     the function will just return the input facts.</li>
 :   </ul>
 :
 : @return a sequence of facts without amended facts.
 :)
declare function sec:hide-amended-facts(
    $facts as object*,
    $options as object?
)
as object*
{
  let $hide-amended-facts as boolean := ($options.HideAmendedFacts, true)[1]
  return
    if(not $hide-amended-facts)
    then $facts
    else
      for $grouped-facts in $facts
      group by
        $entity := $grouped-facts.Aspects."xbrl:Entity",
        $fiscal-period := $grouped-facts.Aspects."sec:FiscalPeriod",
        $fiscal-year := $grouped-facts.Aspects."sec:FiscalYear"
      return
        if (empty($fiscal-period) or empty($fiscal-year) or $fiscal-period instance of null or $fiscal-year instance of null)
        then
          (: $grouped-facts is already grouped by entity.
             Now, group by period as a fallback. :)
          for $regrouped-facts in $grouped-facts
          group by $period := $regrouped-facts.Aspects."xbrl:Period"
          return
            let $latest-accepted :=
              max(distinct-values($regrouped-facts.Aspects."sec:Accepted"))
            return 
              if (empty($latest-accepted))
              then $regrouped-facts
              else 
                (: hide amended facts :)
                $regrouped-facts[$$.Aspects."sec:Accepted" eq $latest-accepted]

        else
          let $latest-accepted :=
            max(distinct-values($grouped-facts.Aspects."sec:Accepted"))
          return 
            if (empty($latest-accepted))
            then $grouped-facts
            else 
              (: hide amended facts :)
              $grouped-facts[$$.Aspects."sec:Accepted" eq $latest-accepted]
};

(:~
 :
 : <p>Retrieves all facts from the supplied archives, that are relevant to the
 : supplied schema and to the fiscal focus, and populates
 : them with the default dimension values when missing.</p>
 : 
 :
 : @param $schema a schema.
 : @param $archives a sequence of archives or their AIDs or $sec:ALL_OF_THEM for no filtering.
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function sec:facts-for-schema(
    $schema as item,
    $archives as item*
)
as object*
{
  sec:facts-for-schema($schema, $archives, ())
};


(:~
 :
 : <p>Retrieves all facts from the supplied archives, that are relevant to the
 : supplied schema and to the fiscal focus, and populates
 : them with the default dimension values when missing.</p>
 : 
 :
 : @param $schema a schema.
 : @param $archives a sequence of archives or their AIDs or $sec:ALL_OF_THEM for no filtering.
 : @param $options <a href="#standard_options">standard SEC BizQL options</a>.
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function sec:facts-for-schema(
    $schema as item,
    $archives as item*,
    $options as object?
)
as object*
{
  let $facts := report-schemas:facts($schema, $archives, $options)
  return sec:hide-amended-facts($facts, $options)
};


(:~
 :
 : <p>Retrieves all facts from the supplied archives, that are relevant to the
 : supplied schema, and populates them with the default dimension values
 : when missing.</p>
 : 
 :
 : @param $schema a report schema or its RID.
 : @param $archives a sequence of archives or their AIDs or $sec:ALL_OF_THEM for no filtering.
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function sec:fact-table-for-schema(
  $schema as item,
  $archives as item*) as array
{
   let $schema := report-schemas:report-schemas($schema)
   let $facts := sec:facts-for-schema($schema, $archives)
   let $hypercube := hypercubes:hypercubes-for-components($schema)[1]
   return hypercubes:fact-table-for-hypercube-and-facts($hypercube, $facts)
};

(:~
 : <p>Populates a concept-tree network with all facts from the supplied archives,
 : that are relevant to the
 : supplied schema. Default dimension values are added to the facts
 : when missing.</p>
 : 
 : @param $schema a report schema or its RID.
 : @param $archives a sequence of archives or their AIDs.
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function sec:populate-schema-with-facts(
  $schema as item,
  $archives as item*) as object*
{
  sec:populate-schema-with-facts($schema, $archives,())
};

(:~
 : <p>Populates a concept-tree network with all facts from the supplied archives,
 : that are relevant to the
 : supplied schema. Default dimension values are added to the facts
 : when missing.</p>
 : 
 : @param $schema a report schema or its RID.
 : @param $archives a sequence of archives or their AIDs or $sec:ALL_OF_THEM for no filtering.
 : @param $options <a href="#standard_options">standard SEC BizQL options</a>.
 :
 : @return a sequence of facts with populated dimension values.
 :)
declare function sec:populate-schema-with-facts(
  $schema as item,
  $archives as item*,
  $options as object?) as object*
{
  let $networks :=
      networks:networks-for-components-and-short-names($schema, "Presentation")
  return hypercubes:populate-networks-with-retrieved-facts(
    $networks,
    sec:facts-for-schema($schema, $archives, $options)
  )
};

(:~
 : <p>Return all facts for concepts that are defined by one of the common
 : edgar taxonomies. In particular, this function returns facts for concepts
 : having one of the following prefixes:</p>
 :
 : <ul>
 :   <li>xbrli</li>
 :   <li>link</li>
 :   <li>xl</li>
 :   <li>xlink</li>
 :   <li>xbrldt</li>
 :   <li>xbrldi</li>
 :   <li>nonnum</li>
 :   <li>num</li>
 :   <li>ref</li>
 :   <li>us-gaap</li>
 :   <li>dei</li>
 :   <li>us-types</li>
 :   <li>invest</li>
 :   <li>country</li>
 :   <li>currency</li>
 :   <li>exch</li>
 :   <li>naics</li>
 :   <li>sic</li>
 :   <li>stpr</li>
 :   <li>rr</li>
 :   <li>rr-ent</li>
 :   <li>rr-cal</li>
 :   <li>rr-def</li>
 :   <li>rr-pre</li>
 : </ul>
 :
 : @param $archive_or_ids a sequence of archive or archive IDs to filter.
 : @return all facts having one of the above prefixes.
 :) 
declare function sec:edgar-facts-for-archives(
  $archive_or_ids as item*) as object* 
{
  sec:facts-for-archives-and-concepts(
    $archive_or_ids,
    $sec:ALL_OF_THEM,
    {
      Filter: {
        Profiles: {
          SEC: {
            IsExtension: false
          }
        }
      }
    })
};

(:~
 : <p>Return all facts for concepts that are NOT defined by one of the common
 : edgar taxonomies. In particular, this function returns facts for concepts
 : having none of the prefixes listed under function 
 : sec:edgar-facts-for-archives.</p>
 :
 : @param $archive_or_ids a sequence of archive or archive IDs to filter.
 : @return all facts having none of the common edgar prefixes.
 :) 
declare function sec:extension-facts-for-archives(
  $archive_or_ids as item*) as object* 
{
  sec:facts-for-archives-and-concepts(
    $archive_or_ids,
    $sec:ALL_OF_THEM,
    {
      Filter: {
        Profiles: {
          SEC: {
            IsExtension: true
          }
        }
      }
    })
};

(:~
 : <p>Retrieves the document end date of a filing or a fact.</p>
 : 
 : @param $filing-fact-or-id a filing, a fact, or its id.
 :
 : @return the document end date (e.g., xs:date("2011-04-30")).
 :) 
declare function sec:end-date(
    $filing-fact-or-id as item?) as xs:date?
{
  if (empty($filing-fact-or-id))
  then ()
  else
    typeswitch ($filing-fact-or-id)
    case object return 
      switch (true)
      (: archive :)
      case exists($filing-fact-or-id.Profiles.SEC.DocumentPeriodEndDate)
        return xs:date($filing-fact-or-id.Profiles.SEC.DocumentPeriodEndDate)
      (: fact :)
      case exists($filing-fact-or-id.Profiles.SEC.DocEndDate)
        return xs:date($filing-fact-or-id.Profiles.SEC.DocEndDate)
      default return ()
    default return 
      let $id as xs:string := string($filing-fact-or-id)
      return
        switch(true)
        (: 
          "The first ten digits are the CIK of the entity that logged 
           in to submit the filing. The next two digits define the 
           current year. The final digits are assigned sequentially by 
           CIK starting with one on the first business day of each year."

        http://www.sec.gov/info/edgar/edgarfm-vol2-v25.pdf :)
      case matches($id, "\\d{10}-\\d{2}-\\d{6}")
        return xs:date(archives:archives($id).Profiles.SEC.DocumentPeriodEndDate)
      default return xs:date(facts:facts($id).Profiles.SEC.DocEndDate)
};

(:~
 : <p>Returns an instantiation of a dimensionless Hypercube containing the basic
 :    characteristics (xbrl:Concept, xbrl:Period, xbrl:Entity, and xbrl:Unit).
 :    For each of those included aspects the value space is not limited, however
 :    you can restrict it using the options. If you need more
 :    XBRL dimensions, use the user-defined-hypercube function instead.</p>
 : <p>In the SEC profile, there is an additional axis that is always here:
 : dei:LegalEntityAxis, with a default value sec:DefaultLegalEntity and a filtering
 : only accepting this default value.</p>
 :
 : @return dimensionless hypercube instantiation.
 : @param $options: additional options among which:
 : - Concepts: an array of concept names to include in the hypercube.
 : - Periods: an array of periods to include in the hypercube.
 : - Entities: an array of EIDs to include in the hypercube.
 : - Units: an array of units to include in the hypercube.
 : - LegalEntities: an array of legal entities to include in the hypercube.
 :)
declare function sec:dimensionless-hypercube($options as object?) as object
{
  sec:user-defined-hypercube(
    {|
      if(exists($options.Concepts))
      then { "xbrl:Concept" : { Domain: $options.Concepts } }
      else (),
      if(exists($options.Entities))
      then { "xbrl:Entity" : { Domain: [ entities:eid($options.Entities[]) ] } }
      else (),
      if(exists($options.Periods))
      then { "xbrl:Period" : { Domain: $options.Periods } }
      else (),
      if(exists($options.Units))
      then { "xbrl:Unit" : { Domain: $options.Units } }
      else (),
      if(exists($options.LegalEntities))
      then { "dei:LegalEntityAxis" : { Domain: $options.LegalEntities } }
      else ()
    |}
  )
};

(:~
 : <p>Returns an instantiation of a Hypercube with no extra dimensions besides the legal entity axis.
 :    The four basic characteristics (xbrl:Concept, xbrl:Period, xbrl:Entity, and xbrl:Unit)
 :    are always added, but can be overriden. For each of those included aspects the value space is,
 :    by default, not limited, and only xbrl:Unit has a default value.</p>
 :    <p>The characteristic dei:LegalEntityAxis is also here. It has
 :    a default value of sec:DefaultLegalEntity and restricts the value
 :    space to this default value.</p>
 :    
 :
 : @return the hypercube instantiation.
 :)
declare function sec:user-defined-hypercube() as object
{
  sec:user-defined-hypercube(())
};

(:~
 : <p>Returns an instantiation of a Hypercube containing the specified dimensions.
 :    The four basic characteristics (xbrl:Concept, xbrl:Period, xbrl:Entity, and xbrl:Unit)
 :    are always added, but can be overriden. For each of those included aspects the value space is,
 :    by default, not limited, and only xbrl:Unit has a default value.</p>
 :    <p>The following dimensions are always present, but the values can be overriden:</p>
 :    <pre>{
 :     "dei:LegalEntityAxis" : {
 :       Default: "sec:DefaultLegalEntity", -- overridable with HasDefault : false
 :       Domain: [ "sec:DefaultLegalEntity" ] -- overridable with Domain: null
 :     },
 :     "sec:Accepted" : {
 :       Type: "string"
 :     },
 :     "sec:FiscalYear" : {
 :       Type: "integer"
 :     },
 :     "sec:FiscalPeriod" : {
 :       Type: "string"
 :     }
 :    }</pre>    
 :
 : @return the hypercube instantiation.
 : @param $dimensions <p>an object with pairs of (dimension name, object with dimension information). These 
 : dimension information subobjects
 : may have four (optional) fields:</p>
 : <ul>
 :  <li>Type (string, absent by default): the name of a type (string, integer, ...). This creates a typed dimension (if absent, an explicit dimension).</li>
 :  <li>Default (a string, absent by default): must be either castable to Type, or null (explicit dimensions: must be a string with a member name, null not allowed).</li>
 :  <li>HasDefault (a boolean, true by default): if false, the dimension has no default even if Default is present (this includes the possibility to override predefined dimensions).</li>
 :  <li>Domain (null or an array of atomics, absent by default): restricts the domain of the dimension to the specified values, that must all be castable to Type or null (or all strings with member names for explicit dimensions). Don't forget to include the default value in there if any. If null is used instead of an array, this removes any predefined restrictions.</li>.
 : </ul>
 :)
declare function sec:user-defined-hypercube($dimensions as object?) as object
{
  let $dimensions := facts:merge-objects($dimensions, $sec:DEFAULTS, true)
  let $extended-dimensions := {|
    for $d in keys($dimensions)
    let $dimension-spec := $dimensions.$d

    let $dimension-default as atomic? :=
      if(not $dimension-spec.HasDefault eq false)
      then $dimension-spec.Default
      else ()

    let $dimension-domain as array? :=
        typeswitch($dimension-spec.Domain)
        case null return ()
        default return $dimension-spec.Domain

    return {
      $d : {|
        { Default : $dimension-default }[exists($dimension-default)],
        { Type : $dimension-spec.Type }[exists($dimension-spec.Type)],
        { Domain : $dimension-domain }[exists($dimension-domain)]
      |}
    }
  |}
  return hypercubes:user-defined-hypercube($extended-dimensions)
};
