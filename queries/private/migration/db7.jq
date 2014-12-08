for $report in collection("reports")
where empty($report.Concepts)
return (
  for $object in descendant-objects($report)
  where exists($object.Trees)
  return replace value of json $object.Trees with [ values($object.Trees) ],

  for $object in descendant-objects($report)
  where exists($object.Domains)
  let $domains := values($object.Domains)
  return (delete json $object.Domains,
          insert json { Members : [ $domains ] } into $object),

  for $object in descendant-objects(
    $report.Hypercubes."xbrl:DefaultHypercube".Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain".Members
  )
  return for $key in keys($object)
         where not $key = ("Name", "Value", "PreferredLabelRole")
         return delete json $object.$key,

  rename json $report.Hypercubes."xbrl:DefaultHypercube" as "xbrl28:ImpliedTable",
  replace value of json $report.Hypercubes."xbrl:DefaultHypercube".Name with "xbrl28:ImpliedTable",
  replace value of json $report.Hypercubes."xbrl:DefaultHypercube".Label with "Implied Table [Table]",
 
  insert json {
    Concepts: [
      values($report.Hypercubes."xbrl:DefaultHypercube".Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain".Members)
    ]
  } into $report
);
