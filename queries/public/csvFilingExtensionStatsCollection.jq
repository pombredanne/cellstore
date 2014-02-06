
import module namespace csv = "http://zorba.io/modules/json-csv";

(:let $options := {field-names: ["companyName","CIK","periodFocus","yearFocus","filingDate","generator","qtyStandardConcepts","qtyExtensionConcepts","percentExtensionUsage"]}:)
let $options := {"serialize-header" : false}
let $stats := collection("filingExtensionStats2")

return csv:serialize($stats,$options)
