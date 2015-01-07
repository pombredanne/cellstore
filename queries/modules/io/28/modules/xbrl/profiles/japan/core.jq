jsoniq version "1.0";
module namespace japan = "http://28.io/modules/xbrl/profiles/japan/core";

import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace entities = "http://28.io/modules/xbrl/entities";

(:
 : Copyright 2012-2015 28msec Inc.
 :)
(:~
 : <p>This module provides functionality for querying against the Japan profile.</p>
 :
 : @author Ghislain Fourny
 :
 :)

(:~
 : <p>Retrieves the entities with the given identifiers.</p>
 :
 : @param $cik a sequence of shortcut codes, like E01225.
 : @param $eid a sequence of raw EIDs.
 : @param $tag a sequence of tags (e.g., indices).
 :
 : @return the entities that match those identifiers.
 :) 
declare function japan:entities(
    $cik as string*,
    $eid as string*,
    $tag as string*
) as object*
{
  let $eid := distinct-values((
    $cik ! ("http://info.edinet-fsa.go.jp " || $$ || "-000"),
    $eid
  ))
  return
    switch(true)
    case $tag = "ALL" return entities:entities()
    case exists($eid) return entities:entities($eid)
    default return ()
};

(:~
 : <p>Retrieves the filings with the given characteristics.</p>
 :
 : @param $entities a sequence of entities or EIDs.
 : @param $fiscalYear a sequence of fiscal years.
 : @param $fiscalPeriod a sequence of fiscal periods.
 : @param $aid a sequence of AIDs.
 :
 : @return the filings that match those criteria.
 :) 
declare function japan:filings(
    $entities as item*,
    $fiscalYear as integer*,
    $fiscalPeriod as string*,
    $aid as string*) as object*
{
    archives:archives($aid),
    if($fiscalYear = 1)
    then
        for $a as object in archives:archives-for-entities($entities)
        where (empty($fiscalPeriod) or ($fiscalPeriod = "ALL") or $a.Profiles.JAPAN.DocumentFiscalPeriodFocus = $fiscalPeriod)
        group by $a.Entity
        return
            for $filing in $a
            group by $fy := $filing.Profiles.JAPAN.DocumentFiscalYearFocus
            order by $fy descending
            count $i where $i eq 1
            return $filing
    else
        for $a as object in archives:archives-for-entities($entities)
        where (empty($fiscalYear) or
               $fiscalYear = 0 or
               $fiscalYear = $a.Profiles.JAPAN.DocumentFiscalYearFocus)
               and (empty($fiscalPeriod) or ($fiscalPeriod = "ALL") or $a.Profiles.JAPAN.DocumentFiscalPeriodFocus = $fiscalPeriod)
        return $a
};
