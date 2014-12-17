jsoniq version "1.0";

(:
 : Copyright 2012-2014 28msec Inc.
 :)
(:~
 : <p>This module provides functionality for automatically fetching entities, etc, from the
 : appropriate profile.</p>
 :
 : @author Ghislain Fourny
 :
 :)
module namespace multiplexer = "http://28.io/modules/xbrl/profiles/multiplexer";

import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace entities = "http://28.io/modules/xbrl/entities";

import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace fiscal-core = "http://28.io/modules/xbrl/profiles/sec/fiscal/core";

import module namespace japan = "http://28.io/modules/xbrl/profiles/japan/core";

declare function multiplexer:entities(
  $profile-name as string,
  $eid as string*,
  $cik as string*,
  $tag as string*,
  $ticker as string*,
  $sic as string*
)
{
  switch($profile-name)
  case "sec" return
    for $entity in companies:companies(
      $cik,
      $tag,
      $ticker,
      $sic)
    order by $entity.Profiles.SEC.CompanyName
    return $entity
  default return
    for $entity in switch(true)
                   case exists($eid) return entities:entities($eid)
                   case $tag = "ALL" return entities:entities()
                   default return ()
    order by $entity._id
    return $entity
};

declare function multiplexer:filings(
  $profile-name as string,
  $entities as item*,
  $fiscalPeriod as string*,
  $fiscalYear as integer*,
  $aid as string*)
{
  switch($profile-name)
  case "sec" return fiscal-core:filings(
      $entities,
      $fiscalPeriod,
      $fiscalYear,
      $aid)
  case "japan" return japan:filings(
      $entities,
      $fiscalYear,
      $fiscalPeriod,
      $aid)
  default return archives:archives-for-entities($entities)
};

