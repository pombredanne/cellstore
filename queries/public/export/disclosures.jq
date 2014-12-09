jsoniq version "1.0";

import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";

declare variable $id := "Disclosures";
declare variable $report := find("reports",{ "_id" :  $id });
declare variable $acl :=
    [
       {
          "Type": "Group",
          "Grantee": "http://28.io/groups/AllUsers",
          "Permission": "READ"
       }
    ];

if($id eq "Disclosures")
then
    {
        replace value of json $report.Hypercubes."xbrl28:ImpliedTable".Aspects."xbrl:Entity" with
            {
              "Name": "xbrl:Entity",
              "Label": "Reporting Entity [Axis]",
              "Kind": "TypedDimension",
              "Type": "string"
            };
        replace value of json $report.Hypercubes."xbrl28:ImpliedTable".Aspects."sec:FiscalYear" with
            {
              "Name": "sec:FiscalYear",
              "Label": "Fiscal Year [Axis]",
              "Kind": "TypedDimension",
              "Type": "integer"
            };
        replace value of json $report.Hypercubes."xbrl28:ImpliedTable".Aspects."sec:FiscalPeriod" with
            {
              "Name": "sec:FiscalPeriod",
              "Label": "Fiscal Period [Axis]",
              "Kind": "TypedDimension",
              "Type": "string"
            };
        replace value of json $report.Hypercubes."xbrl28:ImpliedTable".Aspects."sec:FiscalPeriodType" with
            {
              "Name": "sec:FiscalPeriodType",
              "Label": "Fiscal Period Type [Axis]",
              "Kind": "TypedDimension",
              "Type": "string"
            };
        replace value of json $report.Hypercubes."xbrl28:ImpliedTable".Aspects."xbrl28:Archive" with
            {
              "Name": "xbrl28:Archive",
              "Label": "Archive [Axis]",
              "Kind": "TypedDimension",
              "Type": "string"
            };
    }
else ();

{ "_id": $id,
  Archive: null,
  Label: "Fundamental Accounting Concepts",
  Description: $report.Description,
  Prefix: "disc",
  Role: "Disclosures",
  Owner: "admin@28.io",
  ACL: $acl,
  LastModified: string(current-dateTime()),
  Networks: $report.Networks,
  Hypercubes: $report.Hypercubes,
  DefinitionModels: $report.DefinitionModels,
  Rules: [ ],
  Concepts: $report.Concepts
}

