
import module namespace csv = "http://zorba.io/modules/json-csv";


for $stats in collection("filingExtensionStats")

return csv:serialize($stats)