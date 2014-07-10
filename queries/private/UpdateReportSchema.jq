let $schema := {
  "_id" : "1fueA5hrxIHxvRf7Btr_J6efDJ3qp-s9KV731wDc4OOc", 
  "Label": "Fundamental Accounting Concepts",
  "Archive" : null, 
  "Owner": "d@28.io",
  "Description": "Contains bla bla",
  "LastModified": "2014-06-25T11:09:07.28464Z",
  "Role" : "http://xbrl.io/fundamental-accounting-concepts", 
  "Networks" : [ {
    "LinkName" : "link:presentationLink", 
    "LinkRole" : "http://xbrl.io/fundamental-accounting-concepts", 
    "ArcName" : "link:presentationArc", 
    "ArcRole" : "http://www.xbrl.org/2003/arcrole/parent-child", 
    "Kind" : "InterConceptTreeNetwork", 
    "ShortName" : "Presentation", 
    "CyclesAllowed" : "undirected", 
    "Trees" : {
      "fac:FundamentalAccountingConceptsLineItems" : {
        "Name" : "fac:FundamentalAccountingConceptsLineItems", 
        "Label" : "Fundamental Accounting Concepts [Line Items]", 
        "To" : {
          "fac:FundamentalAccountingConceptsHierarchy" : {
            "Name" : "fac:FundamentalAccountingConceptsHierarchy", 
            "Label" : "Fundamental Accounting Concepts [Hierarchy]", 
            "To" : {
              "fac:GeneralInformationHierarchy" : {
                "Name" : "fac:GeneralInformationHierarchy", 
                "Label" : "General Information [Hierarchy]", 
                "To" : {
                  "fac:EntityRegistrantName" : {
                    "Name" : "fac:EntityRegistrantName", 
                    "Label" : "Entity Registrant Name", 
                    "Id" : "69f0cb0f-c486-4465-9e8b-47941aed2e2c", 
                    "expanded" : true, 
                    "Order" : 3
                  }, 
                  "fac:EntityCentralIndexKey" : {
                    "Name" : "fac:EntityCentralIndexKey", 
                    "Label" : "Central Index Key (CIK)", 
                    "Id" : "02ff7a91-a86f-491b-a3df-1dd318d77359", 
                    "expanded" : true, 
                    "Order" : 8
                  }, 
                  "fac:EntityFilerCategory" : {
                    "Name" : "fac:EntityFilerCategory", 
                    "Label" : "Entity Filer Category", 
                    "Id" : "1d638c86-a38d-489b-bdfc-3fa72d1a90c2", 
                    "expanded" : true, 
                    "Order" : 4
                  }, 
                  "fac:TradingSymbol" : {
                    "Name" : "fac:TradingSymbol", 
                    "Label" : "Trading Symbol", 
                    "Id" : "0c90ffc7-15c8-45a4-8d6e-514737c367d8", 
                    "expanded" : true, 
                    "Order" : 5
                  }, 
                  "fac:FiscalYearEnd" : {
                    "Name" : "fac:FiscalYearEnd", 
                    "Label" : "Fiscal Year End", 
                    "Id" : "ee1a4a3b-2def-4154-8f6d-4ccd36198095", 
                    "expanded" : true, 
                    "Order" : 6
                  }, 
                  "fac:FiscalYear" : {
                    "Name" : "fac:FiscalYear", 
                    "Label" : "Fiscal Year", 
                    "Id" : "aceef7a7-17c4-416b-bdca-e9ecd5d767f2", 
                    "expanded" : true, 
                    "Order" : 7
                  }, 
                  "fac:FiscalPeriod" : {
                    "Name" : "fac:FiscalPeriod", 
                    "Label" : "Fiscal Period", 
                    "Id" : "f00df389-de98-41fa-a488-6ba58a8e30ca", 
                    "expanded" : true, 
                    "Order" : 2
                  }, 
                  "fac:DocumentType" : {
                    "Name" : "fac:DocumentType", 
                    "Label" : "Document Type", 
                    "Id" : "7ff0df88-a7f3-405b-b877-fa70236affab", 
                    "expanded" : true, 
                    "Order" : 9
                  }, 
                  "fac:BalanceSheetDate" : {
                    "Name" : "fac:BalanceSheetDate", 
                    "Label" : "Balance Sheet Date", 
                    "Id" : "75d92bf3-8293-4088-a3c4-70e0c62e34ce", 
                    "expanded" : true, 
                    "Order" : 10
                  }, 
                  "fac:IncomeStatementStartPeriod" : {
                    "Name" : "fac:IncomeStatementStartPeriod", 
                    "Label" : "Income Statement Start of Period", 
                    "Id" : "801567c0-5411-4634-9484-fc17608dcba8", 
                    "expanded" : true, 
                    "Order" : 11
                  }, 
                  "fac:BalanceSheetFormat" : {
                    "Name" : "fac:BalanceSheetFormat", 
                    "Label" : "Balance Sheet Format", 
                    "Id" : "27611898-39fe-4db5-a194-158882dceecb", 
                    "expanded" : true, 
                    "Order" : 12
                  }, 
                  "fac:IncomeStatementFormat" : {
                    "Name" : "fac:IncomeStatementFormat", 
                    "Label" : "Income Statement Format", 
                    "Id" : "23aea896-aa2f-4e79-810b-9206aab5ea57", 
                    "expanded" : true, 
                    "Order" : 13
                  }, 
                  "fac:NatureOfOperations" : {
                    "Name" : "fac:NatureOfOperations", 
                    "Label" : "Nature of Operations", 
                    "Id" : "c6bd12a5-8adf-4c48-8422-57832ade87aa", 
                    "expanded" : true, 
                    "Order" : 14
                  }
                }, 
                "Id" : "f3468332-90e9-4038-8bcf-776d2d336f3e", 
                "expanded" : true
              }, 
              "fac:BalanceSheetHierarchy" : {
                "Name" : "fac:BalanceSheetHierarchy", 
                "Label" : "Balance Sheet [Hierarchy]", 
                "To" : {
                  "fac:CurrentAssets" : {
                    "Name" : "fac:CurrentAssets", 
                    "Label" : "Current Assets", 
                    "Order" : 2, 
                    "Id" : "25ed5df1-aa75-4a5b-8241-dfa777330d05", 
                    "expanded" : true
                  }, 
                  "fac:NoncurrentAssets" : {
                    "Name" : "fac:NoncurrentAssets", 
                    "Label" : "Noncurrent Assets", 
                    "Order" : 3, 
                    "Id" : "8c70fab1-1cd4-47fe-b76a-196665ac263b", 
                    "expanded" : true
                  }, 
                  "fac:Assets" : {
                    "Name" : "fac:Assets", 
                    "Label" : "Assets", 
                    "Order" : 4, 
                    "Id" : "4b91dabb-d153-4fe8-8af0-23f86d049631", 
                    "expanded" : true
                  }, 
                  "fac:CurrentLiabilities" : {
                    "Name" : "fac:CurrentLiabilities", 
                    "Label" : "Current Liabilities", 
                    "Order" : 5, 
                    "Id" : "e439f954-7ae1-471b-9ec9-b9e6ce9cadc9", 
                    "expanded" : true
                  }, 
                  "fac:NoncurrentLiabilities" : {
                    "Name" : "fac:NoncurrentLiabilities", 
                    "Label" : "Noncurrent Liabilities", 
                    "Order" : 6, 
                    "Id" : "f1cc9266-893e-4001-8247-6f03f730b7b2", 
                    "expanded" : true
                  }, 
                  "fac:Liabilities" : {
                    "Name" : "fac:Liabilities", 
                    "Label" : "Liabilities", 
                    "Order" : 7, 
                    "Id" : "394e7593-b1b6-4201-842e-b26492d1b411", 
                    "expanded" : true
                  }, 
                  "fac:CommitmentsAndContingencies" : {
                    "Name" : "fac:CommitmentsAndContingencies", 
                    "Label" : "Commitments and Contingencies", 
                    "Order" : 8, 
                    "Id" : "c5ed067f-7cce-43a0-9cac-e333e8bbecaa", 
                    "expanded" : true
                  }, 
                  "fac:TemporaryEquity" : {
                    "Name" : "fac:TemporaryEquity", 
                    "Label" : "Temporary Equity", 
                    "Order" : 9, 
                    "Id" : "d62f9f98-67c3-46e1-affd-27c6be847e0d", 
                    "expanded" : true
                  }, 
                  "fac:RedeemableNoncontrollingInterest" : {
                    "Name" : "fac:RedeemableNoncontrollingInterest", 
                    "Label" : "Redeemable Noncontrolling Interest", 
                    "Order" : 10, 
                    "Id" : "53344bf4-22c8-4153-918e-6f462064a7ff", 
                    "expanded" : true
                  }, 
                  "fac:EquityAttributableToParent" : {
                    "Name" : "fac:EquityAttributableToParent", 
                    "Label" : "Equity Attributable to Parent", 
                    "Order" : 11, 
                    "Id" : "5c762b51-619c-4031-9a03-02881d2bc827", 
                    "expanded" : true
                  }, 
                  "fac:EquityAttributableToNoncontrollingInterest" : {
                    "Name" : "fac:EquityAttributableToNoncontrollingInterest", 
                    "Label" : "Equity Attributable to Noncontrolling Interest", 
                    "Order" : 12, 
                    "Id" : "9095b5b6-31cd-48f0-9828-a61c267fe9a3", 
                    "expanded" : true
                  }, 
                  "fac:Equity" : {
                    "Name" : "fac:Equity", 
                    "Label" : "Equity", 
                    "Order" : 13, 
                    "Id" : "56071ec5-070c-4036-b6f3-dc4db762a2d4", 
                    "expanded" : true
                  }, 
                  "fac:LiabilitiesAndEquity" : {
                    "Name" : "fac:LiabilitiesAndEquity", 
                    "Label" : "Liabilities and Equity", 
                    "Order" : 14, 
                    "Id" : "0b2073b7-922c-4ed4-babd-5a363c846da0", 
                    "expanded" : true
                  }
                }, 
                "Id" : "3429b878-7d5a-4ab0-84e7-7c565b28f084", 
                "expanded" : true
              }, 
              "fac:IncomeStatementHierarchy" : {
                "Name" : "fac:IncomeStatementHierarchy", 
                "Label" : "Income Statement [Hierarchy]", 
                "To" : {
                  "fac:Revenues" : {
                    "Name" : "fac:Revenues", 
                    "Label" : "Revenues", 
                    "Order" : 1, 
                    "Id" : "66d70a6b-61d2-4ae1-8daa-293b8f357d6c", 
                    "expanded" : true
                  }, 
                  "fac:CostOfRevenue" : {
                    "Name" : "fac:CostOfRevenue", 
                    "Label" : "Cost of Revenues", 
                    "Order" : 2, 
                    "Id" : "a7299479-234f-41ab-a822-b5321a4c35c8", 
                    "expanded" : true
                  }, 
                  "fac:GrossProfit" : {
                    "Name" : "fac:GrossProfit", 
                    "Label" : "Gross Profit", 
                    "Order" : 3, 
                    "Id" : "bfd7c4af-7cda-45b5-ba31-2cba25d9f7ff", 
                    "expanded" : true
                  }, 
                  "fac:OperatingExpenses" : {
                    "Name" : "fac:OperatingExpenses", 
                    "Label" : "Operating Expenses", 
                    "Order" : 4, 
                    "Id" : "c15b1294-7b2f-4080-8b8b-32837dc919c3", 
                    "expanded" : true
                  }, 
                  "fac:CostsAndExpenses" : {
                    "Name" : "fac:CostsAndExpenses", 
                    "Label" : "Costs and Expenses", 
                    "Order" : 5, 
                    "Id" : "c7a0d341-58a9-4759-9a9c-5750dc484ac0", 
                    "expanded" : true
                  }, 
                  "fac:OtherOperatingIncomeExpenses" : {
                    "Name" : "fac:OtherOperatingIncomeExpenses", 
                    "Label" : "Other Operating Income (Expenses)", 
                    "Order" : 6, 
                    "Id" : "009ad620-5c47-4ea8-bc6a-de0ac67ed302", 
                    "expanded" : true
                  }, 
                  "fac:OperatingIncomeLoss" : {
                    "Name" : "fac:OperatingIncomeLoss", 
                    "Label" : "Operating Income (Loss)", 
                    "Order" : 7, 
                    "Id" : "468fc16a-954f-4ec0-9d23-0b46856088cf", 
                    "expanded" : true
                  }, 
                  "fac:NonoperatingIncomeLoss" : {
                    "Name" : "fac:NonoperatingIncomeLoss", 
                    "Label" : "Nonoperating Income (Loss)", 
                    "Order" : 8, 
                    "Id" : "cd43fc78-895e-48c7-94d8-80c804d6fdbe", 
                    "expanded" : true
                  }, 
                  "fac:InterestAndDebtExpense" : {
                    "Name" : "fac:InterestAndDebtExpense", 
                    "Label" : "Interest and Debt Expense", 
                    "Order" : 9, 
                    "Id" : "85043f9f-4614-4b31-bb37-3548e8349e82", 
                    "expanded" : true
                  }, 
                  "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense" : {
                    "Name" : "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                    "Label" : "Nonoperating Income (Loss) + Interest and Debt Expense", 
                    "Order" : 10, 
                    "Id" : "27434461-278d-476a-aee0-93e11db757e6", 
                    "expanded" : true
                  }, 
                  "fac:IncomeBeforeEquityMethodInvestments" : {
                    "Name" : "fac:IncomeBeforeEquityMethodInvestments", 
                    "Label" : "Income (Loss) Before Equity Method Investments", 
                    "Order" : 11, 
                    "Id" : "b1938a83-b8d5-4300-9121-4932fa8e11eb", 
                    "expanded" : true
                  }, 
                  "fac:IncomeLossFromEquityMethodInvestments" : {
                    "Name" : "fac:IncomeLossFromEquityMethodInvestments", 
                    "Label" : "Income (Loss) from Equity Method Investments", 
                    "Order" : 12, 
                    "Id" : "63c1d50c-c18f-494d-9d20-dbf96b50bbe6", 
                    "expanded" : true
                  }, 
                  "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments" : {
                    "Name" : "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments", 
                    "Label" : "Nonoperating Income (Loss) + Interest and Debt Expense + Income (Loss) from Equity Method Investments", 
                    "Order" : 13, 
                    "Id" : "6ffa3e8b-562f-4d3a-b95f-52b21812990c", 
                    "expanded" : true
                  }, 
                  "fac:IncomeLossFromContinuingOperationsBeforeTax" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTax", 
                    "Label" : "Income (Loss) from Continuing Operations Before Tax", 
                    "Order" : 14, 
                    "Id" : "447b7d82-57f0-4612-8eb7-891639d3be57", 
                    "expanded" : true
                  }, 
                  "fac:IncomeTaxExpenseBenefit" : {
                    "Name" : "fac:IncomeTaxExpenseBenefit", 
                    "Label" : "Income Tax Expense (Benefit)", 
                    "Order" : 15, 
                    "Id" : "4b43edbd-0e07-48d1-bfe6-418d758d226a", 
                    "expanded" : true
                  }, 
                  "fac:IncomeLossFromContinuingOperationsAfterTax" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsAfterTax", 
                    "Label" : "Income (Loss) from Continuing Operations After Tax", 
                    "Order" : 16, 
                    "Id" : "c7c379b8-6802-4574-beae-48bd3eaa27b3", 
                    "expanded" : true
                  }, 
                  "fac:IncomeLossFromDiscontinuedOperationsNetTax" : {
                    "Name" : "fac:IncomeLossFromDiscontinuedOperationsNetTax", 
                    "Label" : "Income (Loss) from Discontinued Operations, Net of Tax", 
                    "Order" : 17, 
                    "Id" : "8ffb51cc-edfc-432d-beb5-e48b4cd57f13", 
                    "expanded" : true
                  }, 
                  "fac:ExtraordinaryItemsIncomeExpenseNetTax" : {
                    "Name" : "fac:ExtraordinaryItemsIncomeExpenseNetTax", 
                    "Label" : "Extraordinary Items of Income (Expense), Net of Tax", 
                    "Order" : 18, 
                    "Id" : "b8279d3c-d404-4fe8-9072-83ad7f07e011", 
                    "expanded" : true
                  }, 
                  "fac:NetIncomeLoss" : {
                    "Name" : "fac:NetIncomeLoss", 
                    "Label" : "Net Income (Loss)", 
                    "Order" : 19, 
                    "Id" : "405a567b-6ac0-4f24-ac86-a5d8a9dffbcf", 
                    "expanded" : true
                  }, 
                  "fac:NetIncomeAttributableToParent" : {
                    "Name" : "fac:NetIncomeAttributableToParent", 
                    "Label" : "Net Income Attributable to Parent", 
                    "Order" : 20, 
                    "Id" : "25c6394e-bbd0-4f93-9571-18ba25171c4a", 
                    "expanded" : true
                  }, 
                  "fac:NetIncomeAttributableToNoncontrollingInterest" : {
                    "Name" : "fac:NetIncomeAttributableToNoncontrollingInterest", 
                    "Label" : "Net Income Attributable to Noncontrolling Interest", 
                    "Order" : 21, 
                    "Id" : "7d8cd263-cb29-4b16-901d-19dd01b81ee0", 
                    "expanded" : true
                  }, 
                  "fac:ResearchAndDevelopment" : {
                    "Name" : "fac:ResearchAndDevelopment", 
                    "Label" : "Research and Development", 
                    "Order" : 22, 
                    "Id" : "7d9c9b4c-ccd1-4e52-9929-fb59913d29e0", 
                    "expanded" : true
                  }, 
                  "fac:PreferredStockDividendsAndOtherAdjustments" : {
                    "Name" : "fac:PreferredStockDividendsAndOtherAdjustments", 
                    "Label" : "Preferred Stock Dividends and Other Adjustments", 
                    "Order" : 23, 
                    "Id" : "0058d20c-866f-44a2-a7f9-0c1db5010e17", 
                    "expanded" : true
                  }, 
                  "fac:NetIncomeLossAvailableToCommonStockholdersBasic" : {
                    "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
                    "Label" : "Net Income (Loss) Available to Common Stockholders, Basic", 
                    "Order" : 24, 
                    "Id" : "649d04af-415c-4ea6-9c7d-64d82bb94959", 
                    "expanded" : true
                  }
                }, 
                "Id" : "9ec9dc05-6184-424b-9116-1a4462471091", 
                "expanded" : true
              }, 
              "fac:StatementComprehensiveIncomeHierarchy" : {
                "Name" : "fac:StatementComprehensiveIncomeHierarchy", 
                "Label" : "Statement of Comprehensive Income [Hierarchy]", 
                "To" : {
                  "fac:NetIncomeLoss" : {
                    "Name" : "fac:NetIncomeLoss", 
                    "Label" : "Net Income (Loss)", 
                    "Order" : 1, 
                    "Id" : "4400add6-e9b6-4dfe-8103-757396f0ad0d", 
                    "expanded" : true
                  }, 
                  "fac:OtherComprehensiveIncomeLoss" : {
                    "Name" : "fac:OtherComprehensiveIncomeLoss", 
                    "Label" : "Other Comprehensive Income (Loss)", 
                    "Order" : 2, 
                    "Id" : "a55fdc54-80ac-410b-afda-2e70c6d8bbae", 
                    "expanded" : true
                  }, 
                  "fac:ComprehensiveIncomeLoss" : {
                    "Name" : "fac:ComprehensiveIncomeLoss", 
                    "Label" : "Comprehensive Income (Loss)", 
                    "Order" : 3, 
                    "Id" : "5c58653e-07ad-4c02-8d77-e0afe207954e", 
                    "expanded" : true
                  }, 
                  "fac:ComprehensiveIncomeLossAttributableToParent" : {
                    "Name" : "fac:ComprehensiveIncomeLossAttributableToParent", 
                    "Label" : "Comprehensive Income (Loss) Attributable to Parent", 
                    "Order" : 4, 
                    "Id" : "91640e68-b529-4318-9a8f-b6a46cea752b", 
                    "expanded" : true
                  }, 
                  "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest" : {
                    "Name" : "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                    "Label" : "Comprehensive Income (Loss) Attributable to Noncontrolling Interest", 
                    "Order" : 5, 
                    "Id" : "33ec5d28-b389-4873-828d-31e1f3f51cde", 
                    "expanded" : true
                  }
                }, 
                "Id" : "1ba833bd-10d8-4528-ae1d-d48957bb82c4", 
                "expanded" : true
              }, 
              "fac:CashFlowStatementHierarchy" : {
                "Name" : "fac:CashFlowStatementHierarchy", 
                "Label" : "Cash Flow Statement [Hierarchy]", 
                "To" : {
                  "fac:NetCashFlowsFromOperatingActivitiesContinuing" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivitiesContinuing", 
                    "Label" : "Net Cash Flows from Operating Activities, Continuing", 
                    "Order" : 1, 
                    "Id" : "f79c84a9-8e18-4a2c-b852-c91ffcf4547e", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flows from Operating Activities, Discontinued", 
                    "Order" : 2, 
                    "Id" : "cbd1e528-f9fd-4da0-8d2d-fb4df1258e5e", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromOperatingActivities" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivities", 
                    "Label" : "Net Cash Flows from Operating Activities", 
                    "Order" : 3, 
                    "Id" : "3d478903-efe5-46f8-affc-cf0a0dc45461", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromInvestingActivitiesContinuing" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivitiesContinuing", 
                    "Label" : "Net Cash Flows from Investing Activities, Continuing", 
                    "Order" : 4, 
                    "Id" : "4e5edd73-d7a0-4fc4-9b4a-64a79b879052", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flows from Investing Activities, Discontinued", 
                    "Order" : 5, 
                    "Id" : "60ed7144-40ce-4adf-8459-5143d27196aa", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromInvestingActivities" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivities", 
                    "Label" : "Net Cash Flows from Investing Activities", 
                    "Order" : 6, 
                    "Id" : "877bb8ce-efa9-400c-8099-865120cbad7c", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromFinancingActivitiesContinuing" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivitiesContinuing", 
                    "Label" : "Net Cash Flows from Financing Activities, Continuing", 
                    "Order" : 7, 
                    "Id" : "1d16c7a6-15a9-4a23-aa7d-852a6f58ad23", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flows from Financing Activities, Discontinued", 
                    "Order" : 8, 
                    "Id" : "f4dd8592-872d-4eb6-af17-c3109fbb8f55", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromFinancingActivities" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivities", 
                    "Label" : "Net Cash Flows from Financing Activities", 
                    "Order" : 9, 
                    "Id" : "df0289ab-44f3-4c00-8827-65ccfdb4dc51", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsContinuing" : {
                    "Name" : "fac:NetCashFlowsContinuing", 
                    "Label" : "Net Cash Flows, Continuing", 
                    "Order" : 10, 
                    "Id" : "a2c288cf-775d-47f5-8673-b6101f1818dd", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsDiscontinued" : {
                    "Name" : "fac:NetCashFlowsDiscontinued", 
                    "Label" : "Net Cash Flows, Discontinued", 
                    "Order" : 11, 
                    "Id" : "85367ae5-5cf8-4d35-9390-826592eb3a39", 
                    "expanded" : true
                  }, 
                  "fac:ExchangeGainsLosses" : {
                    "Name" : "fac:ExchangeGainsLosses", 
                    "Label" : "Exchange Gains (Losses)", 
                    "Order" : 12, 
                    "Id" : "9b9677ca-c19e-4a81-af91-39c80f3e0cc6", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlows" : {
                    "Name" : "fac:NetCashFlows", 
                    "Label" : "Net Cash Flows", 
                    "Order" : 13, 
                    "Id" : "00716111-4fa8-45fe-919b-369b1767099a", 
                    "expanded" : true
                  }
                }, 
                "Id" : "b1407050-e5cf-42c7-a776-633e83bb9304", 
                "expanded" : true
              }, 
              "fac:KeyRatiosHierarchy" : {
                "Name" : "fac:KeyRatiosHierarchy", 
                "Label" : "Key Ratios [Hierarchy]", 
                "To" : {
                  "fac:ReturnOnEquity" : {
                    "Name" : "fac:ReturnOnEquity", 
                    "Label" : "Return on Equity (ROE)", 
                    "Order" : 2, 
                    "Id" : "4d63286e-708a-4e17-a6d0-571f49ebad1a", 
                    "expanded" : true
                  }, 
                  "fac:ReturnOnAssets" : {
                    "Name" : "fac:ReturnOnAssets", 
                    "Label" : "Return on Assets (ROA)", 
                    "Order" : 3, 
                    "Id" : "deb538a1-efe7-4aa7-8aec-420c8eb18bc0", 
                    "expanded" : true
                  }, 
                  "fac:ReturnOnSalesROS" : {
                    "Name" : "fac:ReturnOnSalesROS", 
                    "Label" : "Return on Sales (ROS)", 
                    "Order" : 4, 
                    "Id" : "ef973cf4-1e98-4cc8-9a08-ddec587c1e8b", 
                    "expanded" : true
                  }, 
                  "fac:SustainableGrowthRate" : {
                    "Name" : "fac:SustainableGrowthRate", 
                    "Label" : "Sustainable Growth Rate (SGR)", 
                    "Order" : 5, 
                    "Id" : "802e94aa-8137-4536-829a-d14e40ac341d", 
                    "expanded" : true
                  }
                }, 
                "Id" : "1fc4187a-21fe-4ee0-a4c4-44560195599f", 
                "expanded" : true
              }, 
              "fac:ValidationStatistics" : {
                "Name" : "fac:ValidationStatistics", 
                "Label" : "Validation Rule Statistics [Hierarchy]", 
                "To" : {
                  "fac:PassedValidations" : {
                    "Name" : "fac:PassedValidations", 
                    "Label" : "Passed Validations", 
                    "Id" : "0bd3f758-5743-4217-a2a6-10aabf9df92d", 
                    "expanded" : true
                  }, 
                  "fac:FailedValidations" : {
                    "Name" : "fac:FailedValidations", 
                    "Label" : "Failing Validations", 
                    "Id" : "acd696ba-0a1c-48b4-bf83-838e91b6d131", 
                    "expanded" : true
                  }, 
                  "fac:NotApplicableValidations" : {
                    "Name" : "fac:NotApplicableValidations", 
                    "Label" : "Skipped Validations (unmet preconditions)", 
                    "Id" : "8f08115c-518b-43c8-9165-00de15a49836", 
                    "expanded" : true
                  }
                }, 
                "Id" : "df9b9b17-d0a0-43fa-84af-1850d94e720a", 
                "expanded" : true
              }, 
              "fac:Validations" : {
                "Name" : "fac:Validations", 
                "Label" : "Fact Validation Rule Results [Hierarchy]", 
                "To" : {
                  "fac:EquityValidation" : {
                    "Name" : "fac:EquityValidation", 
                    "Label" : "Equity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest", 
                    "Id" : "ac2e93f9-eb11-4385-ae12-2cd7abc25c8b", 
                    "expanded" : true, 
                    "Order" : 3
                  }, 
                  "fac:AssetsValidation" : {
                    "Id" : "e629c26f-0a6d-45d0-a4c4-1a528301627b", 
                    "Name" : "fac:AssetsValidation", 
                    "Label" : "Assets = LiabilitiesAndEquity", 
                    "Order" : 13, 
                    "expanded" : true
                  }, 
                  "fac:AssetsValidation2" : {
                    "Id" : "9677db98-a706-44ae-8a5e-6f5394a5fb49", 
                    "Name" : "fac:AssetsValidation2", 
                    "Label" : "Assets = CurrentAssets + NoncurrentAssets", 
                    "Order" : 4, 
                    "expanded" : true
                  }, 
                  "fac:LiabilitiesValidation" : {
                    "Name" : "fac:LiabilitiesValidation", 
                    "Label" : "Liabilities = CurrentLiabilities + NoncurrentLiabilities", 
                    "Id" : "8ef620f4-9a41-426d-9feb-e8499fb7618f", 
                    "expanded" : true, 
                    "Order" : 5
                  }, 
                  "fac:LiabilitiesAndEquityValidation" : {
                    "Name" : "fac:LiabilitiesAndEquityValidation", 
                    "Label" : "LiabilitiesAndEquity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest", 
                    "Id" : "4e483151-666f-44be-a1d9-de8b4583edc3", 
                    "expanded" : true, 
                    "Order" : 6
                  }, 
                  "fac:GrossProfitValidation" : {
                    "Name" : "fac:GrossProfitValidation", 
                    "Label" : "GrossProfit = Revenues - CostOfRevenue", 
                    "Id" : "11dba54b-088f-43ab-b62c-41fd58c93962", 
                    "expanded" : true, 
                    "Order" : 7
                  }, 
                  "fac:OperatingIncomeLossValidation" : {
                    "Name" : "fac:OperatingIncomeLossValidation", 
                    "Label" : "OperatingIncomeLoss = GrossProfit - OperatingExpenses + OtherOperatingIncomeExpenses", 
                    "Id" : "18d142b3-18a1-459a-81e3-a8b73a4771b1", 
                    "expanded" : true, 
                    "Order" : 8
                  }, 
                  "fac:IncomeBeforeEquityMethodInvestmentsValidation" : {
                    "Name" : "fac:IncomeBeforeEquityMethodInvestmentsValidation", 
                    "Label" : "IncomeBeforeEquityMethodInvestments = OperatingIncomeLoss + NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                    "Id" : "aeeba100-3e0d-47dd-a778-507a9ed0be20", 
                    "expanded" : true, 
                    "Order" : 9
                  }, 
                  "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", 
                    "Label" : "IncomeLossFromContinuingOperationsBeforeTax = IncomeBeforeEquityMethodInvestments + IncomeLossFromEquityMethodInvestments", 
                    "Id" : "bc9d317e-5bbc-46bc-8006-0bb124d6a8e2", 
                    "expanded" : true, 
                    "Order" : 10
                  }, 
                  "fac:IncomeLossFromContinuingOperationsAfterTaxValidation" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", 
                    "Label" : "IncomeLossFromContinuingOperationsAfterTax = IncomeLossFromContinuingOperationsBeforeTax - IncomeTaxExpenseBenefit", 
                    "Id" : "672ba74f-540a-4047-81db-bc02483088e9", 
                    "expanded" : true, 
                    "Order" : 11
                  }, 
                  "fac:NetIncomeLossValidation" : {
                    "Name" : "fac:NetIncomeLossValidation", 
                    "Label" : "NetIncomeLoss = IncomeLossFromContinuingOperationsAfterTax + IncomeLossFromDiscontinuedOperationsNetTax + ExtraordinaryItemsIncomeExpenseNetTax", 
                    "Id" : "c527f140-da14-47f8-bb6a-a336a34aa60e", 
                    "expanded" : true, 
                    "Order" : 12
                  }, 
                  "fac:NetIncomeLoss2Validation" : {
                    "Name" : "fac:NetIncomeLoss2Validation", 
                    "Label" : "NetIncomeLoss = NetIncomeAttributableToParent + NetIncomeAttributableToNoncontrollingInterest", 
                    "Id" : "269d13b8-c2de-465a-a73c-271c1f5367c9", 
                    "expanded" : true, 
                    "Order" : 2
                  }, 
                  "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation" : {
                    "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", 
                    "Label" : "NetIncomeLossAvailableToCommonStockholdersBasic = NetIncomeAttributableToParent - PreferredStockDividendsAndOtherAdjustments", 
                    "Id" : "33e587a4-ceca-4dfe-b7a7-4b581979b526", 
                    "expanded" : true, 
                    "Order" : 14
                  }, 
                  "fac:ComprehensiveIncomeLossValidation" : {
                    "Name" : "fac:ComprehensiveIncomeLossValidation", 
                    "Label" : "ComprehensiveIncomeLoss = ComprehensiveIncomeLossAttributableToParent + ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                    "Id" : "3551726d-513d-46a7-9ef8-125080ae54fb", 
                    "expanded" : true, 
                    "Order" : 15
                  }, 
                  "fac:ComprehensiveIncomeLoss2Validation" : {
                    "Name" : "fac:ComprehensiveIncomeLoss2Validation", 
                    "Label" : "ComprehensiveIncome = NetIncomeLoss + OtherComprehensiveIncome", 
                    "Id" : "62f3cab9-4fc0-48d2-9c1d-602d52de0080", 
                    "expanded" : true, 
                    "Order" : 16
                  }, 
                  "fac:OperatingIncomeLoss2Validation" : {
                    "Name" : "fac:OperatingIncomeLoss2Validation", 
                    "Label" : "OperatingIncomeLoss = Revenues - CostsAndExpenses + OtherOperatingIncomeExpenses", 
                    "Id" : "35e4c4d4-0947-4ffc-8039-5f6411069145", 
                    "expanded" : true, 
                    "Order" : 17
                  }, 
                  "fac:NetCashFlowsValidation" : {
                    "Name" : "fac:NetCashFlowsValidation", 
                    "Label" : "NetCashFlows = NetCashFlowsFromOperatingActivities + NetCashFlowsFromInvestingActivities + NetCashFlowsFromFinancingActivities [+ ExchangeGainsLosses]", 
                    "Id" : "e1530488-3432-4005-b5d4-2c19cdf125b6", 
                    "expanded" : true, 
                    "Order" : 18
                  }, 
                  "fac:NetCashFlowsContinuingValidation" : {
                    "Name" : "fac:NetCashFlowsContinuingValidation", 
                    "Label" : "NetCashFlowsContinuing = NetCashFlowsFromOperatingActivitiesContinuing + NetCashFlowsFromInvestingActivitiesContinuing + NetCashFlowsFromFinancingActivitiesContinuing", 
                    "Id" : "2598b79f-357a-4a1c-b4ea-ac5e1110c8ba", 
                    "expanded" : true, 
                    "Order" : 19
                  }, 
                  "fac:NetCashFlowsDiscontinuedValidation" : {
                    "Name" : "fac:NetCashFlowsDiscontinuedValidation", 
                    "Label" : "NetCashFlowsDiscontinued = NetCashFlowsFromOperatingActivitiesDiscontinued + NetCashFlowsFromInvestingActivitiesDiscontinued + NetCashFlowsFromFinancingActivitiesDiscontinued", 
                    "Id" : "5b9e2b9f-e73f-4fd3-9f49-68e9504d0539", 
                    "expanded" : true, 
                    "Order" : 20
                  }, 
                  "fac:NetCashFlowsFromOperatingActivitiesValidation" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivitiesValidation", 
                    "Label" : "NetCashFlowsFromOperatingActivities = NetCashFlowsFromOperatingActivitiesContinuing + NetCashFlowsFromOperatingActivitiesDiscontinued", 
                    "Id" : "2dc43dfa-1473-4e02-be62-73e04039b789", 
                    "expanded" : true, 
                    "Order" : 21
                  }, 
                  "fac:NetCashFlowsFromInvestingActivitiesValidation" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivitiesValidation", 
                    "Label" : "NetCashFlowsFromInvestingActivities = NetCashFlowsFromInvestingActivitiesContinuing + NetCashFlowsFromInvestingActivitiesDiscontinued", 
                    "Id" : "8aff03dc-f74d-4e5b-9c63-2e88ecc5fdec", 
                    "expanded" : true, 
                    "Order" : 22
                  }, 
                  "fac:NetCashFlowsFromFinancingActivitiesValidation" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivitiesValidation", 
                    "Label" : "NetCashFlowsFromFinancingActivities = NetCashFlowsFromFinancingActivitiesContinuing + NetCashFlowsFromFinancingActivitiesDiscontinued", 
                    "Id" : "c0167ac6-2ec3-408c-8895-5b9ded20a7d5", 
                    "expanded" : true, 
                    "Order" : 23
                  }
                }, 
                "Id" : "e1547838-cf51-472b-b864-b2caede2156a", 
                "expanded" : true
              }
            }, 
            "Id" : "a3e2ac2b-4b9c-4b8e-8f44-7fd39297de99", 
            "expanded" : true
          }
        }, 
        "Id" : "e3f711bf-7ee3-42e3-a71e-c9f045425f2f", 
        "expanded" : true
      }
    }
  }, {
    "LinkName" : "link:definitionLink", 
    "LinkRole" : "http://xbrl.io/fundamental-accounting-concepts", 
    "ArcName" : "link:definitionArc", 
    "ArcRole" : "http://www.xbrlsite.com/2013/fro/arcrole/class-subClass", 
    "Kind" : "InterConceptTreeNetwork", 
    "ShortName" : "ConceptMap", 
    "CyclesAllowed" : "undirected", 
    "Trees" : {
      "fac:PreferredStockDividendsAndOtherAdjustments" : {
        "Name" : "fac:PreferredStockDividendsAndOtherAdjustments", 
        "Label" : "Preferred Stock Dividends and Other Adjustments", 
        "To" : {
          "us-gaap:PreferredStockDividendsAndOtherAdjustments" : {
            "Name" : "us-gaap:PreferredStockDividendsAndOtherAdjustments", 
            "Id" : "c08ec2d8-bd70-4a54-a912-c33aa651fd46"
          }
        }, 
        "Id" : "30384133-a1e5-411e-b57d-d6d0ae6b54f3"
      }, 
      "fac:NoncurrentLiabilities" : {
        "Name" : "fac:NoncurrentLiabilities", 
        "Label" : "Noncurrent Liabilities", 
        "To" : {
          "us-gaap:LiabilitiesNoncurrent" : {
            "Name" : "us-gaap:LiabilitiesNoncurrent", 
            "Id" : "52d6060c-b54c-4cba-a457-06a4b70bb1e4"
          }
        }, 
        "Id" : "cbb31bba-25f0-42d1-b509-72746e83b284"
      }, 
      "fac:EntityRegistrantName" : {
        "Name" : "fac:EntityRegistrantName", 
        "Label" : "Entity Registrant Name", 
        "To" : {
          "dei:EntityRegistrantName" : {
            "Name" : "dei:EntityRegistrantName", 
            "Id" : "741d7793-f5dc-4a7e-ac74-524d96da0f56"
          }
        }, 
        "Id" : "26d20f5f-389f-4efb-8ee8-e8cf6c24b4ba"
      }, 
      "fac:Revenues" : {
        "Name" : "fac:Revenues", 
        "Label" : "Revenues", 
        "To" : {
          "us-gaap:Revenues" : {
            "Name" : "us-gaap:Revenues", 
            "Id" : "070a24ea-d907-43dd-aa1c-0e03f317f0d9"
          }, 
          "us-gaap:SalesRevenueNet" : {
            "Name" : "us-gaap:SalesRevenueNet", 
            "Id" : "cbbc24aa-dd5a-48a5-a643-18d242941170"
          }, 
          "us-gaap:SalesRevenueServicesNet" : {
            "Name" : "us-gaap:SalesRevenueServicesNet", 
            "Id" : "1c763b87-df2c-45b7-80e6-851576726e98"
          }, 
          "us-gaap:SalesRevenueGoodsNet" : {
            "Name" : "us-gaap:SalesRevenueGoodsNet", 
            "Id" : "6dcde9d2-cc0b-49b8-a240-bf9b91461ed5"
          }, 
          "us-gaap:RevenuesNetOfInterestExpense" : {
            "Name" : "us-gaap:RevenuesNetOfInterestExpense", 
            "Id" : "2b492f5a-7bad-4063-a9a7-87f29cf8bd6c"
          }, 
          "us-gaap:HealthCareOrganizationRevenue" : {
            "Name" : "us-gaap:HealthCareOrganizationRevenue", 
            "Id" : "8e317a74-646c-4eee-b63c-b8fa856795fd"
          }, 
          "us-gaap:InterestAndDividendIncomeOperating" : {
            "Name" : "us-gaap:InterestAndDividendIncomeOperating", 
            "Id" : "8c9102d2-ad1a-4759-a95b-251e211c82a8"
          }, 
          "us-gaap:RealEstateRevenueNet" : {
            "Name" : "us-gaap:RealEstateRevenueNet", 
            "Id" : "b20b3201-83af-4568-85b5-98b2ecbbcce5"
          }, 
          "us-gaap:RevenueMineralSales" : {
            "Name" : "us-gaap:RevenueMineralSales", 
            "Id" : "431046c3-7efc-46f3-8c89-8ba276c68667"
          }, 
          "us-gaap:OilAndGasRevenue" : {
            "Name" : "us-gaap:OilAndGasRevenue", 
            "Id" : "4c1a9cdd-9f63-4979-9968-ebfd8e3a02b0"
          }, 
          "us-gaap:RegulatedAndUnregulatedOperatingRevenue" : {
            "Name" : "us-gaap:RegulatedAndUnregulatedOperatingRevenue", 
            "Id" : "81dfec0c-497d-4e95-b50e-52aea6f923c6"
          }, 
          "us-gaap:FinancialServicesRevenue" : {
            "Name" : "us-gaap:FinancialServicesRevenue", 
            "Id" : "65574555-bd21-42cd-8e9b-a10c15957fdd"
          }, 
          "us-gaap:ShippingAndHandlingRevenue" : {
            "Name" : "us-gaap:ShippingAndHandlingRevenue", 
            "Id" : "4e7dacab-ede5-4df8-b40e-68d2ec14d3ec"
          }, 
          "us-gaap:SalesRevenueFromEnergyCommoditiesAndServices" : {
            "Name" : "us-gaap:SalesRevenueFromEnergyCommoditiesAndServices", 
            "Id" : "e659348e-7ce1-4399-afc5-31ad9bfa3f6a"
          }, 
          "us-gaap:UtilityRevenue" : {
            "Name" : "us-gaap:UtilityRevenue", 
            "Id" : "f644aeab-805b-47b8-8692-32d2a8ba9146"
          }, 
          "us-gaap:PhaseInPlanAmountOfCapitalizedCostsRecovered" : {
            "Name" : "us-gaap:PhaseInPlanAmountOfCapitalizedCostsRecovered", 
            "Id" : "e036bcd6-5bda-4da2-9e2a-95429204b665"
          }, 
          "us-gaap:SecondaryProcessingRevenue" : {
            "Name" : "us-gaap:SecondaryProcessingRevenue", 
            "Id" : "87bbd619-fa77-490b-b679-f4442a36ec84"
          }, 
          "us-gaap:RevenueSteamProductsAndServices" : {
            "Name" : "us-gaap:RevenueSteamProductsAndServices", 
            "Id" : "271f513e-60d8-40ee-8bdf-3330a3502a47"
          }, 
          "us-gaap:RevenueFromLeasedAndOwnedHotels" : {
            "Name" : "us-gaap:RevenueFromLeasedAndOwnedHotels", 
            "Id" : "c43bd9f9-198b-4afa-bdb2-985e205cd50e"
          }, 
          "us-gaap:FranchisorRevenue" : {
            "Name" : "us-gaap:FranchisorRevenue", 
            "Id" : "8f25904a-da75-4a69-b3ac-d1e0dd31167e"
          }, 
          "us-gaap:SubscriptionRevenue" : {
            "Name" : "us-gaap:SubscriptionRevenue", 
            "Id" : "a77589cd-adef-42ed-a2f6-bd68b36ca2d6"
          }, 
          "us-gaap:AdvertisingRevenue" : {
            "Name" : "us-gaap:AdvertisingRevenue", 
            "Id" : "b5036388-48f0-470b-97ba-4900ef0cffee"
          }, 
          "us-gaap:AdmissionsRevenue" : {
            "Name" : "us-gaap:AdmissionsRevenue", 
            "Id" : "8fdc0660-cf48-4050-94d8-f67e12648e12"
          }, 
          "us-gaap:RevenueFromEnrollmentAndRegistrationFeesExcludingHospitalityEnterprises" : {
            "Name" : "us-gaap:RevenueFromEnrollmentAndRegistrationFeesExcludingHospitalityEnterprises", 
            "Id" : "afc675ed-4855-44ed-9b4b-feb67ab86934"
          }, 
          "us-gaap:MembershipDuesRevenueOnGoing" : {
            "Name" : "us-gaap:MembershipDuesRevenueOnGoing", 
            "Id" : "6cdcf1f7-91c2-47d2-9fbf-e9032244108a"
          }, 
          "us-gaap:LicensesRevenue" : {
            "Name" : "us-gaap:LicensesRevenue", 
            "Id" : "7422ad73-0548-4284-a481-d65f94d64220"
          }, 
          "us-gaap:RoyaltyRevenue" : {
            "Name" : "us-gaap:RoyaltyRevenue", 
            "Id" : "0762358e-34a3-4002-8b39-198edb11c896"
          }, 
          "us-gaap:SalesOfOilAndGasProspects" : {
            "Name" : "us-gaap:SalesOfOilAndGasProspects", 
            "Id" : "a88d37af-0afe-47ac-b99a-e50f0b8ad446"
          }, 
          "us-gaap:ClearingFeesRevenue" : {
            "Name" : "us-gaap:ClearingFeesRevenue", 
            "Id" : "550dc2eb-941a-4e75-989f-0d307c7d98f8"
          }, 
          "us-gaap:ReimbursementRevenue" : {
            "Name" : "us-gaap:ReimbursementRevenue", 
            "Id" : "1ad094d4-6b6a-4f75-a57d-8cd60e1cbd2d"
          }, 
          "us-gaap:RevenueFromGrants" : {
            "Name" : "us-gaap:RevenueFromGrants", 
            "Id" : "58c22849-703b-4487-a7c8-b21cb83c3627"
          }, 
          "us-gaap:RevenueOtherManufacturedProducts" : {
            "Name" : "us-gaap:RevenueOtherManufacturedProducts", 
            "Id" : "3d02df8e-95be-41a7-a9d5-81aba36e31d5"
          }, 
          "us-gaap:ConstructionMaterialsRevenue" : {
            "Name" : "us-gaap:ConstructionMaterialsRevenue", 
            "Id" : "aa401f7d-f24f-4a24-afd2-723c27c9c605"
          }, 
          "us-gaap:TimberRevenue" : {
            "Name" : "us-gaap:TimberRevenue", 
            "Id" : "5c51681f-5367-48c1-8555-2756c65fa70a"
          }, 
          "us-gaap:RecyclingRevenue" : {
            "Name" : "us-gaap:RecyclingRevenue", 
            "Id" : "528c2db6-0f0e-4af3-8c4c-e47314d0e981"
          }, 
          "us-gaap:OtherSalesRevenueNet" : {
            "Name" : "us-gaap:OtherSalesRevenueNet", 
            "Id" : "7a31af00-e29f-48bb-bb76-0ddf8f08bbe9"
          }, 
          "us-gaap:SaleOfTrustAssetsToPayExpenses" : {
            "Name" : "us-gaap:SaleOfTrustAssetsToPayExpenses", 
            "Id" : "56bf4649-4154-4729-a690-e9e3a5222445"
          }, 
          "us-gaap:PassengerRevenue" : {
            "Name" : "us-gaap:PassengerRevenue", 
            "Id" : "76dc3d25-5431-42b9-bf28-3dc70e87608f"
          }, 
          "us-gaap:VehicleTollRevenue" : {
            "Name" : "us-gaap:VehicleTollRevenue", 
            "Id" : "e17e9f59-3755-4947-9f6c-d09fa9328cfb"
          }, 
          "us-gaap:CargoAndFreightRevenue" : {
            "Name" : "us-gaap:CargoAndFreightRevenue", 
            "Id" : "9201640f-bdb3-404a-8d7d-9f2cc6ce0e42"
          }, 
          "us-gaap:NetInvestmentIncome" : {
            "Name" : "us-gaap:NetInvestmentIncome", 
            "Id" : "b78fff86-97b3-4500-84d7-54a72cc68e4a"
          }, 
          "us-gaap:RevenuesExcludingInterestAndDividends" : {
            "Name" : "us-gaap:RevenuesExcludingInterestAndDividends", 
            "Id" : "7928ab6d-a770-4310-b1ee-a4418322378f"
          }, 
          "us-gaap:InvestmentBankingRevenue" : {
            "Name" : "us-gaap:InvestmentBankingRevenue", 
            "Id" : "d1fa3b7c-ad00-4f64-87e7-c8b42cbdf0b8"
          }, 
          "us-gaap:UnderwritingIncomeLoss" : {
            "Name" : "us-gaap:UnderwritingIncomeLoss", 
            "Id" : "730d365a-d6f3-46e3-af10-b49c1a5c1e59"
          }, 
          "us-gaap:MarketDataRevenue" : {
            "Name" : "us-gaap:MarketDataRevenue", 
            "Id" : "ebe2ddc5-b804-4b08-8a9e-7c16ae733d43"
          }
        }, 
        "Id" : "7f142386-db71-47b6-a3b6-3359c6154341"
      }, 
      "fac:NetCashFlowsContinuing" : {
        "Name" : "fac:NetCashFlowsContinuing", 
        "Label" : "Net Cash Flows, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInContinuingOperations", 
            "Id" : "03ff95fc-2d87-475c-bda2-b39e4fe2f1a5"
          }
        }, 
        "Id" : "397f3df1-cada-4bc9-a885-1887734e2afe"
      }, 
      "fac:Assets" : {
        "Name" : "fac:Assets", 
        "Label" : "Assets", 
        "To" : {
          "us-gaap:Assets" : {
            "Name" : "us-gaap:Assets", 
            "Id" : "cf8b0075-3480-4abc-bf30-3d6077eefee5"
          }, 
          "us-gaap:AssetsCurrent" : {
            "Name" : "us-gaap:AssetsCurrent", 
            "Id" : "42600d11-dda8-4bb2-a350-f3aff454ec04"
          }
        }, 
        "Id" : "b66c1d41-9beb-4595-be30-9591b41b08a1"
      }, 
      "fac:EquityAttributableToParent" : {
        "Name" : "fac:EquityAttributableToParent", 
        "Label" : "Equity Attributable to Parent", 
        "To" : {
          "us-gaap:StockholdersEquity" : {
            "Name" : "us-gaap:StockholdersEquity", 
            "Id" : "c0e504c4-03af-48c1-94ae-1f000093d0c0"
          }, 
          "us-gaap:PartnersCapital" : {
            "Name" : "us-gaap:PartnersCapital", 
            "Id" : "b3986ad8-4ebe-4e1a-891a-f5111598331a"
          }, 
          "us-gaap:MemberEquity" : {
            "Name" : "us-gaap:MemberEquity", 
            "Id" : "d8f5a358-3d45-44a3-9aa8-69bb19b522a5"
          }
        }, 
        "Id" : "2796490e-51a2-4135-9752-c195fc69f9ef"
      }, 
      "fac:InterestAndDebtExpense" : {
        "Name" : "fac:InterestAndDebtExpense", 
        "Label" : "Interest and Debt Expense", 
        "To" : {
          "us-gaap:InterestAndDebtExpense" : {
            "Name" : "us-gaap:InterestAndDebtExpense", 
            "Id" : "50305f05-52c4-48a5-89a8-177581cc4335"
          }
        }, 
        "Id" : "3700be64-3c27-4c4a-9aab-2d4e9012521f"
      }, 
      "fac:IncomeTaxExpenseBenefit" : {
        "Name" : "fac:IncomeTaxExpenseBenefit", 
        "Label" : "Income Tax Expense (Benefit)", 
        "To" : {
          "us-gaap:IncomeTaxExpenseBenefit" : {
            "Name" : "us-gaap:IncomeTaxExpenseBenefit", 
            "Id" : "adec10cf-b1fc-44fe-9742-fa6a71cfb3fc"
          }, 
          "us-gaap:IncomeTaxExpenseBenefitContinuingOperations" : {
            "Name" : "us-gaap:IncomeTaxExpenseBenefitContinuingOperations", 
            "Id" : "9be815d3-9cdf-4840-acf9-1307823771be"
          }, 
          "us-gaap:FederalHomeLoanBankAssessments" : {
            "Name" : "us-gaap:FederalHomeLoanBankAssessments", 
            "Id" : "96c1dcae-89e5-40c0-bce0-3dca51d4a30d"
          }
        }, 
        "Id" : "0003d831-31e5-45de-a86a-47c12077d966"
      }, 
      "fac:EntityCentralIndexKey" : {
        "Name" : "fac:EntityCentralIndexKey", 
        "Label" : "Central Index Key (CIK)", 
        "To" : {
          "dei:EntityCentralIndexKey" : {
            "Name" : "dei:EntityCentralIndexKey", 
            "Id" : "0b75d1a5-4d73-447a-a982-4059e0b94188"
          }
        }, 
        "Id" : "c293e7b1-85ea-40c5-b59c-3118c6893795"
      }, 
      "fac:NatureOfOperations" : {
        "Name" : "fac:NatureOfOperations", 
        "Label" : "Nature of Operations", 
        "To" : {
          "us-gaap:NatureOfOperations" : {
            "Name" : "us-gaap:NatureOfOperations", 
            "Id" : "9298ed1a-da85-47b7-98f9-73258094787c"
          }, 
          "us-gaap:BusinessDescriptionAndBasisOfPresentationTextBlock" : {
            "Name" : "us-gaap:BusinessDescriptionAndBasisOfPresentationTextBlock", 
            "Id" : "327b87da-8652-4fa0-a8be-ba71a0754c58"
          }, 
          "us-gaap:OrganizationConsolidationAndPresentationOfFinancialStatementsDisclosureTextBlock" : {
            "Name" : "us-gaap:OrganizationConsolidationAndPresentationOfFinancialStatementsDisclosureTextBlock", 
            "Id" : "78632610-0140-4b93-ab10-ca9b19bc94e3"
          }, 
          "us-gaap:OrganizationConsolidationBasisOfPresentationBusinessDescriptionAndAccountingPoliciesTextBlock" : {
            "Name" : "us-gaap:OrganizationConsolidationBasisOfPresentationBusinessDescriptionAndAccountingPoliciesTextBlock", 
            "Id" : "374e9d10-7106-447a-b78b-afa6b8d049e6"
          }
        }, 
        "Id" : "49f5d663-3b20-44d4-9543-78156c3ffa63"
      }, 
      "fac:ResearchAndDevelopment" : {
        "Name" : "fac:ResearchAndDevelopment", 
        "Label" : "Research and Development", 
        "To" : {
          "us-gaap:ResearchAndDevelopmentExpense" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpense", 
            "Id" : "54c777f0-2644-4b6d-a27a-17aae6cc506a"
          }, 
          "us-gaap:ResearchAndDevelopmentExpenseExcludingAcquiredInProcessCost" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpenseExcludingAcquiredInProcessCost", 
            "Id" : "5de7ea80-7d96-4d6c-8fab-529d27959d5e"
          }, 
          "us-gaap:ResearchAndDevelopmentExpenseSoftwareExcludingAcquiredInProcessCost" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpenseSoftwareExcludingAcquiredInProcessCost", 
            "Id" : "46c4a856-a863-427b-b01b-f28c3783d90e"
          }, 
          "us-gaap:ResearchAndDevelopmentInProcess" : {
            "Name" : "us-gaap:ResearchAndDevelopmentInProcess", 
            "Id" : "fe8ca221-e936-4f61-8137-ec75fb1df993"
          }, 
          "us-gaap:ResearchAndDevelopmentAssetAcquiredOtherThanThroughBusinessCombinationWrittenOff" : {
            "Name" : "us-gaap:ResearchAndDevelopmentAssetAcquiredOtherThanThroughBusinessCombinationWrittenOff", 
            "Id" : "60e9a484-8616-4670-8985-ddce6a55c1db"
          }
        }, 
        "Id" : "dde6cad8-44c5-448a-8cf0-c714a40f5255"
      }, 
      "fac:OtherOperatingIncomeExpenses" : {
        "Name" : "fac:OtherOperatingIncomeExpenses", 
        "Label" : "Other Operating Income (Expenses)", 
        "To" : {
          "us-gaap:OtherOperatingIncome" : {
            "Name" : "us-gaap:OtherOperatingIncome", 
            "Id" : "f9452138-64fc-408c-b974-733c1ef04007"
          }
        }, 
        "Id" : "c55bf227-cdbf-4d9d-aaa7-9774123701e1"
      }, 
      "fac:NetCashFlowsFromInvestingActivities" : {
        "Name" : "fac:NetCashFlowsFromInvestingActivities", 
        "Label" : "Net Cash Flows from Investing Activities", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInInvestingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInInvestingActivities", 
            "Id" : "c4ac07cf-e17f-4611-807d-5c551594ef72"
          }
        }, 
        "Id" : "e512ec68-b35f-41d3-aba6-524d8436899c"
      }, 
      "fac:IncomeBeforeEquityMethodInvestments" : {
        "Name" : "fac:IncomeBeforeEquityMethodInvestments", 
        "Label" : "Income (Loss) Before Equity Method Investments", 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments", 
            "Id" : "eac5dd0e-65ff-4f27-8957-d000037e0cc2"
          }
        }, 
        "Id" : "de4fd79e-a78d-4a6e-98a9-a23c0b36d0c6"
      }, 
      "fac:TradingSymbol" : {
        "Name" : "fac:TradingSymbol", 
        "Label" : "Trading Symbol", 
        "To" : {
          "dei:TradingSymbol" : {
            "Name" : "dei:TradingSymbol", 
            "Id" : "12688aaf-c745-4ab5-a64b-0ed4b0c8b241"
          }
        }, 
        "Id" : "fa928032-4803-4fb6-98d2-08edea971e17"
      }, 
      "fac:NetIncomeLossAvailableToCommonStockholdersBasic" : {
        "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
        "Label" : "Net Income (Loss) Available to Common Stockholders, Basic", 
        "To" : {
          "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic" : {
            "Name" : "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic", 
            "Id" : "c38b8fd5-2ab0-4462-bd06-10ca7cd2453c"
          }
        }, 
        "Id" : "50136d6f-11f1-4280-bd13-c8c592ef121a"
      }, 
      "fac:EntityFilerCategory" : {
        "Name" : "fac:EntityFilerCategory", 
        "Label" : "Entity Filer Category", 
        "To" : {
          "dei:EntityFilerCategory" : {
            "Name" : "dei:EntityFilerCategory", 
            "Id" : "3501895b-c83c-4bb5-8102-8978e42beef5"
          }
        }, 
        "Id" : "6bea67ed-bf88-4f73-98fd-6370a87e6052"
      }, 
      "fac:IncomeLossFromContinuingOperationsBeforeTax" : {
        "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTax", 
        "Label" : "Income (Loss) from Continuing Operations Before Tax", 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments", 
            "Id" : "88119bcd-9d61-425a-8bd1-3ba514d3f9cb"
          }, 
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest", 
            "Id" : "9952d575-c7cc-43f3-98fb-cbba5cc58ffd"
          }
        }, 
        "Id" : "4b587ce5-44ac-4a09-8f4b-c8025c83fee9"
      }, 
      "fac:OperatingExpenses" : {
        "Name" : "fac:OperatingExpenses", 
        "Label" : "Operating Expenses", 
        "To" : {
          "us-gaap:OperatingExpenses" : {
            "Name" : "us-gaap:OperatingExpenses", 
            "Id" : "99ef0e7b-ffe1-4bd1-baf2-94568b1087be"
          }, 
          "us-gaap:OperatingCostsAndExpenses" : {
            "Name" : "us-gaap:OperatingCostsAndExpenses", 
            "Id" : "af175215-9cac-4e0a-ad2f-b56e2275218d"
          }
        }, 
        "Id" : "1d4ffc61-49e5-4e97-8b59-d1bfcc694ed4"
      }, 
      "fac:NetCashFlowsDiscontinued" : {
        "Name" : "fac:NetCashFlowsDiscontinued", 
        "Label" : "Net Cash Flows, Discontinued", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInDiscontinuedOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInDiscontinuedOperations", 
            "Id" : "e82540f6-3e73-49db-9cc7-d868003a7b3c"
          }
        }, 
        "Id" : "6a799de8-81bb-4115-baa6-74e39c6087fe"
      }, 
      "fac:Liabilities" : {
        "Name" : "fac:Liabilities", 
        "Label" : "Liabilities", 
        "To" : {
          "us-gaap:Liabilities" : {
            "Name" : "us-gaap:Liabilities", 
            "Id" : "ab5e6acc-7d77-4455-bb8e-d720963ad7ab"
          }
        }, 
        "Id" : "c797bb70-2fe8-48b1-8103-28cd31b315ca"
      }, 
      "fac:ComprehensiveIncomeLossAttributableToParent" : {
        "Name" : "fac:ComprehensiveIncomeLossAttributableToParent", 
        "Label" : "Comprehensive Income (Loss) Attributable to Parent", 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTax" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTax", 
            "Id" : "e063512d-e869-47a0-adda-e83cbcff4cf7"
          }
        }, 
        "Id" : "162cd9e5-8eeb-4349-9878-728e1cfdbccb"
      }, 
      "fac:CostOfRevenue" : {
        "Name" : "fac:CostOfRevenue", 
        "Label" : "Cost of Revenues", 
        "To" : {
          "us-gaap:CostOfRevenue" : {
            "Name" : "us-gaap:CostOfRevenue", 
            "Id" : "14f6e204-ecca-4bc5-881a-28fcc7444e71"
          }, 
          "us-gaap:CostOfGoodsAndServicesSold" : {
            "Name" : "us-gaap:CostOfGoodsAndServicesSold", 
            "Id" : "6873b9d3-7ab6-4e3d-8c2b-99745d03bc0a"
          }, 
          "us-gaap:CostOfServices" : {
            "Name" : "us-gaap:CostOfServices", 
            "Id" : "bf1ca924-7b58-4e26-81e6-e5975e6d9edc"
          }, 
          "us-gaap:CostOfGoodsSold" : {
            "Name" : "us-gaap:CostOfGoodsSold", 
            "Id" : "b41b4e92-fdb0-45e8-8aa3-65b7e3647b4d"
          }
        }, 
        "Id" : "6e17f01d-2c9d-417f-8c68-49ed485ba590"
      }, 
      "fac:NetCashFlows" : {
        "Name" : "fac:NetCashFlows", 
        "Label" : "Net Cash Flows", 
        "To" : {
          "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease" : {
            "Name" : "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease", 
            "Id" : "bd872d25-4d10-4aea-b759-0ebf1360b313"
          }, 
          "us-gaap:CashPeriodIncreaseDecrease" : {
            "Name" : "us-gaap:CashPeriodIncreaseDecrease", 
            "Id" : "2ce0a8ae-5e4d-44a2-995d-358e2590c8ac"
          }, 
          "us-gaap:NetCashProvidedByUsedInContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInContinuingOperations", 
            "Id" : "9f4b395b-29c7-4516-a22e-c4fe17ac8684"
          }
        }, 
        "Id" : "611afa66-be37-4238-9c7f-c7d312f44b3e"
      }, 
      "fac:NonoperatingIncomeLoss" : {
        "Name" : "fac:NonoperatingIncomeLoss", 
        "Label" : "Nonoperating Income (Loss)", 
        "To" : {
          "us-gaap:NonoperatingIncomeExpense" : {
            "Name" : "us-gaap:NonoperatingIncomeExpense", 
            "Id" : "db2989bf-3f98-4696-9da0-16e6ff631484"
          }
        }, 
        "Id" : "1c5c270c-88b7-451f-95dd-1ed15e93e85f"
      }, 
      "fac:NetCashFlowsFromFinancingActivitiesContinuing" : {
        "Name" : "fac:NetCashFlowsFromFinancingActivitiesContinuing", 
        "Label" : "Net Cash Flows from Financing Activities, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInFinancingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInFinancingActivitiesContinuingOperations", 
            "Id" : "640d7682-72b9-4e17-ad61-33cbc86bd489"
          }
        }, 
        "Id" : "5421bdbe-b2fb-49ff-a9ec-da1777ab3e69"
      }, 
      "fac:IncomeLossFromContinuingOperationsAfterTax" : {
        "Name" : "fac:IncomeLossFromContinuingOperationsAfterTax", 
        "Label" : "Income (Loss) from Continuing Operations After Tax", 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "b7f15e52-f874-4158-ae01-770e4cb0a9b5"
          }, 
          "us-gaap:IncomeLossBeforeExtraordinaryItemsAndCumulativeEffectOfChangeInAccountingPrinciple" : {
            "Name" : "us-gaap:IncomeLossBeforeExtraordinaryItemsAndCumulativeEffectOfChangeInAccountingPrinciple", 
            "Id" : "a2d845ff-ea67-4956-a739-5b46e99012b6"
          }, 
          "us-gaap:IncomeLossFromContinuingOperations" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperations", 
            "Id" : "e6655fd7-7cb3-40e1-9f3d-1d912f243c41"
          }
        }, 
        "Id" : "52eae2d0-f144-468b-97f1-f52b4cfb1319"
      }, 
      "fac:NetIncomeAttributableToParent" : {
        "Name" : "fac:NetIncomeAttributableToParent", 
        "Label" : "Net Income Attributable to Parent", 
        "To" : {
          "us-gaap:NetIncomeLoss" : {
            "Name" : "us-gaap:NetIncomeLoss", 
            "Id" : "2e976974-e5af-4dd7-945d-c203c327ce5d"
          }
        }, 
        "Id" : "c5528e35-ce0a-46c3-8f2a-0ea619c23731"
      }, 
      "fac:CommitmentsAndContingencies" : {
        "Name" : "fac:CommitmentsAndContingencies", 
        "Label" : "Commitments and Contingencies", 
        "To" : {
          "us-gaap:CommitmentsAndContingencies" : {
            "Name" : "us-gaap:CommitmentsAndContingencies", 
            "Id" : "ece3cdec-59d3-4c60-939d-c852db760249"
          }
        }, 
        "Id" : "76f129d3-8f10-48df-a829-b4bd55c01591"
      }, 
      "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" : {
        "Name" : "fac:NetCashFlowsFromInvestingActivitiesDiscontinued", 
        "Label" : "Net Cash Flows from Investing Activities, Discontinued", 
        "To" : {
          "us-gaap:CashProvidedByUsedInInvestingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInInvestingActivitiesDiscontinuedOperations", 
            "Id" : "ad8baabd-2d87-4859-905c-d4bdd3c33ccc"
          }
        }, 
        "Id" : "b2f594ac-14ec-4323-af8d-e187a1dc2ba6"
      }, 
      "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" : {
        "Name" : "fac:NetCashFlowsFromFinancingActivitiesDiscontinued", 
        "Label" : "Net Cash Flows from Financing Activities, Discontinued", 
        "To" : {
          "us-gaap:CashProvidedByUsedInFinancingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInFinancingActivitiesDiscontinuedOperations", 
            "Id" : "1cfd8e8d-e550-4d02-8e45-0f269d23b603"
          }
        }, 
        "Id" : "fdd0dea3-6e91-46f4-b5a5-e497e0bfb906"
      }, 
      "fac:NetIncomeAttributableToNoncontrollingInterest" : {
        "Name" : "fac:NetIncomeAttributableToNoncontrollingInterest", 
        "Label" : "Net Income Attributable to Noncontrolling Interest", 
        "To" : {
          "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest", 
            "Id" : "1f9e4cf3-6497-4898-b264-96a937ff8549"
          }
        }, 
        "Id" : "f1eedfb4-7ccb-41a0-a7f3-a8046ae3cf5b"
      }, 
      "fac:FiscalYearEnd" : {
        "Name" : "fac:FiscalYearEnd", 
        "Label" : "Fiscal Year End", 
        "To" : {
          "dei:CurrentFiscalYearEndDate" : {
            "Name" : "dei:CurrentFiscalYearEndDate", 
            "Id" : "10733da9-2bd9-4257-a5b4-4407be5b1bb8"
          }
        }, 
        "Id" : "27435af9-2b54-4d0c-a6db-d5e46699dc13"
      }, 
      "fac:NoncurrentAssets" : {
        "Name" : "fac:NoncurrentAssets", 
        "Label" : "Noncurrent Assets", 
        "To" : {
          "us-gaap:AssetsNoncurrent" : {
            "Name" : "us-gaap:AssetsNoncurrent", 
            "Id" : "72f7baf6-a46f-45c3-9a64-0a66233477c6"
          }
        }, 
        "Id" : "45cbc36b-e19c-4b7a-88f4-41c0b158195f"
      }, 
      "fac:FiscalPeriod" : {
        "Name" : "fac:FiscalPeriod", 
        "Label" : "Fiscal Period", 
        "To" : {
          "dei:DocumentFiscalPeriodFocus" : {
            "Name" : "dei:DocumentFiscalPeriodFocus", 
            "Id" : "64330f91-c0d1-4757-aba9-5b24987652f2"
          }
        }, 
        "Id" : "64359584-61c5-4f75-b4e4-98bb5df1bbdb"
      }, 
      "fac:FiscalYear" : {
        "Name" : "fac:FiscalYear", 
        "Label" : "Fiscal Year", 
        "To" : {
          "dei:DocumentFiscalYearFocus" : {
            "Name" : "dei:DocumentFiscalYearFocus", 
            "Id" : "8c4c37bd-c9a0-41ba-85db-705c4eb05b46"
          }
        }, 
        "Id" : "dd43ba70-907c-400c-b5ac-f984c9614968"
      }, 
      "fac:NetIncomeLoss" : {
        "Name" : "fac:NetIncomeLoss", 
        "Label" : "Net Income (Loss)", 
        "To" : {
          "us-gaap:ProfitLoss" : {
            "Name" : "us-gaap:ProfitLoss", 
            "Id" : "817ac35a-f579-4afe-ad09-de24d0fc55ee"
          }, 
          "us-gaap:NetIncomeLoss" : {
            "Name" : "us-gaap:NetIncomeLoss", 
            "Id" : "6d9d178e-774a-4b68-a1a2-e0b1eb4c8ee0"
          }, 
          "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic" : {
            "Name" : "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic", 
            "Id" : "7ae54062-bced-4b06-a807-b01866f2adde"
          }, 
          "us-gaap:IncomeLossFromContinuingOperations" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperations", 
            "Id" : "df269230-c250-4bdd-9dca-04d3a4a92d25"
          }, 
          "us-gaap:IncomeLossAttributableToParent" : {
            "Name" : "us-gaap:IncomeLossAttributableToParent", 
            "Id" : "be8ff5e2-4c38-4606-b62d-afef584050a5"
          }, 
          "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "1c991fb8-0632-44a3-b952-1abc6343aa31"
          }
        }, 
        "Id" : "a917a098-803e-4ffb-b7dc-f4421ce154c0"
      }, 
      "fac:ExchangeGainsLosses" : {
        "Name" : "fac:ExchangeGainsLosses", 
        "Label" : "Exchange Gains (Losses)", 
        "To" : {
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents", 
            "Id" : "ea696b73-bf9a-4051-b705-2c0293f78e09"
          }, 
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsContinuingOperations" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsContinuingOperations", 
            "Id" : "68ac4b3d-2083-4f50-8ce2-5e4cae1d773d"
          }, 
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsDiscontinuedOperations" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsDiscontinuedOperations", 
            "Id" : "f8c16447-ffe8-4dcb-bd98-f63f26c6d8ae"
          }
        }, 
        "Id" : "48d0b197-e081-476d-8de9-0f6cd9b26771"
      }, 
      "fac:GrossProfit" : {
        "Name" : "fac:GrossProfit", 
        "Label" : "Gross Profit", 
        "To" : {
          "us-gaap:GrossProfit" : {
            "Name" : "us-gaap:GrossProfit", 
            "Id" : "1c1baf03-59e2-485d-b277-a75b09c4b203"
          }
        }, 
        "Id" : "6e0ae3db-ae59-44cc-8512-9f605f617b1d"
      }, 
      "fac:EquityAttributableToNoncontrollingInterest" : {
        "Name" : "fac:EquityAttributableToNoncontrollingInterest", 
        "Label" : "Equity Attributable to Noncontrolling Interest", 
        "To" : {
          "us-gaap:MinorityInterest" : {
            "Name" : "us-gaap:MinorityInterest", 
            "Id" : "70eb0816-d6b8-47a9-8702-bbcb617412df"
          }, 
          "us-gaap:PartnersCapitalAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:PartnersCapitalAttributableToNoncontrollingInterest", 
            "Id" : "e8687ae0-9b0c-43cc-b41f-9c6f3528e7fa"
          }, 
          "us-gaap:MinorityInterestInLimitedPartnerships" : {
            "Name" : "us-gaap:MinorityInterestInLimitedPartnerships", 
            "Id" : "43f3d61b-1c6e-41bf-9704-47f8fe12e41b"
          }, 
          "us-gaap:MinorityInterestInOperatingPartnerships" : {
            "Name" : "us-gaap:MinorityInterestInOperatingPartnerships", 
            "Id" : "108bf842-62c2-4691-b328-8bacd617a5c7"
          }, 
          "us-gaap:MinorityInterestInPreferredUnitHolders" : {
            "Name" : "us-gaap:MinorityInterestInPreferredUnitHolders", 
            "Id" : "93731252-4026-4293-aba2-99d5f822cd61"
          }, 
          "us-gaap:MinorityInterestInJointVentures" : {
            "Name" : "us-gaap:MinorityInterestInJointVentures", 
            "Id" : "fa373f7e-5592-447c-aa41-cb1526a37f0b"
          }, 
          "us-gaap:OtherMinorityInterests" : {
            "Name" : "us-gaap:OtherMinorityInterests", 
            "Id" : "33ef5168-71d6-4a20-9f22-b1045ccc6f52"
          }, 
          "us-gaap:NonredeemableNoncontrollingInterest" : {
            "Name" : "us-gaap:NonredeemableNoncontrollingInterest", 
            "Id" : "0e5f0563-df05-4d1c-aac9-bf4c88eece28"
          }, 
          "us-gaap:NoncontrollingInterestInVariableInterestEntity" : {
            "Name" : "us-gaap:NoncontrollingInterestInVariableInterestEntity", 
            "Id" : "8af3bab5-9c5c-4c0a-adf7-8b142b87b6a1"
          }
        }, 
        "Id" : "5a8e3b58-ae40-4397-9486-edf9bf6e427c"
      }, 
      "fac:CostsAndExpenses" : {
        "Name" : "fac:CostsAndExpenses", 
        "Label" : "Costs and Expenses", 
        "To" : {
          "us-gaap:CostsAndExpenses" : {
            "Name" : "us-gaap:CostsAndExpenses", 
            "Id" : "50adecaa-ab45-409a-b0fb-b1b564cd9438"
          }, 
          "us-gaap:BenefitsLossesAndExpenses" : {
            "Name" : "us-gaap:BenefitsLossesAndExpenses", 
            "Id" : "8ab02b39-2cb8-493e-9f7a-415ccdea865c"
          }
        }, 
        "Id" : "5bde6a9c-da73-4fe7-9a0a-20dac122ec8f"
      }, 
      "fac:CurrentLiabilities" : {
        "Name" : "fac:CurrentLiabilities", 
        "Label" : "Current Liabilities", 
        "To" : {
          "us-gaap:LiabilitiesCurrent" : {
            "Name" : "us-gaap:LiabilitiesCurrent", 
            "Id" : "f2da58ad-58ec-4661-9570-3deaf43e6303"
          }
        }, 
        "Id" : "e4fe868b-08b5-4446-ad46-7fab18dc931b"
      }, 
      "fac:NetCashFlowsFromOperatingActivities" : {
        "Name" : "fac:NetCashFlowsFromOperatingActivities", 
        "Label" : "Net Cash Flows from Operating Activities", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInOperatingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInOperatingActivities", 
            "Id" : "8e216a3f-dd58-469d-a91c-dacff7fef8fe"
          }
        }, 
        "Id" : "e5f868a4-008b-46e1-8bec-2da6cc871657"
      }, 
      "fac:IncomeLossFromDiscontinuedOperationsNetTax" : {
        "Name" : "fac:IncomeLossFromDiscontinuedOperationsNetTax", 
        "Label" : "Income (Loss) from Discontinued Operations, Net of Tax", 
        "To" : {
          "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTax" : {
            "Name" : "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTax", 
            "Id" : "3aedf02e-b396-422f-a943-9bf875b217a4"
          }, 
          "us-gaap:DiscontinuedOperationGainLossOnDisposalOfDiscontinuedOperationNetOfTax" : {
            "Name" : "us-gaap:DiscontinuedOperationGainLossOnDisposalOfDiscontinuedOperationNetOfTax", 
            "Id" : "710f0181-b048-4f0b-8534-88eaaf98b753"
          }, 
          "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTaxAttributableToReportingEntity" : {
            "Name" : "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTaxAttributableToReportingEntity", 
            "Id" : "ea8b8973-46fd-4d81-856e-8e9f395ec16b"
          }
        }, 
        "Id" : "177bec70-9b6c-406e-af2e-33cd0f535029"
      }, 
      "fac:ExtraordinaryItemsIncomeExpenseNetTax" : {
        "Name" : "fac:ExtraordinaryItemsIncomeExpenseNetTax", 
        "Label" : "Extraordinary Items of Income (Expense), Net of Tax", 
        "To" : {
          "us-gaap:ExtraordinaryItemNetOfTax" : {
            "Name" : "us-gaap:ExtraordinaryItemNetOfTax", 
            "Id" : "c3399671-2aae-4744-8598-915ec5b0a9be"
          }
        }, 
        "Id" : "1696155f-00cb-4a8f-bc5e-c3e60a6351d8"
      }, 
      "fac:OperatingIncomeLoss" : {
        "Name" : "fac:OperatingIncomeLoss", 
        "Label" : "Operating Income (Loss)", 
        "To" : {
          "us-gaap:OperatingIncomeLoss" : {
            "Name" : "us-gaap:OperatingIncomeLoss", 
            "Id" : "84882929-f105-48f2-a2d7-97ace57fef8f"
          }
        }, 
        "Id" : "7e253af8-8779-4c68-bde4-4a5f8db9ae28"
      }, 
      "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" : {
        "Name" : "fac:NetCashFlowsFromOperatingActivitiesDiscontinued", 
        "Label" : "Net Cash Flows from Operating Activities, Discontinued", 
        "To" : {
          "us-gaap:CashProvidedByUsedInOperatingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInOperatingActivitiesDiscontinuedOperations", 
            "Id" : "d8be8c69-51bc-414f-8c18-c1af630eb01c"
          }
        }, 
        "Id" : "a818c629-8e07-44b5-be5d-556fc449da3c"
      }, 
      "fac:OtherComprehensiveIncomeLoss" : {
        "Name" : "fac:OtherComprehensiveIncomeLoss", 
        "Label" : "Other Comprehensive Income (Loss)", 
        "To" : {
          "us-gaap:OtherComprehensiveIncomeLossNetOfTax" : {
            "Name" : "us-gaap:OtherComprehensiveIncomeLossNetOfTax", 
            "Id" : "906c6d2a-e4da-41a8-974c-fbea7374351a"
          }
        }, 
        "Id" : "52729dae-7372-42eb-aaba-00c6436816c0"
      }, 
      "fac:NetCashFlowsFromInvestingActivitiesContinuing" : {
        "Name" : "fac:NetCashFlowsFromInvestingActivitiesContinuing", 
        "Label" : "Net Cash Flows from Investing Activities, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInInvestingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInInvestingActivitiesContinuingOperations", 
            "Id" : "bf498e36-d21f-4bd3-8c10-80cd28b6944e"
          }
        }, 
        "Id" : "e3486493-ea5e-46bf-8b83-5b1ea48297ff"
      }, 
      "fac:BalanceSheetDate" : {
        "Name" : "fac:BalanceSheetDate", 
        "Label" : "Balance Sheet Date", 
        "To" : {
          "dei:DocumentPeriodEndDate" : {
            "Name" : "dei:DocumentPeriodEndDate", 
            "Id" : "5c133731-dbd9-4ae4-b08d-594dd63810a8"
          }
        }, 
        "Id" : "f9de76be-27f4-46fc-9286-c389e93466c8"
      }, 
      "fac:LiabilitiesAndEquity" : {
        "Name" : "fac:LiabilitiesAndEquity", 
        "Label" : "Liabilities and Equity", 
        "To" : {
          "us-gaap:LiabilitiesAndStockholdersEquity" : {
            "Name" : "us-gaap:LiabilitiesAndStockholdersEquity", 
            "Id" : "81a4fafb-e2f6-4247-bba0-d25a87e65b49"
          }, 
          "us-gaap:LiabilitiesAndPartnersCapital" : {
            "Name" : "us-gaap:LiabilitiesAndPartnersCapital", 
            "Id" : "d00dbc95-c971-460d-a4ba-84195c9f08f0"
          }
        }, 
        "Id" : "fe7a2526-7e0b-4680-82a6-cf065e2cb433"
      }, 
      "fac:Equity" : {
        "Name" : "fac:Equity", 
        "Label" : "Equity", 
        "To" : {
          "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "ba75ba9f-413f-439c-a344-ec78d693a0b0"
          }, 
          "us-gaap:StockholdersEquity" : {
            "Name" : "us-gaap:StockholdersEquity", 
            "Id" : "4431187b-2ac5-4fd8-8023-eacc74913627"
          }, 
          "us-gaap:PartnersCapitalIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:PartnersCapitalIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "64cd3c18-c9f6-472a-bd9e-d3e252460dab"
          }, 
          "us-gaap:PartnersCapital" : {
            "Name" : "us-gaap:PartnersCapital", 
            "Id" : "c8914c02-12ea-4824-b6d5-1cdc13b99285"
          }, 
          "us-gaap:CommonStockholdersEquity" : {
            "Name" : "us-gaap:CommonStockholdersEquity", 
            "Id" : "5e4bebfa-ebc0-4444-ad05-dc1991d366b6"
          }, 
          "us-gaap:MembersEquity" : {
            "Name" : "us-gaap:MembersEquity", 
            "Id" : "6a7228fc-7370-42d7-9b61-3ebda2cbdb59"
          }, 
          "us-gaap:AssetsNet" : {
            "Name" : "us-gaap:AssetsNet", 
            "Id" : "fff28a64-d3db-4801-a8d9-2b5e5c965c21"
          }
        }, 
        "Id" : "01afb5ff-6a75-4ca9-8ad2-28ab189c5ac5"
      }, 
      "fac:DocumentType" : {
        "Name" : "fac:DocumentType", 
        "Label" : "Document Type", 
        "To" : {
          "dei:DocumentType" : {
            "Name" : "dei:DocumentType", 
            "Id" : "aae5b42b-73f1-4280-b18f-bd8d9dfa5224"
          }
        }, 
        "Id" : "4134a0e2-3fc5-4f55-880b-91c05277ca2b"
      }, 
      "fac:IncomeLossFromEquityMethodInvestments" : {
        "Name" : "fac:IncomeLossFromEquityMethodInvestments", 
        "Label" : "Income (Loss) from Equity Method Investments", 
        "To" : {
          "us-gaap:IncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromEquityMethodInvestments", 
            "Id" : "809b3fe6-a6d1-4a4e-a964-5c3b71585e13"
          }
        }, 
        "Id" : "bf34da69-7e33-4ba0-a418-bf5f6ff6bc4f"
      }, 
      "fac:ComprehensiveIncomeLoss" : {
        "Name" : "fac:ComprehensiveIncomeLoss", 
        "Label" : "Comprehensive Income (Loss)", 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "bfa4510b-2e03-48cf-9e97-c8244d8c3139"
          }, 
          "us-gaap:ComprehensiveIncomeNetOfTax" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTax", 
            "Id" : "0359b755-4fe5-44d7-80ea-951699264f60"
          }
        }, 
        "Id" : "97e33702-752e-4fe8-9257-47a6b0786537"
      }, 
      "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest" : {
        "Name" : "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
        "Label" : "Comprehensive Income (Loss) Attributable to Noncontrolling Interest", 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest", 
            "Id" : "99e608be-ab85-420f-a860-06ed35df3059"
          }
        }, 
        "Id" : "af1ac2ec-bfe6-4ff7-b1a8-70fff98bcea6"
      }, 
      "fac:CurrentAssets" : {
        "Name" : "fac:CurrentAssets", 
        "Label" : "Current Assets", 
        "To" : {
          "us-gaap:AssetsCurrent" : {
            "Name" : "us-gaap:AssetsCurrent", 
            "Id" : "986e7dcb-b086-4056-965b-55c2deb40554"
          }
        }, 
        "Id" : "22ece9ea-518f-4b26-879e-217d7cf0104f"
      }, 
      "fac:NetCashFlowsFromOperatingActivitiesContinuing" : {
        "Name" : "fac:NetCashFlowsFromOperatingActivitiesContinuing", 
        "Label" : "Net Cash Flows from Operating Activities, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInOperatingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInOperatingActivitiesContinuingOperations", 
            "Id" : "a217f17a-7f65-4805-b3a5-01af711abd46"
          }
        }, 
        "Id" : "e526f608-19b6-48ca-ab53-52c355e2da68"
      }, 
      "fac:NetCashFlowsFromFinancingActivities" : {
        "Name" : "fac:NetCashFlowsFromFinancingActivities", 
        "Label" : "Net Cash Flows from Financing Activities", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInFinancingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInFinancingActivities", 
            "Id" : "accae6ad-46da-413c-b434-306def7151ac"
          }
        }, 
        "Id" : "4008efa3-5396-45e2-901d-4a3fa6cf3e56"
      }, 
      "fac:RedeemableNoncontrollingInterest" : {
        "Name" : "fac:RedeemableNoncontrollingInterest", 
        "Label" : "Redeemable Noncontrolling Interest", 
        "To" : {
          "us-gaap:RedeemableNoncontrollingInterestEquityCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityCarryingAmount", 
            "Id" : "1ec1908a-5a95-437c-89da-b56afa563d65"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount", 
            "Id" : "ebc30a8d-e77e-4dd1-b252-76195f2e792c"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityPreferredCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityPreferredCarryingAmount", 
            "Id" : "6927f5d2-b62b-430e-87bc-7a554bce3071"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityOtherCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityOtherCarryingAmount", 
            "Id" : "52211f2a-9ceb-467a-930e-78d6ccc7bf86"
          }
        }, 
        "Id" : "b1acbe3f-355b-4cd1-86ea-d06e6aa7a4a1"
      }, 
      "fac:TemporaryEquity" : {
        "Name" : "fac:TemporaryEquity", 
        "Label" : "Temporary Equity", 
        "To" : {
          "us-gaap:TemporaryEquityCarryingAmountIncludingPortionAttributableToNoncontrollingInterests" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmountIncludingPortionAttributableToNoncontrollingInterests", 
            "Id" : "9f30b2d3-4f56-4a85-92c5-294b602c7390"
          }, 
          "us-gaap:TemporaryEquityRedemptionValue" : {
            "Name" : "us-gaap:TemporaryEquityRedemptionValue", 
            "Id" : "41535046-b368-4f96-b9e9-ac795d16f2a3"
          }, 
          "us-gaap:RedeemablePreferredStockCarryingAmount" : {
            "Name" : "us-gaap:RedeemablePreferredStockCarryingAmount", 
            "Id" : "17133e20-d802-42b6-badb-a4df15b0a9ca"
          }, 
          "us-gaap:TemporaryEquityCarryingAmount" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmount", 
            "Id" : "e61b7401-30e9-4531-9979-5da39d46aef5"
          }, 
          "us-gaap:TemporaryEquityValueExcludingAdditionalPaidInCapital" : {
            "Name" : "us-gaap:TemporaryEquityValueExcludingAdditionalPaidInCapital", 
            "Id" : "2b26dff6-a855-4745-b465-c6bf757d7e25"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityFairValue" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityFairValue", 
            "Id" : "82052929-8ea4-49ad-b129-beeae8aa324a"
          }, 
          "us-gaap:TemporaryEquityCarryingAmountAttributableToParent" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmountAttributableToParent", 
            "Id" : "7035ec27-91ca-4aab-ba2c-cd9aa5320c91"
          }
        }, 
        "Id" : "a1dd7353-5bda-48de-a0bd-e3535697ef2b"
      }, 
      "oag:ReservesProvedNaturalGas" : {
        "Id" : "cd7ff458-641a-4a8f-b313-4dae8b51ed51", 
        "Name" : "oag:ReservesProvedNaturalGas", 
        "To" : {
          "us-gaap:ProvedDevelopedReservesVolume" : {
            "Name" : "us-gaap:ProvedDevelopedReservesVolume", 
            "Order" : 1, 
            "Id" : "215b497b-aa57-47c8-be08-029751e5d7ee"
          }
        }
      }
    }
  } ], 
  "Hypercubes" : {
    "xbrl:DefaultHypercube" : {
      "Name" : "xbrl:DefaultHypercube", 
      "Label" : "XBRL Implicit non-dimensional Hypercube", 
      "Aspects" : {
        "xbrl:Concept" : {
          "Name" : "xbrl:Concept", 
          "Label" : "Implicit XBRL Concept Dimension", 
          "Domains" : {
            "xbrl:ConceptDomain" : {
              "Name" : "xbrl:ConceptDomain", 
              "Label" : "Implicit XBRL Concept Domain", 
              "Members" : {
                "oag:ReservesProvedNaturalGas" : {
                  "Name" : "oag:ReservesProvedNaturalGas", 
                  "Label" : "Proved Reserve Natural Gas"
                }, 
                "fac:ValidationStatistics" : {
                  "Name" : "fac:ValidationStatistics", 
                  "Label" : "Validation Rule Statistics [Hierarchy]", 
                  "IsAbstract" : true
                }, 
                "fac:PassedValidations" : {
                  "Name" : "fac:PassedValidations", 
                  "Label" : "Passed Validations"
                }, 
                "fac:FailedValidations" : {
                  "Name" : "fac:FailedValidations", 
                  "Label" : "Failing Validations"
                }, 
                "fac:NotApplicableValidations" : {
                  "Name" : "fac:NotApplicableValidations", 
                  "Label" : "Skipped Validations (unmet preconditions)"
                }, 
                "fac:GrossProfitValidation" : {
                  "Name" : "fac:GrossProfitValidation", 
                  "Label" : "GrossProfit = Revenues - CostOfRevenue"
                }, 
                "fac:IncomeBeforeEquityMethodInvestmentsValidation" : {
                  "Name" : "fac:IncomeBeforeEquityMethodInvestmentsValidation", 
                  "Label" : "IncomeBeforeEquityMethodInvestments = OperatingIncomeLoss + NonoperatingIncomeLossPlusInterestAndDebtExpense"
                }, 
                "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation" : {
                  "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", 
                  "Label" : "IncomeLossFromContinuingOperationsBeforeTax = IncomeBeforeEquityMethodInvestments + IncomeLossFromEquityMethodInvestments"
                }, 
                "fac:IncomeLossFromContinuingOperationsAfterTaxValidation" : {
                  "Name" : "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", 
                  "Label" : "IncomeLossFromContinuingOperationsAfterTax = IncomeLossFromContinuingOperationsBeforeTax - IncomeTaxExpenseBenefit"
                }, 
                "fac:NetIncomeLossValidation" : {
                  "Name" : "fac:NetIncomeLossValidation", 
                  "Label" : "NetIncomeLoss = IncomeLossFromContinuingOperationsAfterTax + IncomeLossFromDiscontinuedOperationsNetTax + ExtraordinaryItemsIncomeExpenseNetTax"
                }, 
                "fac:NetIncomeLoss2Validation" : {
                  "Name" : "fac:NetIncomeLoss2Validation", 
                  "Label" : "NetIncomeLoss = NetIncomeAttributableToParent + NetIncomeAttributableToNoncontrollingInterest"
                }, 
                "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation" : {
                  "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", 
                  "Label" : "NetIncomeLossAvailableToCommonStockholdersBasic = NetIncomeAttributableToParent - PreferredStockDividendsAndOtherAdjustments"
                }, 
                "fac:ComprehensiveIncomeLossValidation" : {
                  "Name" : "fac:ComprehensiveIncomeLossValidation", 
                  "Label" : "ComprehensiveIncomeLoss = ComprehensiveIncomeLossAttributableToParent + ComprehensiveIncomeLossAttributableToNoncontrollingInterest"
                }, 
                "fac:ComprehensiveIncomeLoss2Validation" : {
                  "Name" : "fac:ComprehensiveIncomeLoss2Validation", 
                  "Label" : "ComprehensiveIncome = NetIncomeLoss + OtherComprehensiveIncome"
                }, 
                "fac:OperatingIncomeLossValidation" : {
                  "Name" : "fac:OperatingIncomeLossValidation", 
                  "Label" : "OperatingIncomeLoss = GrossProfit - OperatingExpenses + OtherOperatingIncomeExpenses"
                }, 
                "fac:OperatingIncomeLoss2Validation" : {
                  "Name" : "fac:OperatingIncomeLoss2Validation", 
                  "Label" : "OperatingIncomeLoss = Revenues - CostsAndExpenses + OtherOperatingIncomeExpenses"
                }, 
                "fac:Validations" : {
                  "Name" : "fac:Validations", 
                  "Label" : "Fact Validation Rule Results [Hierarchy]", 
                  "IsAbstract" : true
                }, 
                "fac:LiabilitiesAndEquityValidation" : {
                  "Name" : "fac:LiabilitiesAndEquityValidation", 
                  "Label" : "LiabilitiesAndEquity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest"
                }, 
                "fac:LiabilitiesValidation" : {
                  "Name" : "fac:LiabilitiesValidation", 
                  "Label" : "Liabilities = CurrentLiabilities + NoncurrentLiabilities"
                }, 
                "fac:EquityValidation" : {
                  "Name" : "fac:EquityValidation", 
                  "Label" : "Equity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest"
                }, 
                "fac:NetCashFlowsValidation" : {
                  "Name" : "fac:NetCashFlowsValidation", 
                  "Label" : "NetCashFlows = NetCashFlowsFromOperatingActivities + NetCashFlowsFromInvestingActivities + NetCashFlowsFromFinancingActivities [+ ExchangeGainsLosses]"
                }, 
                "fac:NetCashFlowsContinuingValidation" : {
                  "Name" : "fac:NetCashFlowsContinuingValidation", 
                  "Label" : "NetCashFlowsContinuing = NetCashFlowsFromOperatingActivitiesContinuing + NetCashFlowsFromInvestingActivitiesContinuing + NetCashFlowsFromFinancingActivitiesContinuing"
                }, 
                "fac:NetCashFlowsDiscontinuedValidation" : {
                  "Name" : "fac:NetCashFlowsDiscontinuedValidation", 
                  "Label" : "NetCashFlowsDiscontinued = NetCashFlowsFromOperatingActivitiesDiscontinued + NetCashFlowsFromInvestingActivitiesDiscontinued + NetCashFlowsFromFinancingActivitiesDiscontinued"
                }, 
                "fac:NetCashFlowsFromOperatingActivitiesValidation" : {
                  "Name" : "fac:NetCashFlowsFromOperatingActivitiesValidation", 
                  "Label" : "NetCashFlowsFromOperatingActivities = NetCashFlowsFromOperatingActivitiesContinuing + NetCashFlowsFromOperatingActivitiesDiscontinued"
                }, 
                "fac:NetCashFlowsFromInvestingActivitiesValidation" : {
                  "Name" : "fac:NetCashFlowsFromInvestingActivitiesValidation", 
                  "Label" : "NetCashFlowsFromInvestingActivities = NetCashFlowsFromInvestingActivitiesContinuing + NetCashFlowsFromInvestingActivitiesDiscontinued"
                }, 
                "fac:NetCashFlowsFromFinancingActivitiesValidation" : {
                  "Name" : "fac:NetCashFlowsFromFinancingActivitiesValidation", 
                  "Label" : "NetCashFlowsFromFinancingActivities = NetCashFlowsFromFinancingActivitiesContinuing + NetCashFlowsFromFinancingActivitiesDiscontinued"
                }, 
                "fac:FundamentalAccountingConceptsLineItems" : {
                  "Name" : "fac:FundamentalAccountingConceptsLineItems", 
                  "Label" : "Fundamental Accounting Concepts [Line Items]", 
                  "IsAbstract" : true
                }, 
                "fac:FundamentalAccountingConceptsHierarchy" : {
                  "Name" : "fac:FundamentalAccountingConceptsHierarchy", 
                  "Label" : "Fundamental Accounting Concepts [Hierarchy]", 
                  "IsAbstract" : true
                }, 
                "fac:GeneralInformationHierarchy" : {
                  "Name" : "fac:GeneralInformationHierarchy", 
                  "Label" : "General Information [Hierarchy]", 
                  "IsAbstract" : true
                }, 
                "fac:EntityRegistrantName" : {
                  "Name" : "fac:EntityRegistrantName", 
                  "Label" : "Entity Registrant Name"
                }, 
                "fac:EntityCentralIndexKey" : {
                  "Name" : "fac:EntityCentralIndexKey", 
                  "Label" : "Central Index Key (CIK)"
                }, 
                "fac:EntityFilerCategory" : {
                  "Name" : "fac:EntityFilerCategory", 
                  "Label" : "Entity Filer Category"
                }, 
                "fac:TradingSymbol" : {
                  "Name" : "fac:TradingSymbol", 
                  "Label" : "Trading Symbol"
                }, 
                "fac:FiscalYearEnd" : {
                  "Name" : "fac:FiscalYearEnd", 
                  "Label" : "Fiscal Year End"
                }, 
                "fac:FiscalYear" : {
                  "Name" : "fac:FiscalYear", 
                  "Label" : "Fiscal Year"
                }, 
                "fac:FiscalPeriod" : {
                  "Name" : "fac:FiscalPeriod", 
                  "Label" : "Fiscal Period"
                }, 
                "fac:DocumentType" : {
                  "Name" : "fac:DocumentType", 
                  "Label" : "Document Type"
                }, 
                "fac:BalanceSheetDate" : {
                  "Name" : "fac:BalanceSheetDate", 
                  "Label" : "Balance Sheet Date"
                }, 
                "fac:IncomeStatementStartPeriod" : {
                  "Name" : "fac:IncomeStatementStartPeriod", 
                  "Label" : "Income Statement Start of Period"
                }, 
                "fac:BalanceSheetFormat" : {
                  "Name" : "fac:BalanceSheetFormat", 
                  "Label" : "Balance Sheet Format"
                }, 
                "fac:IncomeStatementFormat" : {
                  "Name" : "fac:IncomeStatementFormat", 
                  "Label" : "Income Statement Format"
                }, 
                "fac:NatureOfOperations" : {
                  "Name" : "fac:NatureOfOperations", 
                  "Label" : "Nature of Operations"
                }, 
                "fac:BalanceSheetHierarchy" : {
                  "Name" : "fac:BalanceSheetHierarchy", 
                  "Label" : "Balance Sheet [Hierarchy]", 
                  "IsAbstract" : true
                }, 
                "fac:CurrentAssets" : {
                  "Name" : "fac:CurrentAssets", 
                  "Label" : "Current Assets"
                }, 
                "fac:NoncurrentAssets" : {
                  "Name" : "fac:NoncurrentAssets", 
                  "Label" : "Noncurrent Assets"
                }, 
                "fac:Assets" : {
                  "Name" : "fac:Assets", 
                  "Label" : "Assets"
                }, 
                "fac:NoncurrentLiabilities" : {
                  "Name" : "fac:NoncurrentLiabilities", 
                  "Label" : "Noncurrent Liabilities"
                }, 
                "fac:CurrentLiabilities" : {
                  "Name" : "fac:CurrentLiabilities", 
                  "Label" : "Current Liabilities"
                }, 
                "fac:Liabilities" : {
                  "Name" : "fac:Liabilities", 
                  "Label" : "Liabilities"
                }, 
                "fac:CommitmentsAndContingencies" : {
                  "Name" : "fac:CommitmentsAndContingencies", 
                  "Label" : "Commitments and Contingencies"
                }, 
                "fac:TemporaryEquity" : {
                  "Name" : "fac:TemporaryEquity", 
                  "Label" : "Temporary Equity"
                }, 
                "fac:EquityAttributableToParent" : {
                  "Name" : "fac:EquityAttributableToParent", 
                  "Label" : "Equity Attributable to Parent"
                }, 
                "fac:EquityAttributableToNoncontrollingInterest" : {
                  "Name" : "fac:EquityAttributableToNoncontrollingInterest", 
                  "Label" : "Equity Attributable to Noncontrolling Interest"
                }, 
                "fac:RedeemableNoncontrollingInterest" : {
                  "Name" : "fac:RedeemableNoncontrollingInterest", 
                  "Label" : "Redeemable Noncontrolling Interest"
                }, 
                "fac:Equity" : {
                  "Name" : "fac:Equity", 
                  "Label" : "Equity"
                }, 
                "fac:LiabilitiesAndEquity" : {
                  "Name" : "fac:LiabilitiesAndEquity", 
                  "Label" : "Liabilities and Equity"
                }, 
                "fac:IncomeStatementHierarchy" : {
                  "Name" : "fac:IncomeStatementHierarchy", 
                  "Label" : "Income Statement [Hierarchy]", 
                  "IsAbstract" : true
                }, 
                "fac:Revenues" : {
                  "Name" : "fac:Revenues", 
                  "Label" : "Revenues"
                }, 
                "fac:CostOfRevenue" : {
                  "Name" : "fac:CostOfRevenue", 
                  "Label" : "Cost of Revenues"
                }, 
                "fac:GrossProfit" : {
                  "Name" : "fac:GrossProfit", 
                  "Label" : "Gross Profit"
                }, 
                "fac:OperatingExpenses" : {
                  "Name" : "fac:OperatingExpenses", 
                  "Label" : "Operating Expenses"
                }, 
                "fac:CostsAndExpenses" : {
                  "Name" : "fac:CostsAndExpenses", 
                  "Label" : "Costs and Expenses"
                }, 
                "fac:OtherOperatingIncomeExpenses" : {
                  "Name" : "fac:OtherOperatingIncomeExpenses", 
                  "Label" : "Other Operating Income (Expenses)"
                }, 
                "fac:ResearchAndDevelopment" : {
                  "Name" : "fac:ResearchAndDevelopment", 
                  "Label" : "Research and Development"
                }, 
                "fac:OperatingIncomeLoss" : {
                  "Name" : "fac:OperatingIncomeLoss", 
                  "Label" : "Operating Income (Loss)"
                }, 
                "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense" : {
                  "Name" : "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                  "Label" : "Nonoperating Income (Loss) + Interest and Debt Expense"
                }, 
                "fac:NonoperatingIncomeLoss" : {
                  "Name" : "fac:NonoperatingIncomeLoss", 
                  "Label" : "Nonoperating Income (Loss)"
                }, 
                "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments" : {
                  "Name" : "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments", 
                  "Label" : "Nonoperating Income (Loss) + Interest and Debt Expense + Income (Loss) from Equity Method Investments"
                }, 
                "fac:InterestAndDebtExpense" : {
                  "Name" : "fac:InterestAndDebtExpense", 
                  "Label" : "Interest and Debt Expense"
                }, 
                "fac:IncomeBeforeEquityMethodInvestments" : {
                  "Name" : "fac:IncomeBeforeEquityMethodInvestments", 
                  "Label" : "Income (Loss) Before Equity Method Investments"
                }, 
                "fac:IncomeLossFromEquityMethodInvestments" : {
                  "Name" : "fac:IncomeLossFromEquityMethodInvestments", 
                  "Label" : "Income (Loss) from Equity Method Investments"
                }, 
                "fac:IncomeLossFromContinuingOperationsBeforeTax" : {
                  "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTax", 
                  "Label" : "Income (Loss) from Continuing Operations Before Tax"
                }, 
                "fac:IncomeTaxExpenseBenefit" : {
                  "Name" : "fac:IncomeTaxExpenseBenefit", 
                  "Label" : "Income Tax Expense (Benefit)"
                }, 
                "fac:IncomeLossFromContinuingOperationsAfterTax" : {
                  "Name" : "fac:IncomeLossFromContinuingOperationsAfterTax", 
                  "Label" : "Income (Loss) from Continuing Operations After Tax"
                }, 
                "fac:IncomeLossFromDiscontinuedOperationsNetTax" : {
                  "Name" : "fac:IncomeLossFromDiscontinuedOperationsNetTax", 
                  "Label" : "Income (Loss) from Discontinued Operations, Net of Tax"
                }, 
                "fac:ExtraordinaryItemsIncomeExpenseNetTax" : {
                  "Name" : "fac:ExtraordinaryItemsIncomeExpenseNetTax", 
                  "Label" : "Extraordinary Items of Income (Expense), Net of Tax"
                }, 
                "fac:NetIncomeLoss" : {
                  "Name" : "fac:NetIncomeLoss", 
                  "Label" : "Net Income (Loss)"
                }, 
                "fac:NetIncomeAttributableToParent" : {
                  "Name" : "fac:NetIncomeAttributableToParent", 
                  "Label" : "Net Income Attributable to Parent"
                }, 
                "fac:NetIncomeAttributableToNoncontrollingInterest" : {
                  "Name" : "fac:NetIncomeAttributableToNoncontrollingInterest", 
                  "Label" : "Net Income Attributable to Noncontrolling Interest"
                }, 
                "fac:PreferredStockDividendsAndOtherAdjustments" : {
                  "Name" : "fac:PreferredStockDividendsAndOtherAdjustments", 
                  "Label" : "Preferred Stock Dividends and Other Adjustments"
                }, 
                "fac:NetIncomeLossAvailableToCommonStockholdersBasic" : {
                  "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
                  "Label" : "Net Income (Loss) Available to Common Stockholders, Basic"
                }, 
                "fac:StatementComprehensiveIncomeHierarchy" : {
                  "Name" : "fac:StatementComprehensiveIncomeHierarchy", 
                  "Label" : "Statement of Comprehensive Income [Hierarchy]", 
                  "IsAbstract" : true
                }, 
                "fac:OtherComprehensiveIncomeLoss" : {
                  "Name" : "fac:OtherComprehensiveIncomeLoss", 
                  "Label" : "Other Comprehensive Income (Loss)"
                }, 
                "fac:ComprehensiveIncomeLoss" : {
                  "Name" : "fac:ComprehensiveIncomeLoss", 
                  "Label" : "Comprehensive Income (Loss)"
                }, 
                "fac:ComprehensiveIncomeLossAttributableToParent" : {
                  "Name" : "fac:ComprehensiveIncomeLossAttributableToParent", 
                  "Label" : "Comprehensive Income (Loss) Attributable to Parent"
                }, 
                "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest" : {
                  "Name" : "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                  "Label" : "Comprehensive Income (Loss) Attributable to Noncontrolling Interest"
                }, 
                "fac:CashFlowStatementHierarchy" : {
                  "Name" : "fac:CashFlowStatementHierarchy", 
                  "Label" : "Cash Flow Statement [Hierarchy]", 
                  "IsAbstract" : true
                }, 
                "fac:NetCashFlowsFromOperatingActivitiesContinuing" : {
                  "Name" : "fac:NetCashFlowsFromOperatingActivitiesContinuing", 
                  "Label" : "Net Cash Flows from Operating Activities, Continuing"
                }, 
                "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" : {
                  "Name" : "fac:NetCashFlowsFromOperatingActivitiesDiscontinued", 
                  "Label" : "Net Cash Flows from Operating Activities, Discontinued"
                }, 
                "fac:NetCashFlowsFromOperatingActivities" : {
                  "Name" : "fac:NetCashFlowsFromOperatingActivities", 
                  "Label" : "Net Cash Flows from Operating Activities"
                }, 
                "fac:NetCashFlowsFromInvestingActivitiesContinuing" : {
                  "Name" : "fac:NetCashFlowsFromInvestingActivitiesContinuing", 
                  "Label" : "Net Cash Flows from Investing Activities, Continuing"
                }, 
                "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" : {
                  "Name" : "fac:NetCashFlowsFromInvestingActivitiesDiscontinued", 
                  "Label" : "Net Cash Flows from Investing Activities, Discontinued"
                }, 
                "fac:NetCashFlowsFromInvestingActivities" : {
                  "Name" : "fac:NetCashFlowsFromInvestingActivities", 
                  "Label" : "Net Cash Flows from Investing Activities"
                }, 
                "fac:NetCashFlowsFromFinancingActivitiesContinuing" : {
                  "Name" : "fac:NetCashFlowsFromFinancingActivitiesContinuing", 
                  "Label" : "Net Cash Flows from Financing Activities, Continuing"
                }, 
                "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" : {
                  "Name" : "fac:NetCashFlowsFromFinancingActivitiesDiscontinued", 
                  "Label" : "Net Cash Flows from Financing Activities, Discontinued"
                }, 
                "fac:NetCashFlowsFromFinancingActivities" : {
                  "Name" : "fac:NetCashFlowsFromFinancingActivities", 
                  "Label" : "Net Cash Flows from Financing Activities"
                }, 
                "fac:ExchangeGainsLosses" : {
                  "Name" : "fac:ExchangeGainsLosses", 
                  "Label" : "Exchange Gains (Losses)"
                }, 
                "fac:NetCashFlows" : {
                  "Name" : "fac:NetCashFlows", 
                  "Label" : "Net Cash Flows"
                }, 
                "fac:NetCashFlowsContinuing" : {
                  "Name" : "fac:NetCashFlowsContinuing", 
                  "Label" : "Net Cash Flows, Continuing"
                }, 
                "fac:NetCashFlowsDiscontinued" : {
                  "Name" : "fac:NetCashFlowsDiscontinued", 
                  "Label" : "Net Cash Flows, Discontinued"
                }, 
                "fac:KeyRatiosHierarchy" : {
                  "Name" : "fac:KeyRatiosHierarchy", 
                  "Label" : "Key Ratios [Hierarchy]", 
                  "IsAbstract" : true
                }, 
                "fac:ReturnOnEquity" : {
                  "Name" : "fac:ReturnOnEquity", 
                  "Label" : "Return on Equity (ROE)"
                }, 
                "fac:ReturnOnAssets" : {
                  "Name" : "fac:ReturnOnAssets", 
                  "Label" : "Return on Assets (ROA)"
                }, 
                "fac:ReturnOnSalesROS" : {
                  "Name" : "fac:ReturnOnSalesROS", 
                  "Label" : "Return on Sales (ROS)"
                }, 
                "fac:SustainableGrowthRate" : {
                  "Name" : "fac:SustainableGrowthRate", 
                  "Label" : "Sustainable Growth Rate (SGR)"
                }, 
                "us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount" : {
                  "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount", 
                  "Label" : "Redeemable Noncontrolling Interest Equity Common Carrying Amount"
                }, 
                "fac:AssetsValidation" : {
                  "Name" : "fac:AssetsValidation", 
                  "Label" : "Assets = LiabilitiesAndEquity", 
                  "IsAbstract" : false
                }, 
                "fac:AssetsValidation2" : {
                  "Name" : "fac:AssetsValidation2", 
                  "Label" : "Assets = CurrentAssets + NoncurrentAssets", 
                  "IsAbstract" : false
                }
              }
            }
          }
        }, 
        "xbrl:Period" : {
          "Name" : "xbrl:Period", 
          "Label" : "Implicit XBRL Period Dimension"
        }, 
        "xbrl:Entity" : {
          "Name" : "xbrl:Entity", 
          "Label" : "Implicit XBRL Entity Dimension"
        }, 
        "dei:LegalEntityAxis" : {
          "Name" : "dei:LegalEntityAxis", 
          "Label" : "Legal Entity Dimension", 
          "Default" : "sec:DefaultLegalEntity"
        }
      }
    }
  }, 
  "Rules" : [ {
    "Id" : "gi_IncomeStatementStartPeriod", 
    "Type" : "xbrl28:formula", 
    "Label" : "Income Statement Start Period imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:CostOfRevenue\", \"fac:GrossProfit\", \"fac:Revenues\", \"fac:CostsAndExpenses\", \"fac:OperatingIncomeLoss\", \"fac:OtherOperatingIncomeExpenses\", \"fac:OperatingExpenses\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $CostOfRevenue as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostOfRevenue\"] let $GrossProfit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:GrossProfit\"] let $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"] let $CostsAndExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostsAndExpenses\"] let $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"] let $OtherOperatingIncomeExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OtherOperatingIncomeExpenses\"] let $OperatingExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingExpenses\"] return switch(true) case (exists($facts)) return let $source-fact := $facts[1] let $computed-value := facts:duration-for-fact($source-fact).Start let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Concept\" : \"fac:IncomeStatementStartPeriod\" }, Value: $computed-value, Type: \"NonNumericValue\" }) || \" = \" || \"facts:duration-for-fact(\" || rules:fact-trail($source-fact) || \").Start\" return copy $newfact := rules:create-computed-fact( $source-fact, \"fac:IncomeStatementStartPeriod\", $computed-value, $rule, $audit-trail-message, $source-fact, $options) modify ( replace value of json $newfact(\"Type\") with \"NonNumericValue\" ) return $newfact default return ()", 
    "ComputableConcepts" : [ "fac:IncomeStatementStartPeriod" ], 
    "DependsOn" : [ "fac:GrossProfit", "fac:Revenues", "fac:CostsAndExpenses", "fac:OperatingIncomeLoss", "fac:OtherOperatingIncomeExpenses", "fac:OperatingExpenses" ]
  }, {
    "Id" : "gi_TradingSymbol", 
    "Type" : "xbrl28:formula", 
    "Label" : "TradingSymbol imputation", 
    "Formula" : "import module namespace entities = \"http://xbrl.io/modules/bizql/entities\"; for $facts in facts:facts-for-internal(( \"fac:TradingSymbol\", \"fac:Assets\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $TradingSymbol as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:TradingSymbol\"] let $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch (true) case (exists($TradingSymbol)) return $TradingSymbol case (exists($Assets)) return let $computed-value := entities:entities($Assets.Aspects.\"xbrl:Entity\").Profiles.SEC.Tickers[[1]] let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:TradingSymbol\" }, Value: $computed-value }) || \" = external source\" return copy $newfact := rules:create-computed-fact( $Assets, \"fac:TradingSymbol\", if (exists($computed-value)) then $computed-value else \"N/A\", $rule, $audit-trail-message, $Assets, $options) modify ( replace value of json $newfact(\"Type\") with \"NonNumericValue\" ) return $newfact default return {}", 
    "ComputableConcepts" : [ "fac:TradingSymbol" ], 
    "DependsOn" : [ "fac:TradingSymbol", "fac:Assets" ]
  }, {
    "Id" : "bs_BalanceSheetFormat", 
    "Type" : "xbrl28:formula", 
    "Label" : "Balance Sheet Format imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:BalanceSheetFormat\", \"fac:DocumentType\", \"fac:CurrentAssets\", \"fac:NoncurrentAssets\", \"fac:NoncurrentLiabilities\", \"fac:CurrentLiabilities\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) let $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1] group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", $facts:PERIOD, $facts:UNIT, \"Balance\")), $aligned-period let $BalanceSheetFormat as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:BalanceSheetFormat\"] let $DocumentType as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:DocumentType\"] let $CurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"] let $NoncurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"] let $NoncurrentLiabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentLiabilities\"] let $CurrentLiabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentLiabilities\"] return switch (true) case exists($BalanceSheetFormat) return $BalanceSheetFormat case(exists($DocumentType)) return let $computed-value := if (rules:decimal-value($CurrentAssets) eq 0 and rules:decimal-value($NoncurrentAssets) eq 0 and rules:decimal-value($NoncurrentLiabilities) eq 0 and rules:decimal-value($CurrentLiabilities) eq 0) then \"Unclassified\" else \"Classified\" let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Concept\" : \"fac:BalanceSheetFormat\" }, Value: $computed-value , Type: \"NonNumericValue\" }) || \" = \" || $computed-value || \" (because \" || rules:fact-trail($CurrentAssets, \"fac:CurrentAssets\") || \", \" || rules:fact-trail($NoncurrentAssets, \"fac:NoncurrentAssets\") || \", \" || rules:fact-trail($NoncurrentLiabilities, \"fac:NoncurrentLiabilities\") || \", \" || rules:fact-trail($CurrentLiabilities, \"fac:CurrentLiabilities\") || \")\" let $source-facts := ( $CurrentAssets, $NoncurrentAssets, $NoncurrentLiabilities, $CurrentLiabilities) return copy $newfact := rules:create-computed-fact( ($DocumentType, $source-facts)[1], \"fac:BalanceSheetFormat\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) modify ( replace value of json $newfact(\"Type\") with \"NonNumericValue\" ) return $newfact default return ()", 
    "ComputableConcepts" : [ "fac:BalanceSheetFormat" ], 
    "DependsOn" : [ "fac:DocumentType", "fac:CurrentAssets", "fac:NoncurrentAssets", "fac:NoncurrentLiabilities", "fac:CurrentLiabilities" ]
  }, {
    "Id" : "bs_CurrentAssets", 
    "Type" : "xbrl28:formula", 
    "Label" : "CurrentAssets imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:CurrentAssets\", \"fac:Assets\", \"fac:NoncurrentAssets\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $CurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"] let $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"] let $NoncurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch (true) case (exists($CurrentAssets)) return $CurrentAssets case (exists($Assets) and exists($NoncurrentAssets)) return let $computed-value := rules:decimal-value($Assets) - rules:decimal-value($NoncurrentAssets) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:CurrentAssets\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($Assets, \"Assets\") || \" - \" || rules:fact-trail($NoncurrentAssets, \"NoncurrentAssets\") let $source-facts := ($Assets, $NoncurrentAssets) return rules:create-computed-fact( $Assets, \"fac:CurrentAssets\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:CurrentAssets" ], 
    "DependsOn" : [ "fac:Assets", "fac:NoncurrentAssets" ]
  }, {
    "Id" : "bs_Equity", 
    "Type" : "xbrl28:formula", 
    "Label" : "Equity imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:Equity\", \"fac:EquityAttributableToNoncontrollingInterest\", \"fac:EquityAttributableToParent\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $Equity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Equity\"] let $EquityAttributableToNoncontrollingInterest as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:EquityAttributableToNoncontrollingInterest\"] let $EquityAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:EquityAttributableToParent\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($Equity)) return $Equity case (exists($EquityAttributableToNoncontrollingInterest) or exists($EquityAttributableToParent)) return let $computed-value := rules:decimal-value($EquityAttributableToNoncontrollingInterest) + rules:decimal-value($EquityAttributableToParent) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:Equity\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($EquityAttributableToNoncontrollingInterest, \"EquityAttributableToNoncontrollingInterest\") || \" + \" || rules:fact-trail($EquityAttributableToParent, \"EquityAttributableToParent\") let $source-facts := ($EquityAttributableToNoncontrollingInterest, $EquityAttributableToParent) return rules:create-computed-fact( $source-facts[1], \"fac:Equity\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:Equity" ], 
    "DependsOn" : [ "fac:EquityAttributableToNoncontrollingInterest", "fac:EquityAttributableToParent" ]
  }, {
    "Id" : "bs_EquityAttributableToParent", 
    "Type" : "xbrl28:formula", 
    "Label" : "Equity Attributable ToParent imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:EquityAttributableToParent\", \"fac:Equity\", \"fac:EquityAttributableToNoncontrollingInterest\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $EquityAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:EquityAttributableToParent\"] let $Equity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Equity\"] let $EquityAttributableToNoncontrollingInterest as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:EquityAttributableToNoncontrollingInterest\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($EquityAttributableToParent)) return $EquityAttributableToParent case (exists($Equity)) return let $computed-value := rules:decimal-value($Equity) - rules:decimal-value($EquityAttributableToNoncontrollingInterest) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:EquityAttributableToParent\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($Equity, \"Equity\") || \" - \" || rules:fact-trail($EquityAttributableToNoncontrollingInterest, \"EquityAttributableToNoncontrollingInterest\") let $source-facts := ($Equity, $EquityAttributableToNoncontrollingInterest) return rules:create-computed-fact( $Equity, \"fac:EquityAttributableToParent\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return()", 
    "ComputableConcepts" : [ "fac:EquityAttributableToParent" ], 
    "DependsOn" : [ "fac:Equity", "fac:EquityAttributableToNoncontrollingInterest" ]
  }, {
    "Id" : "bs_LiabilitiesAndEquity", 
    "Type" : "xbrl28:formula", 
    "Label" : "Liabilities And Equity imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:LiabilitiesAndEquity\", \"fac:Assets\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $LiabilitiesAndEquity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:LiabilitiesAndEquity\"] let $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($LiabilitiesAndEquity)) return $LiabilitiesAndEquity case(exists($Assets)) return let $computed-value := rules:decimal-value($Assets) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:LiabilitiesAndEquity\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($Assets, \"Assets\") let $source-facts := $Assets return rules:create-computed-fact( $Assets, \"fac:LiabilitiesAndEquity\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:LiabilitiesAndEquity" ], 
    "DependsOn" : [ "fac:Assets" ]
  }, {
    "Id" : "bs_Liabilities", 
    "Type" : "xbrl28:formula", 
    "Label" : "Liabilities imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:Liabilities\", \"fac:Equity\", \"fac:LiabilitiesAndEquity\", \"fac:CommitmentsAndContingencies\", \"fac:TemporaryEquity\", \"fac:CurrentLiabilities\", \"fac:NoncurrentLiabilities\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $Liabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Liabilities\"] let $Equity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Equity\"] let $LiabilitiesAndEquity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:LiabilitiesAndEquity\"] let $CommitmentsAndContingencies as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CommitmentsAndContingencies\"] let $TemporaryEquity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:TemporaryEquity\"] let $CurrentLiabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentLiabilities\"] let $NoncurrentLiabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentLiabilities\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($Liabilities)) return $Liabilities case(exists($Equity)) return let $computed-value := rules:decimal-value($LiabilitiesAndEquity) - ( rules:decimal-value($CommitmentsAndContingencies) + rules:decimal-value($TemporaryEquity) + rules:decimal-value($Equity) ) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:Liabilities\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($LiabilitiesAndEquity, \"LiabilitiesAndEquity\") || \" - (\" || rules:fact-trail($CommitmentsAndContingencies, \"CommitmentsAndContingencies\") || \" + \" || rules:fact-trail($TemporaryEquity, \"TemporaryEquity\") || \" + \" || rules:fact-trail($Equity) || \")\" let $source-facts := ($LiabilitiesAndEquity, $CommitmentsAndContingencies, $TemporaryEquity, $Equity) return rules:create-computed-fact( $Equity, \"fac:Liabilities\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) case(exists($CurrentLiabilities) and exists($NoncurrentLiabilities)) return let $computed-value := rules:decimal-value($CurrentLiabilities) + rules:decimal-value($NoncurrentLiabilities) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:Liabilities\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($CurrentLiabilities) || \" + \" || rules:fact-trail($NoncurrentLiabilities) let $source-facts := ($CurrentLiabilities, $NoncurrentLiabilities) return rules:create-computed-fact( $CurrentLiabilities, \"fac:Liabilities\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:Liabilities" ], 
    "DependsOn" : [ "fac:Equity", "fac:LiabilitiesAndEquity", "fac:CommitmentsAndContingencies", "fac:TemporaryEquity", "fac:CurrentLiabilities", "fac:NoncurrentLiabilities" ]
  }, {
    "Id" : "bs_NoncurrentLiabilities", 
    "Type" : "xbrl28:formula", 
    "Label" : "Noncurrent Liabilities imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NoncurrentLiabilities\", \"fac:Liabilities\", \"fac:CurrentLiabilities\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NoncurrentLiabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentLiabilities\"] let $Liabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Liabilities\"] let $CurrentLiabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentLiabilities\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($NoncurrentLiabilities)) return $NoncurrentLiabilities case(exists($CurrentLiabilities) and exists($Liabilities)) return let $computed-value := rules:decimal-value($Liabilities) - rules:decimal-value($CurrentLiabilities) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NoncurrentLiabilities\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($Liabilities) || \" - \" || rules:fact-trail($CurrentLiabilities) let $source-facts := ($Liabilities, $CurrentLiabilities) return rules:create-computed-fact( $CurrentLiabilities, \"fac:NoncurrentLiabilities\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NoncurrentLiabilities" ], 
    "DependsOn" : [ "fac:Liabilities", "fac:CurrentLiabilities" ]
  }, {
    "Id" : "bs_TemporaryEquity", 
    "Type" : "xbrl28:formula", 
    "Label" : "Temporary Equity imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:TemporaryEquity\", \"us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $TemporaryEquity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:TemporaryEquity\"] let $RedeemableNoncontrollingInterestEquityCommonCarryingAmount as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (not(exists($RedeemableNoncontrollingInterestEquityCommonCarryingAmount))) return $TemporaryEquity case (exists($RedeemableNoncontrollingInterestEquityCommonCarryingAmount)) return let $computed-value := rules:decimal-value($TemporaryEquity) + rules:decimal-value($RedeemableNoncontrollingInterestEquityCommonCarryingAmount) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:TemporaryEquity\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($TemporaryEquity, \"TemporaryEquity\") || \" + \" || rules:fact-trail($RedeemableNoncontrollingInterestEquityCommonCarryingAmount, \"RedeemableNoncontrollingInterestEquityCommonCarryingAmount\") let $source-facts := ($TemporaryEquity, $RedeemableNoncontrollingInterestEquityCommonCarryingAmount) return rules:create-computed-fact( $RedeemableNoncontrollingInterestEquityCommonCarryingAmount, \"fac:TemporaryEquity\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:TemporaryEquity" ], 
    "DependsOn" : [ "us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount" ]
  }, {
    "Id" : "is_IncomeStatementFormat", 
    "Type" : "xbrl28:formula", 
    "Label" : "Income Statement Format imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:IncomeStatementFormat\", \"fac:GrossProfit\", \"fac:CostOfRevenue\", \"fac:Revenues\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := if(empty($facts)) then \"\" else facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $IncomeStatementFormat as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeStatementFormat\"] let $GrossProfit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:GrossProfit\"] let $CostOfRevenue as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostOfRevenue\"] let $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"] return switch(true) case exists($IncomeStatementFormat) return $IncomeStatementFormat case exists($Revenues) return let $computed-value := if (rules:decimal-value($GrossProfit) eq 0 and rules:decimal-value($CostOfRevenue) eq 0) then \"Single-step\" else \"Multi-step\" let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Concept\" : \"fac:IncomeStatementFormat\" }, Value: $computed-value , Type: \"NonNumericValue\"}) || \" = \" || $computed-value || \" (because \" || rules:fact-trail($GrossProfit, \"GrossProfit\") || \", \" || rules:fact-trail($CostOfRevenue, \"CostOfRevenue\") || \")\" let $source-facts := ( $GrossProfit, $CostOfRevenue) return copy $newfact := rules:create-computed-fact( ($source-facts, $Revenues)[1], \"fac:IncomeStatementFormat\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) modify ( replace value of json $newfact(\"Type\") with \"NonNumericValue\" ) return $newfact default return ()", 
    "ComputableConcepts" : [ "fac:IncomeStatementFormat" ], 
    "DependsOn" : [ "fac:GrossProfit", "fac:CostOfRevenue" ]
  }, {
    "Id" : "is_CostOfRevenue", 
    "Type" : "xbrl28:formula", 
    "Label" : "Cost Of Revenue imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:CostOfRevenue\", \"fac:GrossProfit\", \"fac:Revenues\", \"fac:CostsAndExpenses\", \"fac:OperatingIncomeLoss\", \"fac:OtherOperatingIncomeExpenses\", \"fac:OperatingExpenses\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $CostOfRevenue as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostOfRevenue\"] let $GrossProfit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:GrossProfit\"] let $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"] let $CostsAndExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostsAndExpenses\"] let $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"] let $OtherOperatingIncomeExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OtherOperatingIncomeExpenses\"] let $OperatingExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingExpenses\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($CostOfRevenue) return $CostOfRevenue case (exists($Revenues) and exists($GrossProfit)) return let $computed-value := rules:decimal-value($Revenues) - rules:decimal-value($GrossProfit) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:CostOfRevenue\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($Revenues, \"Revenues\") || \" - \" || rules:fact-trail($GrossProfit, \"GrossProfit\") let $source-facts := ($Revenues, $GrossProfit) return rules:create-computed-fact( $source-facts[1], \"fac:CostOfRevenue\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) case (exists($CostOfRevenue) and exists($Revenues) and not(exists($GrossProfit)) and (($Revenues - $CostsAndExpenses) = $OperatingIncomeLoss) and not(exists($OperatingExpenses = 0)) and not(exists($OtherOperatingIncomeExpenses))) return let $computed-value := rules:decimal-value($CostsAndExpenses) - rules:decimal-value($OperatingExpenses) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:CostOfRevenue\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($CostsAndExpenses, \"CostsAndExpenses\") || \" - \" || rules:fact-trail($OperatingExpenses, \"OperatingExpenses\") let $source-facts := ($CostsAndExpenses, $OperatingExpenses) return rules:create-computed-fact( $source-facts[1], \"fac:CostOfRevenue\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:CostOfRevenue" ], 
    "DependsOn" : [ "fac:GrossProfit", "fac:Revenues", "fac:CostsAndExpenses", "fac:OperatingIncomeLoss", "fac:OtherOperatingIncomeExpenses", "fac:OperatingExpenses" ]
  }, {
    "Id" : "is_CostsAndExpenses", 
    "Type" : "xbrl28:formula", 
    "Label" : "Costs And Expenses imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:CostsAndExpenses\", \"fac:OperatingExpenses\", \"fac:CostOfRevenue\", \"fac:GrossProfit\", \"fac:Revenues\", \"fac:OperatingIncomeLoss\", \"fac:OtherOperatingIncomeExpenses\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $CostsAndExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostsAndExpenses\"] let $OperatingExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingExpenses\"] let $CostOfRevenue as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostOfRevenue\"] let $GrossProfit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:GrossProfit\"] let $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"] let $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"] let $OtherOperatingIncomeExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OtherOperatingIncomeExpenses\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($CostsAndExpenses) return $CostsAndExpenses case (exists($OperatingExpenses) and exists($CostOfRevenue)) return let $computed-value := rules:decimal-value($OperatingExpenses) + rules:decimal-value($CostOfRevenue) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:CostsAndExpenses\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($OperatingExpenses, \"OperatingExpenses\") || \" + \" || rules:fact-trail($CostOfRevenue, \"CostOfRevenue\") let $source-facts := ($CostOfRevenue, $OperatingExpenses) return rules:create-computed-fact( $source-facts[1], \"fac:CostsAndExpenses\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) case (not(exists($GrossProfit)) and exists($Revenues) and exists($OperatingIncomeLoss) and exists($OtherOperatingIncomeExpenses)) return let $computed-value := rules:decimal-value($Revenues) - rules:decimal-value($OperatingIncomeLoss)- rules:decimal-value($OtherOperatingIncomeExpenses) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:CostsAndExpenses\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($Revenues, \"$Revenues\") || \" - \" || rules:fact-trail($OperatingIncomeLoss, \"OperatingIncomeLoss\") || \" - \" || rules:fact-trail($OtherOperatingIncomeExpenses, \"OtherOperatingIncomeExpenses\") let $source-facts := ($Revenues, $OperatingIncomeLoss,$OtherOperatingIncomeExpenses ) return rules:create-computed-fact( $source-facts[1], \"fac:CostsAndExpenses\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:CostsAndExpenses" ], 
    "DependsOn" : [ "fac:OperatingExpenses", "fac:CostOfRevenue", "fac:GrossProfit", "fac:Revenues", "fac:OperatingIncomeLoss", "fac:OtherOperatingIncomeExpenses" ]
  }, {
    "Id" : "is_GrossProfit", 
    "Type" : "xbrl28:formula", 
    "Label" : "Gross Profit imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:GrossProfit\", \"fac:Revenues\", \"fac:CostOfRevenue\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $GrossProfit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:GrossProfit\"] let $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"] let $CostOfRevenue as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostOfRevenue\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($GrossProfit) return $GrossProfit case (exists($Revenues) and exists($CostOfRevenue)) return let $computed-value := rules:decimal-value($Revenues) - rules:decimal-value($CostOfRevenue) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:GrossProfit\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($Revenues, \"Revenues\") || \" - \" || rules:fact-trail($CostOfRevenue, \"CostOfRevenue\") let $source-facts := ($Revenues, $CostOfRevenue) return rules:create-computed-fact( $source-facts[1], \"fac:GrossProfit\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:GrossProfit" ], 
    "DependsOn" : [ "fac:Revenues", "fac:CostOfRevenue" ]
  }, {
    "Id" : "is_IncomeLossFromContinuingOperationsAfterTax", 
    "Type" : "xbrl28:formula", 
    "Label" : "Income Loss From Continuing Operations After Tax imputation", 
    "Formula" : "import module namespace sec = \"http://xbrl.io/modules/bizql/profiles/sec/core\"; for $facts in facts:facts-for-internal(( \"fac:IncomeLossFromContinuingOperationsAfterTax\", \"fac:NetIncomeLoss\", \"fac:IncomeLossFromContinuingOperationsBeforeTax\", \"fac:IncomeLossFromDiscontinuedOperationsNetTax\", \"fac:ExtraordinaryItemsIncomeExpenseNetTax\", \"fac:IncomeTaxExpenseBenefit\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $IncomeLossFromContinuingOperationsAfterTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromContinuingOperationsAfterTax\"] let $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"] let $IncomeLossFromContinuingOperationsBeforeTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromContinuingOperationsBeforeTax\"] let $IncomeLossFromDiscontinuedOperationsNetTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromDiscontinuedOperationsNetTax\"] let $ExtraordinaryItemsIncomeExpenseNetTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ExtraordinaryItemsIncomeExpenseNetTax\"] let $IncomeTaxExpenseBenefit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeTaxExpenseBenefit\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch (true) case exists($IncomeLossFromContinuingOperationsAfterTax) return $IncomeLossFromContinuingOperationsAfterTax case (exists($NetIncomeLoss)) return let $computed-value := rules:decimal-value($NetIncomeLoss) - rules:decimal-value($IncomeLossFromDiscontinuedOperationsNetTax) - rules:decimal-value($ExtraordinaryItemsIncomeExpenseNetTax) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:IncomeLossFromContinuingOperationsAfterTax\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetIncomeLoss, \"NetIncomeLoss\") || \" - \" || rules:fact-trail($IncomeLossFromDiscontinuedOperationsNetTax, \"IncomeLossFromDiscontinuedOperationsNetTax\") || \" - \" || rules:fact-trail($ExtraordinaryItemsIncomeExpenseNetTax, \"ExtraordinaryItemsIncomeExpenseNetTax\") let $source-facts := ($NetIncomeLoss, $IncomeLossFromDiscontinuedOperationsNetTax, $ExtraordinaryItemsIncomeExpenseNetTax) return rules:create-computed-fact( $source-facts[1], \"fac:IncomeLossFromContinuingOperationsAfterTax\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) case (exists($IncomeLossFromContinuingOperationsBeforeTax)) return let $computed-value := rules:decimal-value($IncomeLossFromContinuingOperationsBeforeTax) - rules:decimal-value($IncomeTaxExpenseBenefit) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:IncomeLossFromContinuingOperationsAfterTax\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($IncomeLossFromContinuingOperationsBeforeTax, \"IncomeLossFromContinuingOperationsBeforeTax\") || \" - \" || rules:fact-trail($IncomeTaxExpenseBenefit, \"IncomeTaxExpenseBenefit\") let $source-facts := ($IncomeLossFromContinuingOperationsBeforeTax, $IncomeTaxExpenseBenefit) return rules:create-computed-fact( $source-facts[1], \"fac:IncomeLossFromContinuingOperationsAfterTax\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:IncomeLossFromContinuingOperationsAfterTax" ], 
    "DependsOn" : [ "fac:NetIncomeLoss", "fac:IncomeLossFromContinuingOperationsBeforeTax", "fac:IncomeLossFromDiscontinuedOperationsNetTax", "fac:ExtraordinaryItemsIncomeExpenseNetTax", "fac:IncomeTaxExpenseBenefit" ]
  }, {
    "Id" : "is_IncomeLossFromContinuingOperationsBeforeTax", 
    "Type" : "xbrl28:formula", 
    "Label" : "Income Loss From Continuing Operations Before Tax imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:IncomeLossFromContinuingOperationsBeforeTax\", \"fac:IncomeLossFromEquityMethodInvestments\", \"fac:IncomeBeforeEquityMethodInvestments\", \"fac:IncomeLossFromContinuingOperationsAfterTax\", \"fac:IncomeTaxExpenseBenefit\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $IncomeLossFromContinuingOperationsBeforeTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromContinuingOperationsBeforeTax\"] let $IncomeLossFromEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromEquityMethodInvestments\"] let $IncomeBeforeEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeBeforeEquityMethodInvestments\"] let $IncomeLossFromContinuingOperationsAfterTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromContinuingOperationsAfterTax\"] let $IncomeTaxExpenseBenefit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeTaxExpenseBenefit\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch (true) case exists($IncomeLossFromContinuingOperationsBeforeTax) return $IncomeLossFromContinuingOperationsBeforeTax case (exists($IncomeLossFromEquityMethodInvestments) and exists($IncomeBeforeEquityMethodInvestments)) return let $computed-value := rules:decimal-value($IncomeLossFromEquityMethodInvestments) + rules:decimal-value($IncomeBeforeEquityMethodInvestments) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:IncomeLossFromContinuingOperationsBeforeTax\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($IncomeLossFromEquityMethodInvestments, \"IncomeLossFromEquityMethodInvestments\") || \" + \" || rules:fact-trail($IncomeBeforeEquityMethodInvestments, \"IncomeBeforeEquityMethodInvestments\") let $source-facts := ($IncomeLossFromEquityMethodInvestments,$IncomeBeforeEquityMethodInvestments) return rules:create-computed-fact( $source-facts[1], \"fac:IncomeLossFromContinuingOperationsBeforeTax\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) case (exists($IncomeLossFromContinuingOperationsAfterTax)) return let $computed-value := rules:decimal-value($IncomeLossFromContinuingOperationsAfterTax) + rules:decimal-value($IncomeTaxExpenseBenefit) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:IncomeLossFromContinuingOperationsBeforeTax\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($IncomeLossFromContinuingOperationsAfterTax, \"IncomeLossFromContinuingOperationsAfterTax\") || \" - \" || rules:fact-trail($IncomeTaxExpenseBenefit, \"IncomeTaxExpenseBenefit\") let $source-facts := ($IncomeLossFromContinuingOperationsAfterTax, $IncomeTaxExpenseBenefit) return rules:create-computed-fact( $source-facts[1], \"fac:IncomeLossFromContinuingOperationsBeforeTax\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:IncomeLossFromContinuingOperationsBeforeTax" ], 
    "DependsOn" : [ "fac:IncomeLossFromEquityMethodInvestments", "fac:IncomeBeforeEquityMethodInvestments", "fac:IncomeLossFromContinuingOperationsAfterTax", "fac:IncomeTaxExpenseBenefit" ]
  }, {
    "Id" : "is_NetIncomeAttributableToParent", 
    "Type" : "xbrl28:formula", 
    "Label" : "Net Income Attributable To Parent imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetIncomeAttributableToParent\", \"fac:NetIncomeLoss\", \"fac:NetIncomeAttributableToNoncontrollingInterest\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetIncomeAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeAttributableToParent\"] let $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"] let $NetIncomeAttributableToNoncontrollingInterest as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeAttributableToNoncontrollingInterest\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($NetIncomeAttributableToParent) return $NetIncomeAttributableToParent case (exists($NetIncomeLoss) and not(exists($NetIncomeAttributableToNoncontrollingInterest))) return let $computed-value := rules:decimal-value($NetIncomeLoss) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NetIncomeAttributableToParent\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetIncomeLoss, \"NetIncomeLoss\") let $source-facts := $NetIncomeLoss return rules:create-computed-fact( $NetIncomeLoss, \"fac:NetIncomeAttributableToParent\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NetIncomeAttributableToParent" ], 
    "DependsOn" : [ "fac:NetIncomeLoss", "fac:NetIncomeAttributableToNoncontrollingInterest" ]
  }, {
    "Id" : "is_NetIncomeLossAvailableToCommonStockholdersBasic", 
    "Type" : "xbrl28:formula", 
    "Label" : "Net Income Loss Available To Common Stockholders Basic imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\", \"fac:NetIncomeAttributableToParent\", \"fac:PreferredStockDividendsAndOtherAdjustments\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetIncomeLossAvailableToCommonStockholdersBasic as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\"] let $NetIncomeAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeAttributableToParent\"] let $PreferredStockDividendsAndOtherAdjustments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:PreferredStockDividendsAndOtherAdjustments\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($NetIncomeLossAvailableToCommonStockholdersBasic) return $NetIncomeLossAvailableToCommonStockholdersBasic case (exists($NetIncomeAttributableToParent) and rules:decimal-value($PreferredStockDividendsAndOtherAdjustments) eq 0) return let $computed-value := rules:decimal-value($NetIncomeAttributableToParent) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetIncomeAttributableToParent, \"NetIncomeAttributableToParent\") let $source-facts := $NetIncomeAttributableToParent return rules:create-computed-fact( $NetIncomeAttributableToParent, \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return()", 
    "ComputableConcepts" : [ "fac:NetIncomeLossAvailableToCommonStockholdersBasic" ], 
    "DependsOn" : [ "fac:NetIncomeAttributableToParent", "fac:PreferredStockDividendsAndOtherAdjustments" ]
  }, {
    "Id" : "is_OperatingExpenses", 
    "Type" : "xbrl28:formula", 
    "Label" : "Operating Expenses imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:OperatingExpenses\", \"fac:CostsAndExpenses\", \"fac:CostOfRevenue\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $OperatingExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingExpenses\"] let $CostsAndExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostsAndExpenses\"] let $CostOfRevenue as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostOfRevenue\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($OperatingExpenses) return $OperatingExpenses case (exists($CostsAndExpenses) and exists($CostOfRevenue)) return let $computed-value := rules:decimal-value($CostsAndExpenses) - rules:decimal-value($CostOfRevenue) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:OperatingExpenses\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($CostsAndExpenses, \"CostsAndExpenses\") || \" - \" || rules:fact-trail($CostOfRevenue, \"CostOfRevenue \") let $source-facts := ($CostsAndExpenses, $CostOfRevenue) return rules:create-computed-fact( $source-facts[1], \"fac:OperatingExpenses\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:OperatingExpenses" ], 
    "DependsOn" : [ "fac:CostsAndExpenses", "fac:CostOfRevenue" ]
  }, {
    "Id" : "is_PreferredStockDividendsAndOtherAdjustments", 
    "Type" : "xbrl28:formula", 
    "Label" : "Preferred Stock Dividends And Other Adjustments imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:PreferredStockDividendsAndOtherAdjustments\", \"fac:NetIncomeAttributableToParent\", \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $PreferredStockDividendsAndOtherAdjustments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:PreferredStockDividendsAndOtherAdjustments\"] let $NetIncomeAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeAttributableToParent\"] let $NetIncomeLossAvailableToCommonStockholdersBasic as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($PreferredStockDividendsAndOtherAdjustments) return $PreferredStockDividendsAndOtherAdjustments case (exists($NetIncomeAttributableToParent) and exists($NetIncomeLossAvailableToCommonStockholdersBasic)) return let $computed-value := rules:decimal-value($NetIncomeAttributableToParent) - rules:decimal-value($NetIncomeLossAvailableToCommonStockholdersBasic) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:PreferredStockDividendsAndOtherAdjustments\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetIncomeAttributableToParent, \"NetIncomeAttributableToParent\") || \" - \" || rules:fact-trail($NetIncomeLossAvailableToCommonStockholdersBasic, \"NetIncomeLossAvailableToCommonStockholdersBasic\") let $source-facts := ($NetIncomeAttributableToParent, $NetIncomeLossAvailableToCommonStockholdersBasic) return rules:create-computed-fact( $NetIncomeAttributableToParent, \"fac:PreferredStockDividendsAndOtherAdjustments\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:PreferredStockDividendsAndOtherAdjustments" ], 
    "DependsOn" : [ "fac:NetIncomeAttributableToParent", "fac:NetIncomeLossAvailableToCommonStockholdersBasic" ]
  }, {
    "Id" : "is_Revenues", 
    "Type" : "xbrl28:formula", 
    "Label" : "Revenues imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:Revenues\", \"fac:GrossProfit\", \"fac:CostOfRevenue\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"] let $GrossProfit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:GrossProfit\"] let $CostOfRevenue as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostOfRevenue\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($Revenues) return $Revenues case (exists($GrossProfit) and exists($CostOfRevenue)) return let $computed-value := rules:decimal-value($GrossProfit) + rules:decimal-value($CostOfRevenue) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:Revenues\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($GrossProfit, \"GrossProfit\") || \" + \" || rules:fact-trail($CostOfRevenue, \"CostOfRevenue\") let $source-facts := ($GrossProfit, $CostOfRevenue) return rules:create-computed-fact( $source-facts[1], \"fac:Revenues\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:Revenues" ], 
    "DependsOn" : [ "fac:GrossProfit", "fac:CostOfRevenue" ]
  }, {
    "Id" : "is_IncomeBeforeEquityMethodInvestments", 
    "Type" : "xbrl28:formula", 
    "Label" : "Income Before Equity Method Investments imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:IncomeBeforeEquityMethodInvestments\", \"fac:IncomeLossFromContinuingOperationsBeforeTax\", \"fac:IncomeLossFromEquityMethodInvestments\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $IncomeBeforeEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeBeforeEquityMethodInvestments\"] let $IncomeLossFromContinuingOperationsBeforeTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromContinuingOperationsBeforeTax\"] let $IncomeLossFromEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromEquityMethodInvestments\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($IncomeBeforeEquityMethodInvestments) return $IncomeBeforeEquityMethodInvestments case(exists($IncomeLossFromContinuingOperationsBeforeTax)) return let $computed-value := rules:decimal-value($IncomeLossFromContinuingOperationsBeforeTax) - rules:decimal-value($IncomeLossFromEquityMethodInvestments) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:IncomeBeforeEquityMethodInvestments\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($IncomeLossFromContinuingOperationsBeforeTax, \"IncomeLossFromContinuingOperationsBeforeTax\") || \" - \" || rules:fact-trail($IncomeLossFromEquityMethodInvestments, \"IncomeLossFromEquityMethodInvestments \") let $source-facts := ($IncomeLossFromContinuingOperationsBeforeTax, $IncomeLossFromEquityMethodInvestments) return rules:create-computed-fact( $source-facts[1], \"fac:IncomeBeforeEquityMethodInvestments\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:IncomeBeforeEquityMethodInvestments" ], 
    "DependsOn" : [ "fac:IncomeLossFromContinuingOperationsBeforeTax", "fac:IncomeLossFromEquityMethodInvestments" ]
  }, {
    "Id" : "is_InterestAndDebtExpense", 
    "Type" : "xbrl28:formula", 
    "Label" : "Interest And Debt Expense imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:InterestAndDebtExpense\", \"fac:OperatingIncomeLoss\", \"fac:NonoperatingIncomeLoss\", \"fac:IncomeBeforeEquityMethodInvestments\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $InterestAndDebtExpense as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:InterestAndDebtExpense\"] let $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"] let $NonoperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NonoperatingIncomeLoss\"] let $IncomeBeforeEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeBeforeEquityMethodInvestments\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($InterestAndDebtExpense) return $InterestAndDebtExpense case (exists($OperatingIncomeLoss) and exists($NonoperatingIncomeLoss) and exists($IncomeBeforeEquityMethodInvestments)) return let $computed-value := rules:decimal-value($IncomeBeforeEquityMethodInvestments) - rules:decimal-value($OperatingIncomeLoss) - rules:decimal-value($NonoperatingIncomeLoss) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:InterestAndDebtExpense\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($IncomeBeforeEquityMethodInvestments, \"IncomeBeforeEquityMethodInvestments\") || \" - (\" || rules:fact-trail($OperatingIncomeLoss, \"OperatingIncomeLoss\") || \" + \" || rules:fact-trail($NonoperatingIncomeLoss, \"NonoperatingIncomeLoss )\") let $source-facts := ($IncomeBeforeEquityMethodInvestments, $OperatingIncomeLoss, $NonoperatingIncomeLoss) return rules:create-computed-fact( $source-facts[1], \"fac:InterestAndDebtExpense\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:InterestAndDebtExpense" ], 
    "DependsOn" : [ "fac:OperatingIncomeLoss", "fac:NonoperatingIncomeLoss", "fac:IncomeBeforeEquityMethodInvestments" ]
  }, {
    "Id" : "is_OtherOperatingIncomeExpenses", 
    "Type" : "xbrl28:formula", 
    "Label" : "Other Operating Income Expenses imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:OtherOperatingIncomeExpenses\", \"fac:OperatingIncomeLoss\", \"fac:GrossProfit\", \"fac:OperatingExpenses\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $OtherOperatingIncomeExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OtherOperatingIncomeExpenses\"] let $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"] let $GrossProfit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:GrossProfit\"] let $OperatingExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingExpenses\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($OtherOperatingIncomeExpenses) return $OtherOperatingIncomeExpenses case (exists($OperatingIncomeLoss) and exists($GrossProfit) and exists($OperatingExpenses)) return let $computed-value := rules:decimal-value($OperatingIncomeLoss) - (rules:decimal-value($GrossProfit) - rules:decimal-value($OperatingExpenses)) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:OtherOperatingIncomeExpenses\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($OperatingIncomeLoss, \"OperatingIncomeLoss\") || \" - (\" || rules:fact-trail($GrossProfit, \"GrossProfit\") || \" - \" || rules:fact-trail($OperatingExpenses, \"OperatingExpenses )\") let $source-facts := ($OperatingIncomeLoss, $GrossProfit, $OperatingExpenses ) return rules:create-computed-fact( $source-facts[1], \"fac:OtherOperatingIncomeExpenses\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:OtherOperatingIncomeExpenses" ], 
    "DependsOn" : [ "fac:OperatingIncomeLoss", "fac:GrossProfit", "fac:OperatingExpenses" ]
  }, {
    "Id" : "is_OperatingIncomeLoss", 
    "Type" : "xbrl28:formula", 
    "Label" : "Operating Income Loss imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:OperatingIncomeLoss\", \"fac:IncomeBeforeEquityMethodInvestments\", \"fac:NonoperatingIncomeLoss\", \"fac:InterestAndDebtExpense\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"] let $IncomeBeforeEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeBeforeEquityMethodInvestments\"] let $NonoperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NonoperatingIncomeLoss\"] let $InterestAndDebtExpense as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:InterestAndDebtExpense\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($OperatingIncomeLoss) return $OperatingIncomeLoss case (exists($IncomeBeforeEquityMethodInvestments)) return let $computed-value := rules:decimal-value($IncomeBeforeEquityMethodInvestments) + rules:decimal-value($NonoperatingIncomeLoss) - rules:decimal-value($InterestAndDebtExpense) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:OperatingIncomeLoss\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($IncomeBeforeEquityMethodInvestments, \"IncomeBeforeEquityMethodInvestments\") || \" + \" || rules:fact-trail($NonoperatingIncomeLoss, \"NonoperatingIncomeLoss\") || \" - \" || rules:fact-trail($InterestAndDebtExpense, \"InterestAndDebtExpense\") let $source-facts := ($IncomeBeforeEquityMethodInvestments, $NonoperatingIncomeLoss, $InterestAndDebtExpense ) return rules:create-computed-fact( $source-facts[1], \"fac:OperatingIncomeLoss\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:OperatingIncomeLoss" ], 
    "DependsOn" : [ "fac:IncomeBeforeEquityMethodInvestments", "fac:NonoperatingIncomeLoss", "fac:InterestAndDebtExpense" ]
  }, {
    "Id" : "is_NonoperatingIncomeLossPlusInterestAndDebtExpense", 
    "Type" : "xbrl28:formula", 
    "Label" : "Nonoperating Income Loss Plus Interest And Debt Expense imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NonoperatingIncomeLossPlusInterestAndDebtExpense\", \"fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\", \"fac:IncomeLossFromEquityMethodInvestments\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NonoperatingIncomeLossPlusInterestAndDebtExpense as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NonoperatingIncomeLossPlusInterestAndDebtExpense\"] let $NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\"] let $IncomeLossFromEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromEquityMethodInvestments\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($NonoperatingIncomeLossPlusInterestAndDebtExpense) return $NonoperatingIncomeLossPlusInterestAndDebtExpense case(exists($NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments)) return let $computed-value := rules:decimal-value($NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments) - rules:decimal-value($IncomeLossFromEquityMethodInvestments) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NonoperatingIncomeLossPlusInterestAndDebtExpense\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments, \"NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\") || \" - \" || rules:fact-trail($IncomeLossFromEquityMethodInvestments, \"IncomeLossFromEquityMethodInvestments\") let $source-facts := ($NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments, $IncomeLossFromEquityMethodInvestments) return rules:create-computed-fact( $source-facts[1], \"fac:NonoperatingIncomeLossPlusInterestAndDebtExpense\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense" ], 
    "DependsOn" : [ "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments", "fac:IncomeLossFromEquityMethodInvestments" ]
  }, {
    "Id" : "is_NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments", 
    "Type" : "xbrl28:formula", 
    "Label" : "Nonoperating Income Loss + Interest And Debt Expense + Income From Equity Method Investments imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\", \"fac:IncomeLossFromContinuingOperationsBeforeTax\", \"fac:OperatingIncomeLoss\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\"] let $IncomeLossFromContinuingOperationsBeforeTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromContinuingOperationsBeforeTax\"] let $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments) return $NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments case(exists($IncomeLossFromContinuingOperationsBeforeTax)) return let $computed-value := rules:decimal-value($IncomeLossFromContinuingOperationsBeforeTax) - rules:decimal-value($OperatingIncomeLoss) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($IncomeLossFromContinuingOperationsBeforeTax, \"IncomeLossFromContinuingOperationsBeforeTax\") || \" - \" || rules:fact-trail($OperatingIncomeLoss, \"OperatingIncomeLoss\") let $source-facts := ($IncomeLossFromContinuingOperationsBeforeTax, $OperatingIncomeLoss) return rules:create-computed-fact( $IncomeLossFromContinuingOperationsBeforeTax, \"fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments" ], 
    "DependsOn" : [ "fac:IncomeLossFromContinuingOperationsBeforeTax", "fac:OperatingIncomeLoss" ]
  }, {
    "Id" : "cf_NetCashFlowsFromOperatingActivitiesContinuing", 
    "Type" : "xbrl28:formula", 
    "Label" : "Cash Flow From Continuing Operating Activities imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsFromOperatingActivitiesContinuing\", \"fac:NetCashFlowsFromOperatingActivities\", \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsFromOperatingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesContinuing\"] let $NetCashFlowsFromOperatingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivities\"] let $NetCashFlowsFromOperatingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($NetCashFlowsFromOperatingActivitiesContinuing)) return $NetCashFlowsFromOperatingActivitiesContinuing case(exists($NetCashFlowsFromOperatingActivities)) return let $computed-value := rules:decimal-value($NetCashFlowsFromOperatingActivities) - rules:decimal-value($NetCashFlowsFromOperatingActivitiesDiscontinued) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromOperatingActivitiesContinuing\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetCashFlowsFromOperatingActivities) || \" - \" || rules:fact-trail($NetCashFlowsFromOperatingActivitiesDiscontinued, \"NetCashFlowsFromOperatingActivitiesDiscontinued\") let $source-facts := ($NetCashFlowsFromOperatingActivities, $NetCashFlowsFromOperatingActivitiesDiscontinued) return rules:create-computed-fact( $NetCashFlowsFromOperatingActivities, \"fac:NetCashFlowsFromOperatingActivitiesContinuing\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NetCashFlowsFromOperatingActivitiesContinuing" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivities", "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" ]
  }, {
    "Id" : "cf_NetCashFlowsFromOperatingActivitiesDiscontinued", 
    "Type" : "xbrl28:formula", 
    "Label" : "Cash Flow From Discontinued Operating Activities imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\", \"fac:NetCashFlowsFromOperatingActivities\", \"fac:NetCashFlowsFromOperatingActivitiesContinuing\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsFromOperatingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\"] let $NetCashFlowsFromOperatingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivities\"] let $NetCashFlowsFromOperatingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesContinuing\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($NetCashFlowsFromOperatingActivitiesDiscontinued)) return $NetCashFlowsFromOperatingActivitiesDiscontinued case(exists($NetCashFlowsFromOperatingActivities) and exists($NetCashFlowsFromOperatingActivitiesContinuing) and (rules:decimal-value($NetCashFlowsFromOperatingActivitiesContinuing) eq rules:decimal-value($NetCashFlowsFromOperatingActivities))) return let $computed-value := 0 let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\" }, Value: $computed-value }) || \" = 0 (because \" || rules:fact-trail($NetCashFlowsFromOperatingActivities) || \" = \" || rules:fact-trail($NetCashFlowsFromOperatingActivitiesContinuing) || \")\" let $source-facts := ($NetCashFlowsFromOperatingActivities, $NetCashFlowsFromOperatingActivitiesContinuing) return rules:create-computed-fact( $NetCashFlowsFromOperatingActivities, \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivities", "fac:NetCashFlowsFromOperatingActivitiesContinuing" ]
  }, {
    "Id" : "cf_NetCashFlowsFromOperatingActivities", 
    "Type" : "xbrl28:formula", 
    "Label" : "Cash Flow From Operating Activities imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsFromOperatingActivities\", \"fac:NetCashFlowsFromOperatingActivitiesContinuing\", \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsFromOperatingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivities\"] let $NetCashFlowsFromOperatingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesContinuing\"] let $NetCashFlowsFromOperatingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($NetCashFlowsFromOperatingActivities)) return $NetCashFlowsFromOperatingActivities case(exists($NetCashFlowsFromOperatingActivitiesContinuing) and rules:decimal-value($NetCashFlowsFromOperatingActivitiesDiscontinued) eq 0) return let $computed-value := rules:decimal-value($NetCashFlowsFromOperatingActivitiesContinuing) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromOperatingActivities\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetCashFlowsFromOperatingActivitiesContinuing) || \" (given that \" || rules:fact-trail($NetCashFlowsFromOperatingActivitiesDiscontinued, \"NetCashFlowsFromOperatingActivitiesDiscontinued\") || \")\" let $source-facts := ($NetCashFlowsFromOperatingActivitiesContinuing, $NetCashFlowsFromOperatingActivitiesDiscontinued) return rules:create-computed-fact( $NetCashFlowsFromOperatingActivitiesContinuing, \"fac:NetCashFlowsFromOperatingActivities\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NetCashFlowsFromOperatingActivities" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivitiesContinuing", "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" ]
  }, {
    "Id" : "cf_NetCashFlowsFromInvestingActivitiesContinuing", 
    "Type" : "xbrl28:formula", 
    "Label" : "Cash Flow From Continuing Investing Activities imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsFromInvestingActivitiesContinuing\", \"fac:NetCashFlowsFromInvestingActivities\", \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsFromInvestingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesContinuing\"] let $NetCashFlowsFromInvestingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivities\"] let $NetCashFlowsFromInvestingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($NetCashFlowsFromInvestingActivitiesContinuing)) return $NetCashFlowsFromInvestingActivitiesContinuing case(exists($NetCashFlowsFromInvestingActivities)) return let $computed-value := rules:decimal-value($NetCashFlowsFromInvestingActivities) - rules:decimal-value($NetCashFlowsFromInvestingActivitiesDiscontinued) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromInvestingActivitiesContinuing\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetCashFlowsFromInvestingActivities) || \" - \" || rules:fact-trail($NetCashFlowsFromInvestingActivitiesDiscontinued, \"NetCashFlowsFromInvestingActivitiesDiscontinued\") let $source-facts := ($NetCashFlowsFromInvestingActivities, $NetCashFlowsFromInvestingActivitiesDiscontinued) return rules:create-computed-fact( $NetCashFlowsFromInvestingActivities, \"fac:NetCashFlowsFromInvestingActivitiesContinuing\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NetCashFlowsFromInvestingActivitiesContinuing" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromInvestingActivities", "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" ]
  }, {
    "Id" : "cf_NetCashFlowsFromInvestingActivitiesDiscontinued", 
    "Type" : "xbrl28:formula", 
    "Label" : "Cash Flow From Discontinued Investing Activities imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\", \"fac:NetCashFlowsFromInvestingActivities\", \"fac:NetCashFlowsFromInvestingActivitiesContinuing\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsFromInvestingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\"] let $NetCashFlowsFromInvestingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivities\"] let $NetCashFlowsFromInvestingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesContinuing\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($NetCashFlowsFromInvestingActivitiesDiscontinued)) return $NetCashFlowsFromInvestingActivitiesDiscontinued case(exists($NetCashFlowsFromInvestingActivities) and exists($NetCashFlowsFromInvestingActivitiesContinuing) and (rules:decimal-value($NetCashFlowsFromInvestingActivitiesContinuing) eq rules:decimal-value($NetCashFlowsFromInvestingActivities))) return let $computed-value := 0 let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\" }, Value: $computed-value }) || \" = 0 (because \" || rules:fact-trail($NetCashFlowsFromInvestingActivities) || \" = \" || rules:fact-trail($NetCashFlowsFromInvestingActivitiesContinuing) || \")\" let $source-facts := ($NetCashFlowsFromInvestingActivities, $NetCashFlowsFromInvestingActivitiesContinuing) return rules:create-computed-fact( $NetCashFlowsFromInvestingActivities, \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromInvestingActivities", "fac:NetCashFlowsFromInvestingActivitiesContinuing" ]
  }, {
    "Id" : "cf_NetCashFlowsFromInvestingActivities", 
    "Type" : "xbrl28:formula", 
    "Label" : "Cash Flow From Investing Activities imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsFromInvestingActivities\", \"fac:NetCashFlowsFromInvestingActivitiesContinuing\", \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsFromInvestingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivities\"] let $NetCashFlowsFromInvestingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesContinuing\"] let $NetCashFlowsFromInvestingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($NetCashFlowsFromInvestingActivities)) return $NetCashFlowsFromInvestingActivities case(exists($NetCashFlowsFromInvestingActivitiesContinuing) and rules:decimal-value($NetCashFlowsFromInvestingActivitiesDiscontinued) eq 0) return let $computed-value := rules:decimal-value($NetCashFlowsFromInvestingActivitiesContinuing) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromInvestingActivities\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetCashFlowsFromInvestingActivitiesContinuing) || \" (given that \" || rules:fact-trail($NetCashFlowsFromInvestingActivitiesDiscontinued, \"NetCashFlowsFromInvestingActivitiesDiscontinued\") || \")\" let $source-facts := ($NetCashFlowsFromInvestingActivitiesContinuing, $NetCashFlowsFromInvestingActivitiesDiscontinued) return rules:create-computed-fact( $NetCashFlowsFromInvestingActivitiesContinuing, \"fac:NetCashFlowsFromInvestingActivities\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NetCashFlowsFromInvestingActivities" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromInvestingActivitiesContinuing", "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" ]
  }, {
    "Id" : "cf_NetCashFlowsFromFinancingActivitiesContinuing", 
    "Type" : "xbrl28:formula", 
    "Label" : "Cash Flow From Continuing Financing Activities imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsFromFinancingActivitiesContinuing\", \"fac:NetCashFlowsFromFinancingActivities\", \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsFromFinancingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesContinuing\"] let $NetCashFlowsFromFinancingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivities\"] let $NetCashFlowsFromFinancingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($NetCashFlowsFromFinancingActivitiesContinuing)) return $NetCashFlowsFromFinancingActivitiesContinuing case(exists($NetCashFlowsFromFinancingActivities)) return let $computed-value := rules:decimal-value($NetCashFlowsFromFinancingActivities) - rules:decimal-value($NetCashFlowsFromFinancingActivitiesDiscontinued) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromFinancingActivitiesContinuing\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetCashFlowsFromFinancingActivities) || \" - \" || rules:fact-trail($NetCashFlowsFromFinancingActivitiesDiscontinued, \"NetCashFlowsFromFinancingActivitiesDiscontinued\") let $source-facts := ($NetCashFlowsFromFinancingActivities, $NetCashFlowsFromFinancingActivitiesDiscontinued) return rules:create-computed-fact( $NetCashFlowsFromFinancingActivities, \"fac:NetCashFlowsFromFinancingActivitiesContinuing\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NetCashFlowsFromFinancingActivitiesContinuing" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromFinancingActivities", "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" ]
  }, {
    "Id" : "cf_NetCashFlowsFromFinancingActivitiesDiscontinued", 
    "Type" : "xbrl28:formula", 
    "Label" : "Cash Flow From Discontinued Financing Activities imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\", \"fac:NetCashFlowsFromFinancingActivities\", \"fac:NetCashFlowsFromFinancingActivitiesContinuing\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsFromFinancingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"] let $NetCashFlowsFromFinancingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivities\"] let $NetCashFlowsFromFinancingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesContinuing\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($NetCashFlowsFromFinancingActivitiesDiscontinued)) return $NetCashFlowsFromFinancingActivitiesDiscontinued case(exists($NetCashFlowsFromFinancingActivities) and exists($NetCashFlowsFromFinancingActivitiesContinuing) and (rules:decimal-value($NetCashFlowsFromFinancingActivitiesContinuing) eq rules:decimal-value($NetCashFlowsFromFinancingActivities))) return let $computed-value := 0 let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\" }, Value: $computed-value }) || \" = 0 (because \" || rules:fact-trail($NetCashFlowsFromFinancingActivities) || \" = \" || rules:fact-trail($NetCashFlowsFromFinancingActivitiesContinuing) || \")\" let $source-facts := ($NetCashFlowsFromFinancingActivities, $NetCashFlowsFromFinancingActivitiesContinuing) return rules:create-computed-fact( $NetCashFlowsFromFinancingActivities, \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromFinancingActivities", "fac:NetCashFlowsFromFinancingActivitiesContinuing" ]
  }, {
    "Id" : "cf_NetCashFlowsFromFinancingActivities", 
    "Type" : "xbrl28:formula", 
    "Label" : "Cash Flow From Financing Activities", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsFromFinancingActivities\", \"fac:NetCashFlowsFromFinancingActivitiesContinuing\", \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsFromFinancingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivities\"] let $NetCashFlowsFromFinancingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesContinuing\"] let $NetCashFlowsFromFinancingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($NetCashFlowsFromFinancingActivities)) return $NetCashFlowsFromFinancingActivities case(exists($NetCashFlowsFromFinancingActivitiesContinuing) and rules:decimal-value($NetCashFlowsFromFinancingActivitiesDiscontinued) eq 0) return let $computed-value := rules:decimal-value($NetCashFlowsFromFinancingActivitiesContinuing) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromFinancingActivities\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetCashFlowsFromFinancingActivitiesContinuing) || \" (given that \" || rules:fact-trail($NetCashFlowsFromFinancingActivitiesDiscontinued, \"NetCashFlowsFromFinancingActivitiesDiscontinued\") || \")\" let $source-facts := ($NetCashFlowsFromFinancingActivitiesContinuing, $NetCashFlowsFromFinancingActivitiesDiscontinued) return rules:create-computed-fact( $NetCashFlowsFromFinancingActivitiesContinuing, \"fac:NetCashFlowsFromFinancingActivities\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NetCashFlowsFromFinancingActivities" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromFinancingActivitiesContinuing", "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" ]
  }, {
    "Id" : "cf_NetCashFlowsDiscontinued", 
    "Type" : "xbrl28:formula", 
    "Label" : "Net Cash Flow From Discontinued Operating Activities imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsDiscontinued\", \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\", \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\", \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsDiscontinued\"] let $NetCashFlowsFromOperatingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\"] let $NetCashFlowsFromInvestingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\"] let $NetCashFlowsFromFinancingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($NetCashFlowsDiscontinued)) return $NetCashFlowsDiscontinued case(exists(($NetCashFlowsFromOperatingActivitiesDiscontinued, $NetCashFlowsFromInvestingActivitiesDiscontinued, $NetCashFlowsFromFinancingActivitiesDiscontinued))) return let $computed-value := rules:decimal-value($NetCashFlowsFromOperatingActivitiesDiscontinued) + rules:decimal-value($NetCashFlowsFromInvestingActivitiesDiscontinued) + rules:decimal-value($NetCashFlowsFromFinancingActivitiesDiscontinued) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NetCashFlowsDiscontinued\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetCashFlowsFromOperatingActivitiesDiscontinued, \"NetCashFlowsFromOperatingActivitiesDiscontinued\") || \" + \" || rules:fact-trail($NetCashFlowsFromInvestingActivitiesDiscontinued, \"NetCashFlowsFromInvestingActivitiesDiscontinued\") || \" + \" || rules:fact-trail($NetCashFlowsFromFinancingActivitiesDiscontinued, \"NetCashFlowsFromFinancingActivitiesDiscontinued\") let $source-facts := ($NetCashFlowsFromOperatingActivitiesDiscontinued, $NetCashFlowsFromInvestingActivitiesDiscontinued, $NetCashFlowsFromFinancingActivitiesDiscontinued) return rules:create-computed-fact( $source-facts[1], \"fac:NetCashFlowsDiscontinued\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return()", 
    "ComputableConcepts" : [ "fac:NetCashFlowsDiscontinued" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivitiesDiscontinued", "fac:NetCashFlowsFromInvestingActivitiesDiscontinued", "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" ]
  }, {
    "Id" : "cf_NetCashFlowsContinuing", 
    "Type" : "xbrl28:formula", 
    "Label" : "Net Cash Flow From Continuing Operating Activities imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsContinuing\", \"fac:NetCashFlowsFromOperatingActivitiesContinuing\", \"fac:NetCashFlowsFromInvestingActivitiesContinuing\", \"fac:NetCashFlowsFromFinancingActivitiesContinuing\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsContinuing\"] let $NetCashFlowsFromOperatingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesContinuing\"] let $NetCashFlowsFromInvestingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesContinuing\"] let $NetCashFlowsFromFinancingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesContinuing\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($NetCashFlowsContinuing)) return $NetCashFlowsContinuing case(exists(($NetCashFlowsFromOperatingActivitiesContinuing, $NetCashFlowsFromInvestingActivitiesContinuing, $NetCashFlowsFromFinancingActivitiesContinuing))) return let $computed-value := rules:decimal-value($NetCashFlowsFromOperatingActivitiesContinuing) + rules:decimal-value($NetCashFlowsFromInvestingActivitiesContinuing) + rules:decimal-value($NetCashFlowsFromFinancingActivitiesContinuing) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NetCashFlowsContinuing\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetCashFlowsFromOperatingActivitiesContinuing, \"NetCashFlowsFromOperatingActivitiesContinuing\") || \" + \" || rules:fact-trail($NetCashFlowsFromInvestingActivitiesContinuing, \"NetCashFlowsFromInvestingActivitiesContinuing\") || \" + \" || rules:fact-trail($NetCashFlowsFromFinancingActivitiesContinuing, \"NetCashFlowsFromFinancingActivitiesContinuing\") let $source-facts := ($NetCashFlowsFromOperatingActivitiesContinuing, $NetCashFlowsFromInvestingActivitiesContinuing, $NetCashFlowsFromFinancingActivitiesContinuing) return rules:create-computed-fact( $source-facts[1], \"fac:NetCashFlowsContinuing\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return()", 
    "ComputableConcepts" : [ "fac:NetCashFlowsContinuing" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivitiesContinuing", "fac:NetCashFlowsFromInvestingActivitiesContinuing", "fac:NetCashFlowsFromFinancingActivitiesContinuing" ]
  }, {
    "Id" : "cf_NetCashFlows", 
    "Type" : "xbrl28:formula", 
    "Label" : "Net Cash Flow From Discontinued Operating Activities imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlows\", \"fac:NetCashFlowsFromOperatingActivities\", \"fac:NetCashFlowsFromInvestingActivities\", \"fac:NetCashFlowsFromFinancingActivities\", \"fac:ExchangeGainsLosses\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlows as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlows\"] let $NetCashFlowsFromOperatingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivities\"] let $NetCashFlowsFromInvestingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivities\"] let $NetCashFlowsFromFinancingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivities\"] let $ExchangeGainsLosses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ExchangeGainsLosses\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($NetCashFlows)) return $NetCashFlows case(exists(($NetCashFlowsFromOperatingActivities, $NetCashFlowsFromInvestingActivities, $NetCashFlowsFromFinancingActivities, $ExchangeGainsLosses))) return let $computed-value := rules:decimal-value($NetCashFlowsFromOperatingActivities) + rules:decimal-value($NetCashFlowsFromInvestingActivities) + rules:decimal-value($NetCashFlowsFromFinancingActivities) + rules:decimal-value($ExchangeGainsLosses) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NetCashFlows\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetCashFlowsFromOperatingActivities, \"NetCashFlowsFromOperatingActivities\") || \" + \" || rules:fact-trail($NetCashFlowsFromInvestingActivities, \"NetCashFlowsFromInvestingActivities\") || \" + \" || rules:fact-trail($NetCashFlowsFromFinancingActivities, \"NetCashFlowsFromFinancingActivities\") || \" + \" || rules:fact-trail($ExchangeGainsLosses, \"ExchangeGainsLosses\") let $source-facts := ($NetCashFlowsFromOperatingActivities, $NetCashFlowsFromInvestingActivities, $NetCashFlowsFromFinancingActivities, $ExchangeGainsLosses) return rules:create-computed-fact( $source-facts[1], \"fac:NetCashFlows\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return()", 
    "ComputableConcepts" : [ "fac:NetCashFlows" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivities", "fac:NetCashFlowsFromInvestingActivities", "fac:NetCashFlowsFromFinancingActivities", "fac:ExchangeGainsLosses" ]
  }, {
    "Id" : "ci_ComprehensiveIncomeLoss", 
    "Type" : "xbrl28:formula", 
    "Label" : "Comprehensive Income (Loss) imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:ComprehensiveIncomeLoss\", \"fac:NetIncomeLoss\", \"fac:ComprehensiveIncomeLossAttributableToParent\", \"fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest\", \"fac:OtherComprehensiveIncomeLoss\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $ComprehensiveIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLoss\"] let $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"] let $ComprehensiveIncomeLossAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLossAttributableToParent\"] let $ComprehensiveIncomeLossAttributableToNoncontrollingInterest as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest\"] let $OtherComprehensiveIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OtherComprehensiveIncomeLoss\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($ComprehensiveIncomeLoss)) return $ComprehensiveIncomeLoss case(exists($NetIncomeLoss) and exists($ComprehensiveIncomeLossAttributableToParent) and rules:decimal-value($NetIncomeLoss) eq rules:decimal-value($ComprehensiveIncomeLossAttributableToParent) and empty($ComprehensiveIncomeLossAttributableToNoncontrollingInterest) and empty($OtherComprehensiveIncomeLoss) ) return let $computed-value := rules:decimal-value($NetIncomeLoss) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:ComprehensiveIncomeLoss\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetIncomeLoss) let $source-facts := ($NetIncomeLoss, $ComprehensiveIncomeLossAttributableToParent, $ComprehensiveIncomeLossAttributableToNoncontrollingInterest, $OtherComprehensiveIncomeLoss) return rules:create-computed-fact( $NetIncomeLoss, \"fac:ComprehensiveIncomeLoss\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:ComprehensiveIncomeLoss" ], 
    "DependsOn" : [ "fac:NetIncomeLoss", "fac:ComprehensiveIncomeLossAttributableToParent", "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", "fac:OtherComprehensiveIncomeLoss" ]
  }, {
    "Id" : "ci_ComprehensiveIncomeLossAttributableToParent", 
    "Type" : "xbrl28:formula", 
    "Label" : "Comprehensive Income (Loss) Attributable to Parent imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:ComprehensiveIncomeLossAttributableToParent\", \"fac:NetIncomeLoss\", \"fac:ComprehensiveIncomeLoss\", \"fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest\", \"fac:OtherComprehensiveIncomeLoss\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $ComprehensiveIncomeLossAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLossAttributableToParent\"] let $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"] let $ComprehensiveIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLoss\"] let $ComprehensiveIncomeLossAttributableToNoncontrollingInterest as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest\"] let $OtherComprehensiveIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OtherComprehensiveIncomeLoss\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($ComprehensiveIncomeLossAttributableToParent)) return $ComprehensiveIncomeLossAttributableToParent case(exists($ComprehensiveIncomeLoss) and empty($ComprehensiveIncomeLossAttributableToNoncontrollingInterest)) return let $computed-value := rules:decimal-value($ComprehensiveIncomeLoss) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:ComprehensiveIncomeLossAttributableToParent\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($ComprehensiveIncomeLoss) let $source-facts := ($ComprehensiveIncomeLoss, $ComprehensiveIncomeLossAttributableToNoncontrollingInterest) return rules:create-computed-fact( $ComprehensiveIncomeLoss, \"fac:ComprehensiveIncomeLossAttributableToParent\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) case(empty($ComprehensiveIncomeLoss) and empty($ComprehensiveIncomeLossAttributableToNoncontrollingInterest) and empty($OtherComprehensiveIncomeLoss) and exists($NetIncomeLoss)) return let $computed-value := rules:decimal-value($NetIncomeLoss) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:ComprehensiveIncomeLossAttributableToParent\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetIncomeLoss) let $source-facts := ($ComprehensiveIncomeLoss, $ComprehensiveIncomeLossAttributableToNoncontrollingInterest, $OtherComprehensiveIncomeLoss, $NetIncomeLoss) return rules:create-computed-fact( $NetIncomeLoss, \"fac:ComprehensiveIncomeLossAttributableToParent\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:ComprehensiveIncomeLossAttributableToParent" ], 
    "DependsOn" : [ "fac:NetIncomeLoss", "fac:ComprehensiveIncomeLoss", "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", "fac:OtherComprehensiveIncomeLoss" ]
  }, {
    "Id" : "ci_OtherComprehensiveIncomeLoss", 
    "Type" : "xbrl28:formula", 
    "Label" : "Other Comprehensive Income (Loss) imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:OtherComprehensiveIncomeLoss\", \"fac:NetIncomeLoss\", \"fac:ComprehensiveIncomeLoss\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $OtherComprehensiveIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OtherComprehensiveIncomeLoss\"] let $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"] let $ComprehensiveIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLoss\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($OtherComprehensiveIncomeLoss)) return $OtherComprehensiveIncomeLoss case(exists($NetIncomeLoss) and exists($ComprehensiveIncomeLoss)) return let $computed-value := rules:decimal-value($ComprehensiveIncomeLoss) - rules:decimal-value($NetIncomeLoss) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:OtherComprehensiveIncomeLoss\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($ComprehensiveIncomeLoss) || \" - \" || rules:fact-trail($NetIncomeLoss) let $source-facts := ($NetIncomeLoss, $ComprehensiveIncomeLoss) return rules:create-computed-fact( $ComprehensiveIncomeLoss, \"fac:OtherComprehensiveIncomeLoss\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:OtherComprehensiveIncomeLoss" ], 
    "DependsOn" : [ "fac:NetIncomeLoss", "fac:ComprehensiveIncomeLoss" ]
  }, {
    "Id" : "kfr_ReturnOnAssets", 
    "Type" : "xbrl28:formula", 
    "Label" : "Return on Assets (ROA) computation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:ReturnOnAssets\", \"fac:NetIncomeLoss\", \"fac:Assets\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) let $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1] group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", $facts:PERIOD, \"Balance\")), $aligned-period let $ReturnOnAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ReturnOnAssets\"] for $NetIncomeLoss as object? allowing empty in $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"] let $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"] return switch(true) case (exists($ReturnOnAssets)) return $ReturnOnAssets case(exists($Assets) and rules:decimal-value($Assets) ne 0) return let $computed-value := rules:decimal-value($NetIncomeLoss) div rules:decimal-value($Assets) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Concept\" : \"fac:ReturnOnAssets\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetIncomeLoss, \"fac:NetIncomeLoss\") || \" / \" || rules:fact-trail($Assets) let $source-facts := ($NetIncomeLoss, $Assets) return rules:create-computed-fact( $Assets, \"fac:ReturnOnAssets\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:ReturnOnAssets" ], 
    "DependsOn" : [ "fac:NetIncomeLoss", "fac:Assets" ]
  }, {
    "Id" : "kfr_ReturnOnEquity", 
    "Type" : "xbrl28:formula", 
    "Label" : "Return on Equity (ROE) computation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:ReturnOnEquity\", \"fac:NetIncomeLoss\", \"fac:Equity\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) let $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1] group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", $facts:PERIOD, \"Balance\")), $aligned-period let $ReturnOnEquity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ReturnOnEquity\"] for $NetIncomeLoss as object? allowing empty in $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"] let $Equity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Equity\"] return switch(true) case (exists($ReturnOnEquity)) return $ReturnOnEquity case(exists($Equity) and rules:decimal-value($Equity) ne 0) return let $computed-value := rules:decimal-value($NetIncomeLoss) div rules:decimal-value($Equity) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Concept\" : \"fac:ReturnOnEquity\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetIncomeLoss, \"fac:NetIncomeLoss\") || \" / \" || rules:fact-trail($Equity) let $source-facts := ($NetIncomeLoss, $Equity) return rules:create-computed-fact( $Equity, \"fac:ReturnOnEquity\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:ReturnOnEquity" ], 
    "DependsOn" : [ "fac:NetIncomeLoss", "fac:Equity" ]
  }, {
    "Id" : "kfr_ReturnOnSalesROS", 
    "Type" : "xbrl28:formula", 
    "Label" : "Return on Sales (ROS) computation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:ReturnOnSalesROS\", \"fac:NetIncomeLoss\", \"fac:Revenues\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $ReturnOnSalesROS as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ReturnOnSalesROS\"] let $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"] let $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"] return switch(true) case (exists($ReturnOnSalesROS)) return $ReturnOnSalesROS case(exists($Revenues) and rules:decimal-value($Revenues) ne 0) return let $computed-value := rules:decimal-value($NetIncomeLoss) div rules:decimal-value($Revenues) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Concept\" : \"fac:ReturnOnSalesROS\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($NetIncomeLoss, \"fac:NetIncomeLoss\") || \" / \" || rules:fact-trail($Revenues) let $source-facts := ($NetIncomeLoss, $Revenues) return rules:create-computed-fact( $Revenues, \"fac:ReturnOnSalesROS\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:ReturnOnSalesROS" ], 
    "DependsOn" : [ "fac:NetIncomeLoss", "fac:Revenues" ]
  }, {
    "Id" : "kfr_SustainableGrowthRate", 
    "Type" : "xbrl28:formula", 
    "Label" : "Sustainable Growth Rate (SGR) computation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:SustainableGrowthRate\", \"fac:NetIncomeLoss\", \"fac:Equity\", \"fac:Assets\", \"fac:Revenues\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) let $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1] group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", $facts:PERIOD, \"Balance\")), $aligned-period return for $duration-facts allowing empty in $facts[exists(facts:duration-for-fact($$))] group by $duration-facts ! facts:duration-for-fact($$).Start let $SustainableGrowthRate as object? := $duration-facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:SustainableGrowthRate\"] let $NetIncomeLoss as object? := $duration-facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"] let $Revenues as object? := $duration-facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"] let $Equity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Equity\"] let $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"] return switch(true) case (exists($SustainableGrowthRate)) return $SustainableGrowthRate case(exists($Equity) and exists($Assets) and exists($Revenues) and rules:decimal-value($Revenues) ne 0 and rules:decimal-value($Equity) ne 0 and rules:decimal-value($Assets) ne 0 and rules:decimal-value($NetIncomeLoss) ne 0) return let $profit-margin := let $val := rules:decimal-value($NetIncomeLoss) div rules:decimal-value($Revenues) let $msg := rules:fact-trail({ \"Aspects\" : { \"xbrl:Concept\" : \"temp:ProfitMargin\" }, Value: $val }) || \" = \" || rules:fact-trail($NetIncomeLoss) || \" / \" || rules:fact-trail($Revenues) let $facts as object+ := ($NetIncomeLoss, $Revenues) let $rule := copy $r := $rule modify replace value of json $r.Label with \"Temporary temp:ProfitMargin fact creation\" return $r return rules:create-computed-fact( $Revenues, \"temp:ProfitMargin\", $val, $rule, $msg, $facts, $options) let $debt-to-equity-ratio := let $val := (rules:decimal-value($Assets) - rules:decimal-value($Equity)) div rules:decimal-value($Equity) let $msg := rules:fact-trail({ \"Aspects\" : { \"xbrl:Concept\" : \"temp:DebtToEquityRatio\" }, Value: $val }) || \" = (\" || rules:fact-trail($Assets) || \" - \" || rules:fact-trail($Equity) || \") / \" || rules:fact-trail($Equity) let $facts as object+ := ($Assets, $Equity) let $rule := copy $r := $rule modify ( replace value of json $r.Label with \"Temporary temp:DebtToEquityRatio fact creation\" ) return $r return rules:create-computed-fact( $Equity, \"temp:DebtToEquityRatio\", $val, $rule, $msg, $facts, $options) let $assets-to-sales-ratio := let $val := 1 div (rules:decimal-value($Revenues) div rules:decimal-value($Assets)) let $msg := rules:fact-trail({ \"Aspects\" : { \"xbrl:Concept\" : \"temp:AssetsToSalesRatio\" }, Value: $val }) || \" = 1 / (\" || rules:fact-trail($Revenues) || \" / \" || rules:fact-trail($Assets) || \")\" let $facts as object+ := ($Assets, $Revenues) let $rule := copy $r := $rule modify ( replace value of json $r.Label with \"Temporary temp:AssetsToSalesRatio fact creation\" ) return $r return rules:create-computed-fact( $Assets, \"temp:AssetsToSalesRatio\", $val, $rule, $msg, $facts, $options) let $computed-value := ( rules:decimal-value($profit-margin) * (1 + rules:decimal-value($debt-to-equity-ratio))) div ( rules:decimal-value($assets-to-sales-ratio) - ( rules:decimal-value($profit-margin) * (1 + rules:decimal-value($debt-to-equity-ratio))) ) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Concept\" : \"fac:SustainableGrowthRate\" }, Value: $computed-value }) || \" = (\" || rules:fact-trail($profit-margin) || \" * ( 1 + \" || rules:fact-trail($debt-to-equity-ratio) || \")) div (\" || rules:fact-trail($assets-to-sales-ratio) || \" - (\" || rules:fact-trail($profit-margin) || \" * ( 1 + \" || rules:fact-trail($debt-to-equity-ratio) || \")))\" let $source-facts := ($profit-margin, $assets-to-sales-ratio, $debt-to-equity-ratio, $NetIncomeLoss, $Revenues, $Assets, $Equity) return rules:create-computed-fact( $Equity, \"fac:SustainableGrowthRate\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:SustainableGrowthRate" ], 
    "DependsOn" : [ "fac:NetIncomeLoss", "fac:Equity", "fac:Assets", "fac:Revenues" ]
  }, {
    "Id" : "BS1", 
    "Type" : "xbrl28:validation", 
    "Label" : "Equity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:Equity\", \"fac:EquityAttributableToParent\", \"fac:EquityAttributableToNoncontrollingInterest\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $Equity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Equity\"] let $EquityAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:EquityAttributableToParent\"] let $EquityAttributableToNoncontrollingInterest as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:EquityAttributableToNoncontrollingInterest\"] where exists($Equity) return let $test := rules:decimal-value($Equity) eq ( rules:decimal-value($EquityAttributableToParent) + rules:decimal-value($EquityAttributableToNoncontrollingInterest)) let $audit-trail-message := rules:fact-trail($Equity) || (if($test) then \" = \" else \" != \") || \"( \" || rules:fact-trail($EquityAttributableToParent,\"EquityAttributableToParent\") || \" + \" || rules:fact-trail($EquityAttributableToNoncontrollingInterest,\"EquityAttributableToNoncontrollingInterest\") || \")\" let $source-facts := ( $EquityAttributableToParent, $EquityAttributableToNoncontrollingInterest) return rules:create-computed-fact( $Equity, \"fac:EquityValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $Equity, $test)", 
    "ComputableConcepts" : [ "fac:EquityValidation" ], 
    "ValidatedConcepts" : [ "fac:Equity" ], 
    "DependsOn" : [ "fac:EquityAttributableToParent", "fac:EquityAttributableToNoncontrollingInterest" ]
  }, {
    "Id" : "BS4", 
    "Type" : "xbrl28:validation", 
    "Label" : "Liabilities = CurrentLiabilities + NoncurrentLiabilities", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:Liabilities\", \"fac:CurrentAssets\", \"fac:NoncurrentAssets\", \"fac:CurrentLiabilities\", \"fac:NoncurrentLiabilities\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $Liabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Liabilities\"] let $CurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"] let $NoncurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"] let $CurrentLiabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentLiabilities\"] let $NoncurrentLiabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentLiabilities\"] where exists($Liabilities) and not(rules:decimal-value($CurrentAssets) eq 0 and rules:decimal-value($NoncurrentAssets) eq 0 and rules:decimal-value($CurrentLiabilities) eq 0 and rules:decimal-value($NoncurrentLiabilities) eq 0) return let $test := rules:decimal-value($Liabilities) eq (rules:decimal-value($CurrentLiabilities) + rules:decimal-value($NoncurrentLiabilities)) let $audit-trail-message := rules:fact-trail($Liabilities) || (if($test) then \" = \" else \" != \") || \"(\" || rules:fact-trail($CurrentLiabilities,\"CurrentLiabilities\") || \" + \" || rules:fact-trail($NoncurrentLiabilities,\"NoncurrentLiabilities\") || \")\" let $source-facts := ( $CurrentAssets, $NoncurrentAssets, $CurrentLiabilities, $NoncurrentLiabilities) return rules:create-computed-fact( $Liabilities, \"fac:LiabilitiesValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $Liabilities, $test)", 
    "ComputableConcepts" : [ "fac:LiabilitiesValidation" ], 
    "ValidatedConcepts" : [ "fac:Liabilities" ], 
    "DependsOn" : [ "fac:CurrentAssets", "fac:NoncurrentAssets", "fac:CurrentLiabilities", "fac:NoncurrentLiabilities" ]
  }, {
    "Id" : "BS5", 
    "Type" : "xbrl28:validation", 
    "Label" : "LiabilitiesAndEquity = Liabilities + CommitmentsAndContingencies + TemporaryEquity + Equity", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:LiabilitiesAndEquity\", \"fac:Liabilities\", \"fac:CommitmentsAndContingencies\", \"fac:TemporaryEquity\", \"fac:Equity\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $LiabilitiesAndEquity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:LiabilitiesAndEquity\"] let $Liabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Liabilities\"] let $CommitmentsAndContingencies as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CommitmentsAndContingencies\"] let $TemporaryEquity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:TemporaryEquity\"] let $Equity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Equity\"] where exists($LiabilitiesAndEquity) return let $test := rules:decimal-value($LiabilitiesAndEquity) eq (rules:decimal-value($Liabilities) + rules:decimal-value($CommitmentsAndContingencies) + rules:decimal-value($TemporaryEquity) + rules:decimal-value($Equity)) let $audit-trail-message := rules:fact-trail($LiabilitiesAndEquity) || (if($test) then \" = \" else \" != \") || \"(\" || rules:fact-trail($Liabilities,\"Liabilities\") || \" + \" || rules:fact-trail($CommitmentsAndContingencies,\"CommitmentsAndContingencies\") || \" + \" || rules:fact-trail($TemporaryEquity,\"TemporaryEquity\") || \" + \" || rules:fact-trail($Equity,\"Equity\") || \")\" let $source-facts := ( $Liabilities, $CommitmentsAndContingencies, $TemporaryEquity, $Equity) return rules:create-computed-fact( $LiabilitiesAndEquity, \"fac:LiabilitiesAndEquityValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $LiabilitiesAndEquity, $test)", 
    "ComputableConcepts" : [ "fac:LiabilitiesAndEquityValidation" ], 
    "ValidatedConcepts" : [ "fac:LiabilitiesAndEquity" ], 
    "DependsOn" : [ "fac:Liabilities", "fac:CommitmentsAndContingencies", "fac:TemporaryEquity", "fac:Equity" ]
  }, {
    "Id" : "CF1", 
    "Type" : "xbrl28:validation", 
    "Label" : "NetCashFlows = NetCashFlowsFromOperatingActivities + NetCashFlowsFromInvestingActivities + NetCashFlowsFromFinancingActivities [+ ExchangeGainsLosses]", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlows\", \"fac:NetCashFlowsFromOperatingActivities\", \"fac:NetCashFlowsFromInvestingActivities\", \"fac:NetCashFlowsFromFinancingActivities\", \"fac:ExchangeGainsLosses\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlows as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlows\"] let $NetCashFlowsFromOperatingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivities\"] let $NetCashFlowsFromInvestingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivities\"] let $NetCashFlowsFromFinancingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivities\"] let $ExchangeGainsLosses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ExchangeGainsLosses\"] return switch (true) case (exists($NetCashFlows) and rules:decimal-value($NetCashFlows) ne (rules:decimal-value($NetCashFlowsFromOperatingActivities) + rules:decimal-value($NetCashFlowsFromInvestingActivities) + rules:decimal-value($NetCashFlowsFromFinancingActivities))) return let $test := rules:decimal-value($NetCashFlows) eq (rules:decimal-value($NetCashFlowsFromOperatingActivities) + rules:decimal-value($NetCashFlowsFromInvestingActivities) + rules:decimal-value($NetCashFlowsFromFinancingActivities) + rules:decimal-value($ExchangeGainsLosses)) let $audit-trail-message := rules:fact-trail($NetCashFlows) || (if($test) then \" = \" else \" != \") || \"(\" || rules:fact-trail($NetCashFlowsFromOperatingActivities,\"NetCashFlowsFromOperatingActivities\") || \" + \" || rules:fact-trail($NetCashFlowsFromInvestingActivities,\"NetCashFlowsFromInvestingActivities\") || \" + \" || rules:fact-trail($NetCashFlowsFromFinancingActivities,\"NetCashFlowsFromFinancingActivities\") || \" + \" || rules:fact-trail($ExchangeGainsLosses,\"ExchangeGainsLosses\") || \")\" let $source-facts := ( $NetCashFlowsFromOperatingActivities, $NetCashFlowsFromInvestingActivities, $NetCashFlowsFromFinancingActivities, $ExchangeGainsLosses) return rules:create-computed-fact( $NetCashFlows, \"fac:NetCashFlowsValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $NetCashFlows, $test) case (exists($NetCashFlows) and rules:decimal-value($NetCashFlows) ne (rules:decimal-value($NetCashFlowsFromOperatingActivities) + rules:decimal-value($NetCashFlowsFromInvestingActivities) + rules:decimal-value($NetCashFlowsFromFinancingActivities) + rules:decimal-value($ExchangeGainsLosses))) return let $test := rules:decimal-value($NetCashFlows) eq (rules:decimal-value($NetCashFlowsFromOperatingActivities) + rules:decimal-value($NetCashFlowsFromInvestingActivities) + rules:decimal-value($NetCashFlowsFromFinancingActivities)) let $audit-trail-message := rules:fact-trail($NetCashFlows) || (if($test) then \" = \" else \" != \") || \"(\" || rules:fact-trail($NetCashFlowsFromOperatingActivities,\"NetCashFlowsFromOperatingActivities\") || \" + \" || rules:fact-trail($NetCashFlowsFromInvestingActivities,\"NetCashFlowsFromInvestingActivities\") || \" + \" || rules:fact-trail($NetCashFlowsFromFinancingActivities,\"NetCashFlowsFromFinancingActivities\") || \")\" let $source-facts := ( $NetCashFlowsFromOperatingActivities, $NetCashFlowsFromInvestingActivities, $NetCashFlowsFromFinancingActivities, $ExchangeGainsLosses) return rules:create-computed-fact( $NetCashFlows, \"fac:NetCashFlowsValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $NetCashFlows, $test) default return ()", 
    "ComputableConcepts" : [ "fac:NetCashFlowsValidation" ], 
    "ValidatedConcepts" : [ "fac:NetCashFlows" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivities", "fac:NetCashFlowsFromInvestingActivities", "fac:NetCashFlowsFromFinancingActivities", "fac:ExchangeGainsLosses" ]
  }, {
    "Id" : "CF2", 
    "Type" : "xbrl28:validation", 
    "Label" : "NetCashFlowsContinuing = NetCashFlowsFromOperatingActivitiesContinuing + NetCashFlowsFromInvestingActivitiesContinuing + NetCashFlowsFromFinancingActivitiesContinuing", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsContinuing\", \"fac:NetCashFlowsFromOperatingActivitiesContinuing\", \"fac:NetCashFlowsFromInvestingActivitiesContinuing\", \"fac:NetCashFlowsFromFinancingActivitiesContinuing\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsContinuing\"] let $NetCashFlowsFromOperatingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesContinuing\"] let $NetCashFlowsFromInvestingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesContinuing\"] let $NetCashFlowsFromFinancingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesContinuing\"] where exists($NetCashFlowsContinuing) return let $test := rules:decimal-value($NetCashFlowsContinuing) eq (rules:decimal-value($NetCashFlowsFromOperatingActivitiesContinuing) + rules:decimal-value($NetCashFlowsFromInvestingActivitiesContinuing) + rules:decimal-value($NetCashFlowsFromFinancingActivitiesContinuing)) let $audit-trail-message := rules:fact-trail($NetCashFlowsContinuing) || (if($test) then \" = \" else \" != \") || \"(\" || rules:fact-trail($NetCashFlowsFromOperatingActivitiesContinuing,\"NetCashFlowsFromOperatingActivitiesContinuing\") || \" + \" || rules:fact-trail($NetCashFlowsFromInvestingActivitiesContinuing,\"NetCashFlowsFromInvestingActivitiesContinuing\") || \" + \" || rules:fact-trail($NetCashFlowsFromFinancingActivitiesContinuing,\"NetCashFlowsFromFinancingActivitiesContinuing\") || \")\" let $source-facts := ( $NetCashFlowsFromOperatingActivitiesContinuing, $NetCashFlowsFromInvestingActivitiesContinuing, $NetCashFlowsFromFinancingActivitiesContinuing) return rules:create-computed-fact( $NetCashFlowsContinuing, \"fac:NetCashFlowsContinuingValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $NetCashFlowsContinuing, $test)", 
    "ComputableConcepts" : [ "fac:NetCashFlowsContinuingValidation" ], 
    "ValidatedConcepts" : [ "fac:NetCashFlowsContinuing" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivitiesContinuing", "fac:NetCashFlowsFromInvestingActivitiesContinuing", "fac:NetCashFlowsFromFinancingActivitiesContinuing" ]
  }, {
    "Id" : "CF3", 
    "Type" : "xbrl28:validation", 
    "Label" : "NetCashFlowsDiscontinued = NetCashFlowsFromOperatingActivitiesDiscontinued + NetCashFlowsFromInvestingActivitiesDiscontinued + NetCashFlowsFromFinancingActivitiesDiscontinued", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsDiscontinued\", \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\", \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\", \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsDiscontinued\"] let $NetCashFlowsFromOperatingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\"] let $NetCashFlowsFromInvestingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\"] let $NetCashFlowsFromFinancingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"] where exists($NetCashFlowsDiscontinued) return let $test := rules:decimal-value($NetCashFlowsDiscontinued) eq (rules:decimal-value($NetCashFlowsFromOperatingActivitiesDiscontinued) + rules:decimal-value($NetCashFlowsFromInvestingActivitiesDiscontinued) + rules:decimal-value($NetCashFlowsFromFinancingActivitiesDiscontinued)) let $audit-trail-message := rules:fact-trail($NetCashFlowsDiscontinued) || (if($test) then \" = \" else \" != \") || \"(\" || rules:fact-trail($NetCashFlowsFromOperatingActivitiesDiscontinued,\"NetCashFlowsFromOperatingActivitiesDiscontinued\") || \" + \" || rules:fact-trail($NetCashFlowsFromInvestingActivitiesDiscontinued,\"NetCashFlowsFromInvestingActivitiesDiscontinued\") || \" + \" || rules:fact-trail($NetCashFlowsFromFinancingActivitiesDiscontinued,\"NetCashFlowsFromFinancingActivitiesDiscontinued\") || \")\" let $source-facts := ( $NetCashFlowsFromOperatingActivitiesDiscontinued, $NetCashFlowsFromInvestingActivitiesDiscontinued, $NetCashFlowsFromFinancingActivitiesDiscontinued) return rules:create-computed-fact( $NetCashFlowsDiscontinued, \"fac:NetCashFlowsDiscontinuedValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $NetCashFlowsDiscontinued, $test)", 
    "ComputableConcepts" : [ "fac:NetCashFlowsDiscontinuedValidation" ], 
    "ValidatedConcepts" : [ "fac:NetCashFlowsDiscontinued" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivitiesDiscontinued", "fac:NetCashFlowsFromInvestingActivitiesDiscontinued", "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" ]
  }, {
    "Id" : "CF4", 
    "Type" : "xbrl28:validation", 
    "Label" : "NetCashFlowsFromOperatingActivities = NetCashFlowsFromOperatingActivitiesContinuing + NetCashFlowsFromOperatingActivitiesDiscontinued", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsFromOperatingActivities\", \"fac:NetCashFlowsFromOperatingActivitiesContinuing\", \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsFromOperatingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivities\"] let $NetCashFlowsFromOperatingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesContinuing\"] let $NetCashFlowsFromOperatingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\"] where exists($NetCashFlowsFromOperatingActivities) return let $test := rules:decimal-value($NetCashFlowsFromOperatingActivities) eq (rules:decimal-value($NetCashFlowsFromOperatingActivitiesContinuing) + rules:decimal-value($NetCashFlowsFromOperatingActivitiesDiscontinued)) let $audit-trail-message := rules:fact-trail($NetCashFlowsFromOperatingActivities) || (if($test) then \" = \" else \" != \") || \"(\" || rules:fact-trail($NetCashFlowsFromOperatingActivitiesContinuing,\"NetCashFlowsFromOperatingActivitiesContinuing\") || \" + \" || rules:fact-trail($NetCashFlowsFromOperatingActivitiesDiscontinued,\"NetCashFlowsFromOperatingActivitiesDiscontinued\") || \")\" let $source-facts := ( $NetCashFlowsFromOperatingActivitiesContinuing, $NetCashFlowsFromOperatingActivitiesDiscontinued) return rules:create-computed-fact( $NetCashFlowsFromOperatingActivities, \"fac:NetCashFlowsFromOperatingActivitiesValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $NetCashFlowsFromOperatingActivities, $test)", 
    "ComputableConcepts" : [ "fac:NetCashFlowsFromOperatingActivitiesValidation" ], 
    "ValidatedConcepts" : [ "fac:NetCashFlowsFromOperatingActivities" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivitiesContinuing", "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" ]
  }, {
    "Id" : "CF5", 
    "Type" : "xbrl28:validation", 
    "Label" : "NetCashFlowsFromInvestingActivities = NetCashFlowsFromInvestingActivitiesContinuing + NetCashFlowsFromInvestingActivitiesDiscontinued", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsFromInvestingActivities\", \"fac:NetCashFlowsFromInvestingActivitiesContinuing\", \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsFromInvestingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivities\"] let $NetCashFlowsFromInvestingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesContinuing\"] let $NetCashFlowsFromInvestingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\"] where exists($NetCashFlowsFromInvestingActivities) return let $test := rules:decimal-value($NetCashFlowsFromInvestingActivities) eq (rules:decimal-value($NetCashFlowsFromInvestingActivitiesContinuing) + rules:decimal-value($NetCashFlowsFromInvestingActivitiesDiscontinued)) let $audit-trail-message := rules:fact-trail($NetCashFlowsFromInvestingActivities) || (if($test) then \" = \" else \" != \") || \"(\" || rules:fact-trail($NetCashFlowsFromInvestingActivitiesContinuing,\"NetCashFlowsFromInvestingActivitiesContinuing\") || \" + \" || rules:fact-trail($NetCashFlowsFromInvestingActivitiesDiscontinued,\"NetCashFlowsFromInvestingActivitiesDiscontinued\") || \")\" let $source-facts := ( $NetCashFlowsFromInvestingActivitiesContinuing, $NetCashFlowsFromInvestingActivitiesDiscontinued) return rules:create-computed-fact( $NetCashFlowsFromInvestingActivities, \"fac:NetCashFlowsFromInvestingActivitiesValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $NetCashFlowsFromInvestingActivities, $test)", 
    "ComputableConcepts" : [ "fac:NetCashFlowsFromInvestingActivitiesValidation" ], 
    "ValidatedConcepts" : [ "fac:NetCashFlowsFromInvestingActivities" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromInvestingActivitiesContinuing", "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" ]
  }, {
    "Id" : "CF6", 
    "Type" : "xbrl28:validation", 
    "Label" : "NetCashFlowsFromFinancingActivities = NetCashFlowsFromFinancingActivitiesContinuing + NetCashFlowsFromFinancingActivitiesDiscontinued", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetCashFlowsFromFinancingActivities\", \"fac:NetCashFlowsFromFinancingActivitiesContinuing\", \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetCashFlowsFromFinancingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivities\"] let $NetCashFlowsFromFinancingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesContinuing\"] let $NetCashFlowsFromFinancingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"] where exists($NetCashFlowsFromFinancingActivities) return let $test := rules:decimal-value($NetCashFlowsFromFinancingActivities) eq (rules:decimal-value($NetCashFlowsFromFinancingActivitiesContinuing) + rules:decimal-value($NetCashFlowsFromFinancingActivitiesDiscontinued)) let $audit-trail-message := rules:fact-trail($NetCashFlowsFromFinancingActivities) || (if($test) then \" = \" else \" != \") || \"(\" || rules:fact-trail($NetCashFlowsFromFinancingActivitiesContinuing,\"NetCashFlowsFromFinancingActivitiesContinuing\") || \" + \" || rules:fact-trail($NetCashFlowsFromFinancingActivitiesDiscontinued,\"NetCashFlowsFromFinancingActivitiesDiscontinued\") || \")\" let $source-facts := ( $NetCashFlowsFromFinancingActivitiesContinuing, $NetCashFlowsFromFinancingActivitiesDiscontinued) return rules:create-computed-fact( $NetCashFlowsFromFinancingActivities, \"fac:NetCashFlowsFromFinancingActivitiesValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $NetCashFlowsFromFinancingActivities, $test)", 
    "ComputableConcepts" : [ "fac:NetCashFlowsFromFinancingActivitiesValidation" ], 
    "ValidatedConcepts" : [ "fac:NetCashFlowsFromFinancingActivities" ], 
    "DependsOn" : [ "fac:NetCashFlowsFromFinancingActivitiesContinuing", "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" ]
  }, {
    "Id" : "IS1", 
    "Type" : "xbrl28:validation", 
    "Label" : "GrossProfit = Revenues - CostOfRevenue", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:GrossProfit\", \"fac:Revenues\", \"fac:CostOfRevenue\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $GrossProfit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:GrossProfit\"] let $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"] let $CostOfRevenue as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostOfRevenue\"] where exists($GrossProfit) return let $test := rules:decimal-value($GrossProfit) eq (rules:decimal-value($Revenues) - rules:decimal-value($CostOfRevenue)) let $audit-trail-message := rules:fact-trail($GrossProfit) || (if($test) then \" = \" else \" != \") || \"(\" || rules:fact-trail($Revenues,\"Revenues\") || \" - \" || rules:fact-trail($CostOfRevenue,\"CostOfRevenue\") || \")\" let $source-facts := ( $Revenues, $CostOfRevenue) return rules:create-computed-fact( $GrossProfit, \"fac:GrossProfitValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $GrossProfit, $test)", 
    "ComputableConcepts" : [ "fac:GrossProfitValidation" ], 
    "ValidatedConcepts" : [ "fac:GrossProfit" ], 
    "DependsOn" : [ "fac:Revenues", "fac:CostOfRevenue" ]
  }, {
    "Id" : "IS2", 
    "Type" : "xbrl28:validation", 
    "Label" : "OperatingIncomeLoss = GrossProfit - OperatingExpenses + OtherOperatingIncomeExpenses", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:OperatingIncomeLoss\", \"fac:GrossProfit\", \"fac:OperatingExpenses\", \"fac:OtherOperatingIncomeExpenses\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"] let $GrossProfit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:GrossProfit\"] let $OperatingExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingExpenses\"] let $OtherOperatingIncomeExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OtherOperatingIncomeExpenses\"] where exists($OperatingIncomeLoss) return let $test := rules:decimal-value($OperatingIncomeLoss) eq (rules:decimal-value($GrossProfit) - rules:decimal-value($OperatingExpenses) + rules:decimal-value($OtherOperatingIncomeExpenses)) let $audit-trail-message := rules:fact-trail($OperatingIncomeLoss) || (if($test) then \" = \" else \" != \") || \"(\" || rules:fact-trail($GrossProfit,\"GrossProfit\") || \" - \" || rules:fact-trail($OperatingExpenses,\"OperatingExpenses\") || \" + \" || rules:fact-trail($OtherOperatingIncomeExpenses,\"OtherOperatingIncomeExpenses\") || \")\" let $source-facts := ( $GrossProfit, $OperatingExpenses, $OtherOperatingIncomeExpenses) return rules:create-computed-fact( $OperatingIncomeLoss, \"fac:OperatingIncomeLossValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $OperatingIncomeLoss, $test)", 
    "ComputableConcepts" : [ "fac:OperatingIncomeLossValidation" ], 
    "ValidatedConcepts" : [ "fac:OperatingIncomeLoss" ], 
    "DependsOn" : [ "fac:GrossProfit", "fac:OperatingExpenses", "fac:OtherOperatingIncomeExpenses" ]
  }, {
    "Id" : "IS11", 
    "Type" : "xbrl28:validation", 
    "Label" : "OperatingIncomeLoss = Revenues - CostsAndExpenses + OtherOperatingIncomeExpenses", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:OperatingIncomeLoss\", \"fac:Revenues\", \"fac:CostsAndExpenses\", \"fac:OtherOperatingIncomeExpenses\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"] let $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"] let $CostsAndExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostsAndExpenses\"] let $OtherOperatingIncomeExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OtherOperatingIncomeExpenses\"] where exists($OperatingIncomeLoss) return let $test := rules:decimal-value($OperatingIncomeLoss) eq (rules:decimal-value($Revenues) - rules:decimal-value($CostsAndExpenses) + rules:decimal-value($OtherOperatingIncomeExpenses)) let $audit-trail-message := rules:fact-trail($OperatingIncomeLoss) || (if($test) then \" = \" else \" != \") || \"(\" || rules:fact-trail($Revenues,\"Revenues\") || \" - \" || rules:fact-trail($CostsAndExpenses,\"CostsAndExpenses\") || \" + \" || rules:fact-trail($OtherOperatingIncomeExpenses,\"OtherOperatingIncomeExpenses\") || \")\" let $source-facts := ( $Revenues, $CostsAndExpenses, $OtherOperatingIncomeExpenses) return rules:create-computed-fact( $OperatingIncomeLoss, \"fac:OperatingIncomeLoss2Validation\", $test, $rule, $audit-trail-message, $source-facts, $options, $OperatingIncomeLoss, $test)", 
    "ComputableConcepts" : [ "fac:OperatingIncomeLoss2Validation" ], 
    "ValidatedConcepts" : [ "fac:OperatingIncomeLoss" ], 
    "DependsOn" : [ "fac:Revenues", "fac:CostsAndExpenses", "fac:OtherOperatingIncomeExpenses" ]
  }, {
    "Id" : "IS3", 
    "Type" : "xbrl28:validation", 
    "Label" : "IncomeBeforeEquityMethodInvestments = OperatingIncomeLoss + NonoperatingIncomeLossPlusInterestAndDebtExpense", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:IncomeBeforeEquityMethodInvestments\", \"fac:OperatingIncomeLoss\", \"fac:NonoperatingIncomeLossPlusInterestAndDebtExpense\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $IncomeBeforeEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeBeforeEquityMethodInvestments\"] let $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"] let $NonoperatingIncomeLossPlusInterestAndDebtExpense as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NonoperatingIncomeLossPlusInterestAndDebtExpense\"] where exists($IncomeBeforeEquityMethodInvestments) return let $test := rules:decimal-value($IncomeBeforeEquityMethodInvestments) eq rules:decimal-value($OperatingIncomeLoss) + rules:decimal-value($NonoperatingIncomeLossPlusInterestAndDebtExpense) let $audit-trail-message := rules:fact-trail($IncomeBeforeEquityMethodInvestments) || (if($test) then \" = \" else \" != \") || \"\" || rules:fact-trail($OperatingIncomeLoss,\"OperatingIncomeLoss\") || \" + \" || rules:fact-trail($NonoperatingIncomeLossPlusInterestAndDebtExpense,\"NonoperatingIncomeLossPlusInterestAndDebtExpense\") || \"\" let $source-facts := ( $OperatingIncomeLoss, $NonoperatingIncomeLossPlusInterestAndDebtExpense) return rules:create-computed-fact( $IncomeBeforeEquityMethodInvestments, \"fac:IncomeBeforeEquityMethodInvestmentsValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $IncomeBeforeEquityMethodInvestments, $test)", 
    "ComputableConcepts" : [ "fac:IncomeBeforeEquityMethodInvestmentsValidation" ], 
    "ValidatedConcepts" : [ "fac:IncomeBeforeEquityMethodInvestments" ], 
    "DependsOn" : [ "fac:OperatingIncomeLoss", "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense" ]
  }, {
    "Id" : "IS4", 
    "Type" : "xbrl28:validation", 
    "Label" : "IncomeLossFromContinuingOperationsBeforeTax = IncomeBeforeEquityMethodInvestments + IncomeLossFromEquityMethodInvestments", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:IncomeLossFromContinuingOperationsBeforeTax\", \"fac:IncomeBeforeEquityMethodInvestments\", \"fac:IncomeLossFromEquityMethodInvestments\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $IncomeLossFromContinuingOperationsBeforeTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromContinuingOperationsBeforeTax\"] let $IncomeBeforeEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeBeforeEquityMethodInvestments\"] let $IncomeLossFromEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromEquityMethodInvestments\"] where exists($IncomeLossFromContinuingOperationsBeforeTax) return let $test := rules:decimal-value($IncomeLossFromContinuingOperationsBeforeTax) eq rules:decimal-value($IncomeBeforeEquityMethodInvestments) + rules:decimal-value($IncomeLossFromEquityMethodInvestments) let $audit-trail-message := rules:fact-trail($IncomeLossFromContinuingOperationsBeforeTax) || (if($test) then \" = \" else \" != \") || \"\" || rules:fact-trail($IncomeBeforeEquityMethodInvestments,\"IncomeBeforeEquityMethodInvestments\") || \" + \" || rules:fact-trail($IncomeLossFromEquityMethodInvestments,\"IncomeLossFromEquityMethodInvestments\") || \"\" let $source-facts := ( $IncomeBeforeEquityMethodInvestments, $IncomeLossFromEquityMethodInvestments) return rules:create-computed-fact( $IncomeLossFromContinuingOperationsBeforeTax, \"fac:IncomeLossFromContinuingOperationsBeforeTaxValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $IncomeLossFromContinuingOperationsBeforeTax, $test)", 
    "ComputableConcepts" : [ "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation" ], 
    "ValidatedConcepts" : [ "fac:IncomeLossFromContinuingOperationsBeforeTax" ], 
    "DependsOn" : [ "fac:IncomeBeforeEquityMethodInvestments", "fac:IncomeLossFromEquityMethodInvestments" ]
  }, {
    "Id" : "IS5", 
    "Type" : "xbrl28:validation", 
    "Label" : "IncomeLossFromContinuingOperationsAfterTax = IncomeLossFromContinuingOperationsBeforeTax - IncomeTaxExpenseBenefit", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:IncomeLossFromContinuingOperationsAfterTax\", \"fac:IncomeLossFromContinuingOperationsBeforeTax\", \"fac:IncomeTaxExpenseBenefit\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $IncomeLossFromContinuingOperationsAfterTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromContinuingOperationsAfterTax\"] let $IncomeLossFromContinuingOperationsBeforeTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromContinuingOperationsBeforeTax\"] let $IncomeTaxExpenseBenefit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeTaxExpenseBenefit\"] where exists($IncomeLossFromContinuingOperationsAfterTax) return let $test := rules:decimal-value($IncomeLossFromContinuingOperationsAfterTax) eq (rules:decimal-value($IncomeLossFromContinuingOperationsBeforeTax) - rules:decimal-value($IncomeTaxExpenseBenefit)) let $audit-trail-message := rules:fact-trail($IncomeLossFromContinuingOperationsAfterTax) || (if($test) then \" = \" else \" != \") || \"(\" || rules:fact-trail($IncomeLossFromContinuingOperationsBeforeTax,\"IncomeLossFromContinuingOperationsBeforeTax\") || \" - \" || rules:fact-trail($IncomeTaxExpenseBenefit,\"IncomeTaxExpenseBenefit\") || \")\" let $source-facts := ( $IncomeLossFromContinuingOperationsBeforeTax, $IncomeTaxExpenseBenefit) return rules:create-computed-fact( $IncomeLossFromContinuingOperationsAfterTax, \"fac:IncomeLossFromContinuingOperationsAfterTaxValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $IncomeLossFromContinuingOperationsAfterTax, $test)", 
    "ComputableConcepts" : [ "fac:IncomeLossFromContinuingOperationsAfterTaxValidation" ], 
    "ValidatedConcepts" : [ "fac:IncomeLossFromContinuingOperationsAfterTax" ], 
    "DependsOn" : [ "fac:IncomeLossFromContinuingOperationsBeforeTax", "fac:IncomeTaxExpenseBenefit" ]
  }, {
    "Id" : "IS6", 
    "Type" : "xbrl28:validation", 
    "Label" : "NetIncomeLoss = IncomeLossFromContinuingOperationsAfterTax + IncomeLossFromDiscontinuedOperationsNetTax + ExtraordinaryItemsIncomeExpenseNetTax", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetIncomeLoss\", \"fac:IncomeLossFromContinuingOperationsAfterTax\", \"fac:IncomeLossFromDiscontinuedOperationsNetTax\", \"fac:ExtraordinaryItemsIncomeExpenseNetTax\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"] let $IncomeLossFromContinuingOperationsAfterTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromContinuingOperationsAfterTax\"] let $IncomeLossFromDiscontinuedOperationsNetTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromDiscontinuedOperationsNetTax\"] let $ExtraordinaryItemsIncomeExpenseNetTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ExtraordinaryItemsIncomeExpenseNetTax\"] where exists($NetIncomeLoss) return let $test := rules:decimal-value($NetIncomeLoss) eq rules:decimal-value($IncomeLossFromContinuingOperationsAfterTax) + rules:decimal-value($IncomeLossFromDiscontinuedOperationsNetTax) + rules:decimal-value($ExtraordinaryItemsIncomeExpenseNetTax) let $audit-trail-message := rules:fact-trail($NetIncomeLoss) || (if($test) then \" = \" else \" != \") || \"\" || rules:fact-trail($IncomeLossFromContinuingOperationsAfterTax,\"IncomeLossFromContinuingOperationsAfterTax\") || \" + \" || rules:fact-trail($IncomeLossFromDiscontinuedOperationsNetTax,\"IncomeLossFromDiscontinuedOperationsNetTax\") || \" + \" || rules:fact-trail($ExtraordinaryItemsIncomeExpenseNetTax,\"ExtraordinaryItemsIncomeExpenseNetTax\") || \"\" let $source-facts := ( $IncomeLossFromContinuingOperationsAfterTax, $IncomeLossFromDiscontinuedOperationsNetTax, $ExtraordinaryItemsIncomeExpenseNetTax) return rules:create-computed-fact( $NetIncomeLoss, \"fac:NetIncomeLossValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $NetIncomeLoss, $test)", 
    "ComputableConcepts" : [ "fac:NetIncomeLossValidation" ], 
    "ValidatedConcepts" : [ "fac:NetIncomeLoss" ], 
    "DependsOn" : [ "fac:IncomeLossFromContinuingOperationsAfterTax", "fac:IncomeLossFromDiscontinuedOperationsNetTax", "fac:ExtraordinaryItemsIncomeExpenseNetTax" ]
  }, {
    "Id" : "IS7", 
    "Type" : "xbrl28:validation", 
    "Label" : "NetIncomeLoss = NetIncomeAttributableToParent + NetIncomeAttributableToNoncontrollingInterest", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetIncomeLoss\", \"fac:NetIncomeAttributableToParent\", \"fac:NetIncomeAttributableToNoncontrollingInterest\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"] let $NetIncomeAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeAttributableToParent\"] let $NetIncomeAttributableToNoncontrollingInterest as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeAttributableToNoncontrollingInterest\"] where exists($NetIncomeLoss) return let $test := rules:decimal-value($NetIncomeLoss) eq rules:decimal-value($NetIncomeAttributableToParent) + rules:decimal-value($NetIncomeAttributableToNoncontrollingInterest) let $audit-trail-message := rules:fact-trail($NetIncomeLoss) || (if($test) then \" = \" else \" != \") || \"\" || rules:fact-trail($NetIncomeAttributableToParent,\"NetIncomeAttributableToParent\") || \" + \" || rules:fact-trail($NetIncomeAttributableToNoncontrollingInterest,\"NetIncomeAttributableToNoncontrollingInterest\") || \"\" let $source-facts := ( $NetIncomeAttributableToParent, $NetIncomeAttributableToNoncontrollingInterest) return rules:create-computed-fact( $NetIncomeLoss, \"fac:NetIncomeLoss2Validation\", $test, $rule, $audit-trail-message, $source-facts, $options, $NetIncomeLoss, $test)", 
    "ComputableConcepts" : [ "fac:NetIncomeLoss2Validation" ], 
    "ValidatedConcepts" : [ "fac:NetIncomeLoss" ], 
    "DependsOn" : [ "fac:NetIncomeAttributableToParent", "fac:NetIncomeAttributableToNoncontrollingInterest" ]
  }, {
    "Id" : "IS8", 
    "Type" : "xbrl28:validation", 
    "Label" : "NetIncomeLossAvailableToCommonStockholdersBasic = NetIncomeAttributableToParent - PreferredStockDividendsAndOtherAdjustments", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\", \"fac:NetIncomeAttributableToParent\", \"fac:PreferredStockDividendsAndOtherAdjustments\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NetIncomeLossAvailableToCommonStockholdersBasic as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\"] let $NetIncomeAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeAttributableToParent\"] let $PreferredStockDividendsAndOtherAdjustments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:PreferredStockDividendsAndOtherAdjustments\"] where exists($NetIncomeLossAvailableToCommonStockholdersBasic) return let $test := rules:decimal-value($NetIncomeLossAvailableToCommonStockholdersBasic) eq rules:decimal-value($NetIncomeAttributableToParent) - rules:decimal-value($PreferredStockDividendsAndOtherAdjustments) let $audit-trail-message := rules:fact-trail($NetIncomeLossAvailableToCommonStockholdersBasic) || (if($test) then \" = \" else \" != \") || \"\" || rules:fact-trail($NetIncomeAttributableToParent,\"NetIncomeAttributableToParent\") || \" - \" || rules:fact-trail($PreferredStockDividendsAndOtherAdjustments,\"PreferredStockDividendsAndOtherAdjustments\") || \"\" let $source-facts := ( $NetIncomeAttributableToParent, $PreferredStockDividendsAndOtherAdjustments) return rules:create-computed-fact( $NetIncomeLossAvailableToCommonStockholdersBasic, \"fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $NetIncomeLossAvailableToCommonStockholdersBasic, $test)", 
    "ComputableConcepts" : [ "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation" ], 
    "ValidatedConcepts" : [ "fac:NetIncomeLossAvailableToCommonStockholdersBasic" ], 
    "DependsOn" : [ "fac:NetIncomeAttributableToParent", "fac:PreferredStockDividendsAndOtherAdjustments" ]
  }, {
    "Id" : "IS9", 
    "Type" : "xbrl28:validation", 
    "Label" : "ComprehensiveIncomeLoss = ComprehensiveIncomeLossAttributableToParent + ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:ComprehensiveIncomeLoss\", \"fac:ComprehensiveIncomeLossAttributableToParent\", \"fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $ComprehensiveIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLoss\"] let $ComprehensiveIncomeLossAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLossAttributableToParent\"] let $ComprehensiveIncomeLossAttributableToNoncontrollingInterest as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest\"] where exists($ComprehensiveIncomeLoss) return let $test := rules:decimal-value($ComprehensiveIncomeLoss) eq rules:decimal-value($ComprehensiveIncomeLossAttributableToParent) + rules:decimal-value($ComprehensiveIncomeLossAttributableToNoncontrollingInterest) let $audit-trail-message := rules:fact-trail($ComprehensiveIncomeLoss) || (if($test) then \" = \" else \" != \") || \"\" || rules:fact-trail($ComprehensiveIncomeLossAttributableToParent,\"ComprehensiveIncomeLossAttributableToParent\") || \" + \" || rules:fact-trail($ComprehensiveIncomeLossAttributableToNoncontrollingInterest,\"ComprehensiveIncomeLossAttributableToNoncontrollingInterest\") || \"\" let $source-facts := ( $ComprehensiveIncomeLossAttributableToParent, $ComprehensiveIncomeLossAttributableToNoncontrollingInterest) return rules:create-computed-fact( $ComprehensiveIncomeLoss, \"fac:ComprehensiveIncomeLossValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $ComprehensiveIncomeLoss, $test)", 
    "ComputableConcepts" : [ "fac:ComprehensiveIncomeLossValidation" ], 
    "ValidatedConcepts" : [ "fac:ComprehensiveIncomeLoss" ], 
    "DependsOn" : [ "fac:ComprehensiveIncomeLossAttributableToParent", "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest" ]
  }, {
    "Id" : "IS10", 
    "Type" : "xbrl28:validation", 
    "Label" : "ComprehensiveIncomeLoss = NetIncomeLoss + OtherComprehensiveIncomeLoss", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:ComprehensiveIncomeLoss\", \"fac:NetIncomeLoss\", \"fac:OtherComprehensiveIncomeLoss\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $ComprehensiveIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLoss\"] let $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"] let $OtherComprehensiveIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OtherComprehensiveIncomeLoss\"] where exists($ComprehensiveIncomeLoss) return let $test := rules:decimal-value($ComprehensiveIncomeLoss) eq rules:decimal-value($NetIncomeLoss) + rules:decimal-value($OtherComprehensiveIncomeLoss) let $audit-trail-message := rules:fact-trail($ComprehensiveIncomeLoss) || (if($test) then \" = \" else \" != \") || \"\" || rules:fact-trail($NetIncomeLoss,\"NetIncomeLoss\") || \" + \" || rules:fact-trail($OtherComprehensiveIncomeLoss,\"OtherComprehensiveIncomeLoss\") || \"\" let $source-facts := ( $NetIncomeLoss, $OtherComprehensiveIncomeLoss) return rules:create-computed-fact( $ComprehensiveIncomeLoss, \"fac:ComprehensiveIncomeLoss2Validation\", $test, $rule, $audit-trail-message, $source-facts, $options, $ComprehensiveIncomeLoss, $test)", 
    "ComputableConcepts" : [ "fac:ComprehensiveIncomeLoss2Validation" ], 
    "ValidatedConcepts" : [ "fac:ComprehensiveIncomeLoss" ], 
    "DependsOn" : [ "fac:NetIncomeLoss", "fac:OtherComprehensiveIncomeLoss" ]
  }, {
    "Id" : "oag_ProvedReserves", 
    "Type" : "xbrl28:formula", 
    "Label" : "Proved reserves calculation", 
    "Formula" : "declare function local:mapToMember($concept) { switch(true) case ($concept = \"oag:ReservesProvedNaturalGas\") return \"us-gaap:NaturalGasReservesMember\" case ($concept = \"oag:ReservesProvedNaturalGasLiquids\") return \"apa:NaturalGasLiquidsMember\" case ($concept = \"oag:ReservesProvedOilAndCondensateReserves\") return \"apa:CrudeOilAndCondensateMember\" case ($concept = \"oag:ReservesProvedTotal\") return \"us-gaap:TypeOfReserveDomain\" default return () }; let $target-concept := \"us-gaap:ProvedDevelopedReservesVolume\" let $concepts := flatten($aligned-filter.$facts:ASPECTS.$facts:CONCEPT)[$$ = (\"oag:ReservesProvedNaturalGas\", \"oag:ReservesProvedOilAndCondensateReserves\", \"oag:ReservesProvedNaturalGasLiquids\", \"oag:ReservesProvedTotal\")] for $concept in $concepts let $filter-mod := if($concept ne \"oag:ReservesProvedTotal\") then local:mapToMember($concept) else () let $hypercube-mod := { \"Name\" : \"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\", \"Default\" : \"us-gaap:TypeOfReserveDomain\" } let $aligned-filter := copy $f := $aligned-filter modify ( if(exists($filter-mod)) then if(exists($f.Aspects.\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\")) then replace value of json $f.Aspects.\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\" with $filter-mod else insert json { \"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\": [ $filter-mod ] } into $f.Aspects else (), replace value of json $f.Aspects.$facts:CONCEPT with [ $target-concept ] ) return $f let $hypercube := copy $h := $hypercube modify ( if(exists($h.Aspects.\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\")) then replace value of json $h.Aspects.\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\" with $hypercube-mod else insert json {\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\" : $hypercube-mod } into $h.Aspects ) return $h return for $facts in facts:facts-for-internal( $target-concept, $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) return let $member := local:mapToMember($concept) for $provedReserve in $facts[$$.$facts:ASPECTS.\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\" eq $member] return let $source-fact := $provedReserve let $value := rules:decimal-value($provedReserve) let $original-concept := $provedReserve.$facts:ASPECTS.$facts:CONCEPT let $audit-trail-message := \"concept to member mapping: '\" || $concept || \"' -> '\" || $original-concept || \"(us-gaap:ReserveQuantitiesByTypeOfReserveAxis::\" || $member || \")'\" return copy $f := rules:create-computed-fact( $source-fact, $concept, $value, $rule, $audit-trail-message, $source-fact, $options) modify if(exists($f.Aspects.\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\")) then delete json $f.Aspects.\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\" else () return $f", 
    "ComputableConcepts" : [ "oag:ReservesProvedNaturalGas", "oag:ReservesProvedOilAndCondensateReserves", "oag:ReservesProvedNaturalGasLiquids", "oag:ReservesProvedTotal" ]
  }, {
    "Id" : "oag_SalesVolumes", 
    "Type" : "xbrl28:formula", 
    "Label" : "Sales Volumes calculation", 
    "Formula" : "declare function local:mapToMember($concept) { switch(true) case ($concept = (\"oag:SalesVolumesNaturalGas\", \"oag:SalesVolumesDailyNaturalGas\")) return \"us-gaap:NaturalGasReservesMember\" case ($concept = (\"oag:SalesVolumesNaturalGasLiquids\", \"oag:SalesVolumesDailyNaturalGasLiquids\")) return \"apa:NaturalGasLiquidsMember\" case ($concept = (\"oag:SalesVolumesOilAndCondensate\", \"oag:SalesVolumesDailyOilAndCondensate\")) return \"apa:CrudeOilAndCondensateMember\" case ($concept = (\"oag:SalesVolumesTotal\", \"oag:SalesVolumesDailyTotal\")) return \"us-gaap:TypeOfReserveDomain\" default return () }; declare function local:valueAdjusted($concept, $fact) { let $unit := $fact.Aspects.\"xbrl:Unit\" return switch(true) case ($concept eq \"oag:SalesVolumesNaturalGas\" and contains($unit, \":MMcf\")) return rules:decimal-value($fact) div 1000 case ($concept eq \"oag:SalesVolumesDailyNaturalGas\") return rules:decimal-value($fact) div 365 case ($concept = (\"oag:SalesVolumesNaturalGasLiquids\", \"oag:SalesVolumesOilAndCondensate\", \"oag:SalesVolumesTotal\") and contains($unit, \":MBbls\")) return rules:decimal-value($fact) div 1000 case ($concept = (\"oag:SalesVolumesDailyNaturalGasLiquids\", \"oag:SalesVolumesDailyOilAndCondensate\", \"oag:SalesVolumesDailyTotal\")) return rules:decimal-value($fact) div 365 default return rules:decimal-value($fact) }; declare function local:unitsAdjusted($concept, $fact) { let $unit := $fact.Aspects.\"xbrl:Unit\" return switch(true) case ($concept eq \"oag:SalesVolumesNaturalGas\" and contains($unit, \":MMcf\")) return \"utr:Bcf\" case ($concept eq \"oag:SalesVolumesDailyNaturalGas\" and contains($unit, \":MMcf\")) return \"utr:MMcf/d\" case ($concept = (\"oag:SalesVolumesNaturalGasLiquids\", \"oag:SalesVolumesOilAndCondensate\") and contains($unit, \":MBbls\")) return \"utr:MMBbls\" case ($concept = (\"oag:SalesVolumesDailyNaturalGasLiquids\", \"oag:SalesVolumesDailyOilAndCondensate\") and contains($unit, \":MBbls\")) return \"utr:MBbls/d\" case ($concept eq \"oag:SalesVolumesTotal\" and contains($unit, \":MBbls\")) return \"utr:MMBOE\" case ($concept eq \"oag:SalesVolumesDailyTotal\" and contains($unit, \":MBbls\")) return \"utr:MBOE/d\" default return $unit }; let $target-concept := \"us-gaap:ProvedDevelopedAndUndevelopedReservesSalesOfMineralsInPlace\" let $concepts := flatten($aligned-filter.$facts:ASPECTS.$facts:CONCEPT)[$$ = (\"oag:SalesVolumesNaturalGas\", \"oag:SalesVolumesOilAndCondensate\", \"oag:SalesVolumesNaturalGasLiquids\", \"oag:SalesVolumesTotal\", \"oag:SalesVolumesDailyNaturalGas\", \"oag:SalesVolumesDailyOilAndCondensate\", \"oag:SalesVolumesDailyNaturalGasLiquids\", \"oag:SalesVolumesDailyTotal\")] for $concept in $concepts let $filter-mod := if($concept = (\"oag:SalesVolumesTotal\", \"oag:SalesVolumesDailyTotal\")) then () else local:mapToMember($concept) let $hypercube-mod := { \"Name\" : \"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\", \"Default\" : \"us-gaap:TypeOfReserveDomain\" } let $aligned-filter := copy $f := $aligned-filter modify ( if(exists($filter-mod)) then if(exists($f.Aspects.\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\")) then replace value of json $f.Aspects.\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\" with $filter-mod else insert json { \"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\": [ $filter-mod ] } into $f.Aspects else (), replace value of json $f.Aspects.$facts:CONCEPT with [ $target-concept ] ) return $f let $hypercube := copy $h := $hypercube modify ( if(exists($h.Aspects.\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\")) then replace value of json $h.Aspects.\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\" with $hypercube-mod else insert json {\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\" : $hypercube-mod } into $h.Aspects ) return $h return for $facts in facts:facts-for-internal( $target-concept, $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) return let $member := local:mapToMember($concept) for $salesVolume in $facts[$$.$facts:ASPECTS.\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\" eq $member] return let $source-fact := $salesVolume let $value := local:valueAdjusted($concept, $salesVolume) let $unit := local:unitsAdjusted($concept, $salesVolume) let $original-concept := $salesVolume.$facts:ASPECTS.$facts:CONCEPT let $audit-trail-message := \"concept to member mapping: '\" || $concept || \"' -> '\" || $original-concept || \"(us-gaap:ReserveQuantitiesByTypeOfReserveAxis::\" || $member || \")'\" return copy $f := rules:create-computed-fact( $source-fact, $concept, $value, $rule, $audit-trail-message, $source-fact, $options) modify ( if(exists($f.Aspects.\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\")) then delete json $f.Aspects.\"us-gaap:ReserveQuantitiesByTypeOfReserveAxis\" else (), replace value of json $f.Aspects.\"xbrl:Unit\" with $unit ) return $f", 
    "ComputableConcepts" : [ "oag:SalesVolumesNaturalGas", "oag:SalesVolumesOilAndCondensate", "oag:SalesVolumesNaturalGasLiquids", "oag:SalesVolumesTotal", "oag:SalesVolumesDailyNaturalGas", "oag:SalesVolumesDailyOilAndCondensate", "oag:SalesVolumesDailyNaturalGasLiquids", "oag:SalesVolumesDailyTotal" ]
  }, {
    "Id" : "BS2", 
    "OriginalLanguage" : "SpreadsheetFormula", 
    "Type" : "xbrl28:validation", 
    "Label" : "Assets = LiabilitiesAndEquity", 
    "Description" : "Rule to validate Assets (fac:Assets). It also creates a new fact (fac:AssetsValidation) that contains the validation result.", 
    "ComputableConcepts" : [ "fac:AssetsValidation" ], 
    "DependsOn" : [ "fac:Assets", "fac:LiabilitiesAndEquity" ], 
    "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:AssetsValidation\", \"fac:Assets\", \"fac:LiabilitiesAndEquity\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\"))\n  , $aligned-period\nlet $AssetsValidation as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:AssetsValidation\"]\nlet $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"]\nlet $LiabilitiesAndEquity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:LiabilitiesAndEquity\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($AssetsValidation) return $AssetsValidation\n  case (exists($Assets) and true)\n  return\n    let $computed-value := rules:decimal-value($Assets) eq rules:decimal-value($LiabilitiesAndEquity)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:AssetsValidation\" }, Value: $computed-value }) || \" = \"\n\t        || rules:fact-trail($Assets, \"Assets\") || \" eq \" || rules:fact-trail($LiabilitiesAndEquity, \"LiabilitiesAndEquity\")\n\t let $source-facts := ($AssetsValidation, $Assets, $LiabilitiesAndEquity)\n    return\n      rules:create-computed-fact(\n          $Assets,\n          \"fac:AssetsValidation\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
    "ValidatedConcepts" : [ "fac:Assets" ], 
    "Formulae" : [ {
      "PrereqSrc" : "TRUE", 
      "Prereq" : {
        "Type" : "boolean", 
        "Value" : "true"
      }, 
      "SourceFact" : [ "Assets" ], 
      "BodySrc" : "Assets = LiabilitiesAndEquity", 
      "Body" : {
        "Type" : "eq", 
        "Children" : [ {
          "Type" : "variable", 
          "Name" : "Assets"
        }, {
          "Type" : "variable", 
          "Name" : "LiabilitiesAndEquity"
        } ]
      }, 
      "active" : true, 
      "valid" : true
    } ], 
    "AllowCrossPeriod" : true, 
    "AllowCrossBalance" : true
  }, {
    "Id" : "BS3", 
    "OriginalLanguage" : "SpreadsheetFormula", 
    "Type" : "xbrl28:validation", 
    "Label" : "Assets = CurrentAssets + NoncurrentAssets", 
    "Description" : "Rule to validate Assets (fac:Assets). It also creates a new fact (fac:AssetsValidation2) that contains the validation result.", 
    "ComputableConcepts" : [ "fac:AssetsValidation2" ], 
    "DependsOn" : [ "fac:Assets", "fac:CurrentAssets", "fac:NoncurrentAssets" ], 
    "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:AssetsValidation2\", \"fac:Assets\", \"fac:CurrentAssets\", \"fac:NoncurrentAssets\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\"))\n  , $aligned-period\nlet $AssetsValidation2 as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:AssetsValidation2\"]\nlet $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"]\nlet $CurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"]\nlet $NoncurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($AssetsValidation2) return $AssetsValidation2\n  case (exists($Assets) and true)\n  return\n    let $computed-value := rules:decimal-value($Assets) eq rules:decimal-value($CurrentAssets) + rules:decimal-value($NoncurrentAssets)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:AssetsValidation2\" }, Value: $computed-value }) || \" = \"\n\t        || rules:fact-trail($Assets, \"Assets\") || \" eq \" || rules:fact-trail($CurrentAssets, \"CurrentAssets\") || \" + \" || rules:fact-trail($NoncurrentAssets, \"NoncurrentAssets\")\n\t let $source-facts := ($AssetsValidation2, $Assets, $CurrentAssets, $NoncurrentAssets)\n    return\n      rules:create-computed-fact(\n          $Assets,\n          \"fac:AssetsValidation2\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
    "ValidatedConcepts" : [ "fac:Assets" ], 
    "Formulae" : [ {
      "PrereqSrc" : "TRUE", 
      "Prereq" : {
        "Type" : "boolean", 
        "Value" : "true"
      }, 
      "SourceFact" : [ "Assets" ], 
      "BodySrc" : "Assets = CurrentAssets + NoncurrentAssets", 
      "Body" : {
        "Type" : "eq", 
        "Children" : [ {
          "Type" : "variable", 
          "Name" : "Assets"
        }, {
          "Type" : "add", 
          "Children" : [ {
            "Type" : "variable", 
            "Name" : "CurrentAssets"
          }, {
            "Type" : "variable", 
            "Name" : "NoncurrentAssets"
          } ]
        } ]
      }, 
      "active" : true, 
      "valid" : true
    } ], 
    "AllowCrossPeriod" : true, 
    "AllowCrossBalance" : true
  }, {
    "Id" : "13fa53d2-502e-4ee9-8e30-ba24ba3e43f0", 
    "OriginalLanguage" : "SpreadsheetFormula", 
    "Type" : "xbrl28:formula", 
    "Label" : "Assets", 
    "Description" : "Rule to compute Assets (fac:Assets).", 
    "ComputableConcepts" : [ "fac:Assets" ], 
    "DependsOn" : [ "fac:CurrentAssets", "fac:LiabilitiesAndEquity", "fac:NoncurrentAssets" ], 
    "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:Assets\", \"fac:CurrentAssets\", \"fac:LiabilitiesAndEquity\", \"fac:NoncurrentAssets\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\"))\n  , $aligned-period\nlet $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"]\nlet $CurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"]\nlet $LiabilitiesAndEquity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:LiabilitiesAndEquity\"]\nlet $NoncurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($Assets) return $Assets\n  case (exists($LiabilitiesAndEquity) and rules:decimal-value($CurrentAssets) eq rules:decimal-value($LiabilitiesAndEquity))\n  return\n    let $computed-value := rules:decimal-value($CurrentAssets)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:Assets\" }, Value: $computed-value }) || \" = \"\n\t        || rules:fact-trail($CurrentAssets, \"CurrentAssets\")\n\t let $source-facts := ($Assets, $CurrentAssets, $LiabilitiesAndEquity, $NoncurrentAssets)\n    return\n      rules:create-computed-fact(\n          $LiabilitiesAndEquity,\n          \"fac:Assets\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  case (exists($NoncurrentAssets) and ())\n  return\n    let $computed-value := rules:decimal-value($CurrentAssets)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:Assets\" }, Value: $computed-value }) || \" = \"\n\t        || rules:fact-trail($CurrentAssets, \"CurrentAssets\")\n\t let $source-facts := ($Assets, $CurrentAssets, $LiabilitiesAndEquity, $NoncurrentAssets)\n    return\n      rules:create-computed-fact(\n          $NoncurrentAssets,\n          \"fac:Assets\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
    "Formulae" : [ {
      "PrereqSrc" : "CurrentAssets = LiabilitiesAndEquity", 
      "Prereq" : {
        "Type" : "eq", 
        "Children" : [ {
          "Type" : "variable", 
          "Name" : "CurrentAssets"
        }, {
          "Type" : "variable", 
          "Name" : "LiabilitiesAndEquity"
        } ]
      }, 
      "SourceFact" : [ "LiabilitiesAndEquity" ], 
      "BodySrc" : "CurrentAssets", 
      "Body" : {
        "Type" : "variable", 
        "Name" : "CurrentAssets"
      }, 
      "active" : true, 
      "valid" : true
    }, {
      "PrereqSrc" : "and(not(isblank(LiabilitiesAndEquity)),LiabilitiesAndEquity=Equity+Liabilities)", 
      "Prereq" : {
        "Type" : "function", 
        "Name" : "and", 
        "Children" : [ [ {
          "Type" : "function", 
          "Name" : "not", 
          "Children" : [ {
            "Type" : "function", 
            "Name" : "isblank", 
            "Children" : [ {
              "Type" : "variable", 
              "Name" : "LiabilitiesAndEquity"
            } ]
          } ]
        }, {
          "Type" : "eq", 
          "Children" : [ {
            "Type" : "variable", 
            "Name" : "LiabilitiesAndEquity"
          }, {
            "Type" : "add", 
            "Children" : [ {
              "Type" : "variable", 
              "Name" : "Equity"
            }, {
              "Type" : "variable", 
              "Name" : "Liabilities"
            } ]
          } ]
        } ] ]
      }, 
      "SourceFact" : [ "NoncurrentAssets" ], 
      "BodySrc" : "CurrentAssets", 
      "Body" : {
        "Type" : "variable", 
        "Name" : "CurrentAssets"
      }, 
      "active" : false, 
      "valid" : true
    } ], 
    "AllowCrossPeriod" : true, 
    "AllowCrossBalance" : true
  }, {
    "Id" : "VAL1", 
    "Label" : "Validation Statistics", 
    "Type" : "xbrl28:formula", 
    "Formula" : "let $validations := (\"fac:EquityValidation\", \"fac:AssetsValidation\", \"fac:AssetsValidation2\", \"fac:LiabilitiesValidation\", \"fac:LiabilitiesAndEquityValidation\", \"fac:NetCashFlowsValidation\", \"fac:NetCashFlowsContinuingValidation\", \"fac:NetCashFlowsDiscontinuedValidation\", \"fac:NetCashFlowsFromOperatingActivitiesValidation\", \"fac:NetCashFlowsFromInvestingActivitiesValidation\", \"fac:NetCashFlowsFromFinancingActivitiesValidation\", \"fac:GrossProfitValidation\", \"fac:OperatingIncomeLossValidation\", \"fac:OperatingIncomeLoss2Validation\", \"fac:IncomeBeforeEquityMethodInvestmentsValidation\", \"fac:IncomeLossFromContinuingOperationsBeforeTaxValidation\", \"fac:IncomeLossFromContinuingOperationsAfterTaxValidation\", \"fac:NetIncomeLossValidation\", \"fac:NetIncomeLoss2Validation\", \"fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation\", \"fac:ComprehensiveIncomeLossValidation\", \"fac:ComprehensiveIncomeLoss2Validation\") for $facts in facts:facts-for-internal($validations, $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) let $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1] group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", $facts:PERIOD, \"Balance\")), $aligned-period return let $passed as object* := $facts[$$.Value eq true] let $failed as object* := $facts[$$.Value eq false] let $not-applied as string* := distinct-values($validations)[not($$ = $facts.$facts:ASPECTS.$facts:CONCEPT)] for $concept in flatten($aligned-filter.$facts:ASPECTS.$facts:CONCEPT) return switch ($concept) case \"fac:PassedValidations\" return let $computed-value := count($passed) let $audit-trail-message := \"count(\" || string-join($passed.$facts:ASPECTS.$facts:CONCEPT, \", \") || \")\" let $source-facts := ($passed) return copy $new := rules:create-computed-fact( ($facts[exists(facts:instant-for-fact($$))],$facts)[1], \"fac:PassedValidations\", $computed-value, {Label: $rule.Label || \": Passed Validations\", Type: \"xbrl28:formula\" }, $audit-trail-message, $source-facts, $options) modify ( if(exists($new.$facts:ASPECTS.$facts:UNIT)) then replace value of json $new.$facts:ASPECTS.$facts:UNIT with \"pure\" else insert json {$facts:UNIT : \"pure\"} into $new.$facts:ASPECTS, if(exists($new.Type)) then replace value of json $new.Type with \"NumericValue\" else insert json { Type : \"NumericValue\"} into $new, if(exists($new.Decimals)) then replace value of json $new.Decimals with 0 else insert json { Decimals : 0} into $new ) return $new case \"fac:FailedValidations\" return let $computed-value := count($failed) let $audit-trail-message := \"count(\" || string-join($failed.$facts:ASPECTS.$facts:CONCEPT, \", \") || \")\" let $source-facts := ($failed) return copy $new := rules:create-computed-fact( ($facts[exists(facts:instant-for-fact($$))],$facts)[1], \"fac:FailedValidations\", $computed-value, {Label: $rule.Label || \": Passed Validations\", Type: \"xbrl28:formula\" }, $audit-trail-message, $source-facts, $options) modify ( if(exists($new.$facts:ASPECTS.$facts:UNIT)) then replace value of json $new.$facts:ASPECTS.$facts:UNIT with \"pure\" else insert json {$facts:UNIT : \"pure\"} into $new.$facts:ASPECTS, if(exists($new.Type)) then replace value of json $new.Type with \"NumericValue\" else insert json { Type : \"NumericValue\"} into $new, if(exists($new.Decimals)) then replace value of json $new.Decimals with 0 else insert json { Decimals : 0} into $new ) return $new case \"fac:NotApplicableValidations\" return let $computed-value := count($not-applied) let $audit-trail-message := \"count(\" || string-join($not-applied, \", \") || \")\" let $source-facts := () return copy $new := rules:create-computed-fact( ($facts[exists(facts:instant-for-fact($$))],$facts)[1], \"fac:NotApplicableValidations\", $computed-value, {Label: $rule.Label || \": Validations that couldn't be applied\", Type: \"xbrl28:formula\" }, $audit-trail-message, $source-facts, $options) modify ( if(exists($new.$facts:ASPECTS.$facts:UNIT)) then replace value of json $new.$facts:ASPECTS.$facts:UNIT with \"pure\" else insert json {$facts:UNIT : \"pure\"} into $new.$facts:ASPECTS, if(exists($new.Type)) then replace value of json $new.Type with \"NumericValue\" else insert json { Type : \"NumericValue\"} into $new, if(exists($new.Decimals)) then replace value of json $new.Decimals with 0 else insert json { Decimals : 0} into $new ) return $new default return ()", 
    "ComputableConcepts" : [ "fac:PassedValidations", "fac:FailedValidations", "fac:NotApplicableValidations" ], 
    "DependsOn" : [ "fac:EquityValidation", "fac:AssetsValidation", "fac:AssetsValidation2", "fac:LiabilitiesValidation", "fac:LiabilitiesAndEquityValidation", "fac:NetCashFlowsValidation", "fac:NetCashFlowsContinuingValidation", "fac:NetCashFlowsDiscontinuedValidation", "fac:NetCashFlowsFromOperatingActivitiesValidation", "fac:NetCashFlowsFromInvestingActivitiesValidation", "fac:NetCashFlowsFromFinancingActivitiesValidation", "fac:GrossProfitValidation", "fac:OperatingIncomeLossValidation", "fac:OperatingIncomeLoss2Validation", "fac:IncomeBeforeEquityMethodInvestmentsValidation", "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", "fac:NetIncomeLossValidation", "fac:NetIncomeLoss2Validation", "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", "fac:ComprehensiveIncomeLossValidation", "fac:ComprehensiveIncomeLoss2Validation" ]
  }, {
    "Id" : "bd23fac2-7a5e-498a-97ee-105117f48ff4", 
    "OriginalLanguage" : "SpreadsheetFormula", 
    "Type" : "xbrl28:formula", 
    "Label" : "Noncurrent Assets", 
    "Description" : "Rule to compute Noncurrent Assets (fac:NoncurrentAssets).", 
    "ComputableConcepts" : [ "fac:NoncurrentAssets" ], 
    "DependsOn" : [ "fac:CurrentAssets", "fac:Assets" ], 
    "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NoncurrentAssets\", \"fac:CurrentAssets\", \"fac:Assets\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NoncurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"]\nlet $CurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"]\nlet $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NoncurrentAssets) return $NoncurrentAssets\n  case (exists($Assets) and not((not(exists($CurrentAssets)))))\n  return\n    let $computed-value := rules:decimal-value($Assets) - rules:decimal-value($CurrentAssets)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NoncurrentAssets\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($Assets, \"Assets\") || \" - \" || rules:fact-trail($CurrentAssets, \"CurrentAssets\")\n\t let $source-facts := ($NoncurrentAssets, $CurrentAssets, $Assets)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $Assets,\n            \"fac:NoncurrentAssets\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $Assets,\n          \"fac:NoncurrentAssets\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
    "Formulae" : [ {
      "PrereqSrc" : "not(isblank(CurrentAssets))", 
      "Prereq" : {
        "Type" : "function", 
        "Name" : "not", 
        "Children" : [ {
          "Type" : "function", 
          "Name" : "isblank", 
          "Children" : [ {
            "Type" : "variable", 
            "Name" : "CurrentAssets"
          } ]
        } ]
      }, 
      "SourceFact" : [ "Assets" ], 
      "BodySrc" : "Assets-CurrentAssets", 
      "Body" : {
        "Type" : "sub", 
        "Children" : [ {
          "Type" : "variable", 
          "Name" : "Assets"
        }, {
          "Type" : "variable", 
          "Name" : "CurrentAssets"
        } ]
      }, 
      "active" : true, 
      "valid" : true
    } ], 
    "AllowCrossPeriod" : true, 
    "AllowCrossBalance" : true
  } ], 
  "Prefix" : "fac"
}

let $record := find("reports", { "_id" : $schema."_id" })
return
if(empty($record))
then insert("reports", $schema);
else edit($record, $schema);

if (is-available-collection("reportcache"))
then truncate("reportcache");
else create("reportcache");
"Schema successfully deployed."
