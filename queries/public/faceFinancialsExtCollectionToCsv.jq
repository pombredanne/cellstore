import module namespace csv = "http://zorba.io/modules/json-csv";


for $stats in collection("filingFaceFinancialsExtensionStats")

return csv:serialize($stats)