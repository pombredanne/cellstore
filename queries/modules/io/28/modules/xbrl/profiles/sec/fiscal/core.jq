jsoniq version "1.0";

(:
 : Copyright 2012-2013 28msec Inc.
 :)

(:~
 : <p>This module provides functionality for querying fiscal reports (10-K, 10-Q)
 : submitted to the SEC.</p>
 :
 : @author Charles Hoffman
 : @author Matthias Brantner
 : @author Dennis Knochenwefel
 : @author Ghislain Fourny
 :)
module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";

import module namespace mongo = "http://www.28msec.com/modules/mongodb";
import module namespace credentials = "http://www.28msec.com/modules/credentials";

import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace facts = "http://28.io/modules/xbrl/facts";

import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace entities = "http://28.io/modules/xbrl/entities";
import module namespace sec-networks = "http://28.io/modules/xbrl/profiles/sec/networks";
import module namespace sec = "http://28.io/modules/xbrl/profiles/sec/core";

declare namespace ver = "http://zorba.io/options/versioning";
declare option ver:module-version "1.0";

(:~
 : Joker for all fiscal periods.
 :)
declare variable $fiscal-core:ALL_FISCAL_PERIODS as string := "ALL";

(:~
 : Joker for all fiscal years.
 :)
declare variable $fiscal-core:ALL_FISCAL_YEARS as integer := 0;

(:~
 : Joker for the latest fiscal years.
 :)
declare variable $fiscal-core:LATEST_FISCAL_YEAR as integer := 1;

(:~
 : <p>Return a distinct set of companies identified by either
 :   CIKs, tags, tickers, or sics.</p>
 : 
 : @param $ciks a set of CIKs.
 : @param $tags a set of tags (ALL retrieves all companies).
 : @param $tickers a set of tickers.
 : @param $sics a set of SIC codes.
 :
 : @return the companies with the given identifiers, tags, tickers, or sic codes.
 :)
declare function fiscal-core:filings(
    $entities-or-eids as item*,
    $fiscal-periods as string*,
    $fiscal-years as integer*,
    $archives-or-aids as item*) as object*
{
    let $entities := entities:entities($entities-or-eids)
    return
        if(exists(index-of($fiscal-years, $fiscal-core:LATEST_FISCAL_YEAR)))
        then
            for $entity in $entities
            return
            fiscal-core:latest-filings($entity, $fiscal-periods)
        else
            let $fiscal-years as integer* :=
                $fiscal-years[$$ ne $fiscal-core:LATEST_FISCAL_YEAR]
            return
                fiscal-core:filings-for-entities-and-fiscal-periods-and-years($entities, $fiscal-periods, $fiscal-years),
    archives:archives($archives-or-aids)
};

declare function fiscal-core:latest-filings(
    $entities as object*,
    $fiscal-periods as string*) as object*
{
    for $entity in $entities
    for $fiscal-period in $fiscal-periods 
    let $latest-fiscal-year :=
        fiscal-core:latest-reported-fiscal-period($entity, $fiscal-period).year
    return fiscal-core:filings-for-entities-and-fiscal-periods-and-years(
        $entity,
        $fiscal-period,
        $latest-fiscal-year cast as integer?
    )
};

declare function fiscal-core:filter-override(
    $entities-or-eids as item*,
    $fiscal-years as integer*,
    $fiscal-periods as string*,
    $archives-or-aids as item*
) as object?
{
    let $eids := entities:eid($entities-or-eids)
    let $entities := entities:entities($entities-or-eids)
    let $aids := archives:aid($archives-or-aids)
    let $latest-filings := fiscal-core:latest-filings($entities, $fiscal-periods)
    return
    switch(true)
    case count($aids) gt 0 return {
        "xbrl:Entity" : {
        },
        "sec:Archive" : {
            Type: "string",
            Domain : [ $aids ]
        },
        "sec:FiscalYear" : {
            Type: "integer"
        },
        "sec:FiscalPeriod" : {|
            {
                Type: "string",
                Domain: [ $fiscal-periods ]
            }[exists($fiscal-periods) and empty(index-of($fiscal-periods, $fiscal-core:ALL_FISCAL_PERIODS))]
        |}
    }
    case exists(index-of($fiscal-years, $fiscal-core:LATEST_FISCAL_YEAR))
    return {
        "sec:Archive" : {
            Type: "string",
            Domain : [archives:aid($latest-filings)]
        },
        "sec:FiscalPeriod" : {|
            {
                Type: "string",
                Domain: [ $fiscal-periods ]
            }[exists($fiscal-periods) and empty(index-of($fiscal-periods, $fiscal-core:ALL_FISCAL_PERIODS))]
        |}
    }
    case exists(($eids, $fiscal-years, $fiscal-periods))
    return {
        "xbrl:Entity" : {|
            {
                Type: "string",
                Domain: [ $eids ]
            }[exists($eids)]
        |},
        "sec:FiscalYear" :
            let $fiscal-years as integer* :=
                $fiscal-years[$$ ne $fiscal-core:LATEST_FISCAL_YEAR]
            return {|
                {
                    Type: "integer",
                    Domain: [ $fiscal-years ]
                }[exists($fiscal-years) and empty(index-of($fiscal-years, $fiscal-core:ALL_FISCAL_YEARS))]
            |},
        "sec:FiscalPeriod" : {|
            {
                Type: "string",
                Domain: [ $fiscal-periods ]
            }[exists($fiscal-periods) and empty(index-of($fiscal-periods, $fiscal-core:ALL_FISCAL_PERIODS))]
        |},
        "sec:Archive" : {}
    }
    default return ()
};

(:~
 : <p>Retrieves the fiscal period of a filing.</p>
 : 
 : @param $filing-or-id a filing or its id, or the empty sequence.
 :
 : @return the fiscal period (FY, YTD2, YTD3, Q1, Q2 or Q3) if any.
 :) 
declare function fiscal-core:fiscal-period-for-filing(
    $filing-or-id as item?) as string?
{
  archives:archives($filing-or-id).Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus
};

(:~
 : <p>Retrieves the fiscal period of a fact.</p>
 : 
 : @param $fact a fact object or the empty sequence.
 :
 : @return the fiscal period (FY, YTD2, YTD3, Q1, Q2 or Q3) if any.
 :) 
declare function fiscal-core:fiscal-period-for-fact(
    $fact as object?) as string?
{
  $fact.Aspects."sec:FiscalPeriod"
};

(:~
 : <p>Retrieves the fiscal period of a filing or a fact.</p>
 :
 : @deprecated use fiscal-period-for-fact#1 and fiscal-period-for-filing#1
 : 
 : @param $filing-fact-or-id a filing, a fact, or its id.
 :
 : @return the fiscal period (FY, YTD2, YTD3, Q1, Q2 or Q3).
 :) 
declare function fiscal-core:fiscal-period(
    $filing-fact-or-id as item?) as string?
{
  if(empty($filing-fact-or-id))
  then ()
  else
    typeswitch ($filing-fact-or-id)
    case object return 
      switch (true)
      (: archive :)
      case exists($filing-fact-or-id.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus)
        return $filing-fact-or-id.Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus
      (: fact :)
      case exists($filing-fact-or-id.Aspects."sec:FiscalPeriod")
        return $filing-fact-or-id.Aspects."sec:FiscalPeriod"
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
          return archives:archives($id).Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus
        default return facts:facts($id).Aspects."sec:FiscalPeriod"
};

(:~
 : <p>Retrieves the fiscal year of a filing.</p>
 : 
 : @param $filing-or-id a filing or its id, or the empty sequence.
 :
 : @return the fiscal year (e.g., 2012) if any.
 :) 
declare function fiscal-core:fiscal-year-for-filing(
    $filing-or-id as item?) as integer?
{
  archives:archives($filing-or-id).Profiles.SEC.Fiscal.DocumentFiscalYearFocus
};

(:~
 : <p>Retrieves the fiscal year of a fact.</p>
 : 
 : @param $fact a fact object or the empty sequence.
 :
 : @return the fiscal year (e.g., 2012) if any.
 :) 
declare function fiscal-core:fiscal-year-for-fact(
    $fact as object?) as integer?
{
  $fact.Aspects."sec:FiscalYear"
};

(:~
 : <p>Retrieves the fiscal year of a filing or a fact.</p>
 :
 : @deprecated use fiscal-core:fiscal-year-for-archive#1 or fiscal-core:fiscal-year-for-fact#1.
 : 
 : @param $filing-fact-or-id a filing, a fact, or its id.
 :
 : @return the fiscal year (e.g., 2012).
 :) 
declare function fiscal-core:fiscal-year(
    $filing-fact-or-id as item?) as integer?
{
  if(empty($filing-fact-or-id))
  then ()
  else
    typeswitch ($filing-fact-or-id)
    case object return 
      switch (true)
      (: archive :)
      case exists($filing-fact-or-id.Profiles.SEC.Fiscal.DocumentFiscalYearFocus)
        return $filing-fact-or-id.Profiles.SEC.Fiscal.DocumentFiscalYearFocus
      (: fact :)
      case exists($filing-fact-or-id.Aspects."sec:FiscalYear")
        return $filing-fact-or-id.Aspects."sec:FiscalYear"
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
          return archives:archives($id).Profiles.SEC.Fiscal.DocumentFiscalYearFocus
        default return facts:facts($id).Aspects."sec:FiscalYear"
};

(:~
 : <p>Retrieves all filings by entities and for given fiscal periods and years.</p>
 : 
 : @param $entities-or-ids entities or their ids.
 : @param $fiscal-period-focus fiscal periods (FY, YTD1, YTD2, YTD3, Q1, Q2, Q3, Q4) or $fiscal-core:ALL_FISCAL_PERIODS to accept all..
 : @param $fiscal-year-focus fiscal years or $fiscal-core:ALL_FISCAL_YEARS to accept all..
 :
 : @return all filings that match the criteria.
 :) 
declare function
fiscal-core:filings-for-entities-and-fiscal-periods-and-years(
    $entities-or-ids as item*,
    $fiscal-period-focus as string*,
    $fiscal-year-focus as integer*) as object*
{
  let $fiscal-period-focus :=
    switch(true)
    case $fiscal-period-focus = ( "10-K", "FY") return "FY"
    case $fiscal-period-focus eq "10-Q" return ( "Q3", "Q2", "Q1" )
    case $fiscal-period-focus eq "YTD1" return "Q1"
    case $fiscal-period-focus eq "YTD2" return "Q2"
    case $fiscal-period-focus eq "YTD3" return "Q3"
    default return $fiscal-period-focus
  let $conn := fiscal-core:connection()
  for $cik-or-entity in $entities-or-ids
  let $entity-id as xs:string := companies:eid($cik-or-entity)
  let $query := {|
      { "Entity" : $entity-id },
      switch (true)
      case deep-equal($fiscal-period-focus, $fiscal-core:ALL_FISCAL_PERIODS)
        return ()
      case count($fiscal-period-focus) eq 1
        return 
        { 
          "Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus": $fiscal-period-focus 
        }
      default return
        { 
          "Profiles.SEC.Fiscal.DocumentFiscalPeriodFocus":
            { "$in" : [ $fiscal-period-focus ] }
        },
      switch (true)
      case deep-equal($fiscal-year-focus, $fiscal-core:ALL_FISCAL_YEARS)
        return ()
      case count($fiscal-year-focus) eq 1
        return 
        { 
          "Profiles.SEC.Fiscal.DocumentFiscalYearFocus": $fiscal-year-focus 
        }
      default
        return
        { 
          "Profiles.SEC.Fiscal.DocumentFiscalYearFocus":
            { "$in" : [ $fiscal-year-focus ] }
        }
    |}
  return mongo:find($conn, $archives:col, $query)
};

(:~
 : <p>Retrieves the balance sheet for the given entities and fiscal periods and years.</p>
 : 
 : @param $entity-or-ids a list of entities or their EIDs.
 : @param $fiscal-period-focus the periods (YTD1, YTD2, YTD3, Q1, Q2, Q3 or FY) or $fiscal-core:ALL_FISCAL_PERIODS to accept all.
 : @param $fiscal-year-focus the years (2012) or $fiscal-core:ALL_FISCAL_YEARS to accept all.
 :
 : @error entities:INVALID_PARAMETER if the CIK or entity is not valid.
 :
 : @return the balance sheet at that date and for that formType.
 :) 
declare function fiscal-core:balance-sheets-for-fiscal-periods-and-years(
    $entity-or-ids as item*,
    $fiscal-period-focus as string*,
    $fiscal-year-focus as integer*) as object*
{
  for $archive in 
    fiscal-core:filings-for-entities-and-fiscal-periods-and-years($entity-or-ids, 
                                                                  $fiscal-period-focus, 
                                                                  $fiscal-year-focus)
  return sec-networks:networks-for-filings-and-disclosures(
      $archive,
      $sec-networks:BALANCE_SHEET)
};

(:~
 : <p>Retrieves facts for the given aspects, fiscal periods and years.</p>
 : 
 : @param $aspects an object containing aspects to filter, among which
 :                 xbrl:Concept, xbrl:Entity and xbrl:Period (all optional).
 : @param $fiscal-period-focus the periods (YTD1, YTD2, YTD3, Q1, Q2, Q3 or FY).
 : @param $fiscal-year-focus the years (2012)
 :
 : @return all facts matching the given aspects, fiscal period and year.
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for and hypercubes:facts.
 :) 
declare function 
  fiscal-core:facts-for-aspects-and-fiscal-periods-and-years(
    $aspects as object?,
    $fiscal-period-focus as string*,
    $fiscal-year-focus as integer*) as object*
{
  fiscal-core:facts-for-aspects-and-fiscal-periods-and-years(
    $aspects,
    $fiscal-period-focus,
    $fiscal-year-focus,
    ())
};

(:~
 : <p>Retrieves facts for the given aspects, fiscal periods and years.</p>
 : 
 : @param $aspects an object containing aspects to filter, among which
 :                 xbrl:Concept, xbrl:Entity and xbrl:Period (all optional).
 : @param $fiscal-period-focus the periods (YTD1, YTD2, YTD3, Q1, Q2, Q3 or FY) or $fiscal-core:ALL_FISCAL_PERIODS to accept all.
 : @param $fiscal-year-focus the years (2012) or $fiscal-core:ALL_FISCAL_YEARS to accept all.
 : @param $options <a href="../core#standard_options">standard SEC BizQL options</a>.
 :
 : @return all facts matching the given aspects, fiscal period and year.
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for and hypercubes:facts.
 :) 
declare function 
  fiscal-core:facts-for-aspects-and-fiscal-periods-and-years(
    $aspects as object?,
    $fiscal-period-focus as string*,
    $fiscal-year-focus as integer*,
    $options as object?) as object*
{
  let $filter as object := {|
    {
      "Filter":
        {|
          if(exists($aspects))
          then { $facts:ASPECTS : $aspects }
          else (),
          if( deep-equal($fiscal-period-focus, $fiscal-core:ALL_FISCAL_PERIODS) and deep-equal($fiscal-year-focus, $fiscal-core:ALL_FISCAL_YEARS))
          then { "Profiles.SEC.Fiscal" : { "$exists" : true } }
          else { "Profiles": { "SEC": { "Fiscal": 
                 {|
                   if(deep-equal($fiscal-period-focus, $fiscal-core:ALL_FISCAL_PERIODS) )
                   then ()
                   else { "Period" : [ $fiscal-period-focus ] },
                   if( deep-equal($fiscal-year-focus, $fiscal-core:ALL_FISCAL_YEARS) )
                   then ()
                   else { "Year": [ $fiscal-year-focus ] }
                 |}
               }}}
        |}
    },
    if (empty($options.Hypercube))
    then { Hypercube: sec:dimensionless-hypercube(()) }
    else ()
  |}
  let $facts := 
    facts:facts-for(
      facts:merge-objects($filter, $options, true (: giving parameters higher priority :))
    )
  return sec:hide-amended-facts($facts, $options)
};

(:~
 : <p>Retrieves facts for the given entities, concepts, fiscal periods and years.</p>
 : 
 : @param $entities-or-ids a list of entities or their EIDs.
 : @param $concepts a list of concept names (us-gaap:Assets)
 : @param $fiscal-period-focus the periods (YTD1, YTD2, YTD3, Q1, Q2, Q3 or FY) or $fiscal-core:ALL_FISCAL_PERIODS to accept all.
 : @param $fiscal-year-focus the years (2012) or $fiscal-core:ALL_FISCAL_YEARS to accept all.
 :
 : @error entities:INVALID_PARAMETER if the CIK or entity is not valid.
 : @return all facts matching entities, concepts, fiscal periods and years
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for and hypercubes:facts.
 :) 
declare function 
  fiscal-core:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
    $entities-or-ids as item*,
    $concepts as string*,
    $fiscal-period-focus as string*,
    $fiscal-year-focus as integer*) as object*
{
  fiscal-core:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
    $entities-or-ids,
    $concepts,
    $fiscal-period-focus,
    $fiscal-year-focus,
    ())
};

(:~
 : <p>Retrieves facts for the given entities, concepts, fiscal periods and years.</p>
 : 
 : @param $entities-or-ids a list of entities or their EIDs.
 : @param $concepts a list of concept names (us-gaap:Assets)
 : @param $fiscal-period-focus the periods (YTD1, YTD2, YTD3, Q1, Q2, Q3 or FY) or $fiscal-core:ALL_FISCAL_PERIODS to accept all.
 : @param $fiscal-year-focus the years (2012) or $fiscal-core:ALL_FISCAL_YEARS to accept all.
 : @param $options <a href="../core#standard_options">standard SEC BizQL options</a>.
 :
 : @error entities:INVALID_PARAMETER if the CIK or entity is not valid.
 : @return all facts matching entities, concepts, fiscal periods and years
 : @deprecated This function has been deprecated in favor of more generic
 :   functions like facts:facts-for and hypercubes:facts.
 :) 
declare function 
  fiscal-core:facts-for-entities-and-concepts-and-fiscal-periods-and-years(
    $entities-or-ids as item*,
    $concepts as string*,
    $fiscal-period-focus as string*,
    $fiscal-year-focus as integer*,
    $options as object?) as object*
{
  let $entity-ids as xs:string* := $entities-or-ids ! companies:eid($$)
  let $aspects := {|
    if(exists($entity-ids))
    then { "xbrl:Entity": [ $entity-ids ] }
    else (),
    if(exists($concepts))
    then { "xbrl:Concept": [ $concepts ] }
    else ()
  |}
  return 
    fiscal-core:facts-for-aspects-and-fiscal-periods-and-years(
      $aspects,
      $fiscal-period-focus,
      $fiscal-year-focus,
      $options)
};

(:~
 : <p>Retrieves the latest reported fiscal period and year for the
 : supplied entity.</p>
 : 
 : @param $entity-or-id an entity or its EID.
 :
 : @return an object with two fields: period and year.
 :) 
declare function fiscal-core:latest-reported-fiscal-period(
    $entity-or-id as item) as object?
{
  (
  let $entity-or-id := companies:eid($entity-or-id)
  for $archive in archives:archives-for-entities($entity-or-id)
  let $archive-fiscal-period := fiscal-core:fiscal-period-for-filing($archive)
  let $archive-fiscal-year := fiscal-core:fiscal-year-for-filing($archive)
  group by $archive-fiscal-year
  order by $archive-fiscal-year descending empty least
  return {
    year: $archive-fiscal-year,
    period: switch(true)
            case $archive-fiscal-period = "FY" return "FY"
            case $archive-fiscal-period = ("Q3", "YTD3") return "Q3"
            case $archive-fiscal-period = ("Q2", "YTD2") return "Q2"
            case $archive-fiscal-period = ("Q1", "YTD1") return "Q1"
            default return () }
  )[1]
};

(:~
 : <p>Retrieves the latest fiscal period and year for the
 : supplied entity.</p>
 : 
 : @param $entity-or-id an entity or its EID.
 : @param $type 10-K or 10-Q or FY, YTD1, YTD2, YTD3, Q1, Q2, or Q3, or $fiscal-core:ALL_FISCAL_PERIODS
 : to accept all.
 :
 : @return an object with two fields: period and year.
 :) 
declare function fiscal-core:latest-reported-fiscal-period(
    $entity-or-id as item,
    $type as string) as object?
{
  if(deep-equal($type, $fiscal-core:ALL_FISCAL_PERIODS))
  then fiscal-core:latest-reported-fiscal-period($entity-or-id)
  else
  (
  let $type-filter :=
    switch(true)
    case $type = ( "10-K", "FY") return "FY"
    case $type eq "10-Q" return ( "Q3", "Q2", "Q1" )
    case $type eq "YTD1" return "Q1"
    case $type eq "YTD2" return "Q2"
    case $type eq "YTD3" return "Q3"
    default return $type
  let $entity-or-id := companies:eid($entity-or-id)
  for $archive in archives:archives-for-entities($entity-or-id)
  let $archive-fiscal-period := fiscal-core:fiscal-period-for-filing($archive)
  let $archive-fiscal-year := fiscal-core:fiscal-year-for-filing($archive)
  where $archive-fiscal-period = $type-filter
  group by $archive-fiscal-year
  order by $archive-fiscal-year descending empty least
  return {
    year: $archive-fiscal-year,
    period:
      switch(true)
      case $archive-fiscal-period = "FY" and ($type eq "10-K" or $type eq "FY") return "FY"
      case $archive-fiscal-period = "Q3" and ($type eq "10-Q" or $type eq "Q3") return "Q3"
      case $archive-fiscal-period = "Q2" and ($type eq "10-Q" or $type eq "Q2") return "Q2"
      case $archive-fiscal-period = "Q1" and ($type eq "10-Q" or $type eq "Q1") return "Q1"
      default return () }
  )[1]
};

(:~
 :)
declare %private %an:strictlydeterministic function fiscal-core:connection() as anyURI
{
  let $credentials :=
      let $credentials := credentials:credentials("MongoDB", "xbrl")
      return if (empty($credentials))
             then error(QName("fiscal-core:CONNECTION-FAILED"), "no xbrl MongoDB configured")
             else $credentials
  return
    try {
      mongo:connect($credentials)
    } catch mongo:* {
      error(QName("fiscal-core:CONNECTION-FAILED"), $err:description)
    }
};

