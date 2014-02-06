let $filingsData := collection("filingStatsCache3")
let $dubiousData := $filingsData[empty($$.percentExtUsage) or not($$.percentExtUsage castable as integer)]
return {
   qtyDubious: count($dubiousData),
   dubiousData: [$dubiousData[position() < 50]]
}
                