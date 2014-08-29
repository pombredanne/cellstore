import module namespace http-client = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace response = "http://www.28msec.com/modules/http-response";


declare %an:nondeterministic function local:test-facttable($expected as integer, $params as string) as atomic
{
    let $actual as integer := count(parse-json(http-client:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/facttable-for-report.jq?_method=POST" || $params).body.content).FactTable[])
    return if ($actual eq $expected) then true else "false [Actual="||$actual||", Expected="||$expected ||"]"
};


declare %an:sequential function local:check($o as object) as object
{
    if (not(every $k in (keys($o) ! $o.$$) satisfies ($k instance of boolean and $k)))
    then {
            response:status-code(500);
            $o
    } else
            $o
};

declare %an:nondeterministic function local:test-values() as item*
{
  let $actual := { Facttable : parse-json(http-client:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/api/facttable-for-report.jq?_method=POST&ticker=ko&fiscalYear=2013&fiscalPeriod=FY&report=FundamentalAccountingConcepts").body.content).FactTable }
  let $expected := { Facttable : [ {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:Revenues", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 46854000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:SalesRevenueGoodsNet"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:Revenues -> us-gaap:SalesRevenueGoodsNet", 
      "Data" : {
        "OriginalConcept" : "us-gaap:SalesRevenueGoodsNet", 
        "OutputConcept" : "fac:Revenues"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:GrossProfit", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 28433000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:GrossProfit"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:GrossProfit -> us-gaap:GrossProfit", 
      "Data" : {
        "OriginalConcept" : "us-gaap:GrossProfit", 
        "OutputConcept" : "fac:GrossProfit"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:OperatingIncomeLoss", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 10228000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:OperatingIncomeLoss"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:OperatingIncomeLoss -> us-gaap:OperatingIncomeLoss", 
      "Data" : {
        "OriginalConcept" : "us-gaap:OperatingIncomeLoss", 
        "OutputConcept" : "fac:OperatingIncomeLoss"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromInvestingActivities", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : -4214000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:NetCashProvidedByUsedInInvestingActivities"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:NetCashFlowFromInvestingActivities -> us-gaap:NetCashProvidedByUsedInInvestingActivities", 
      "Data" : {
        "OriginalConcept" : "us-gaap:NetCashProvidedByUsedInInvestingActivities", 
        "OutputConcept" : "fac:NetCashFlowFromInvestingActivities"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:Equity", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 33440000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:Equity -> us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest", 
      "Data" : {
        "OriginalConcept" : "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest", 
        "OutputConcept" : "fac:Equity"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromInvestingActivitiesContinuing", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : -4214000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "bc4dacb2-95d1-45e7-8594-2ad4e7f9f8d9", 
      "Type" : "xbrl28:formula", 
      "Label" : "Net Cash Flows from Investing Activities, Continuing", 
      "Message" : "fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] = fac:NetCashFlowFromInvestingActivities[-4,214,000,000 USD] - NetCashFlowsFromInvestingActivitiesDiscontinued[0]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowFromInvestingActivitiesContinuing"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:CostOfRevenue", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 18421000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:CostOfGoodsSold"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:CostOfRevenue -> us-gaap:CostOfGoodsSold", 
      "Data" : {
        "OriginalConcept" : "us-gaap:CostOfGoodsSold", 
        "OutputConcept" : "fac:CostOfRevenue"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromFinancingActivities", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : -3745000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:NetCashProvidedByUsedInFinancingActivities"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:NetCashFlowFromFinancingActivities -> us-gaap:NetCashProvidedByUsedInFinancingActivities", 
      "Data" : {
        "OriginalConcept" : "us-gaap:NetCashProvidedByUsedInFinancingActivities", 
        "OutputConcept" : "fac:NetCashFlowFromFinancingActivities"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromOperatingActivities", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : null, 
    "Type" : "NumericValue", 
    "Value" : 10542000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:NetCashProvidedByUsedInOperatingActivities"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:NetCashFlowFromOperatingActivities -> us-gaap:NetCashProvidedByUsedInOperatingActivities", 
      "Data" : {
        "OriginalConcept" : "us-gaap:NetCashProvidedByUsedInOperatingActivities", 
        "OutputConcept" : "fac:NetCashFlowFromOperatingActivities"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromOperatingActivitiesContinuing", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : null, 
    "Type" : "NumericValue", 
    "Value" : 10542000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "50a01bf0-30ab-4d46-8418-066173dd2e67", 
      "Type" : "xbrl28:formula", 
      "Label" : "Net Cash Flows from Operating Activities, Continuing", 
      "Message" : "fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] = fac:NetCashFlowFromOperatingActivities[10,542,000,000 USD] - NetCashFlowsFromOperatingActivitiesDiscontinued[0]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowFromOperatingActivitiesContinuing"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossBeforeEquityMethodInvestments", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 10875000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "0cf36e1f-fa8d-4007-b083-008c9a2bd589", 
      "Type" : "xbrl28:formula", 
      "Label" : "Income (Loss) Before Equity Method Investments", 
      "Message" : "fac:IncomeLossBeforeEquityMethodInvestments[10,875,000,000 USD] = fac:IncomeLossFromContinuingOperationsBeforeTax[11,477,000,000 USD] - fac:IncomeLossFromEquityMethodInvestments[602,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:IncomeLossBeforeEquityMethodInvestments"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ComprehensiveIncomeLoss", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 8576000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:ComprehensiveIncomeLoss -> us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest", 
      "Data" : {
        "OriginalConcept" : "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest", 
        "OutputConcept" : "fac:ComprehensiveIncomeLoss"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetIncomeLossAttributableToParent", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 8584000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:NetIncomeLoss"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:NetIncomeLossAttributableToParent -> us-gaap:NetIncomeLoss", 
      "Data" : {
        "OriginalConcept" : "us-gaap:NetIncomeLoss", 
        "OutputConcept" : "fac:NetIncomeLossAttributableToParent"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromFinancingActivitiesContinuing", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : -3745000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "74a3bfc8-8ac4-483a-9325-a27fcb1342d6", 
      "Type" : "xbrl28:formula", 
      "Label" : "Net Cash Flows from Financing Activities, Continuing", 
      "Message" : "fac:NetCashFlowFromFinancingActivitiesContinuing[-3,745,000,000 USD] = fac:NetCashFlowFromFinancingActivities[-3,745,000,000 USD] - fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowFromFinancingActivitiesContinuing"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossFromContinuingOperationsBeforeTax", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 11477000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:IncomeLossFromContinuingOperationsBeforeTax -> us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest", 
      "Data" : {
        "OriginalConcept" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest", 
        "OutputConcept" : "fac:IncomeLossFromContinuingOperationsBeforeTax"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromFinancingActivitiesDiscontinued", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "d9bd6917-a92a-497b-a8f1-4d8d6098fcec", 
      "Type" : "xbrl28:formula", 
      "Label" : "Net Cash Flows from Financing Activities, Discontinued", 
      "Message" : "fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD] = 0", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowFromFinancingActivitiesDiscontinued"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:LiabilitiesAndEquity", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 90055000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:LiabilitiesAndStockholdersEquity"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:LiabilitiesAndEquity -> us-gaap:LiabilitiesAndStockholdersEquity", 
      "Data" : {
        "OriginalConcept" : "us-gaap:LiabilitiesAndStockholdersEquity", 
        "OutputConcept" : "fac:LiabilitiesAndEquity"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NoncurrentLiabilities", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 28804000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "4b62d33e-849c-4c4d-8132-844327376bfa", 
      "Type" : "xbrl28:formula", 
      "Label" : "Noncurrent Liabilities", 
      "Message" : "fac:NoncurrentLiabilities[28,804,000,000 USD] = fac:Liabilities[56,615,000,000 USD] - fac:CurrentLiabilities[27,811,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NoncurrentLiabilities"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NoncurrentAssets", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 58751000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "5d5eefb8-d022-44b7-8575-cadd6d377469", 
      "Type" : "xbrl28:formula", 
      "Label" : "Noncurrent Assets", 
      "Message" : "fac:NoncurrentAssets[58,751,000,000 USD] = fac:Assets[90,055,000,000 USD] - fac:CurrentAssets[31,304,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NoncurrentAssets"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:CurrentAssets", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 31304000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:AssetsCurrent"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:CurrentAssets -> us-gaap:AssetsCurrent", 
      "Data" : {
        "OriginalConcept" : "us-gaap:AssetsCurrent", 
        "OutputConcept" : "fac:CurrentAssets"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:AssetsValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "BS2", 
      "Type" : "xbrl28:validation", 
      "Label" : "[BS2] Assets = LiabilitiesAndEquity", 
      "Message" : "fac:AssetsValidation[1 USD] = fac:Assets[90,055,000,000 USD] eq fac:LiabilitiesAndEquity[90,055,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:AssetsValidation", 
        "ValidatedConcepts" : [ "fac:Assets" ], 
        "ValidatedFacts" : [  ], 
        "ValidationPassed" : null
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetIncomeLossValidation2", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "bff72d51-9a37-4333-8132-f734653241c3", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS7] NetIncomeLoss = NetIncomeAttributableToParent + NetIncomeAttributableToNoncontrollingInterest", 
      "Message" : "fac:NetIncomeLossValidation2[1 USD] = fac:NetIncomeLoss[8,626,000,000 USD] = fac:NetIncomeLossAttributableToParent[8,584,000,000 USD] + fac:NetIncomeLossAttributableToNoncontrollingInterest[42,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetIncomeLossValidation2"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ComprehensiveIncomeLossValidation2", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "d8b9213a-f2a0-4e1f-944c-4504f34e2601", 
      "Type" : "xbrl28:validation", 
      "Label" : "ComprehensiveIncome = NetIncomeLoss + OtherComprehensiveIncome", 
      "Message" : "fac:ComprehensiveIncomeLossValidation2[1 USD] = fac:ComprehensiveIncomeLoss[8,576,000,000 USD] = fac:NetIncomeLoss[8,626,000,000 USD] + fac:OtherComprehensiveIncomeLoss[-50,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:ComprehensiveIncomeLossValidation2"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ComprehensiveIncomeLossValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "2f7240a1-d90c-4b2c-8099-8292a938003c", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS9] ComprehensiveIncomeLoss = ComprehensiveIncomeLossAttributableToParent + ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
      "Message" : "fac:ComprehensiveIncomeLossValidation[1 USD] = fac:ComprehensiveIncomeLoss[8,576,000,000 USD] = fac:ComprehensiveIncomeLossAttributableToParent[8,537,000,000 USD] + fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest[39,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:ComprehensiveIncomeLossValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "ed503db5-0b16-44e1-a26a-909036c0d973", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS8] NetIncomeLossAvailableToCommonStockholdersBasic = NetIncomeAttributableToParent - PreferredStockDividendsAndOtherAdjustments", 
      "Message" : "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation[1 USD] = fac:NetIncomeLossAvailableToCommonStockholdersBasic[8,584,000,000 USD] = fac:NetIncomeLossAttributableToParent[8,584,000,000 USD] - fac:PreferredStockDividendsAndOtherAdjustments[0 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:LiabilitiesValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "bcf76a12-17ab-4a7f-9c45-72bf6757e7d6", 
      "Type" : "xbrl28:validation", 
      "Label" : "[BS4] Liabilities = CurrentLiabilities + NoncurrentLiabilities", 
      "Message" : "fac:LiabilitiesValidation[1 USD] = fac:Liabilities[56,615,000,000 USD] = fac:CurrentLiabilities[27,811,000,000 USD] + fac:NoncurrentLiabilities[28,804,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:LiabilitiesValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:AssetsValidation2", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "BS3", 
      "Type" : "xbrl28:validation", 
      "Label" : "[BS3] Assets = CurrentAssets + NoncurrentAssets", 
      "Message" : "fac:AssetsValidation2[1 USD] = fac:Assets[90,055,000,000 USD] eq fac:CurrentAssets[31,304,000,000 USD] + fac:NoncurrentAssets[58,751,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:AssetsValidation2", 
        "ValidatedConcepts" : [ "fac:Assets" ], 
        "ValidatedFacts" : [  ], 
        "ValidationPassed" : null
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:EquityValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "596015db-b6d0-4187-9c8e-688d05428200", 
      "Type" : "xbrl28:validation", 
      "Label" : "[BS1] Equity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest", 
      "Message" : "fac:EquityValidation[1 USD] = fac:Equity[33,440,000,000 USD] = fac:EquityAttributableToParent[33,173,000,000 USD] + fac:EquityAttributableToNoncontrollingInterest[267,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:EquityValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "79277c12-a029-48f6-8247-6024ddda634e", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS5] IncomeLossFromContinuingOperationsAfterTax = IncomeLossFromContinuingOperationsBeforeTax - IncomeTaxExpenseBenefit", 
      "Message" : "fac:IncomeLossFromContinuingOperationsAfterTaxValidation[1 USD] = fac:IncomeLossFromContinuingOperationsAfterTax[8,626,000,000 USD] = fac:IncomeLossFromContinuingOperationsBeforeTax[11,477,000,000 USD] - fac:IncomeTaxExpenseBenefit[2,851,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:IncomeLossFromContinuingOperationsAfterTaxValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "d3ade374-bbe1-48f2-9bab-11e861c8e280", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS4] IncomeLossFromContinuingOperationsBeforeTax = IncomeLossBeforeEquityMethodInvestments + IncomeLossFromEquityMethodInvestments", 
      "Message" : "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation[1 USD] = fac:IncomeLossFromContinuingOperationsBeforeTax[11,477,000,000 USD] = fac:IncomeLossBeforeEquityMethodInvestments[10,875,000,000 USD] + fac:IncomeLossFromEquityMethodInvestments[602,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossBeforeEquityMethodInvestmentsValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "567ba16a-bb93-442e-92df-cc0591ece3cf", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS3] IncomeLossBeforeEquityMethodInvestments = OperatingIncomeLoss + NonoperatingIncomeLossPlusInterestAndDebtExpense", 
      "Message" : "fac:IncomeLossBeforeEquityMethodInvestmentsValidation[1 USD] = fac:IncomeLossBeforeEquityMethodInvestments[10,875,000,000 USD] = fac:OperatingIncomeLoss[10,228,000,000 USD] + fac:NonoperatingIncomeLossPlusInterestAndDebtExpense[647,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:IncomeLossBeforeEquityMethodInvestmentsValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromOperatingActivitiesValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : null, 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "6ef7773f-f52d-4e46-ac92-3e929fcccf8f", 
      "Type" : "xbrl28:validation", 
      "Label" : "[CF4] NetCashFlowsFromOperatingActivities = NetCashFlowsFromOperatingActivitiesContinuing + NetCashFlowsFromOperatingActivitiesDiscontinued", 
      "Message" : "fac:NetCashFlowFromOperatingActivitiesValidation[1 USD] = fac:NetCashFlowFromOperatingActivities[10,542,000,000 USD] = fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] + NetCashFlowsFromOperatingActivitiesDiscontinued[0]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowFromOperatingActivitiesValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:GrossProfitValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "35f3ac47-8b95-4528-9dcf-4f676b5a46d9", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS1] GrossProfit = Revenues - CostOfRevenue", 
      "Message" : "fac:GrossProfitValidation[1 USD] = fac:GrossProfit[28,433,000,000 USD] = fac:Revenues[46,854,000,000 USD] - fac:CostOfRevenue[18,421,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:GrossProfitValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromInvestingActivitiesValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "a6414edd-339b-4d1b-9b45-e8c96802765f", 
      "Type" : "xbrl28:validation", 
      "Label" : "[CF5] NetCashFlowsFromInvestingActivities = NetCashFlowsFromInvestingActivitiesContinuing + NetCashFlowsFromInvestingActivitiesDiscontinued", 
      "Message" : "fac:NetCashFlowFromInvestingActivitiesValidation[1 USD] = fac:NetCashFlowFromInvestingActivities[-4,214,000,000 USD] = fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] + NetCashFlowsFromInvestingActivitiesDiscontinued[0]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowFromInvestingActivitiesValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromFinancingActivitiesValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "bae9a013-4fe6-4186-8ac9-5590e607e231", 
      "Type" : "xbrl28:validation", 
      "Label" : "[CF6] NetCashFlowsFromFinancingActivities = NetCashFlowsFromFinancingActivitiesContinuing + NetCashFlowsFromFinancingActivitiesDiscontinued", 
      "Message" : "fac:NetCashFlowFromFinancingActivitiesValidation[1 USD] = fac:NetCashFlowFromFinancingActivities[-3,745,000,000 USD] = fac:NetCashFlowFromFinancingActivitiesContinuing[-3,745,000,000 USD] + fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowFromFinancingActivitiesValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:OperatingIncomeLossValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "BooleanValue", 
    "Value" : false, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "9adb2318-60b4-4f65-8625-7052642ed3af", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS2] OperatingIncomeLoss = GrossProfit - OperatingExpenses + OtherOperatingIncomeExpenses", 
      "Message" : "fac:OperatingIncomeLossValidation[0 USD] = fac:OperatingIncomeLoss[10,228,000,000 USD] = fac:GrossProfit[28,433,000,000 USD] - OperatingExpenses[0] + OtherOperatingIncomeExpenses[0]", 
      "Data" : {
        "OutputConcept" : "fac:OperatingIncomeLossValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetIncomeLossValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "ca30831b-aded-4749-80d0-3fa0f0715d61", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS6] NetIncomeLoss = IncomeLossFromContinuingOperationsAfterTax + IncomeLossFromDiscontinuedOperationsNetTax + ExtraordinaryItemsIncomeExpenseNetTax", 
      "Message" : "fac:NetIncomeLossValidation[1 USD] = fac:NetIncomeLoss[8,626,000,000 USD] = fac:IncomeLossFromContinuingOperationsAfterTax[8,626,000,000 USD] + IncomeLossFromDiscontinuedOperationsNetTax[0] + ExtraordinaryItemsIncomeExpenseNetTax[0]", 
      "Data" : {
        "OutputConcept" : "fac:NetIncomeLossValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:OperatingIncomeLossValidation2", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "BooleanValue", 
    "Value" : false, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "123b10cf-8f79-416b-8aae-6d30245e3022", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS11] OperatingIncomeLoss = Revenues - CostsAndExpenses + OtherOperatingIncomeExpenses", 
      "Message" : "fac:OperatingIncomeLossValidation2[0 USD] = fac:OperatingIncomeLoss[10,228,000,000 USD] = fac:Revenues[46,854,000,000 USD] - CostsAndExpenses[0] + OtherOperatingIncomeExpenses[0]", 
      "Data" : {
        "OutputConcept" : "fac:OperatingIncomeLossValidation2"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowContinuingValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : null, 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "ea47e896-8d6e-4c8f-8204-1314a74f5e0d", 
      "Type" : "xbrl28:validation", 
      "Label" : "[CF2] NetCashFlowsContinuing = NetCashFlowsFromOperatingActivitiesContinuing + NetCashFlowsFromInvestingActivitiesContinuing + NetCashFlowsFromFinancingActivitiesContinuing", 
      "Message" : "fac:NetCashFlowContinuingValidation[1 USD] = fac:NetCashFlowContinuing[2,583,000,000 USD] = fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] + fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] + fac:NetCashFlowFromFinancingActivitiesContinuing[-3,745,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowContinuingValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowDiscontinuedValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "bb0de66f-42b4-4991-89e8-3b5bace6b67d", 
      "Type" : "xbrl28:validation", 
      "Label" : "[CF3] NetCashFlowsDiscontinued = NetCashFlowsFromOperatingActivitiesDiscontinued + NetCashFlowsFromInvestingActivitiesDiscontinued + NetCashFlowsFromFinancingActivitiesDiscontinued", 
      "Message" : "fac:NetCashFlowDiscontinuedValidation[1 USD] = fac:NetCashFlowDiscontinued[0 USD] = NetCashFlowsFromOperatingActivitiesDiscontinued[0] + NetCashFlowsFromInvestingActivitiesDiscontinued[0] + fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowDiscontinuedValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:LiabilitiesAndEquityValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "bf89caa8-673f-4484-8f42-05204d9fb81a", 
      "Type" : "xbrl28:validation", 
      "Label" : "[BS5] LiabilitiesAndEquity = Liabilities + CommitmentsAndContingencies + TemporaryEquity + Equity", 
      "Message" : "fac:LiabilitiesAndEquityValidation[1 USD] = fac:LiabilitiesAndEquity[90,055,000,000 USD] = fac:Liabilities[56,615,000,000 USD] + CommitmentsAndContingencies[0] + TemporaryEquity[0] + fac:Equity[33,440,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:LiabilitiesAndEquityValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "29aeb472-7cac-4206-a376-204ed63b0bfd", 
      "Type" : "xbrl28:validation", 
      "Label" : "[CF1] NetCashFlows = NetCashFlowsFromOperatingActivities + NetCashFlowsFromInvestingActivities + NetCashFlowsFromFinancingActivities [+ ExchangeGainsLosses]", 
      "Message" : "fac:NetCashFlowValidation[1 USD] = fac:NetCashFlow[1,972,000,000 USD] = fac:NetCashFlowFromOperatingActivities[10,542,000,000 USD] + fac:NetCashFlowFromInvestingActivities[-4,214,000,000 USD] + fac:NetCashFlowFromFinancingActivities[-3,745,000,000 USD] + fac:ExchangeGainsLosses[-611,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowValidation"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:Liabilities", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 56615000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "502dddba-aa21-4b3c-b124-437cf46a9ef5", 
      "Type" : "xbrl28:formula", 
      "Label" : "Liabilities", 
      "Message" : "fac:Liabilities[56,615,000,000 USD] = fac:LiabilitiesAndEquity[90,055,000,000 USD] -  ( CommitmentsAndContingencies[0] + TemporaryEquity[0] + fac:Equity[33,440,000,000 USD] )", 
      "Data" : {
        "OutputConcept" : "fac:Liabilities"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 8584000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "2c454b43-7933-41b8-ad05-a799dad6d4c0", 
      "Type" : "xbrl28:formula", 
      "Label" : "Net Income (Loss) Available to Common Stockholders, Basic", 
      "Message" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic[8,584,000,000 USD] = fac:NetIncomeLossAttributableToParent[8,584,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:EquityAttributableToParent", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 33173000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:StockholdersEquity"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:EquityAttributableToParent -> us-gaap:StockholdersEquity", 
      "Data" : {
        "OriginalConcept" : "us-gaap:StockholdersEquity", 
        "OutputConcept" : "fac:EquityAttributableToParent"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossFromContinuingOperationsAfterTax", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 8626000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "7cf0211d-caad-47bd-81e1-cacd6e288ecc", 
      "Type" : "xbrl28:formula", 
      "Label" : "Income (Loss) from Continuing Operations After Tax", 
      "Message" : "fac:IncomeLossFromContinuingOperationsAfterTax[8,626,000,000 USD] = fac:NetIncomeLoss[8,626,000,000 USD] - IncomeLossFromDiscontinuedOperationsNetTax[0] - ExtraordinaryItemsIncomeExpenseNetTax[0]", 
      "Data" : {
        "OutputConcept" : "fac:IncomeLossFromContinuingOperationsAfterTax"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:TradingSymbol", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NonNumericValue", 
    "Value" : "ko", 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "gi_TradingSymbol", 
      "Type" : "xbrl28:formula", 
      "Label" : "TradingSymbol imputation", 
      "Message" : "fac:TradingSymbol[0 USD] = external source", 
      "Data" : {
        "OutputConcept" : "fac:TradingSymbol"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:PreferredStockDividendsAndOtherAdjustments", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "4b138859-c05a-4715-86d2-5e75cc0ec110", 
      "Type" : "xbrl28:formula", 
      "Label" : "Preferred Stock Dividends and Other Adjustments", 
      "Message" : "fac:PreferredStockDividendsAndOtherAdjustments[0 USD] = fac:NetIncomeLossAttributableToParent[8,584,000,000 USD] - fac:NetIncomeLossAvailableToCommonStockholdersBasic[8,584,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:PreferredStockDividendsAndOtherAdjustments"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:OtherComprehensiveIncomeLoss", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : -50000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "cd07373d-1c26-4278-86e9-9b4715dff5ea", 
      "Type" : "xbrl28:formula", 
      "Label" : "Other Comprehensive Income (Loss)", 
      "Message" : "fac:OtherComprehensiveIncomeLoss[-50,000,000 USD] = fac:ComprehensiveIncomeLoss[8,576,000,000 USD] - fac:NetIncomeLoss[8,626,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:OtherComprehensiveIncomeLoss"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ComprehensiveIncomeLossAttributableToParent", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 8537000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:ComprehensiveIncomeNetOfTax"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:ComprehensiveIncomeLossAttributableToParent -> us-gaap:ComprehensiveIncomeNetOfTax", 
      "Data" : {
        "OriginalConcept" : "us-gaap:ComprehensiveIncomeNetOfTax", 
        "OutputConcept" : "fac:ComprehensiveIncomeLossAttributableToParent"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowContinuing", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : null, 
    "Type" : "NumericValue", 
    "Value" : 2583000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "d7c2ba1a-141f-4035-877b-e4c149478da8", 
      "Type" : "xbrl28:formula", 
      "Label" : "Net Cash Flows, Continuing", 
      "Message" : "fac:NetCashFlowContinuing[2,583,000,000 USD] = fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] + fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] + fac:NetCashFlowFromFinancingActivitiesContinuing[-3,745,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowContinuing"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowDiscontinued", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "260e6e0f-e6f4-48d2-8361-75cbfe04fe75", 
      "Type" : "xbrl28:formula", 
      "Label" : "Net Cash Flows, Discontinued", 
      "Message" : "fac:NetCashFlowDiscontinued[0 USD] = NetCashFlowsFromOperatingActivitiesDiscontinued[0] + NetCashFlowsFromInvestingActivitiesDiscontinued[0] + fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowDiscontinued"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 647000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "ee2117cd-9220-4ee2-a982-33f4074c1ebc", 
      "Type" : "xbrl28:formula", 
      "Label" : "Nonoperating Income (Loss) + Interest and Debt Expense", 
      "Message" : "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense[647,000,000 USD] = fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments[1,249,000,000 USD] - fac:IncomeLossFromEquityMethodInvestments[602,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlow", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 1972000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:NetCashFlow -> us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease", 
      "Data" : {
        "OriginalConcept" : "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease", 
        "OutputConcept" : "fac:NetCashFlow"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 1249000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "6abca1d8-12f9-4b87-b410-9d5d9e9322a3", 
      "Type" : "xbrl28:formula", 
      "Label" : "Nonoperating Income (Loss) + Interest and Debt Expense + Income (Loss) from Equity Method Investments", 
      "Message" : "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments[1,249,000,000 USD] = fac:IncomeLossFromContinuingOperationsBeforeTax[11,477,000,000 USD] - fac:OperatingIncomeLoss[10,228,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeStatementFormat", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NonNumericValue", 
    "Value" : "Multi-step", 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "is_IncomeStatementFormat", 
      "Type" : "xbrl28:formula", 
      "Label" : "Income Statement Format imputation", 
      "Message" : "fac:IncomeStatementFormat[Multi-step] = Multi-step (because fac:GrossProfit[28,433,000,000 USD], fac:CostOfRevenue[18,421,000,000 USD])", 
      "Data" : {
        "OutputConcept" : "fac:IncomeStatementFormat"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ReturnOnEquity", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 0.257954545454545455, 
    "Decimals" : 2, 
    "AuditTrails" : [ {
      "Id" : "fe735813-326b-4f09-a38e-8f80c80e816b", 
      "Type" : "xbrl28:formula", 
      "Label" : "Return on Equity (ROE)", 
      "Message" : "fac:ReturnOnEquity[0.26 USD] = fac:NetIncomeLoss[8,626,000,000 USD] div fac:Equity[33,440,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:ReturnOnEquity"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ReturnOnAssets", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 0.095785908611404142, 
    "Decimals" : 2, 
    "AuditTrails" : [ {
      "Id" : "78e824dc-4b68-4a1b-9aa3-ec51d0f55335", 
      "Type" : "xbrl28:formula", 
      "Label" : "Return on Assets (ROA)", 
      "Message" : "fac:ReturnOnAssets[0.1 USD] = fac:NetIncomeLoss[8,626,000,000 USD] div fac:Assets[90,055,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:ReturnOnAssets"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ReturnOnSales", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 0.184103811841038118, 
    "Decimals" : 2, 
    "AuditTrails" : [ {
      "Id" : "de1806dc-ff91-47a9-a10b-fb631b268ae3", 
      "Type" : "xbrl28:formula", 
      "Label" : "Return on Sales (ROS)", 
      "Message" : "fac:ReturnOnSales[0.18 USD] = fac:NetIncomeLoss[8,626,000,000 USD] div fac:Revenues[46,854,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:ReturnOnSales"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:SustainableGrowthRate", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 0.347626339969372129, 
    "Decimals" : 2, 
    "AuditTrails" : [ {
      "Id" : "9f8da807-3830-485d-8f97-6f77c9b1ab05", 
      "Type" : "xbrl28:formula", 
      "Label" : "Sustainable Growth Rate (SGR)", 
      "Message" : "fac:SustainableGrowthRate[0.35 USD] =  (  ( fac:NetIncomeLoss[8,626,000,000 USD] div fac:Revenues[46,854,000,000 USD] ) *  ( 1 +  ( fac:Assets[90,055,000,000 USD] - fac:Equity[33,440,000,000 USD] ) div fac:Equity[33,440,000,000 USD] ) ) div  (  ( 1 div  ( fac:Revenues[46,854,000,000 USD] div fac:Assets[90,055,000,000 USD] ) ) -  (  ( fac:NetIncomeLoss[8,626,000,000 USD] div fac:Revenues[46,854,000,000 USD] ) *  ( 1 +  ( fac:Assets[90,055,000,000 USD] - fac:Equity[33,440,000,000 USD] ) div fac:Equity[33,440,000,000 USD] ) ) )", 
      "Data" : {
        "OutputConcept" : "fac:SustainableGrowthRate"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:BalanceSheetFormat", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : null, 
    "Type" : "NonNumericValue", 
    "Value" : "Classified", 
    "AuditTrails" : [ {
      "Id" : "bs_BalanceSheetFormat", 
      "Type" : "xbrl28:formula", 
      "Label" : "Balance Sheet Format imputation", 
      "Message" : "fac:BalanceSheetFormat[Classified] = Classified (because fac:CurrentAssets[31,304,000,000 USD], fac:NoncurrentAssets[58,751,000,000 USD], fac:NoncurrentLiabilities[28,804,000,000 USD], fac:CurrentLiabilities[27,811,000,000 USD])", 
      "Data" : {
        "OutputConcept" : "fac:BalanceSheetFormat"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "xbrl:NonNumeric"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeStatementStartPeriodYearToDate", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NonNumericValue", 
    "Value" : "2013-01-01", 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Id" : "gi_IncomeStatementStartPeriod", 
      "Type" : "xbrl28:formula", 
      "Label" : "Income Statement Start Period imputation", 
      "Message" : "fac:IncomeStatementStartPeriodYearToDate[2013-01-01] = facts:duration-for-fact(fac:GrossProfit[28,433,000,000 USD]).Start", 
      "Data" : {
        "OutputConcept" : "fac:IncomeStatementStartPeriodYearToDate"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NotApplicableValidations", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : 0, 
    "AuditTrails" : [ {
      "Id" : null, 
      "Type" : "xbrl28:formula", 
      "Label" : "Validation Statistics: Validations that couldn't be applied", 
      "Message" : "count()", 
      "Data" : {
        "OutputConcept" : "fac:NotApplicableValidations"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "pure"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:FailedValidations", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 2, 
    "Decimals" : 0, 
    "AuditTrails" : [ {
      "Id" : null, 
      "Type" : "xbrl28:formula", 
      "Label" : "Validation Statistics: Passed Validations", 
      "Message" : "count(fac:OperatingIncomeLossValidation, fac:OperatingIncomeLossValidation2)", 
      "Data" : {
        "OutputConcept" : "fac:FailedValidations"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "pure"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:PassedValidations", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 20, 
    "Decimals" : 0, 
    "AuditTrails" : [ {
      "Id" : null, 
      "Type" : "xbrl28:formula", 
      "Label" : "Validation Statistics: Passed Validations", 
      "Message" : "count(fac:AssetsValidation, fac:GrossProfitValidation, fac:ComprehensiveIncomeLossValidation2, fac:ComprehensiveIncomeLossValidation, fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation, fac:NetIncomeLossValidation2, fac:IncomeLossFromContinuingOperationsAfterTaxValidation, fac:IncomeLossFromContinuingOperationsBeforeTaxValidation, fac:IncomeLossBeforeEquityMethodInvestmentsValidation, fac:EquityValidation, fac:NetCashFlowFromFinancingActivitiesValidation, fac:NetCashFlowFromInvestingActivitiesValidation, fac:NetCashFlowFromOperatingActivitiesValidation, fac:LiabilitiesValidation, fac:AssetsValidation2, fac:NetCashFlowDiscontinuedValidation, fac:NetCashFlowContinuingValidation, fac:NetIncomeLossValidation, fac:NetCashFlowValidation, fac:LiabilitiesAndEquityValidation)", 
      "Data" : {
        "OutputConcept" : "fac:PassedValidations"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "pure"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:Assets", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 90055000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:Assets"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:Assets -> us-gaap:Assets", 
      "Data" : {
        "OriginalConcept" : "us-gaap:Assets", 
        "OutputConcept" : "fac:Assets"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:CurrentLiabilities", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 27811000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:LiabilitiesCurrent"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:CurrentLiabilities -> us-gaap:LiabilitiesCurrent", 
      "Data" : {
        "OriginalConcept" : "us-gaap:LiabilitiesCurrent", 
        "OutputConcept" : "fac:CurrentLiabilities"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:EquityAttributableToNoncontrollingInterest", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 267000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:MinorityInterest"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:EquityAttributableToNoncontrollingInterest -> us-gaap:MinorityInterest", 
      "Data" : {
        "OriginalConcept" : "us-gaap:MinorityInterest", 
        "OutputConcept" : "fac:EquityAttributableToNoncontrollingInterest"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossFromEquityMethodInvestments", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 602000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:IncomeLossFromEquityMethodInvestments"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:IncomeLossFromEquityMethodInvestments -> us-gaap:IncomeLossFromEquityMethodInvestments", 
      "Data" : {
        "OriginalConcept" : "us-gaap:IncomeLossFromEquityMethodInvestments", 
        "OutputConcept" : "fac:IncomeLossFromEquityMethodInvestments"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeTaxExpenseBenefit", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 2851000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:IncomeTaxExpenseBenefit"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:IncomeTaxExpenseBenefit -> us-gaap:IncomeTaxExpenseBenefit", 
      "Data" : {
        "OriginalConcept" : "us-gaap:IncomeTaxExpenseBenefit", 
        "OutputConcept" : "fac:IncomeTaxExpenseBenefit"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetIncomeLoss", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "CREDIT", 
    "Type" : "NumericValue", 
    "Value" : 8626000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:ProfitLoss"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:NetIncomeLoss -> us-gaap:ProfitLoss", 
      "Data" : {
        "OriginalConcept" : "us-gaap:ProfitLoss", 
        "OutputConcept" : "fac:NetIncomeLoss"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetIncomeLossAttributableToNoncontrollingInterest", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 42000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:NetIncomeLossAttributableToNoncontrollingInterest -> us-gaap:NetIncomeLossAttributableToNoncontrollingInterest", 
      "Data" : {
        "OriginalConcept" : "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest", 
        "OutputConcept" : "fac:NetIncomeLossAttributableToNoncontrollingInterest"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : 39000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest -> us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest", 
      "Data" : {
        "OriginalConcept" : "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest", 
        "OutputConcept" : "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ExchangeGainsLosses", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : "DEBIT", 
    "Type" : "NumericValue", 
    "Value" : -611000000, 
    "Decimals" : -6, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:ExchangeGainsLosses -> us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents", 
      "Data" : {
        "OriginalConcept" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents", 
        "OutputConcept" : "fac:ExchangeGainsLosses"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:EntityRegistrantName", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : null, 
    "Type" : "NonNumericValue", 
    "Value" : "COCA COLA CO", 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl:NonNumeric", 
        "OutputConcept" : "dei:EntityRegistrantName"
      }
    }, {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "dei:EntityRegistrantName"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:EntityRegistrantName -> dei:EntityRegistrantName", 
      "Data" : {
        "OriginalConcept" : "dei:EntityRegistrantName", 
        "OutputConcept" : "fac:EntityRegistrantName"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "xbrl:NonNumeric"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:EntityCentralIndexKey", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : null, 
    "Type" : "NonNumericValue", 
    "Value" : "0000021344", 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl:NonNumeric", 
        "OutputConcept" : "dei:EntityCentralIndexKey"
      }
    }, {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "dei:EntityCentralIndexKey"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:EntityCentralIndexKey -> dei:EntityCentralIndexKey", 
      "Data" : {
        "OriginalConcept" : "dei:EntityCentralIndexKey", 
        "OutputConcept" : "fac:EntityCentralIndexKey"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "xbrl:NonNumeric"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:EntityFilerCategory", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : null, 
    "Type" : "NonNumericValue", 
    "Value" : "Large Accelerated Filer", 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl:NonNumeric", 
        "OutputConcept" : "dei:EntityFilerCategory"
      }
    }, {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "dei:EntityFilerCategory"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:EntityFilerCategory -> dei:EntityFilerCategory", 
      "Data" : {
        "OriginalConcept" : "dei:EntityFilerCategory", 
        "OutputConcept" : "fac:EntityFilerCategory"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "xbrl:NonNumeric"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:FiscalYearEnd", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : null, 
    "Type" : "NonNumericValue", 
    "Value" : "--12-31", 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl:NonNumeric", 
        "OutputConcept" : "dei:CurrentFiscalYearEndDate"
      }
    }, {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "dei:CurrentFiscalYearEndDate"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:FiscalYearEnd -> dei:CurrentFiscalYearEndDate", 
      "Data" : {
        "OriginalConcept" : "dei:CurrentFiscalYearEndDate", 
        "OutputConcept" : "fac:FiscalYearEnd"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "xbrl:NonNumeric"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:FiscalYear", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : null, 
    "Type" : "NonNumericValue", 
    "Value" : "2013", 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl:NonNumeric", 
        "OutputConcept" : "dei:DocumentFiscalYearFocus"
      }
    }, {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "dei:DocumentFiscalYearFocus"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:FiscalYear -> dei:DocumentFiscalYearFocus", 
      "Data" : {
        "OriginalConcept" : "dei:DocumentFiscalYearFocus", 
        "OutputConcept" : "fac:FiscalYear"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "xbrl:NonNumeric"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:FiscalPeriod", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : null, 
    "Type" : "NonNumericValue", 
    "Value" : "FY", 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl:NonNumeric", 
        "OutputConcept" : "dei:DocumentFiscalPeriodFocus"
      }
    }, {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "dei:DocumentFiscalPeriodFocus"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:FiscalPeriod -> dei:DocumentFiscalPeriodFocus", 
      "Data" : {
        "OriginalConcept" : "dei:DocumentFiscalPeriodFocus", 
        "OutputConcept" : "fac:FiscalPeriod"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "xbrl:NonNumeric"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:DocumentType", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : null, 
    "Type" : "NonNumericValue", 
    "Value" : "10-K", 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl:NonNumeric", 
        "OutputConcept" : "dei:DocumentType"
      }
    }, {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "dei:DocumentType"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:DocumentType -> dei:DocumentType", 
      "Data" : {
        "OriginalConcept" : "dei:DocumentType", 
        "OutputConcept" : "fac:DocumentType"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "xbrl:NonNumeric"
  }, {
    "Aspects" : {
      "sec:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:BalanceSheetDate", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity"
    }, 
    "Archive" : "0000021344-14-000008", 
    "IsInDefaultHypercube" : true, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Profiles" : {
      "SEC" : {
        "Name" : "SEC", 
        "Fiscal" : {
          "Period" : "FY", 
          "Year" : 2013
        }, 
        "DocEndDate" : "2013-12-31", 
        "Accepted" : "20140227132423", 
        "IsExtension" : false
      }
    }, 
    "Balance" : null, 
    "Type" : "NonNumericValue", 
    "Value" : "2013-12-31", 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl:NonNumeric\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl:NonNumeric", 
        "OutputConcept" : "dei:DocumentPeriodEndDate"
      }
    }, {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "dei:LegalEntityAxis.Default = \"sec:DefaultLegalEntity\"", 
      "Data" : {
        "Dimension" : "dei:LegalEntityAxis", 
        "Member" : "sec:DefaultLegalEntity", 
        "OutputConcept" : "dei:DocumentPeriodEndDate"
      }
    }, {
      "Type" : "xbrl28:concept-maps", 
      "Label" : "Concept map", 
      "Message" : "fac:BalanceSheetDate -> dei:DocumentPeriodEndDate", 
      "Data" : {
        "OriginalConcept" : "dei:DocumentPeriodEndDate", 
        "OutputConcept" : "fac:BalanceSheetDate"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "xbrl:NonNumeric"
  } ] }
  return if (deep-equal($actual, $expected)) then true else { actual : $actual, expected : $expected }
};

local:check({
    cocacola: local:test-facttable(82, "&report=FundamentalAccountingConcepts&ticker=ko&fiscalYear=2013&fiscalPeriod=Q1"),
    aid: local:test-facttable(84, "&aid=0001193125-14-157120&report=FundamentalAccountingConcepts"),
    aid2: local:test-facttable(85, "&aid=0000732717-14-000022&report=FundamentalAccountingConcepts"),
    tickerrole: local:test-facttable(844, "&report=FundamentalAccountingConcepts&ticker=ko&fiscalYear=2012&fiscalPeriod=Q1"),
    tickerfyfprole: local:test-facttable(166, "&report=FundamentalAccountingConcepts&ticker=ko&ticker=wmt&fiscalYear=2013&fiscalPeriod=FY"),
    allvalues : local:test-values()
})
