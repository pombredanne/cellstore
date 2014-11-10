let $fiscalPeriodType as string := "sec:FiscalPeriodType"

for $report in db:collection("reports")
let $hypercubeAspects as object := $report.Hypercubes."xbrl:DefaultHypercube".Aspects
let $filters as object? := $report.Filters
let $record := find("reports", { "_id" : $report."_id" })
return
    {
        if(not(empty($hypercubeAspects.$fiscalPeriodType)))
        then ();
        else insert json {
            $fiscalPeriodType: {
              "Name": $fiscalPeriodType,
              "Label": "Fiscal Period Type",
              "Kind": "TypedDimension",
              "Type": "string",
              "DomainRestriction": {
                "Name": "sec:FiscalPeriodTypeDomain",
                "Label": "Fiscal Period Type Domain",
                "Enumeration": [ "instant", "YTD" ]
              }
            }
        } into $hypercubeAspects;

        if(empty($filters) or not(empty($filters.fiscalPeriodType)))
        then ();
        else insert json { "fiscalPeriodType" : [ "instant", "YTD" ] } into $filters;

        if(not(empty($hypercubeAspects."sec:Archive")) and empty($hypercubeAspects."xbrl28:Archive"))
        then
            let $newArchive :=
              copy $new := $hypercubeAspects."sec:Archive"
              modify (replace value of json $new.Name with "xbrl28:Archive")
              return $new
            return
                insert json {
                    "xbrl28:Archive": $newArchive
                } into $hypercubeAspects;
        else ();

        if(not(empty($hypercubeAspects."sec:Archive")))
        then
            delete json $hypercubeAspects."sec:Archive";
        else ();

        db:edit($record, $report);
    }
