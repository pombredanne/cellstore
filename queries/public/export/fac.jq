jsoniq version "1.0";

declare variable $id := "FundamentalAccountingConcepts";
declare variable $report := find("reports",{ "_id" :  $id });
declare variable $desc :=
  "Documentation about the fundamental accounting concepts defined in this report can be found at http://fundamentalaccountingconcepts.wikispaces.com/home";
declare variable $acl :=
    [
       {
          "Type": "Group",
          "Grantee": "http://28.io/groups/AllUsers",
          "Permission": "READ"
       }
    ];
declare variable $def :=
    [ {
        "ModelKind" : "DefinitionModel",
        "Labels" : [ "Fundamental Accounting Concepts" ],
        "Parameters" : {

        }, 
        "Breakdowns" : {
          "x" : [ {
            "BreakdownLabels" : [ "Reporting Entity Breakdown" ],
            "BreakdownTrees" : [ {
              "Kind" : "Rule",
              "Abstract" : true,
              "Labels" : [ "Reporting Entity [Axis]" ],
              "Children" : [ {
                "Kind" : "Aspect",
                "Aspect" : "xbrl:Entity"
              } ]
            } ]
          }, {
            "BreakdownLabels" : [ "Fiscal Year Breakdown" ],
            "BreakdownTrees" : [ {
              "Kind" : "Rule",
              "Abstract" : true,
              "Labels" : [ "Fiscal Year [Axis]" ],
              "Children" : [ {
                "Kind" : "Aspect",
                "Aspect" : "sec:FiscalYear"
              } ]
            } ]
          }, {
            "BreakdownLabels" : [ "Fiscal Period Breakdown" ],
            "BreakdownTrees" : [ {
              "Kind" : "Rule",
              "Abstract" : true,
              "Labels" : [ "Fiscal Period [Axis]" ],
              "Children" : [ {
                "Kind" : "Aspect",
                "Aspect" : "sec:FiscalPeriod"
              } ]
            } ]
          } ],
          "y" : [ {
            "BreakdownLabels" : [ "Breakdown on concepts" ],
            "BreakdownTrees" : [ {
              "Kind" : "ConceptRelationship",
              "LinkName" : "link:presentationLink",
              "LinkRole" : "http://xbrl.io/fundamental-accounting-concepts",
              "ArcName" : "link:presentationArc",
              "ArcRole" : "http://www.xbrl.org/2003/arcrole/parent-child",
              "RelationshipSource" : "fac:FundamentalAccountingConceptsLineItems",
              "FormulaAxis" : "descendant",
              "Generations" : 0
            } ]
          } ]
        },
        "TableFilters" : {

        }
      }
    ];

declare function local:convert($item as item)
{
    typeswitch($item)
    case $object as object return {|
        for $key in keys($object)
        return
            switch($key)
            (:case "To" return { $key : [ (values($object.$key)) ! (local:convert($$)) ] }:)
            case "children" return ()
            case "expanded" return ()
            case "$$hashKey" return ()
            default return { $key : local:convert($object.$key) }
    |}
    case $array as array return [ ($array[]) ! (local:convert($$)) ]
    default return $item
};


if($id eq "FundamentalAccountingConcepts")
then
    {
        replace value of json $report.Hypercubes."xbrl:DefaultHypercube".Aspects."xbrl:Entity" with
            {
              "Name": "xbrl:Entity",
              "Label": "Reporting Entity",
              "Kind": "TypedDimension",
              "Type": "string",
              "DomainRestriction": {
                "Name": "xbrl:EntityDomain",
                "Label": "Entity Domain",
                "Enumeration": [ "http://www.sec.gov/CIK 0001403161","http://www.sec.gov/CIK 0000004962","http://www.sec.gov/CIK 0000019617","http://www.sec.gov/CIK 0000030554","http://www.sec.gov/CIK 0000034088","http://www.sec.gov/CIK 0000040545","http://www.sec.gov/CIK 0000066740","http://www.sec.gov/CIK 0000078003","http://www.sec.gov/CIK 0000080424","http://www.sec.gov/CIK 0000093410","http://www.sec.gov/CIK 0000101829","http://www.sec.gov/CIK 0000310158","http://www.sec.gov/CIK 0000320187","http://www.sec.gov/CIK 0000354950","http://www.sec.gov/CIK 0000732712","http://www.sec.gov/CIK 0000732717","http://www.sec.gov/CIK 0000789019","http://www.sec.gov/CIK 0000858877","http://www.sec.gov/CIK 0000886982","http://www.sec.gov/CIK 0001001039","http://www.sec.gov/CIK 0000012927","http://www.sec.gov/CIK 0000018230","http://www.sec.gov/CIK 0000021344","http://www.sec.gov/CIK 0000050863","http://www.sec.gov/CIK 0000051143","http://www.sec.gov/CIK 0000063908","http://www.sec.gov/CIK 0000086312","http://www.sec.gov/CIK 0000104169","http://www.sec.gov/CIK 0000200406","http://www.sec.gov/CIK 0000731766" ]
              }
            };
        replace value of json $report.Hypercubes."xbrl:DefaultHypercube".Aspects."sec:FiscalYear" with
            {
              "Name": "sec:FiscalYear",
              "Label": "Fiscal Year",
              "Kind": "TypedDimension",
              "Type": "integer",
              "DomainRestriction": {
                "Name": "sec:FiscalYearDomain",
                "Label": "Fiscal Year Domain",
                "Enumeration": [ 2013 ]
              }
            };
        replace value of json $report.Hypercubes."xbrl:DefaultHypercube".Aspects."sec:FiscalPeriod" with
            {
              "Name": "sec:FiscalPeriod",
              "Label": "Fiscal Period",
              "Kind": "TypedDimension",
              "Type": "string",
              "DomainRestriction": {
                "Name": "sec:FiscalPeriodDomain",
                "Label": "Fiscal Period Domain",
                "Enumeration": [ "FY" ]
              }
            };
    }
else ();

(: remove archives filter :)
for $arch in $report.Hypercubes."xbrl:DefaultHypercube".Aspects."sec:Archive"
where exists($arch.DomainRestriction)
return
    replace value of json $report.Hypercubes."xbrl:DefaultHypercube".Aspects."sec:Archive" with
    {
        "Name": "sec:Archive",
        "Label": "Archive ID"
    };

for $rule in $report.Rules[]
for $f in $rule.Formulae[]
where $f.Prereq or $f.Body or exists($f.valid) or exists($f.active)
return
    {
        if($f.Prereq)
        then delete json $f.Prereq;
        else ();
        if($f.Body)
        then delete json $f.Body;
        else ();
        if(exists($f.active))
        then delete json $f.active;
        else ();
        if(exists($f.valid))
        then delete json $f.valid;
        else ();
    }

local:convert(
    { "_id": $id,
      Archive: null,
      Label: "Fundamental Accounting Concepts",
      Description: $desc,
      Prefix: "fac",
      Role: "http://xbrl.io/fundamental-accounting-concepts",
      Owner: "admin@28.io",
      ACL: $acl,
      LastModified: string(current-dateTime()),
      Networks: $report.Networks,
      Hypercubes: $report.Hypercubes,
      DefinitionModels: $def,
      Rules: $report.Rules,
      Filters: {
        cik: [  ],
        tag: [ "DOW30" ],
        fiscalYear : [ 2013 ],
        fiscalPeriod : [ "FY" ],
        sic : [  ]
      }
    }
)
