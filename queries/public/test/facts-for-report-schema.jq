import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace schema = "http://zorba.io/modules/schema";

declare %an:sequential function local:check($o as object) as object
{
    if (not(every $k in (keys($o) ! $o.$$) satisfies ($k instance of boolean and $k)))
    then {
            response:status-code(500);
            $o
    } else
            $o
};

declare %an:sequential function local:get-facs($root as item()) as item()*
{
  for $object in descendant-objects($root)
  for $key in keys($object)
  where starts-with($key, "fac:") and not(ends-with($key, "LineItems")) and not(ends-with($key, "Hierarchy")) and not(ends-with($object($key)("Label"), "[Hierarchy]")) and not(ends-with($object($key)("Label"), "[Line Items]"))
  order by $key
  return 
  {
    "fac": $key,
    "data": $object($key)
  } 
};

declare %an:sequential function local:filter($items as item()*, $replace-value-list as xs:string*, $count-list as xs:string*) as item()*
{
  for $item in $items
  return
  {
    if ($item instance of object())
    then
    {
      for $key in keys($item)
      return 
      {
        if ($key = $count-list)
        then 
            if ($item($key) instance of array())
            then replace value of json $item($key) with "ARRAY of " || count(members($item($key)));
            else ();
        else
          if ($key = $replace-value-list)
          then replace value of json $item($key) with "REMOVED";
          else 
              if (schema:schema-type($item($key)) eq xs:QName("xs:decimal"))
              then replace value of json $item($key) with xs:decimal(fn:format-number(xs:decimal($item($key)), "#,##0.0000000000000"));
              else local:filter($item($key), $replace-value-list, $count-list); 
      }
    }
    else
    { 
      if ($item instance of array())
      then
      { 
        for $member in members($item)
        return local:filter($member, $replace-value-list, $count-list);
      }
      else ();
    }
  };
  $items
};

declare %an:sequential function local:test-values() as item*
{
  variable $actual := parse-json(http-client:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/FactsForReportSchema.jq?_method=POST&aid=0000021344-14-000008&report=FundamentalAccountingConcepts").body.content);
  (: To produce meaningfull diffs for the json object below, use curl -X POST http://secxbrl-dbv5.28.io/v1/_queries/public/test/facts-for-report-schema.jq | python -m json.tool | kate -i and cut a portion of the file without changing it :)
  variable $expected := 
 [
            {
                "ArcName": "link:presentationArc", 
                "ArcRole": "http://www.xbrl.org/2003/arcrole/parent-child", 
                "CyclesAllowed": "undirected", 
                "Generator": "WebFilings", 
                "Kind": "InterConceptTreeNetwork", 
                "LinkName": "link:presentationLink", 
                "LinkRole": "http://xbrl.io/fundamental-accounting-concepts", 
                "ShortName": "Presentation", 
                "Trees": {
                    "fac:FundamentalAccountingConceptsLineItems": {
                        "Facts": [], 
                        "Id": "REMOVED", 
                        "IsAbstract": true, 
                        "Label": "Fundamental Accounting Concepts [Line Items]", 
                        "Name": "fac:FundamentalAccountingConceptsLineItems", 
                        "To": {
                            "fac:FundamentalAccountingConceptsHierarchy": {
                                "Facts": [], 
                                "Id": "REMOVED", 
                                "IsAbstract": true, 
                                "Label": "Fundamental Accounting Concepts [Hierarchy]", 
                                "Name": "fac:FundamentalAccountingConceptsHierarchy", 
                                "To": {
                                    "fac:BalanceSheetHierarchy": {
                                        "Facts": [], 
                                        "Id": "REMOVED", 
                                        "IsAbstract": true, 
                                        "Label": "Balance Sheet [Hierarchy]", 
                                        "Name": "fac:BalanceSheetHierarchy", 
                                        "To": {
                                            "fac:Assets": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:Assets", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:Assets"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:Assets", 
                                                                    "OutputConcept": "fac:Assets"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:Assets -> us-gaap:Assets", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 90055000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Assets", 
                                                "Name": "fac:Assets", 
                                                "Order": 3
                                            }, 
                                            "fac:CommitmentsAndContingencies": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:CommitmentsAndContingencies", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:CommitmentsAndContingencies"
                                                                }, 
                                                                "Label": "Default fact value", 
                                                                "Message": "fac:CommitmentsAndContingencies = 0", 
                                                                "Type": "xbrl28:default-fact-value"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": 3, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Commitments and Contingencies", 
                                                "Name": "fac:CommitmentsAndContingencies", 
                                                "Order": 7
                                            }, 
                                            "fac:CurrentAssets": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:CurrentAssets", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:AssetsCurrent"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:AssetsCurrent", 
                                                                    "OutputConcept": "fac:CurrentAssets"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:CurrentAssets -> us-gaap:AssetsCurrent", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 31304000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Current Assets", 
                                                "Name": "fac:CurrentAssets", 
                                                "Order": 1
                                            }, 
                                            "fac:CurrentLiabilities": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:CurrentLiabilities", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:LiabilitiesCurrent"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:LiabilitiesCurrent", 
                                                                    "OutputConcept": "fac:CurrentLiabilities"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:CurrentLiabilities -> us-gaap:LiabilitiesCurrent", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 27811000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Current Liabilities", 
                                                "Name": "fac:CurrentLiabilities", 
                                                "Order": 4
                                            }, 
                                            "fac:Equity": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:Equity", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest", 
                                                                    "OutputConcept": "fac:Equity"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:Equity -> us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 33440000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Equity", 
                                                "Name": "fac:Equity", 
                                                "Order": 12
                                            }, 
                                            "fac:EquityAttributableToNoncontrollingInterest": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:EquityAttributableToNoncontrollingInterest", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:MinorityInterest"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:MinorityInterest", 
                                                                    "OutputConcept": "fac:EquityAttributableToNoncontrollingInterest"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:EquityAttributableToNoncontrollingInterest -> us-gaap:MinorityInterest", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 267000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Equity Attributable to Noncontrolling Interest", 
                                                "Name": "fac:EquityAttributableToNoncontrollingInterest", 
                                                "Order": 11
                                            }, 
                                            "fac:EquityAttributableToParent": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:EquityAttributableToParent", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:StockholdersEquity"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:StockholdersEquity", 
                                                                    "OutputConcept": "fac:EquityAttributableToParent"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:EquityAttributableToParent -> us-gaap:StockholdersEquity", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 33173000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Equity Attributable to Parent", 
                                                "Name": "fac:EquityAttributableToParent", 
                                                "Order": 10
                                            }, 
                                            "fac:Liabilities": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:Liabilities", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:Liabilities"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Liabilities", 
                                                                "Message": "fac:Liabilities[56,615,000,000 USD] = fac:LiabilitiesAndEquity[90,055,000,000 USD] -  ( CommitmentsAndContingencies[0] + TemporaryEquity[0] + fac:Equity[33,440,000,000 USD] )", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 56615000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Liabilities", 
                                                "Name": "fac:Liabilities", 
                                                "Order": 6
                                            }, 
                                            "fac:LiabilitiesAndEquity": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:LiabilitiesAndEquity", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:LiabilitiesAndStockholdersEquity"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:LiabilitiesAndStockholdersEquity", 
                                                                    "OutputConcept": "fac:LiabilitiesAndEquity"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:LiabilitiesAndEquity -> us-gaap:LiabilitiesAndStockholdersEquity", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 90055000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Liabilities and Equity", 
                                                "Name": "fac:LiabilitiesAndEquity", 
                                                "Order": 13
                                            }, 
                                            "fac:NoncurrentAssets": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NoncurrentAssets", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NoncurrentAssets"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Noncurrent Assets", 
                                                                "Message": "fac:NoncurrentAssets[58,751,000,000 USD] = fac:Assets[90,055,000,000 USD] - fac:CurrentAssets[31,304,000,000 USD]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 58751000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Noncurrent Assets", 
                                                "Name": "fac:NoncurrentAssets", 
                                                "Order": 2
                                            }, 
                                            "fac:NoncurrentLiabilities": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NoncurrentLiabilities", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NoncurrentLiabilities"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Noncurrent Liabilities", 
                                                                "Message": "fac:NoncurrentLiabilities[28,804,000,000 USD] = fac:Liabilities[56,615,000,000 USD] - fac:CurrentLiabilities[27,811,000,000 USD]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 28804000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Noncurrent Liabilities", 
                                                "Name": "fac:NoncurrentLiabilities", 
                                                "Order": 5
                                            }, 
                                            "fac:RedeemableNoncontrollingInterest": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:RedeemableNoncontrollingInterest", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:RedeemableNoncontrollingInterest"
                                                                }, 
                                                                "Label": "Default fact value", 
                                                                "Message": "fac:RedeemableNoncontrollingInterest = 0", 
                                                                "Type": "xbrl28:default-fact-value"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": 3, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Redeemable Noncontrolling Interest", 
                                                "Name": "fac:RedeemableNoncontrollingInterest", 
                                                "Order": 9
                                            }, 
                                            "fac:TemporaryEquity": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:TemporaryEquity", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:TemporaryEquity"
                                                                }, 
                                                                "Label": "Default fact value", 
                                                                "Message": "fac:TemporaryEquity = 0", 
                                                                "Type": "xbrl28:default-fact-value"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": 3, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Temporary Equity", 
                                                "Name": "fac:TemporaryEquity", 
                                                "Order": 8
                                            }
                                        }
                                    }, 
                                    "fac:CashFlowStatementHierarchy": {
                                        "Facts": [], 
                                        "Id": "REMOVED", 
                                        "IsAbstract": true, 
                                        "Label": "Cash Flow Statement [Hierarchy]", 
                                        "Name": "fac:CashFlowStatementHierarchy", 
                                        "To": {
                                            "fac:ExchangeGainsLosses": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:ExchangeGainsLosses", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents", 
                                                                    "OutputConcept": "fac:ExchangeGainsLosses"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:ExchangeGainsLosses -> us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": -611000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Exchange Gains (Losses)", 
                                                "Name": "fac:ExchangeGainsLosses", 
                                                "Order": 12
                                            }, 
                                            "fac:NetCashFlow": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlow", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease", 
                                                                    "OutputConcept": "fac:NetCashFlow"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:NetCashFlow -> us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 1972000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Cash Flow", 
                                                "Name": "fac:NetCashFlow", 
                                                "Order": 13
                                            }, 
                                            "fac:NetCashFlowContinuing": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowContinuing", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetCashFlowContinuing"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Net Cash Flow, Continuing", 
                                                                "Message": "fac:NetCashFlowContinuing[2,583,000,000 USD] = fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] + fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] + fac:NetCashFlowFromFinancingActivitiesContinuing[-3,745,000,000 USD]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 2583000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Cash Flow, Continuing", 
                                                "Name": "fac:NetCashFlowContinuing", 
                                                "Order": 10
                                            }, 
                                            "fac:NetCashFlowDiscontinued": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowDiscontinued", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetCashFlowDiscontinued"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Net Cash Flow, Discontinued", 
                                                                "Message": "fac:NetCashFlowDiscontinued[0 USD] = NetCashFlowFromOperatingActivitiesDiscontinued[0] + NetCashFlowFromInvestingActivitiesDiscontinued[0] + fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Cash Flow, Discontinued", 
                                                "Name": "fac:NetCashFlowDiscontinued", 
                                                "Order": 11
                                            }, 
                                            "fac:NetCashFlowFromFinancingActivities": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowFromFinancingActivities", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:NetCashProvidedByUsedInFinancingActivities"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:NetCashProvidedByUsedInFinancingActivities", 
                                                                    "OutputConcept": "fac:NetCashFlowFromFinancingActivities"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:NetCashFlowFromFinancingActivities -> us-gaap:NetCashProvidedByUsedInFinancingActivities", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": -3745000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Cash Flow from Financing Activities", 
                                                "Name": "fac:NetCashFlowFromFinancingActivities", 
                                                "Order": 9
                                            }, 
                                            "fac:NetCashFlowFromFinancingActivitiesContinuing": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowFromFinancingActivitiesContinuing", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetCashFlowFromFinancingActivitiesContinuing"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Net Cash Flow from Financing Activities, Continuing", 
                                                                "Message": "fac:NetCashFlowFromFinancingActivitiesContinuing[-3,745,000,000 USD] = fac:NetCashFlowFromFinancingActivities[-3,745,000,000 USD] - fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": -3745000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Cash Flow from Financing Activities, Continuing", 
                                                "Name": "fac:NetCashFlowFromFinancingActivitiesContinuing", 
                                                "Order": 7
                                            }, 
                                            "fac:NetCashFlowFromFinancingActivitiesDiscontinued": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowFromFinancingActivitiesDiscontinued", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetCashFlowFromFinancingActivitiesDiscontinued"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Net Cash Flow from Financing Activities, Discontinued", 
                                                                "Message": "fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD] = 0", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Cash Flow from Financing Activities, Discontinued", 
                                                "Name": "fac:NetCashFlowFromFinancingActivitiesDiscontinued", 
                                                "Order": 8
                                            }, 
                                            "fac:NetCashFlowFromInvestingActivities": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowFromInvestingActivities", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:NetCashProvidedByUsedInInvestingActivities"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:NetCashProvidedByUsedInInvestingActivities", 
                                                                    "OutputConcept": "fac:NetCashFlowFromInvestingActivities"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:NetCashFlowFromInvestingActivities -> us-gaap:NetCashProvidedByUsedInInvestingActivities", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": -4214000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Cash Flow from Investing Activities", 
                                                "Name": "fac:NetCashFlowFromInvestingActivities", 
                                                "Order": 6
                                            }, 
                                            "fac:NetCashFlowFromInvestingActivitiesContinuing": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowFromInvestingActivitiesContinuing", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetCashFlowFromInvestingActivitiesContinuing"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Net Cash Flow from Investing Activities, Continuing", 
                                                                "Message": "fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] = fac:NetCashFlowFromInvestingActivities[-4,214,000,000 USD] - NetCashFlowFromInvestingActivitiesDiscontinued[0]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": -4214000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Cash Flow from Investing Activities, Continuing", 
                                                "Name": "fac:NetCashFlowFromInvestingActivitiesContinuing", 
                                                "Order": 4
                                            }, 
                                            "fac:NetCashFlowFromInvestingActivitiesDiscontinued": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowFromInvestingActivitiesDiscontinued", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetCashFlowFromInvestingActivitiesDiscontinued"
                                                                }, 
                                                                "Label": "Default fact value", 
                                                                "Message": "fac:NetCashFlowFromInvestingActivitiesDiscontinued = 0", 
                                                                "Type": "xbrl28:default-fact-value"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 3, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Cash Flow from Investing Activities, Discontinued", 
                                                "Name": "fac:NetCashFlowFromInvestingActivitiesDiscontinued", 
                                                "Order": 5
                                            }, 
                                            "fac:NetCashFlowFromOperatingActivities": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowFromOperatingActivities", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:NetCashProvidedByUsedInOperatingActivities"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:NetCashProvidedByUsedInOperatingActivities", 
                                                                    "OutputConcept": "fac:NetCashFlowFromOperatingActivities"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:NetCashFlowFromOperatingActivities -> us-gaap:NetCashProvidedByUsedInOperatingActivities", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 10542000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Cash Flow from Operating Activities", 
                                                "Name": "fac:NetCashFlowFromOperatingActivities", 
                                                "Order": 3
                                            }, 
                                            "fac:NetCashFlowFromOperatingActivitiesContinuing": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowFromOperatingActivitiesContinuing", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetCashFlowFromOperatingActivitiesContinuing"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Net Cash Flow from Operating Activities, Continuing", 
                                                                "Message": "fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] = fac:NetCashFlowFromOperatingActivities[10,542,000,000 USD] - NetCashFlowFromOperatingActivitiesDiscontinued[0]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 10542000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Cash Flow from Operating Activities, Continuing", 
                                                "Name": "fac:NetCashFlowFromOperatingActivitiesContinuing", 
                                                "Order": 1
                                            }, 
                                            "fac:NetCashFlowFromOperatingActivitiesDiscontinued": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowFromOperatingActivitiesDiscontinued", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetCashFlowFromOperatingActivitiesDiscontinued"
                                                                }, 
                                                                "Label": "Default fact value", 
                                                                "Message": "fac:NetCashFlowFromOperatingActivitiesDiscontinued = 0", 
                                                                "Type": "xbrl28:default-fact-value"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 3, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Cash Flow from Operating Activities, Discontinued", 
                                                "Name": "fac:NetCashFlowFromOperatingActivitiesDiscontinued", 
                                                "Order": 2
                                            }
                                        }
                                    }, 
                                    "fac:GeneralInformationHierarchy": {
                                        "Facts": [], 
                                        "Id": "REMOVED", 
                                        "IsAbstract": true, 
                                        "Label": "General Information [Hierarchy]", 
                                        "Name": "fac:GeneralInformationHierarchy", 
                                        "To": {
                                            "fac:BalanceSheetDate": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:BalanceSheetDate", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "xbrl:NonNumeric"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "xbrl:Unit", 
                                                                    "Member": "xbrl:NonNumeric", 
                                                                    "OutputConcept": "dei:DocumentPeriodEndDate"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "dei:DocumentPeriodEndDate"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "dei:DocumentPeriodEndDate", 
                                                                    "OutputConcept": "fac:BalanceSheetDate"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:BalanceSheetDate -> dei:DocumentPeriodEndDate", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "DataType": "xbrli:dateItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NonNumericValue", 
                                                        "Value": "2013-12-31", 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Balance Sheet Date", 
                                                "Name": "fac:BalanceSheetDate"
                                            }, 
                                            "fac:BalanceSheetFormat": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:BalanceSheetFormat", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "xbrl:NonNumeric"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:BalanceSheetFormat"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Balance Sheet Format imputation", 
                                                                "Message": "fac:BalanceSheetFormat[Classified] = Classified (because fac:CurrentAssets[31,304,000,000 USD], fac:NoncurrentAssets[58,751,000,000 USD], fac:NoncurrentLiabilities[28,804,000,000 USD], fac:CurrentLiabilities[27,811,000,000 USD])", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "DataType": "dei:submissionTypeItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NonNumericValue", 
                                                        "Value": "Classified", 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Balance Sheet Format", 
                                                "Name": "fac:BalanceSheetFormat"
                                            }, 
                                            "fac:DocumentType": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:DocumentType", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "xbrl:NonNumeric"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "xbrl:Unit", 
                                                                    "Member": "xbrl:NonNumeric", 
                                                                    "OutputConcept": "dei:DocumentType"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "dei:DocumentType"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "dei:DocumentType", 
                                                                    "OutputConcept": "fac:DocumentType"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:DocumentType -> dei:DocumentType", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "DataType": "dei:submissionTypeItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NonNumericValue", 
                                                        "Value": "10-K", 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Document Type", 
                                                "Name": "fac:DocumentType"
                                            }, 
                                            "fac:EntityCentralIndexKey": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:EntityCentralIndexKey", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "xbrl:NonNumeric"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "xbrl:Unit", 
                                                                    "Member": "xbrl:NonNumeric", 
                                                                    "OutputConcept": "dei:EntityCentralIndexKey"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "dei:EntityCentralIndexKey"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "dei:EntityCentralIndexKey", 
                                                                    "OutputConcept": "fac:EntityCentralIndexKey"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:EntityCentralIndexKey -> dei:EntityCentralIndexKey", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "DataType": "dei:centralIndexKeyItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NonNumericValue", 
                                                        "Value": "0000021344", 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Central Index Key (CIK)", 
                                                "Name": "fac:EntityCentralIndexKey"
                                            }, 
                                            "fac:EntityFilerCategory": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:EntityFilerCategory", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "xbrl:NonNumeric"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "xbrl:Unit", 
                                                                    "Member": "xbrl:NonNumeric", 
                                                                    "OutputConcept": "dei:EntityFilerCategory"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "dei:EntityFilerCategory"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "dei:EntityFilerCategory", 
                                                                    "OutputConcept": "fac:EntityFilerCategory"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:EntityFilerCategory -> dei:EntityFilerCategory", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "DataType": "dei:filerCategoryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NonNumericValue", 
                                                        "Value": "Large Accelerated Filer", 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Entity Filer Category", 
                                                "Name": "fac:EntityFilerCategory"
                                            }, 
                                            "fac:EntityRegistrantName": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:EntityRegistrantName", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "xbrl:NonNumeric"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "xbrl:Unit", 
                                                                    "Member": "xbrl:NonNumeric", 
                                                                    "OutputConcept": "dei:EntityRegistrantName"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "dei:EntityRegistrantName"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "dei:EntityRegistrantName", 
                                                                    "OutputConcept": "fac:EntityRegistrantName"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:EntityRegistrantName -> dei:EntityRegistrantName", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "DataType": "xbrli:normalizedStringItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NonNumericValue", 
                                                        "Value": "COCA COLA CO", 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Entity Registrant Name", 
                                                "Name": "fac:EntityRegistrantName"
                                            }, 
                                            "fac:FiscalPeriod": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:FiscalPeriod", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "xbrl:NonNumeric"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "xbrl:Unit", 
                                                                    "Member": "xbrl:NonNumeric", 
                                                                    "OutputConcept": "dei:DocumentFiscalPeriodFocus"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "dei:DocumentFiscalPeriodFocus"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "dei:DocumentFiscalPeriodFocus", 
                                                                    "OutputConcept": "fac:FiscalPeriod"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:FiscalPeriod -> dei:DocumentFiscalPeriodFocus", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "DataType": "dei:fiscalPeriodItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NonNumericValue", 
                                                        "Value": "FY", 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Fiscal Period", 
                                                "Name": "fac:FiscalPeriod"
                                            }, 
                                            "fac:FiscalYear": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:FiscalYear", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "xbrl:NonNumeric"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "xbrl:Unit", 
                                                                    "Member": "xbrl:NonNumeric", 
                                                                    "OutputConcept": "dei:DocumentFiscalYearFocus"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "dei:DocumentFiscalYearFocus"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "dei:DocumentFiscalYearFocus", 
                                                                    "OutputConcept": "fac:FiscalYear"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:FiscalYear -> dei:DocumentFiscalYearFocus", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "DataType": "xbrli:gYearItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NonNumericValue", 
                                                        "Value": "2013", 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Fiscal Year", 
                                                "Name": "fac:FiscalYear"
                                            }, 
                                            "fac:FiscalYearEnd": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:FiscalYearEnd", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "xbrl:NonNumeric"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "xbrl:Unit", 
                                                                    "Member": "xbrl:NonNumeric", 
                                                                    "OutputConcept": "dei:CurrentFiscalYearEndDate"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "dei:CurrentFiscalYearEndDate"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "dei:CurrentFiscalYearEndDate", 
                                                                    "OutputConcept": "fac:FiscalYearEnd"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:FiscalYearEnd -> dei:CurrentFiscalYearEndDate", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "DataType": "xbrli:gMonthDayItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NonNumericValue", 
                                                        "Value": "--12-31", 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Fiscal Year End", 
                                                "Name": "fac:FiscalYearEnd"
                                            }, 
                                            "fac:IncomeStatementFormat": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:IncomeStatementFormat", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:IncomeStatementFormat"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Income Statement Format imputation", 
                                                                "Message": "fac:IncomeStatementFormat[Multi-step] = Multi-step (because fac:GrossProfit[28,433,000,000 USD], fac:CostOfRevenue[18,421,000,000 USD])", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NonNumericValue", 
                                                        "Value": "Multi-step", 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Income Statement Format", 
                                                "Name": "fac:IncomeStatementFormat"
                                            }, 
                                            "fac:IncomeStatementStartPeriodYearToDate": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:IncomeStatementStartPeriodYearToDate", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:IncomeStatementStartPeriodYearToDate"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Income Statement Start Period imputation", 
                                                                "Message": "fac:IncomeStatementStartPeriodYearToDate[2013-01-01] = facts:duration-for-fact(fac:OperatingIncomeLoss[10,228,000,000 USD]).Start", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NonNumericValue", 
                                                        "Value": "2013-01-01", 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Income Statement Start of Period", 
                                                "Name": "fac:IncomeStatementStartPeriodYearToDate"
                                            }, 
                                            "fac:NatureOfOperations": {
                                                "Facts": [], 
                                                "Id": "REMOVED", 
                                                "Label": "Nature of Operations", 
                                                "Name": "fac:NatureOfOperations"
                                            }, 
                                            "fac:TradingSymbol": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:TradingSymbol", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:TradingSymbol"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "TradingSymbol imputation", 
                                                                "Message": "fac:TradingSymbol[0 USD] = external source", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NonNumericValue", 
                                                        "Value": "ko", 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Trading Symbol", 
                                                "Name": "fac:TradingSymbol"
                                            }
                                        }
                                    }, 
                                    "fac:IncomeStatementHierarchy": {
                                        "Facts": [], 
                                        "Id": "REMOVED", 
                                        "IsAbstract": true, 
                                        "Label": "Income Statement [Hierarchy]", 
                                        "Name": "fac:IncomeStatementHierarchy", 
                                        "To": {
                                            "fac:CostOfRevenue": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:CostOfRevenue", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:CostOfGoodsSold"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:CostOfGoodsSold", 
                                                                    "OutputConcept": "fac:CostOfRevenue"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:CostOfRevenue -> us-gaap:CostOfGoodsSold", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 18421000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Cost of Revenues", 
                                                "Name": "fac:CostOfRevenue", 
                                                "Order": 2
                                            }, 
                                            "fac:CostsAndExpenses": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:CostsAndExpenses", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:CostsAndExpenses"
                                                                }, 
                                                                "Label": "Default fact value", 
                                                                "Message": "fac:CostsAndExpenses = 0", 
                                                                "Type": "xbrl28:default-fact-value"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 3, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Costs and Expenses", 
                                                "Name": "fac:CostsAndExpenses", 
                                                "Order": 5
                                            }, 
                                            "fac:ExtraordinaryItemsOfIncomeExpenseNetOfTax": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:ExtraordinaryItemsOfIncomeExpenseNetOfTax", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:ExtraordinaryItemsOfIncomeExpenseNetOfTax"
                                                                }, 
                                                                "Label": "Default fact value", 
                                                                "Message": "fac:ExtraordinaryItemsOfIncomeExpenseNetOfTax = 0", 
                                                                "Type": "xbrl28:default-fact-value"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 3, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Extraordinary Items of Income (Expense), Net of Tax", 
                                                "Name": "fac:ExtraordinaryItemsOfIncomeExpenseNetOfTax", 
                                                "Order": 18
                                            }, 
                                            "fac:GrossProfit": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:GrossProfit", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:GrossProfit"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:GrossProfit", 
                                                                    "OutputConcept": "fac:GrossProfit"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:GrossProfit -> us-gaap:GrossProfit", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 28433000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Gross Profit", 
                                                "Name": "fac:GrossProfit", 
                                                "Order": 3
                                            }, 
                                            "fac:IncomeLossBeforeEquityMethodInvestments": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:IncomeLossBeforeEquityMethodInvestments", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:IncomeLossBeforeEquityMethodInvestments"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Income (Loss) Before Equity Method Investments", 
                                                                "Message": "fac:IncomeLossBeforeEquityMethodInvestments[10,875,000,000 USD] = fac:IncomeLossFromContinuingOperationsBeforeTax[11,477,000,000 USD] - fac:IncomeLossFromEquityMethodInvestments[602,000,000 USD]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 10875000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Income (Loss) Before Equity Method Investments", 
                                                "Name": "fac:IncomeLossBeforeEquityMethodInvestments", 
                                                "Order": 11
                                            }, 
                                            "fac:IncomeLossFromContinuingOperationsAfterTax": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:IncomeLossFromContinuingOperationsAfterTax", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:IncomeLossFromContinuingOperationsAfterTax"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Income (Loss) from Continuing Operations After Tax", 
                                                                "Message": "fac:IncomeLossFromContinuingOperationsAfterTax[8,626,000,000 USD] = fac:NetIncomeLoss[8,626,000,000 USD] - IncomeLossFromDiscontinuedOperationsNetOfTax[0] - ExtraordinaryItemsOfIncomeExpenseNetOfTax[0]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 8626000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Income (Loss) from Continuing Operations After Tax", 
                                                "Name": "fac:IncomeLossFromContinuingOperationsAfterTax", 
                                                "Order": 16
                                            }, 
                                            "fac:IncomeLossFromContinuingOperationsBeforeTax": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:IncomeLossFromContinuingOperationsBeforeTax", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest", 
                                                                    "OutputConcept": "fac:IncomeLossFromContinuingOperationsBeforeTax"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:IncomeLossFromContinuingOperationsBeforeTax -> us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 11477000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Income (Loss) from Continuing Operations Before Tax", 
                                                "Name": "fac:IncomeLossFromContinuingOperationsBeforeTax", 
                                                "Order": 14
                                            }, 
                                            "fac:IncomeLossFromDiscontinuedOperationsNetOfTax": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:IncomeLossFromDiscontinuedOperationsNetOfTax", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:IncomeLossFromDiscontinuedOperationsNetOfTax"
                                                                }, 
                                                                "Label": "Default fact value", 
                                                                "Message": "fac:IncomeLossFromDiscontinuedOperationsNetOfTax = 0", 
                                                                "Type": "xbrl28:default-fact-value"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 3, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Income (Loss) from Discontinued Operations, Net of Tax", 
                                                "Name": "fac:IncomeLossFromDiscontinuedOperationsNetOfTax", 
                                                "Order": 17
                                            }, 
                                            "fac:IncomeLossFromEquityMethodInvestments": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:IncomeLossFromEquityMethodInvestments", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:IncomeLossFromEquityMethodInvestments"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:IncomeLossFromEquityMethodInvestments", 
                                                                    "OutputConcept": "fac:IncomeLossFromEquityMethodInvestments"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:IncomeLossFromEquityMethodInvestments -> us-gaap:IncomeLossFromEquityMethodInvestments", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 602000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Income (Loss) from Equity Method Investments", 
                                                "Name": "fac:IncomeLossFromEquityMethodInvestments", 
                                                "Order": 12
                                            }, 
                                            "fac:IncomeTaxExpenseBenefit": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:IncomeTaxExpenseBenefit", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:IncomeTaxExpenseBenefit"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:IncomeTaxExpenseBenefit", 
                                                                    "OutputConcept": "fac:IncomeTaxExpenseBenefit"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:IncomeTaxExpenseBenefit -> us-gaap:IncomeTaxExpenseBenefit", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 2851000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Income Tax Expense (Benefit)", 
                                                "Name": "fac:IncomeTaxExpenseBenefit", 
                                                "Order": 15
                                            }, 
                                            "fac:InterestAndDebtExpense": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:InterestAndDebtExpense", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:InterestAndDebtExpense"
                                                                }, 
                                                                "Label": "Default fact value", 
                                                                "Message": "fac:InterestAndDebtExpense = 0", 
                                                                "Type": "xbrl28:default-fact-value"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 3, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Interest and Debt Expense", 
                                                "Name": "fac:InterestAndDebtExpense", 
                                                "Order": 9
                                            }, 
                                            "fac:NetIncomeLoss": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetIncomeLoss", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:ProfitLoss"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:ProfitLoss", 
                                                                    "OutputConcept": "fac:NetIncomeLoss"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:NetIncomeLoss -> us-gaap:ProfitLoss", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 8626000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Income (Loss)", 
                                                "Name": "fac:NetIncomeLoss", 
                                                "Order": 19
                                            }, 
                                            "fac:NetIncomeLossAttributableToNoncontrollingInterest": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetIncomeLossAttributableToNoncontrollingInterest", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest", 
                                                                    "OutputConcept": "fac:NetIncomeLossAttributableToNoncontrollingInterest"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:NetIncomeLossAttributableToNoncontrollingInterest -> us-gaap:NetIncomeLossAttributableToNoncontrollingInterest", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 42000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Income Attributable to Noncontrolling Interest", 
                                                "Name": "fac:NetIncomeLossAttributableToNoncontrollingInterest", 
                                                "Order": 21
                                            }, 
                                            "fac:NetIncomeLossAttributableToParent": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetIncomeLossAttributableToParent", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:NetIncomeLoss"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:NetIncomeLoss", 
                                                                    "OutputConcept": "fac:NetIncomeLossAttributableToParent"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:NetIncomeLossAttributableToParent -> us-gaap:NetIncomeLoss", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 8584000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Income Attributable to Parent", 
                                                "Name": "fac:NetIncomeLossAttributableToParent", 
                                                "Order": 20
                                            }, 
                                            "fac:NetIncomeLossAvailableToCommonStockholdersBasic": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetIncomeLossAvailableToCommonStockholdersBasic"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Net Income (Loss) Available to Common Stockholders, Basic", 
                                                                "Message": "fac:NetIncomeLossAvailableToCommonStockholdersBasic[8,584,000,000 USD] = fac:NetIncomeLossAttributableToParent[8,584,000,000 USD]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 8584000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Income (Loss) Available to Common Stockholders, Basic", 
                                                "Name": "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
                                                "Order": 24
                                            }, 
                                            "fac:NonoperatingIncomeLoss": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NonoperatingIncomeLoss", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NonoperatingIncomeLoss"
                                                                }, 
                                                                "Label": "Default fact value", 
                                                                "Message": "fac:NonoperatingIncomeLoss = 0", 
                                                                "Type": "xbrl28:default-fact-value"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 3, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Nonoperating Income (Loss)", 
                                                "Name": "fac:NonoperatingIncomeLoss", 
                                                "Order": 8
                                            }, 
                                            "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Nonoperating Income (Loss) + Interest and Debt Expense", 
                                                                "Message": "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense[647,000,000 USD] = fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments[1,249,000,000 USD] - fac:IncomeLossFromEquityMethodInvestments[602,000,000 USD]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 647000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Nonoperating Income (Loss) + Interest and Debt Expense", 
                                                "Name": "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                                                "Order": 10
                                            }, 
                                            "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Nonoperating Income (Loss) + Interest and Debt Expense + Income (Loss) from Equity Method Investments", 
                                                                "Message": "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments[1,249,000,000 USD] = fac:IncomeLossFromContinuingOperationsBeforeTax[11,477,000,000 USD] - fac:OperatingIncomeLoss[10,228,000,000 USD]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 1249000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Nonoperating Income (Loss) + Interest and Debt Expense + Income (Loss) from Equity Method Investments", 
                                                "Name": "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments", 
                                                "Order": 13
                                            }, 
                                            "fac:OperatingExpenses": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:OperatingExpenses", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:OperatingExpenses"
                                                                }, 
                                                                "Label": "Default fact value", 
                                                                "Message": "fac:OperatingExpenses = 0", 
                                                                "Type": "xbrl28:default-fact-value"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 3, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Operating Expenses", 
                                                "Name": "fac:OperatingExpenses", 
                                                "Order": 4
                                            }, 
                                            "fac:OperatingIncomeLoss": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:OperatingIncomeLoss", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:OperatingIncomeLoss"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:OperatingIncomeLoss", 
                                                                    "OutputConcept": "fac:OperatingIncomeLoss"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:OperatingIncomeLoss -> us-gaap:OperatingIncomeLoss", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 10228000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Operating Income (Loss)", 
                                                "Name": "fac:OperatingIncomeLoss", 
                                                "Order": 7
                                            }, 
                                            "fac:OtherOperatingIncomeExpenses": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:OtherOperatingIncomeExpenses", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:OtherOperatingIncomeExpenses"
                                                                }, 
                                                                "Label": "Default fact value", 
                                                                "Message": "fac:OtherOperatingIncomeExpenses = 0", 
                                                                "Type": "xbrl28:default-fact-value"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 3, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Other Operating Income (Expenses)", 
                                                "Name": "fac:OtherOperatingIncomeExpenses", 
                                                "Order": 6
                                            }, 
                                            "fac:PreferredStockDividendsAndOtherAdjustments": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:PreferredStockDividendsAndOtherAdjustments", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:PreferredStockDividendsAndOtherAdjustments"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Preferred Stock Dividends and Other Adjustments", 
                                                                "Message": "fac:PreferredStockDividendsAndOtherAdjustments[0 USD] = fac:NetIncomeLossAttributableToParent[8,584,000,000 USD] - fac:NetIncomeLossAvailableToCommonStockholdersBasic[8,584,000,000 USD]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Preferred Stock Dividends and Other Adjustments", 
                                                "Name": "fac:PreferredStockDividendsAndOtherAdjustments", 
                                                "Order": 23
                                            }, 
                                            "fac:ResearchAndDevelopment": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:ResearchAndDevelopment", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:ResearchAndDevelopment"
                                                                }, 
                                                                "Label": "Default fact value", 
                                                                "Message": "fac:ResearchAndDevelopment = 0", 
                                                                "Type": "xbrl28:default-fact-value"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 3, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Research and Development", 
                                                "Name": "fac:ResearchAndDevelopment", 
                                                "Order": 22
                                            }, 
                                            "fac:Revenues": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:Revenues", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:SalesRevenueGoodsNet"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:SalesRevenueGoodsNet", 
                                                                    "OutputConcept": "fac:Revenues"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:Revenues -> us-gaap:SalesRevenueGoodsNet", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 46854000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Revenues", 
                                                "Name": "fac:Revenues", 
                                                "Order": 1
                                            }
                                        }
                                    }, 
                                    "fac:KeyRatiosHierarchy": {
                                        "Facts": [], 
                                        "Id": "REMOVED", 
                                        "IsAbstract": true, 
                                        "Label": "Key Ratios [Hierarchy]", 
                                        "Name": "fac:KeyRatiosHierarchy", 
                                        "To": {
                                            "fac:ReturnOnAssets": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:ReturnOnAssets", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:ReturnOnAssets"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Return on Assets (ROA)", 
                                                                "Message": "fac:ReturnOnAssets[0.1 USD] = fac:NetIncomeLoss[8,626,000,000 USD] div fac:Assets[90,055,000,000 USD]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 2, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0.09578590861140414, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Return on Assets (ROA)", 
                                                "Name": "fac:ReturnOnAssets", 
                                                "Order": 1
                                            }, 
                                            "fac:ReturnOnEquity": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:ReturnOnEquity", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:ReturnOnEquity"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Return on Equity (ROE)", 
                                                                "Message": "fac:ReturnOnEquity[0.26 USD] = fac:NetIncomeLoss[8,626,000,000 USD] div fac:Equity[33,440,000,000 USD]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 2, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0.25795454545454544, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Return on Equity (ROE)", 
                                                "Name": "fac:ReturnOnEquity", 
                                                "Order": 4
                                            }, 
                                            "fac:ReturnOnSales": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:ReturnOnSales", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:ReturnOnSales"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Return on Sales (ROS)", 
                                                                "Message": "fac:ReturnOnSales[0.18 USD] = fac:NetIncomeLoss[8,626,000,000 USD] div fac:Revenues[46,854,000,000 USD]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 2, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0.1841038118410381, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Return on Sales (ROS)", 
                                                "Name": "fac:ReturnOnSales", 
                                                "Order": 2
                                            }, 
                                            "fac:SustainableGrowthRate": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:SustainableGrowthRate", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:SustainableGrowthRate"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Sustainable Growth Rate (SGR)", 
                                                                "Message": "fac:SustainableGrowthRate[0.35 USD] =  (  ( fac:NetIncomeLoss[8,626,000,000 USD] div fac:Revenues[46,854,000,000 USD] ) *  ( 1 +  ( fac:Assets[90,055,000,000 USD] - fac:Equity[33,440,000,000 USD] ) div fac:Equity[33,440,000,000 USD] ) ) div  (  ( 1 div  ( fac:Revenues[46,854,000,000 USD] div fac:Assets[90,055,000,000 USD] ) ) -  (  ( fac:NetIncomeLoss[8,626,000,000 USD] div fac:Revenues[46,854,000,000 USD] ) *  ( 1 +  ( fac:Assets[90,055,000,000 USD] - fac:Equity[33,440,000,000 USD] ) div fac:Equity[33,440,000,000 USD] ) ) )", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 2, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0.34762633996937214, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Sustainable Growth Rate (SGR)", 
                                                "Name": "fac:SustainableGrowthRate", 
                                                "Order": 3
                                            }
                                        }
                                    }, 
                                    "fac:StatementComprehensiveIncomeHierarchy": {
                                        "Facts": [], 
                                        "Id": "REMOVED", 
                                        "IsAbstract": true, 
                                        "Label": "Statement of Comprehensive Income [Hierarchy]", 
                                        "Name": "fac:StatementComprehensiveIncomeHierarchy", 
                                        "To": {
                                            "fac:ComprehensiveIncomeLoss": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:ComprehensiveIncomeLoss", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest", 
                                                                    "OutputConcept": "fac:ComprehensiveIncomeLoss"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:ComprehensiveIncomeLoss -> us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 8576000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Comprehensive Income (Loss)", 
                                                "Name": "fac:ComprehensiveIncomeLoss", 
                                                "Order": 3
                                            }, 
                                            "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest", 
                                                                    "OutputConcept": "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest -> us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 39000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Comprehensive Income (Loss) Attributable to Noncontrolling Interest", 
                                                "Name": "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                                                "Order": 5
                                            }, 
                                            "fac:ComprehensiveIncomeLossAttributableToParent": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:ComprehensiveIncomeLossAttributableToParent", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:ComprehensiveIncomeNetOfTax"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:ComprehensiveIncomeNetOfTax", 
                                                                    "OutputConcept": "fac:ComprehensiveIncomeLossAttributableToParent"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:ComprehensiveIncomeLossAttributableToParent -> us-gaap:ComprehensiveIncomeNetOfTax", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 8537000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Comprehensive Income (Loss) Attributable to Parent", 
                                                "Name": "fac:ComprehensiveIncomeLossAttributableToParent", 
                                                "Order": 4
                                            }, 
                                            "fac:NetIncomeLoss": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetIncomeLoss", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "Dimension": "dei:LegalEntityAxis", 
                                                                    "Member": "sec:DefaultLegalEntity", 
                                                                    "OutputConcept": "us-gaap:ProfitLoss"
                                                                }, 
                                                                "Label": "Default dimension value", 
                                                                "Message": "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
                                                                "Type": "xbrl28:dimension-default"
                                                            }, 
                                                            {
                                                                "Data": {
                                                                    "OriginalConcept": "us-gaap:ProfitLoss", 
                                                                    "OutputConcept": "fac:NetIncomeLoss"
                                                                }, 
                                                                "Label": "Concept map", 
                                                                "Message": "fac:NetIncomeLoss -> us-gaap:ProfitLoss", 
                                                                "Type": "xbrl28:concept-maps"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 8626000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:concept-maps"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Net Income (Loss)", 
                                                "Name": "fac:NetIncomeLoss", 
                                                "Order": 1
                                            }, 
                                            "fac:OtherComprehensiveIncomeLoss": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:OtherComprehensiveIncomeLoss", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:OtherComprehensiveIncomeLoss"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Other Comprehensive Income (Loss)", 
                                                                "Message": "fac:OtherComprehensiveIncomeLoss[-50,000,000 USD] = fac:ComprehensiveIncomeLoss[8,576,000,000 USD] - fac:NetIncomeLoss[8,626,000,000 USD]", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": -50000000, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Other Comprehensive Income (Loss)", 
                                                "Name": "fac:OtherComprehensiveIncomeLoss", 
                                                "Order": 2
                                            }
                                        }
                                    }, 
                                    "fac:ValidationStatistics": {
                                        "Facts": [], 
                                        "Id": "REMOVED", 
                                        "IsAbstract": true, 
                                        "Label": "Validation Rule Statistics [Hierarchy]", 
                                        "Name": "fac:ValidationStatistics", 
                                        "To": {
                                            "fac:FailedValidations": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:FailedValidations", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "pure"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:FailedValidations"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Validation Statistics: Passed Validations", 
                                                                "Message": "count(fac:OperatingIncomeLossValidation, fac:OperatingIncomeLossValidation2)", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 0, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 2, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Failing Validations", 
                                                "Name": "fac:FailedValidations"
                                            }, 
                                            "fac:NotApplicableValidations": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NotApplicableValidations", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "pure"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NotApplicableValidations"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Validation Statistics: Validations that couldn't be applied", 
                                                                "Message": "count()", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 0, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 0, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Skipped Validations (unmet preconditions)", 
                                                "Name": "fac:NotApplicableValidations"
                                            }, 
                                            "fac:PassedValidations": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:PassedValidations", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "pure"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:PassedValidations"
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "Validation Statistics: Passed Validations", 
                                                                "Message": "count(fac:AssetsValidation, fac:GrossProfitValidation, fac:ComprehensiveIncomeLossValidation2, fac:ComprehensiveIncomeLossValidation, fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation, fac:NetIncomeLossValidation2, fac:IncomeLossFromContinuingOperationsAfterTaxValidation, fac:IncomeLossFromContinuingOperationsBeforeTaxValidation, fac:IncomeLossBeforeEquityMethodInvestmentsValidation, fac:EquityValidation, fac:NetCashFlowFromFinancingActivitiesValidation, fac:NetCashFlowFromInvestingActivitiesValidation, fac:NetCashFlowFromOperatingActivitiesValidation, fac:LiabilitiesValidation, fac:AssetsValidation2, fac:NetCashFlowDiscontinuedValidation, fac:NetCashFlowContinuingValidation, fac:NetIncomeLossValidation, fac:NetCashFlowValidation, fac:LiabilitiesAndEquityValidation)", 
                                                                "Type": "xbrl28:formula"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": 0, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "NumericValue", 
                                                        "Value": 20, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:formula"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "Passed Validations", 
                                                "Name": "fac:PassedValidations"
                                            }
                                        }
                                    }, 
                                    "fac:Validations": {
                                        "Facts": [], 
                                        "Id": "REMOVED", 
                                        "IsAbstract": true, 
                                        "Label": "Fact Validation Rule Results [Hierarchy]", 
                                        "Name": "fac:Validations", 
                                        "To": {
                                            "fac:AssetsValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:AssetsValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:AssetsValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:Assets"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[BS2] Assets = LiabilitiesAndEquity", 
                                                                "Message": "fac:Assets[90,055,000,000 USD] = fac:LiabilitiesAndEquity[90,055,000,000 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[BS2] Assets = LiabilitiesAndEquity", 
                                                "Name": "fac:AssetsValidation", 
                                                "Order": 2
                                            }, 
                                            "fac:AssetsValidation2": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:AssetsValidation2", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:AssetsValidation2", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:Assets"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[BS3] Assets = CurrentAssets + NoncurrentAssets", 
                                                                "Message": "fac:Assets[90,055,000,000 USD] = fac:CurrentAssets[31,304,000,000 USD] + fac:NoncurrentAssets[58,751,000,000 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[BS3] Assets = CurrentAssets + NoncurrentAssets", 
                                                "Name": "fac:AssetsValidation2", 
                                                "Order": 3
                                            }, 
                                            "fac:ComprehensiveIncomeLossValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:ComprehensiveIncomeLossValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:ComprehensiveIncomeLossValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:ComprehensiveIncomeLoss"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[IS9] ComprehensiveIncomeLoss = ComprehensiveIncomeLossAttributableToParent + ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                                                                "Message": "fac:ComprehensiveIncomeLoss[8,576,000,000 USD] = fac:ComprehensiveIncomeLossAttributableToParent[8,537,000,000 USD] + fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest[39,000,000 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[IS9] ComprehensiveIncomeLoss = ComprehensiveIncomeLossAttributableToParent + ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                                                "Name": "fac:ComprehensiveIncomeLossValidation", 
                                                "Order": 14
                                            }, 
                                            "fac:ComprehensiveIncomeLossValidation2": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:ComprehensiveIncomeLossValidation2", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:ComprehensiveIncomeLossValidation2", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:ComprehensiveIncomeLoss"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[IS10] ComprehensiveIncomeLoss = NetIncomeLoss + OtherComprehensiveIncomeLoss", 
                                                                "Message": "fac:ComprehensiveIncomeLoss[8,576,000,000 USD] = fac:NetIncomeLoss[8,626,000,000 USD] + fac:OtherComprehensiveIncomeLoss[-50,000,000 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[IS10] ComprehensiveIncomeLoss = NetIncomeLoss + OtherComprehensiveIncomeLoss", 
                                                "Name": "fac:ComprehensiveIncomeLossValidation2", 
                                                "Order": 15
                                            }, 
                                            "fac:EquityValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:EquityValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:EquityValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:Equity"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[BS1] Equity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest", 
                                                                "Message": "fac:Equity[33,440,000,000 USD] = fac:EquityAttributableToParent[33,173,000,000 USD] + fac:EquityAttributableToNoncontrollingInterest[267,000,000 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[BS1] Equity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest", 
                                                "Name": "fac:EquityValidation", 
                                                "Order": 1
                                            }, 
                                            "fac:GrossProfitValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:GrossProfitValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:GrossProfitValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:GrossProfit"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[IS1] GrossProfit = Revenues - CostOfRevenue", 
                                                                "Message": "fac:GrossProfit[28,433,000,000 USD] = fac:Revenues[46,854,000,000 USD] - fac:CostOfRevenue[18,421,000,000 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[IS1] GrossProfit = Revenues - CostOfRevenue", 
                                                "Name": "fac:GrossProfitValidation", 
                                                "Order": 6
                                            }, 
                                            "fac:IncomeLossBeforeEquityMethodInvestmentsValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:IncomeLossBeforeEquityMethodInvestmentsValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:IncomeLossBeforeEquityMethodInvestmentsValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:IncomeLossBeforeEquityMethodInvestments"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[IS3] IncomeLossBeforeEquityMethodInvestments = OperatingIncomeLoss + NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                                                                "Message": "fac:IncomeLossBeforeEquityMethodInvestments[10,875,000,000 USD] = fac:OperatingIncomeLoss[10,228,000,000 USD] + fac:NonoperatingIncomeLossPlusInterestAndDebtExpense[647,000,000 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[IS3] IncomeLossBeforeEquityMethodInvestments = OperatingIncomeLoss + NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                                                "Name": "fac:IncomeLossBeforeEquityMethodInvestmentsValidation", 
                                                "Order": 8
                                            }, 
                                            "fac:IncomeLossFromContinuingOperationsAfterTaxValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:IncomeLossFromContinuingOperationsAfterTax"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[IS5] IncomeLossFromContinuingOperationsAfterTax = IncomeLossFromContinuingOperationsBeforeTax - IncomeTaxExpenseBenefit", 
                                                                "Message": "fac:IncomeLossFromContinuingOperationsAfterTax[8,626,000,000 USD] = fac:IncomeLossFromContinuingOperationsBeforeTax[11,477,000,000 USD] - fac:IncomeTaxExpenseBenefit[2,851,000,000 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[IS5] IncomeLossFromContinuingOperationsAfterTax = IncomeLossFromContinuingOperationsBeforeTax - IncomeTaxExpenseBenefit", 
                                                "Name": "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", 
                                                "Order": 10
                                            }, 
                                            "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:IncomeLossFromContinuingOperationsBeforeTax"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[IS4] IncomeLossFromContinuingOperationsBeforeTax = IncomeLossBeforeEquityMethodInvestments + IncomeLossFromEquityMethodInvestments", 
                                                                "Message": "fac:IncomeLossFromContinuingOperationsBeforeTax[11,477,000,000 USD] = fac:IncomeLossBeforeEquityMethodInvestments[10,875,000,000 USD] + fac:IncomeLossFromEquityMethodInvestments[602,000,000 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[IS4] IncomeLossFromContinuingOperationsBeforeTax = IncomeLossBeforeEquityMethodInvestments + IncomeLossFromEquityMethodInvestments", 
                                                "Name": "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", 
                                                "Order": 9
                                            }, 
                                            "fac:LiabilitiesAndEquityValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:LiabilitiesAndEquityValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:LiabilitiesAndEquityValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:LiabilitiesAndEquity"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[BS5] LiabilitiesAndEquity = Liabilities + CommitmentsAndContingencies + TemporaryEquity + Equity", 
                                                                "Message": "fac:LiabilitiesAndEquity[90,055,000,000 USD] = fac:Liabilities[56,615,000,000 USD] + CommitmentsAndContingencies[0] + TemporaryEquity[0] + fac:Equity[33,440,000,000 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[BS5] LiabilitiesAndEquity = Liabilities + CommitmentsAndContingencies + TemporaryEquity + Equity", 
                                                "Name": "fac:LiabilitiesAndEquityValidation", 
                                                "Order": 5
                                            }, 
                                            "fac:LiabilitiesValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:LiabilitiesValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:LiabilitiesValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:Liabilities"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[BS4] Liabilities = CurrentLiabilities + NoncurrentLiabilities", 
                                                                "Message": "fac:Liabilities[56,615,000,000 USD] = fac:CurrentLiabilities[27,811,000,000 USD] + fac:NoncurrentLiabilities[28,804,000,000 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "instant"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[BS4] Liabilities = CurrentLiabilities + NoncurrentLiabilities", 
                                                "Name": "fac:LiabilitiesValidation", 
                                                "Order": 4
                                            }, 
                                            "fac:NetCashFlowContinuingValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowContinuingValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetCashFlowContinuingValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:NetCashFlowContinuing"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[CF2] NetCashFlowContinuing = NetCashFlowFromOperatingActivitiesContinuing + NetCashFlowFromInvestingActivitiesContinuing + NetCashFlowFromFinancingActivitiesContinuing", 
                                                                "Message": "fac:NetCashFlowContinuing[2,583,000,000 USD] = fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] + fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] + fac:NetCashFlowFromFinancingActivitiesContinuing[-3,745,000,000 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[CF2] NetCashFlowContinuing = NetCashFlowFromOperatingActivitiesContinuing + NetCashFlowFromInvestingActivitiesContinuing + NetCashFlowFromFinancingActivitiesContinuing", 
                                                "Name": "fac:NetCashFlowContinuingValidation", 
                                                "Order": 18
                                            }, 
                                            "fac:NetCashFlowDiscontinuedValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowDiscontinuedValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetCashFlowDiscontinuedValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:NetCashFlowDiscontinued"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[CF3] NetCashFlowDiscontinued = NetCashFlowFromOperatingActivitiesDiscontinued + NetCashFlowFromInvestingActivitiesDiscontinued + NetCashFlowFromFinancingActivitiesDiscontinued", 
                                                                "Message": "fac:NetCashFlowDiscontinued[0 USD] = NetCashFlowFromOperatingActivitiesDiscontinued[0] + NetCashFlowFromInvestingActivitiesDiscontinued[0] + fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[CF3] NetCashFlowDiscontinued = NetCashFlowFromOperatingActivitiesDiscontinued + NetCashFlowFromInvestingActivitiesDiscontinued + NetCashFlowFromFinancingActivitiesDiscontinued", 
                                                "Name": "fac:NetCashFlowDiscontinuedValidation", 
                                                "Order": 19
                                            }, 
                                            "fac:NetCashFlowFromFinancingActivitiesValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowFromFinancingActivitiesValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetCashFlowFromFinancingActivitiesValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:NetCashFlowFromFinancingActivities"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[CF6] NetCashFlowFromFinancingActivities = NetCashFlowFromFinancingActivitiesContinuing + NetCashFlowFromFinancingActivitiesDiscontinued", 
                                                                "Message": "fac:NetCashFlowFromFinancingActivities[-3,745,000,000 USD] = fac:NetCashFlowFromFinancingActivitiesContinuing[-3,745,000,000 USD] + fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[CF6] NetCashFlowFromFinancingActivities = NetCashFlowFromFinancingActivitiesContinuing + NetCashFlowFromFinancingActivitiesDiscontinued", 
                                                "Name": "fac:NetCashFlowFromFinancingActivitiesValidation", 
                                                "Order": 22
                                            }, 
                                            "fac:NetCashFlowFromInvestingActivitiesValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowFromInvestingActivitiesValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetCashFlowFromInvestingActivitiesValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:NetCashFlowFromInvestingActivities"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[CF5] NetCashFlowFromInvestingActivities = NetCashFlowFromInvestingActivitiesContinuing + NetCashFlowFromInvestingActivitiesDiscontinued", 
                                                                "Message": "fac:NetCashFlowFromInvestingActivities[-4,214,000,000 USD] = fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] + NetCashFlowFromInvestingActivitiesDiscontinued[0]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[CF5] NetCashFlowFromInvestingActivities = NetCashFlowFromInvestingActivitiesContinuing + NetCashFlowFromInvestingActivitiesDiscontinued", 
                                                "Name": "fac:NetCashFlowFromInvestingActivitiesValidation", 
                                                "Order": 21
                                            }, 
                                            "fac:NetCashFlowFromOperatingActivitiesValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowFromOperatingActivitiesValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetCashFlowFromOperatingActivitiesValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:NetCashFlowFromOperatingActivities"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[CF4] NetCashFlowFromOperatingActivities = NetCashFlowFromOperatingActivitiesContinuing + NetCashFlowFromOperatingActivitiesDiscontinued", 
                                                                "Message": "fac:NetCashFlowFromOperatingActivities[10,542,000,000 USD] = fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] + NetCashFlowFromOperatingActivitiesDiscontinued[0]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[CF4] NetCashFlowFromOperatingActivities = NetCashFlowFromOperatingActivitiesContinuing + NetCashFlowFromOperatingActivitiesDiscontinued", 
                                                "Name": "fac:NetCashFlowFromOperatingActivitiesValidation", 
                                                "Order": 20
                                            }, 
                                            "fac:NetCashFlowValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetCashFlowValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetCashFlowValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:NetCashFlow"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[CF1] NetCashFlow = NetCashFlowFromOperatingActivities + NetCashFlowFromInvestingActivities + NetCashFlowFromFinancingActivities [+ ExchangeGainsLosses]", 
                                                                "Message": "fac:NetCashFlow[1,972,000,000 USD] = fac:NetCashFlowFromOperatingActivities[10,542,000,000 USD] + fac:NetCashFlowFromInvestingActivities[-4,214,000,000 USD] + fac:NetCashFlowFromFinancingActivities[-3,745,000,000 USD] + fac:ExchangeGainsLosses[-611,000,000 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "DEBIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[CF1] NetCashFlow = NetCashFlowFromOperatingActivities + NetCashFlowFromInvestingActivities + NetCashFlowFromFinancingActivities [+ ExchangeGainsLosses]", 
                                                "Name": "fac:NetCashFlowValidation", 
                                                "Order": 17
                                            }, 
                                            "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:NetIncomeLossAvailableToCommonStockholdersBasic"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[IS8] NetIncomeLossAvailableToCommonStockholdersBasic = NetIncomeLossAttributableToParent - PreferredStockDividendsAndOtherAdjustments", 
                                                                "Message": "fac:NetIncomeLossAvailableToCommonStockholdersBasic[8,584,000,000 USD] = fac:NetIncomeLossAttributableToParent[8,584,000,000 USD] - fac:PreferredStockDividendsAndOtherAdjustments[0 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[IS8] NetIncomeLossAvailableToCommonStockholdersBasic = NetIncomeLossAttributableToParent - PreferredStockDividendsAndOtherAdjustments", 
                                                "Name": "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", 
                                                "Order": 13
                                            }, 
                                            "fac:NetIncomeLossValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetIncomeLossValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetIncomeLossValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:NetIncomeLoss"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[IS6] NetIncomeLoss = IncomeLossFromContinuingOperationsAfterTax + IncomeLossFromDiscontinuedOperationsNetOfTax + ExtraordinaryItemsOfIncomeExpenseNetOfTax", 
                                                                "Message": "fac:NetIncomeLoss[8,626,000,000 USD] = fac:IncomeLossFromContinuingOperationsAfterTax[8,626,000,000 USD] + IncomeLossFromDiscontinuedOperationsNetOfTax[0] + ExtraordinaryItemsOfIncomeExpenseNetOfTax[0]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[IS6] NetIncomeLoss = IncomeLossFromContinuingOperationsAfterTax + IncomeLossFromDiscontinuedOperationsNetOfTax + ExtraordinaryItemsOfIncomeExpenseNetOfTax", 
                                                "Name": "fac:NetIncomeLossValidation", 
                                                "Order": 11
                                            }, 
                                            "fac:NetIncomeLossValidation2": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:NetIncomeLossValidation2", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:NetIncomeLossValidation2", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:NetIncomeLoss"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[IS7] NetIncomeLoss = NetIncomeLossAttributableToParent + NetIncomeLossAttributableToNoncontrollingInterest", 
                                                                "Message": "fac:NetIncomeLoss[8,626,000,000 USD] = fac:NetIncomeLossAttributableToParent[8,584,000,000 USD] + fac:NetIncomeLossAttributableToNoncontrollingInterest[42,000,000 USD]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": true, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[IS7] NetIncomeLoss = NetIncomeLossAttributableToParent + NetIncomeLossAttributableToNoncontrollingInterest", 
                                                "Name": "fac:NetIncomeLossValidation2", 
                                                "Order": 12
                                            }, 
                                            "fac:OperatingIncomeLossValidation": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:OperatingIncomeLossValidation", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:OperatingIncomeLossValidation", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:OperatingIncomeLoss"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[IS2] OperatingIncomeLoss = GrossProfit - OperatingExpenses + OtherOperatingIncomeExpenses", 
                                                                "Message": "fac:OperatingIncomeLoss[10,228,000,000 USD] = fac:GrossProfit[28,433,000,000 USD] - OperatingExpenses[0] + OtherOperatingIncomeExpenses[0]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": false, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[IS2] OperatingIncomeLoss = GrossProfit - OperatingExpenses + OtherOperatingIncomeExpenses", 
                                                "Name": "fac:OperatingIncomeLossValidation", 
                                                "Order": 7
                                            }, 
                                            "fac:OperatingIncomeLossValidation2": {
                                                "Facts": [
                                                    {
                                                        "Aspects": {
                                                            "dei:LegalEntityAxis": "sec:DefaultLegalEntity", 
                                                            "sec:Accepted": "20140227132423", 
                                                            "sec:Archive": "0000021344-14-000008", 
                                                            "sec:FiscalPeriod": "FY", 
                                                            "sec:FiscalYear": 2013, 
                                                            "xbrl:Concept": "fac:OperatingIncomeLossValidation2", 
                                                            "xbrl:Entity": "http://www.sec.gov/CIK 0000021344", 
                                                            "xbrl:Period": "2013-01-01/2013-12-31", 
                                                            "xbrl:Unit": "iso4217:USD"
                                                        }, 
                                                        "AuditTrails": [
                                                            {
                                                                "Data": {
                                                                    "OutputConcept": "fac:OperatingIncomeLossValidation2", 
                                                                    "ValidatedConcepts": [
                                                                        "fac:OperatingIncomeLoss"
                                                                    ], 
                                                                    "ValidatedFacts": "ARRAY of 0", 
                                                                    "ValidationPassed": null
                                                                }, 
                                                                "Id": "REMOVED", 
                                                                "Label": "[IS11] OperatingIncomeLoss = Revenues - CostsAndExpenses + OtherOperatingIncomeExpenses", 
                                                                "Message": "fac:OperatingIncomeLoss[10,228,000,000 USD] = fac:Revenues[46,854,000,000 USD] - CostsAndExpenses[0] + OtherOperatingIncomeExpenses[0]", 
                                                                "Type": "xbrl28:validation"
                                                            }
                                                        ], 
                                                        "Concept": {
                                                            "Balance": "CREDIT", 
                                                            "DataType": "xbrli:monetaryItemType", 
                                                            "PeriodType": "duration"
                                                        }, 
                                                        "Decimals": -6, 
                                                        "KeyAspects": [
                                                            "xbrl:Concept", 
                                                            "xbrl:Entity", 
                                                            "xbrl:Period", 
                                                            "xbrl:Unit", 
                                                            "sec:Accepted"
                                                        ], 
                                                        "Type": "BooleanValue", 
                                                        "Value": false, 
                                                        "_id": "REMOVED", 
                                                        "xbrl28:Type": "xbrl28:validation"
                                                    }
                                                ], 
                                                "Id": "REMOVED", 
                                                "Label": "[IS11] OperatingIncomeLoss = Revenues - CostsAndExpenses + OtherOperatingIncomeExpenses", 
                                                "Name": "fac:OperatingIncomeLossValidation2", 
                                                "Order": 16
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }, 
                "_id": "REMOVED"
            }
        ];

local:filter($expected, ("Id", "_id", "Order"), ("ValidatedFacts"));
local:filter($actual, ("Id", "_id", "Order"), ("ValidatedFacts"));

variable $expected-facs := local:get-facs($expected);
variable $actual-facs := local:get-facs($actual);

variable $errors := [];
if (count($expected-facs) ne count($actual-facs))
then append json { "number-of-facs": "Expected: " || count($expected-facs) || " Actual: " || count($actual-facs) } into $errors;
else ();

variable $missing-facs := distinct-values($expected-facs("fac")[not($$=$actual-facs("fac"))]);
if ($missing-facs)
then append json {"missing-facs": $missing-facs } into $errors;
else ();

variable $extra-facs := distinct-values($actual-facs("fac")[not($$=$expected-facs("fac"))]);
if ($extra-facs)
then append json {"extra-facs": $extra-facs } into $errors;
else ();

variable $common-facs := distinct-values(($expected-facs("fac"), $actual-facs("fac")));
variable $equal-facs := 0;
for $common-fac in $common-facs
return
{
    variable $expected-fac := $expected-facs[$$.fac eq $common-fac];
    variable $actual-fac := $actual-facs[$$.fac eq $common-fac];
    if (not(empty($expected-fac)) and not(empty($actual-fac)) and deep-equal($expected-fac, $actual-fac)) 
    then $equal-facs := $equal-facs + count($expected-fac);
    else append json
    {
        "different-fac": $common-fac,
        "expected-fac": $expected-fac,
        "actual-fac": $actual-fac
    } into $errors;
}

if (count(members($errors)) eq 0)
then true
else 
{
    append json { "total-facs": count($expected-facs), "equal-facs": $equal-facs } into $errors; 
    $errors
} 
    
};

local:check(
    {
      "coca-cola": local:test-values()
    })