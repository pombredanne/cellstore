{
  "NetworkIdentifier" : "http://secxbrl.info/facts", 
  "TableName" : "xbrl:Facts", 
  "FactTable" : [ {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:AssetsValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "BS2", 
      "Type" : "xbrl28:validation", 
      "Label" : "[BS2] Assets = LiabilitiesAndEquity", 
      "Message" : "fac:Assets[90,055,000,000 USD] = fac:LiabilitiesAndEquity[90,055,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:AssetsValidation", 
        "ValidatedConcepts" : [ "fac:Assets" ], 
        "ValidatedFacts" : [ "c6272bfe-2c41-41b0-8d8b-326e69e3cbee" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:EquityValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "BS1", 
      "Type" : "xbrl28:validation", 
      "Label" : "[BS1] Equity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest", 
      "Message" : "fac:Equity[33,440,000,000 USD] = fac:EquityAttributableToParent[33,173,000,000 USD] + fac:EquityAttributableToNoncontrollingInterest[267,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:EquityValidation", 
        "ValidatedConcepts" : [ "fac:Equity" ], 
        "ValidatedFacts" : [ "b60ea239-1c6c-4da2-8320-0d20e5707213" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:AssetsValidation2", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "BS3", 
      "Type" : "xbrl28:validation", 
      "Label" : "[BS3] Assets = CurrentAssets + NoncurrentAssets", 
      "Message" : "fac:Assets[90,055,000,000 USD] = fac:CurrentAssets[31,304,000,000 USD] + fac:NoncurrentAssets[58,751,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:AssetsValidation2", 
        "ValidatedConcepts" : [ "fac:Assets" ], 
        "ValidatedFacts" : [ "c6272bfe-2c41-41b0-8d8b-326e69e3cbee" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:LiabilitiesValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "BS4", 
      "Type" : "xbrl28:validation", 
      "Label" : "[BS4] Liabilities = CurrentLiabilities + NoncurrentLiabilities", 
      "Message" : "fac:Liabilities[56,615,000,000 USD] = fac:CurrentLiabilities[27,811,000,000 USD] + fac:NoncurrentLiabilities[28,804,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:LiabilitiesValidation", 
        "ValidatedConcepts" : [ "fac:Liabilities" ], 
        "ValidatedFacts" : [ "996d6121-6587-4175-839e-9f86f9900c0e" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:LiabilitiesAndEquityValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "BS5", 
      "Type" : "xbrl28:validation", 
      "Label" : "[BS5] LiabilitiesAndEquity = Liabilities + CommitmentsAndContingencies + TemporaryEquity + Equity", 
      "Message" : "fac:LiabilitiesAndEquity[90,055,000,000 USD] = fac:Liabilities[56,615,000,000 USD] + CommitmentsAndContingencies[0] + TemporaryEquity[0] + fac:Equity[33,440,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:LiabilitiesAndEquityValidation", 
        "ValidatedConcepts" : [ "fac:LiabilitiesAndEquity" ], 
        "ValidatedFacts" : [ "1ef22392-e99a-47f6-aab3-d9aa3852d5f1" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:Assets", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 90055000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:Equity", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 33440000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:CurrentLiabilities", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 27811000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:LiabilitiesAndEquity", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 90055000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:TemporaryEquity", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : 2,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:default-fact-value", 
      "Label" : "Default fact value", 
      "Message" : "fac:TemporaryEquity = 0", 
      "Data" : {
        "OutputConcept" : "fac:TemporaryEquity"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NoncurrentLiabilities", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 28804000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NoncurrentAssets", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 58751000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:CurrentAssets", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 31304000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:Liabilities", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 56615000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:EquityAttributableToNoncontrollingInterest", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 267000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:EquityAttributableToParent", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 33173000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:CommitmentsAndContingencies", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : 2,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:default-fact-value", 
      "Label" : "Default fact value", 
      "Message" : "fac:CommitmentsAndContingencies = 0", 
      "Data" : {
        "OutputConcept" : "fac:CommitmentsAndContingencies"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:RedeemableNoncontrollingInterest", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "instant", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : 2,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "instant", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:default-fact-value", 
      "Label" : "Default fact value", 
      "Message" : "fac:RedeemableNoncontrollingInterest = 0", 
      "Data" : {
        "OutputConcept" : "fac:RedeemableNoncontrollingInterest"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromInvestingActivitiesValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "CF5", 
      "Type" : "xbrl28:validation", 
      "Label" : "[CF5] NetCashFlowFromInvestingActivities = NetCashFlowFromInvestingActivitiesContinuing + NetCashFlowFromInvestingActivitiesDiscontinued", 
      "Message" : "fac:NetCashFlowFromInvestingActivities[-4,214,000,000 USD] = fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] + NetCashFlowFromInvestingActivitiesDiscontinued[0]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowFromInvestingActivitiesValidation", 
        "ValidatedConcepts" : [ "fac:NetCashFlowFromInvestingActivities" ], 
        "ValidatedFacts" : [ "72dc86bd-d926-4ef3-bbc1-fd656d6dac6a" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "IS4", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS4] IncomeLossFromContinuingOperationsBeforeTax = IncomeLossBeforeEquityMethodInvestments + IncomeLossFromEquityMethodInvestments", 
      "Message" : "fac:IncomeLossFromContinuingOperationsBeforeTax[11,477,000,000 USD] = fac:IncomeLossBeforeEquityMethodInvestments[10,875,000,000 USD] + fac:IncomeLossFromEquityMethodInvestments[602,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", 
        "ValidatedConcepts" : [ "fac:IncomeLossFromContinuingOperationsBeforeTax" ], 
        "ValidatedFacts" : [ "93e7de6a-00aa-4f46-9d1c-6d5e53d8739a" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromFinancingActivitiesValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "CF6", 
      "Type" : "xbrl28:validation", 
      "Label" : "[CF6] NetCashFlowFromFinancingActivities = NetCashFlowFromFinancingActivitiesContinuing + NetCashFlowFromFinancingActivitiesDiscontinued", 
      "Message" : "fac:NetCashFlowFromFinancingActivities[-3,745,000,000 USD] = fac:NetCashFlowFromFinancingActivitiesContinuing[-3,745,000,000 USD] + fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowFromFinancingActivitiesValidation", 
        "ValidatedConcepts" : [ "fac:NetCashFlowFromFinancingActivities" ], 
        "ValidatedFacts" : [ "36554d68-197f-43cc-b9ef-21d8dcc325af" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "IS5", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS5] IncomeLossFromContinuingOperationsAfterTax = IncomeLossFromContinuingOperationsBeforeTax - IncomeTaxExpenseBenefit", 
      "Message" : "fac:IncomeLossFromContinuingOperationsAfterTax[8,626,000,000 USD] = fac:IncomeLossFromContinuingOperationsBeforeTax[11,477,000,000 USD] - fac:IncomeTaxExpenseBenefit[2,851,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", 
        "ValidatedConcepts" : [ "fac:IncomeLossFromContinuingOperationsAfterTax" ], 
        "ValidatedFacts" : [ "55f6186b-7291-4beb-85a2-4d9d5502e88d" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:GrossProfitValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "IS1", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS1] GrossProfit = Revenues - CostOfRevenue", 
      "Message" : "fac:GrossProfit[28,433,000,000 USD] = fac:Revenues[46,854,000,000 USD] - fac:CostOfRevenue[18,421,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:GrossProfitValidation", 
        "ValidatedConcepts" : [ "fac:GrossProfit" ], 
        "ValidatedFacts" : [ "ff41b2e8-95c4-428a-8dc3-c05ecf1d5769" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetIncomeLossValidation2", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "IS7", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS7] NetIncomeLoss = NetIncomeLossAttributableToParent + NetIncomeLossAttributableToNoncontrollingInterest", 
      "Message" : "fac:NetIncomeLoss[8,626,000,000 USD] = fac:NetIncomeLossAttributableToParent[8,584,000,000 USD] + fac:NetIncomeLossAttributableToNoncontrollingInterest[42,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetIncomeLossValidation2", 
        "ValidatedConcepts" : [ "fac:NetIncomeLoss" ], 
        "ValidatedFacts" : [ "67e5e209-93bb-408b-b9d3-e79bdecfcce0" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ComprehensiveIncomeLossValidation2", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "IS10", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS10] ComprehensiveIncomeLoss = NetIncomeLoss + OtherComprehensiveIncomeLoss", 
      "Message" : "fac:ComprehensiveIncomeLoss[8,576,000,000 USD] = fac:NetIncomeLoss[8,626,000,000 USD] + fac:OtherComprehensiveIncomeLoss[-50,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:ComprehensiveIncomeLossValidation2", 
        "ValidatedConcepts" : [ "fac:ComprehensiveIncomeLoss" ], 
        "ValidatedFacts" : [ "478245d2-d48f-4622-9dd6-9449ec0bcc3b" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "IS8", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS8] NetIncomeLossAvailableToCommonStockholdersBasic = NetIncomeLossAttributableToParent - PreferredStockDividendsAndOtherAdjustments", 
      "Message" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic[8,584,000,000 USD] = fac:NetIncomeLossAttributableToParent[8,584,000,000 USD] - fac:PreferredStockDividendsAndOtherAdjustments[0 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", 
        "ValidatedConcepts" : [ "fac:NetIncomeLossAvailableToCommonStockholdersBasic" ], 
        "ValidatedFacts" : [ "b919fc30-eaaa-440e-9311-e4de003c391a" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossBeforeEquityMethodInvestmentsValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "IS3", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS3] IncomeLossBeforeEquityMethodInvestments = OperatingIncomeLoss + NonoperatingIncomeLossPlusInterestAndDebtExpense", 
      "Message" : "fac:IncomeLossBeforeEquityMethodInvestments[10,875,000,000 USD] = fac:OperatingIncomeLoss[10,228,000,000 USD] + fac:NonoperatingIncomeLossPlusInterestAndDebtExpense[647,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:IncomeLossBeforeEquityMethodInvestmentsValidation", 
        "ValidatedConcepts" : [ "fac:IncomeLossBeforeEquityMethodInvestments" ], 
        "ValidatedFacts" : [ "f4100a7e-890a-4c9b-9070-68f7301a6b76" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ComprehensiveIncomeLossValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "IS9", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS9] ComprehensiveIncomeLoss = ComprehensiveIncomeLossAttributableToParent + ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
      "Message" : "fac:ComprehensiveIncomeLoss[8,576,000,000 USD] = fac:ComprehensiveIncomeLossAttributableToParent[8,537,000,000 USD] + fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest[39,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:ComprehensiveIncomeLossValidation", 
        "ValidatedConcepts" : [ "fac:ComprehensiveIncomeLoss" ], 
        "ValidatedFacts" : [ "478245d2-d48f-4622-9dd6-9449ec0bcc3b" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromOperatingActivitiesValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "CF4", 
      "Type" : "xbrl28:validation", 
      "Label" : "[CF4] NetCashFlowFromOperatingActivities = NetCashFlowFromOperatingActivitiesContinuing + NetCashFlowFromOperatingActivitiesDiscontinued", 
      "Message" : "fac:NetCashFlowFromOperatingActivities[10,542,000,000 USD] = fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] + fac:NetCashFlowFromOperatingActivitiesDiscontinued[0 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowFromOperatingActivitiesValidation", 
        "ValidatedConcepts" : [ "fac:NetCashFlowFromOperatingActivities" ], 
        "ValidatedFacts" : [ "6a467db9-4611-447d-b676-c87fa2370eef" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetIncomeLossValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "IS6", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS6] NetIncomeLoss = IncomeLossFromContinuingOperationsAfterTax + IncomeLossFromDiscontinuedOperationsNetOfTax + ExtraordinaryItemsOfIncomeExpenseNetOfTax", 
      "Message" : "fac:NetIncomeLoss[8,626,000,000 USD] = fac:IncomeLossFromContinuingOperationsAfterTax[8,626,000,000 USD] + IncomeLossFromDiscontinuedOperationsNetOfTax[0] + ExtraordinaryItemsOfIncomeExpenseNetOfTax[0]", 
      "Data" : {
        "OutputConcept" : "fac:NetIncomeLossValidation", 
        "ValidatedConcepts" : [ "fac:NetIncomeLoss" ], 
        "ValidatedFacts" : [ "67e5e209-93bb-408b-b9d3-e79bdecfcce0" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowDiscontinuedValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "CF3", 
      "Type" : "xbrl28:validation", 
      "Label" : "[CF3] NetCashFlowDiscontinued = NetCashFlowFromOperatingActivitiesDiscontinued + NetCashFlowFromInvestingActivitiesDiscontinued + NetCashFlowFromFinancingActivitiesDiscontinued", 
      "Message" : "fac:NetCashFlowDiscontinued[0 USD] = fac:NetCashFlowFromOperatingActivitiesDiscontinued[0 USD] + NetCashFlowFromInvestingActivitiesDiscontinued[0] + fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowDiscontinuedValidation", 
        "ValidatedConcepts" : [ "fac:NetCashFlowDiscontinued" ], 
        "ValidatedFacts" : [ "dcc37a1d-d9c4-4895-b691-e01e34936c5c" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:OperatingIncomeLossValidation2", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : false, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "IS11", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS11] OperatingIncomeLoss = Revenues - CostsAndExpenses + OtherOperatingIncomeExpenses", 
      "Message" : "fac:OperatingIncomeLoss[10,228,000,000 USD] = fac:Revenues[46,854,000,000 USD] - CostsAndExpenses[0] + OtherOperatingIncomeExpenses[0]", 
      "Data" : {
        "OutputConcept" : "fac:OperatingIncomeLossValidation2", 
        "ValidatedConcepts" : [ "fac:OperatingIncomeLoss" ], 
        "ValidatedFacts" : [ "8c03eb7d-27f6-420c-bbe1-3d760c3e7102" ], 
        "ValidationPassed" : false
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:OperatingIncomeLossValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : false, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "IS2", 
      "Type" : "xbrl28:validation", 
      "Label" : "[IS2] OperatingIncomeLoss = GrossProfit - OperatingExpenses + OtherOperatingIncomeExpenses", 
      "Message" : "fac:OperatingIncomeLoss[10,228,000,000 USD] = fac:GrossProfit[28,433,000,000 USD] - OperatingExpenses[0] + OtherOperatingIncomeExpenses[0]", 
      "Data" : {
        "OutputConcept" : "fac:OperatingIncomeLossValidation", 
        "ValidatedConcepts" : [ "fac:OperatingIncomeLoss" ], 
        "ValidatedFacts" : [ "8c03eb7d-27f6-420c-bbe1-3d760c3e7102" ], 
        "ValidationPassed" : false
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowContinuingValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "CF2", 
      "Type" : "xbrl28:validation", 
      "Label" : "[CF2] NetCashFlowContinuing = NetCashFlowFromOperatingActivitiesContinuing + NetCashFlowFromInvestingActivitiesContinuing + NetCashFlowFromFinancingActivitiesContinuing", 
      "Message" : "fac:NetCashFlowContinuing[2,583,000,000 USD] = fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] + fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] + fac:NetCashFlowFromFinancingActivitiesContinuing[-3,745,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowContinuingValidation", 
        "ValidatedConcepts" : [ "fac:NetCashFlowContinuing" ], 
        "ValidatedFacts" : [ "9d270e1b-665b-46c7-9366-506738c0f52d" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowValidation", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "BooleanValue", 
    "Value" : true, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:booleanItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "CF1", 
      "Type" : "xbrl28:validation", 
      "Label" : "[CF1] NetCashFlow = NetCashFlowFromOperatingActivities + NetCashFlowFromInvestingActivities + NetCashFlowFromFinancingActivities [+ ExchangeGainsLosses]", 
      "Message" : "fac:NetCashFlow[1,972,000,000 USD] = fac:NetCashFlowFromOperatingActivities[10,542,000,000 USD] + fac:NetCashFlowFromInvestingActivities[-4,214,000,000 USD] + fac:NetCashFlowFromFinancingActivities[-3,745,000,000 USD] + fac:ExchangeGainsLosses[-611,000,000 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowValidation", 
        "ValidatedConcepts" : [ "fac:NetCashFlow" ], 
        "ValidatedFacts" : [ "917f43fe-7e11-44fe-a020-1d01d09b53cd" ], 
        "ValidationPassed" : true
      }
    } ], 
    "xbrl28:Type" : "xbrl28:validation", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:TradingSymbol", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Type" : "NonNumericValue", 
    "Value" : "ko", 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "xbrli:dateItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "gi_TradingSymbol", 
      "Type" : "xbrl28:formula", 
      "Label" : "TradingSymbol imputation", 
      "Message" : "fac:TradingSymbol['ko'] = entity(http://www.sec.gov/CIK 0000021344).Profiles.SEC.Tickers", 
      "Data" : {
        "OutputConcept" : "fac:TradingSymbol"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "xbrl28:NoUnit"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeStatementFormat", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NonNumericValue", 
    "Value" : "Multi-step", 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:BalanceSheetFormat", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Type" : "NonNumericValue", 
    "Value" : "Classified", 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "dei:submissionTypeItemType"
    }, 
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
    "Unit" : "xbrl28:NoUnit"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeStatementStartPeriodYearToDate", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NonNumericValue", 
    "Value" : "2013-01-01", 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "gi_IncomeStatementStartPeriod", 
      "Type" : "xbrl28:formula", 
      "Label" : "Income Statement Start Period imputation", 
      "Message" : "fac:IncomeStatementStartPeriodYearToDate[2013-01-01] = facts:duration-for-fact(fac:Revenues[46,854,000,000 USD]).Start", 
      "Data" : {
        "OutputConcept" : "fac:IncomeStatementStartPeriodYearToDate"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:EntityRegistrantName", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Type" : "NonNumericValue", 
    "Value" : "COCA COLA CO", 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "xbrli:normalizedStringItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl28:NoUnit\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl28:NoUnit", 
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
    "Unit" : "xbrl28:NoUnit"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:EntityCentralIndexKey", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Type" : "NonNumericValue", 
    "Value" : "0000021344", 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "dei:centralIndexKeyItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl28:NoUnit\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl28:NoUnit", 
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
    "Unit" : "xbrl28:NoUnit"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:EntityFilerCategory", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Type" : "NonNumericValue", 
    "Value" : "Large Accelerated Filer", 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "dei:filerCategoryItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl28:NoUnit\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl28:NoUnit", 
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
    "Unit" : "xbrl28:NoUnit"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:FiscalYearEnd", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Type" : "NonNumericValue", 
    "Value" : "--12-31", 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "xbrli:gMonthDayItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl28:NoUnit\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl28:NoUnit", 
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
    "Unit" : "xbrl28:NoUnit"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:FiscalPeriod", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Type" : "NonNumericValue", 
    "Value" : "FY", 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "dei:fiscalPeriodItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl28:NoUnit\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl28:NoUnit", 
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
    "Unit" : "xbrl28:NoUnit"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:FiscalYear", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Type" : "NonNumericValue", 
    "Value" : "2013", 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "xbrli:gYearItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl28:NoUnit\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl28:NoUnit", 
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
    "Unit" : "xbrl28:NoUnit"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:BalanceSheetDate", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Type" : "NonNumericValue", 
    "Value" : "2013-12-31", 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "xbrli:dateItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl28:NoUnit\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl28:NoUnit", 
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
    "Unit" : "xbrl28:NoUnit"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:DocumentType", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "sec:Accepted" ], 
    "Type" : "NonNumericValue", 
    "Value" : "10-K", 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "dei:submissionTypeItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:dimension-default", 
      "Label" : "Default dimension value", 
      "Message" : "xbrl:Unit.Default = \"xbrl28:NoUnit\"", 
      "Data" : {
        "Dimension" : "xbrl:Unit", 
        "Member" : "xbrl28:NoUnit", 
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
    "Unit" : "xbrl28:NoUnit"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetIncomeLoss", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 8626000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:Revenues", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 46854000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:OperatingIncomeLoss", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 10228000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:GrossProfit", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 28433000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:CostOfRevenue", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 18421000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromInvestingActivities", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : -4214000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossBeforeEquityMethodInvestments", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 10875000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromInvestingActivitiesContinuing", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : -4214000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "bc4dacb2-95d1-45e7-8594-2ad4e7f9f8d9", 
      "Type" : "xbrl28:formula", 
      "Label" : "Net Cash Flow from Investing Activities, Continuing", 
      "Message" : "fac:NetCashFlowFromInvestingActivitiesContinuing[-4,214,000,000 USD] = fac:NetCashFlowFromInvestingActivities[-4,214,000,000 USD] - NetCashFlowFromInvestingActivitiesDiscontinued[0]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowFromInvestingActivitiesContinuing"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromFinancingActivities", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : -3745000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromInvestingActivitiesDiscontinued", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : 2,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:default-fact-value", 
      "Label" : "Default fact value", 
      "Message" : "fac:NetCashFlowFromInvestingActivitiesDiscontinued = 0", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowFromInvestingActivitiesDiscontinued"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromOperatingActivities", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 10542000000, 
    "Decimals" : -6, 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromOperatingActivitiesDiscontinued", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : -6, 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "e7f1c48e-4b36-429c-90cc-48634d543ab9", 
      "Type" : "xbrl28:formula", 
      "Label" : "Net Cash Flow from Operating Activities, Discontinued", 
      "Message" : "fac:NetCashFlowFromOperatingActivitiesDiscontinued[0 USD] = 0", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowFromOperatingActivitiesDiscontinued"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromOperatingActivitiesContinuing", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 10542000000, 
    "Decimals" : -6, 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "50a01bf0-30ab-4d46-8418-066173dd2e67", 
      "Type" : "xbrl28:formula", 
      "Label" : "Net Cash Flow from Operating Activities, Continuing", 
      "Message" : "fac:NetCashFlowFromOperatingActivitiesContinuing[10,542,000,000 USD] = fac:NetCashFlowFromOperatingActivities[10,542,000,000 USD] - NetCashFlowFromOperatingActivitiesDiscontinued[0]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowFromOperatingActivitiesContinuing"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:OperatingExpenses", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : 2,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:default-fact-value", 
      "Label" : "Default fact value", 
      "Message" : "fac:OperatingExpenses = 0", 
      "Data" : {
        "OutputConcept" : "fac:OperatingExpenses"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:OtherOperatingIncomeExpenses", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : 2,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:default-fact-value", 
      "Label" : "Default fact value", 
      "Message" : "fac:OtherOperatingIncomeExpenses = 0", 
      "Data" : {
        "OutputConcept" : "fac:OtherOperatingIncomeExpenses"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromFinancingActivitiesDiscontinued", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "d9bd6917-a92a-497b-a8f1-4d8d6098fcec", 
      "Type" : "xbrl28:formula", 
      "Label" : "Net Cash Flow from Financing Activities, Discontinued", 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossFromEquityMethodInvestments", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 602000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossFromContinuingOperationsBeforeTax", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 11477000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowFromFinancingActivitiesContinuing", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : -3745000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "74a3bfc8-8ac4-483a-9325-a27fcb1342d6", 
      "Type" : "xbrl28:formula", 
      "Label" : "Net Cash Flow from Financing Activities, Continuing", 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetIncomeLossAttributableToParent", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 8584000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ComprehensiveIncomeLoss", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 8576000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:CostsAndExpenses", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : 2,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:default-fact-value", 
      "Label" : "Default fact value", 
      "Message" : "fac:CostsAndExpenses = 0", 
      "Data" : {
        "OutputConcept" : "fac:CostsAndExpenses"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NonoperatingIncomeLoss", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : 2,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:default-fact-value", 
      "Label" : "Default fact value", 
      "Message" : "fac:NonoperatingIncomeLoss = 0", 
      "Data" : {
        "OutputConcept" : "fac:NonoperatingIncomeLoss"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:InterestAndDebtExpense", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : 2,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:default-fact-value", 
      "Label" : "Default fact value", 
      "Message" : "fac:InterestAndDebtExpense = 0", 
      "Data" : {
        "OutputConcept" : "fac:InterestAndDebtExpense"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 39000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 8584000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:OtherComprehensiveIncomeLoss", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : -50000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossFromContinuingOperationsAfterTax", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 8626000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "7cf0211d-caad-47bd-81e1-cacd6e288ecc", 
      "Type" : "xbrl28:formula", 
      "Label" : "Income (Loss) from Continuing Operations After Tax", 
      "Message" : "fac:IncomeLossFromContinuingOperationsAfterTax[8,626,000,000 USD] = fac:NetIncomeLoss[8,626,000,000 USD] - IncomeLossFromDiscontinuedOperationsNetOfTax[0] - ExtraordinaryItemsOfIncomeExpenseNetOfTax[0]", 
      "Data" : {
        "OutputConcept" : "fac:IncomeLossFromContinuingOperationsAfterTax"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ComprehensiveIncomeLossAttributableToParent", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 8537000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeLossFromDiscontinuedOperationsNetOfTax", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : 2,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:default-fact-value", 
      "Label" : "Default fact value", 
      "Message" : "fac:IncomeLossFromDiscontinuedOperationsNetOfTax = 0", 
      "Data" : {
        "OutputConcept" : "fac:IncomeLossFromDiscontinuedOperationsNetOfTax"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ExtraordinaryItemsOfIncomeExpenseNetOfTax", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : 2,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:default-fact-value", 
      "Label" : "Default fact value", 
      "Message" : "fac:ExtraordinaryItemsOfIncomeExpenseNetOfTax = 0", 
      "Data" : {
        "OutputConcept" : "fac:ExtraordinaryItemsOfIncomeExpenseNetOfTax"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetIncomeLossAttributableToNoncontrollingInterest", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 42000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ExchangeGainsLosses", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : -611000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:PreferredStockDividendsAndOtherAdjustments", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowDiscontinued", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : -6, 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "260e6e0f-e6f4-48d2-8361-75cbfe04fe75", 
      "Type" : "xbrl28:formula", 
      "Label" : "Net Cash Flow, Discontinued", 
      "Message" : "fac:NetCashFlowDiscontinued[0 USD] = fac:NetCashFlowFromOperatingActivitiesDiscontinued[0 USD] + NetCashFlowFromInvestingActivitiesDiscontinued[0] + fac:NetCashFlowFromFinancingActivitiesDiscontinued[0 USD]", 
      "Data" : {
        "OutputConcept" : "fac:NetCashFlowDiscontinued"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:formula", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  }, {
    "Aspects" : {
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlowContinuing", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 2583000000, 
    "Decimals" : -6, 
    "Concept" : {
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Id" : "d7c2ba1a-141f-4035-877b-e4c149478da8", 
      "Type" : "xbrl28:formula", 
      "Label" : "Net Cash Flow, Continuing", 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 647000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NetCashFlow", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 1972000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 1249000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:IncomeTaxExpenseBenefit", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 2851000000, 
    "Decimals" : -6, 
    "Concept" : {
      "Balance" : "DEBIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ReturnOnEquity", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0.257954545454545455, 
    "Decimals" : 3,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:pureItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ReturnOnAssets", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0.095785908611404142, 
    "Decimals" : 3,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:pureItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ReturnOnSales", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0.184103811841038118, 
    "Decimals" : 3,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:pureItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:SustainableGrowthRate", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0.347626339969372129, 
    "Decimals" : 3,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:pureItemType"
    }, 
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
      "xbrl28:Archive" : "0000021344-14-000008", 
      "xbrl:Concept" : "fac:ResearchAndDevelopment", 
      "xbrl:Entity" : "http://www.sec.gov/CIK 0000021344", 
      "xbrl:Period" : "2013-01-01/2013-12-31", 
      "sec:FiscalPeriod" : "FY", 
      "sec:FiscalPeriodType" : "YTD", 
      "sec:FiscalYear" : 2013, 
      "sec:Accepted" : "20140227132423", 
      "dei:LegalEntityAxis" : "sec:DefaultLegalEntity", 
      "sec:Archive" : "0000021344-14-000008"
    }, 
    "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "sec:Accepted" ], 
    "Type" : "NumericValue", 
    "Value" : 0, 
    "Decimals" : 2,
    "Concept" : {
      "Balance" : "CREDIT", 
      "PeriodType" : "duration", 
      "DataType" : "xbrli:monetaryItemType"
    }, 
    "AuditTrails" : [ {
      "Type" : "xbrl28:default-fact-value", 
      "Label" : "Default fact value", 
      "Message" : "fac:ResearchAndDevelopment = 0", 
      "Data" : {
        "OutputConcept" : "fac:ResearchAndDevelopment"
      }
    } ], 
    "xbrl28:Type" : "xbrl28:concept-maps", 
    "EntityRegistrantName" : "COCA COLA CO", 
    "Unit" : "iso4217:USD"
  } ], 
  "Comment" : "Generated by 28.io, for more information see http://www.28.io/xbrl (2014-12-12T16:45:35.976975Z)", 
  "Statistics" : {
    "NumFacts" : 95, 
    "TotalNumFacts" : 958314, 
    "TotalNumArchives" : 574, 
    "TotalNumEntities" : 30
  }
}
