import module namespace export = "http://apps.28.io/reports-export";

for $report in collection("reports")
where empty($report.Concepts)
return {
  (: add Concepts field :)
  if(not($report.Concepts))
  then
      insert json {
        Concepts: [
          values($report.Hypercubes."xbrl:DefaultHypercube".Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain".Members)
        ]
      } into $report;
  else ();

  (: remove concept properties from hypercube :)
  for $object in descendant-objects(
    $report.Hypercubes."xbrl:DefaultHypercube".Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain".Members
  )
  return for $key in keys($object)
         where not $key = ("Name", "Value", "Id")
         return delete json $object.$key;

  (: Domains is renamed to Members + ConceptDomain removed :)
  for $object in descendant-objects($report)
  where exists($object.Domains)
  let $domains := values($object.Domains)
  let $members := descendant-objects($domains.Members)[exists($$.Name)]
  return (delete json $object.Domains,
          insert json { Members : [ $members ] } into $object);

  (: rename DefaultHypercube to ImpliedTable :)
  if(exists($report.Hypercubes."xbrl:DefaultHypercube"))
  then {
      replace value of json $report.Hypercubes."xbrl:DefaultHypercube".Name with "xbrl28:ImpliedTable";
      replace value of json $report.Hypercubes."xbrl:DefaultHypercube".Label with "Implied Table [Table]";
      rename json $report.Hypercubes."xbrl:DefaultHypercube" as "xbrl28:ImpliedTable";
  }
  else ();

  (: Trees and To fields are now arrays :)
  let $rep := export:cleanup($report)
  return db:edit($report, $rep);
}
