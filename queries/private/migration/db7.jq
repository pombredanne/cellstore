for $report in collection("reports")
where empty($report.Concepts)
return (
  (: Trees and To fields are now arrays :)
  for $object in descendant-objects($report)
  where exists(($object.Trees, $object.To))
  return
      if(exists($object.Trees))
      then replace value of json $object.Trees with [ values($object.Trees) ]
      else replace value of json $object.To with [ values($object.To) ],

  (: remove concept properties from hypercube :)
  for $object in descendant-objects(
    $report.Hypercubes."xbrl:DefaultHypercube".Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain".Members
  )
  return for $key in keys($object)
         where not $key = ("Name", "Value", "Id")
         return delete json $object.$key,
         
  (: Domains is renamed to Members + ConceptDomain removed :)
  for $object in descendant-objects($report)
  where exists($object.Domains)
  let $domains := values($object.Domains)
  return (delete json $object.Domains,
          insert json { Members : [ $domains.Members ] } into $object),

  (: rename DefaultHypercube to ImpliedTable :)
  rename json $report.Hypercubes."xbrl:DefaultHypercube" as "xbrl28:ImpliedTable",
  replace value of json $report.Hypercubes."xbrl:DefaultHypercube".Name with "xbrl28:ImpliedTable",
  replace value of json $report.Hypercubes."xbrl:DefaultHypercube".Label with "Implied Table [Table]",
 
  (: add Concepts field :)
  insert json {
    Concepts: [
      values($report.Hypercubes."xbrl:DefaultHypercube".Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain".Members)
    ]
  } into $report
);
