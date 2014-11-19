(:
  the exportImportReport test adds reports with the label "Import test".
  As we don't want to spam our db we clean those up on deployment.
:)
for $report in db:collection("reports")[$$.Owner eq "support@28.io"]
where $report.Label eq "Import test"
return db:delete($report)
