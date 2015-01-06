jsoniq version "1.0";
module namespace japan = "http://28.io/modules/xbrl/profiles/japan/core";

import module namespace archives = "http://28.io/modules/xbrl/archives";
import module namespace entities = "http://28.io/modules/xbrl/entities";

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
