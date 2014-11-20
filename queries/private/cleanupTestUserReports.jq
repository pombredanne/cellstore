(:
  the exportImportReport test adds reports with the label "Import test".
  As we don't want to spam our db we clean those up on deployment.
:)
import module namespace config = "http://apps.28.io/config";

for $report in db:collection("reports")[$$.Owner eq $credentials:support-user]
where $report.Label = ("Import test", "Add test")
return db:delete($report)
