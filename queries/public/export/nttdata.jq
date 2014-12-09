jsoniq version "1.0";

declare variable $id := "f97d635c-9990-4372-a18a-2e02ce27c73e";
declare variable $report := find("reports",{ "_id" :  $id });

replace value of json $report.Hypercubes."xbrl28:ImpliedTable".Aspects."xbrl:Entity" with
    {
      "Name": "xbrl:Entity",
      "Label": "Reporting Entity [Axis]",
      "Kind": "TypedDimension",
      "Type": "string"
    };
replace value of json $report.Hypercubes."xbrl28:ImpliedTable".Aspects."xbrl:Period" with
    {
      "Name": "xbrl:Period",
      "Label": "Period [Axis]",
      "Kind": "TypedDimension",
      "Type": "string"
    };

{ "_id": $id,
  Archive: null,
  Label: "Fundamental Accounting Concepts",
  Description: $report.Description,
  Prefix: "disc",
  Role: "Disclosures",
  Owner: "admin@28.io",
  ACL: [],
  LastModified: string(current-dateTime()),
  Networks: $report.Networks,
  Hypercubes: $report.Hypercubes,
  DefinitionModels: $report.DefinitionModels,
  Rules: [ ],
  Concepts: $report.Concepts
}

