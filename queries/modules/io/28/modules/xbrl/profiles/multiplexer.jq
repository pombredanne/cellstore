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

(:~
 : <p>Retrieves entities depending on the profile.</p>
 :
 : @param $profile-name the name of the profile (e.g., SEC, Japan, Generic).
 : @param $eid a sequence of EIDs.
 : @param $cik a sequence of profile-specific CIKs.
 : @param $tag a sequence of tags (e.g., indices, ALL, ...).
 : @param $ticker a sequence of stock exchange tickers.
 : @param $sic a sequence of industry group SIC codes.
 : 
 : @return the entities retrieved according to the profile specified.
 :)
declare function multiplexer:entities(
  $profile-name as string,
  $eid as string*,
  $cik as string*,
  $tag as string*,
  $ticker as string*,
  $sic as string*) as object*
{
  switch($profile-name)
  case "sec" return
    for $entity in companies:companies(
      $cik,
      $tag,
      $ticker,
      $sic,
      $eid)
    order by $entity.Profiles.SEC.CompanyName
    return $entity
  case "japan" return
    for $entity in japan:entities($cik, $eid, $tag)
    order by $entity._id
    return $entity
  default return
    entities:entities($eid)
};

(:~
 : <p>Retrieves archives depending on the profile.</p>
 :
 : @param $profile-name the name of the profile (e.g., SEC, Japan, Generic).
 : @param $entities a sequence of entities or EIDs.
 : @param $fiscalPeriod a sequence of fiscal periods (Q1, Q2, Q3, FY).
 : @param $fiscalYear a sequence of fiscal years.
 : @param $aid a sequence of AIDs.
 : 
 : @return the archives retrieved according to the profile specified.
 :)
declare function multiplexer:filings(
  $profile-name as string,
  $entities as item*,
  $fiscalPeriod as string*,
  $fiscalYear as integer*,
  $aid as string*) as object*
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
  default return (
      archives:archives($aid),
      archives:archives-for-entities($entities))
};

