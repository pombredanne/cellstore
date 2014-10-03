import module namespace reports-helper = "http://apps.28.io/reports";
import module namespace reports = "http://28.io/modules/xbrl/reports";

let $report := reports:reports("FundamentalAccountingConcepts")
let $result := reports-helper:validate($report)
return [ $result ]