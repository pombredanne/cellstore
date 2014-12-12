jsoniq version "1.0";

import module namespace companies = "http://28.io/modules/xbrl/profiles/sec/companies";
import module namespace export = "http://apps.28.io/reports-export";

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

replace value of json $report.Hypercubes."xbrl28:ImpliedTable".Aspects."xbrl:Entity" with
    {
      "Name": "xbrl:Entity",
      "Label": "Reporting Entity [Axis]",
      "Kind": "TypedDimension",
      "Type": "string",
      "DomainRestriction": {
        "Name": "xbrl:EntityDomain",
        "Label": "Reporting Entity [Domain]",
        "Enumeration": [ companies:companies-for-tags("DOW30")."_id" ]
      }
    };
replace value of json $report.Hypercubes."xbrl28:ImpliedTable".Aspects."sec:FiscalYear" with
    {
      "Name": "sec:FiscalYear",
      "Label": "Fiscal Year [Axis]",
      "Kind": "TypedDimension",
      "Type": "integer",
      "DomainRestriction": {
        "Name": "sec:FiscalYearDomain",
        "Label": "Fiscal Year [Domain]",
        "Enumeration": [ 2013 ]
      }
    };
replace value of json $report.Hypercubes."xbrl28:ImpliedTable".Aspects."sec:FiscalPeriod" with
    {
      "Name": "sec:FiscalPeriod",
      "Label": "Fiscal Period [Axis]",
      "Kind": "TypedDimension",
      "Type": "string",
      "DomainRestriction": {
        "Name": "sec:FiscalPeriodDomain",
        "Label": "Fiscal Period [Domain]",
        "Enumeration": [ "FY" ]
      }
    };
replace value of json $report.Hypercubes."xbrl28:ImpliedTable".Aspects."sec:FiscalPeriodType" with
    {
      "Name": "sec:FiscalPeriodType",
      "Label": "Fiscal Period Type [Axis]",
      "Kind": "TypedDimension",
      "Type": "string",
      "DomainRestriction": {
        "Name": "sec:FiscalPeriodTypeDomain",
        "Label": "Fiscal Period Type [Domain]",
        "Enumeration": [ "instant", "YTD" ]
      }
    };

(: remove archives filter :)
for $arch in $report.Hypercubes."xbrl28:ImpliedTable".Aspects."xbrl28:Archive"
where exists($arch.DomainRestriction)
return
    replace value of json $report.Hypercubes."xbrl28:ImpliedTable".Aspects."xbrl28:Archive" with
    {
        "Name": "xbrl28:Archive",
        "Label": "Archive ID [Axis]",
        "Kind": "TypedDimension",
        "Type": "string"
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

export:cleanup(
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
      DefinitionModels: $report.DefinitionModels,
      Rules: [ for $rule in $report.Rules[]
               order by $rule.ComputableConcepts[][1], $rule.Id descending empty least
               return $rule ],
      Concepts: $report.Concepts,
      Filters: {
        cik: [  ],
        tag: [ "DOW30" ],
        fiscalYear : [ 2013 ],
        fiscalPeriod : [ "FY" ],
        fiscalPeriodType : [ "instant", "YTD" ],
        sic : [  ]
      }
    }
)