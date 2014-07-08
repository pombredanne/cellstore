{
  "_id" : "1fueA5hrxIHxvRf7Btr_J6efDJ3qp-s9KV731wDc4OOa", 
  "Label": "Fundamental Accounting Concepts",
  "Archive" : null, 
  "Owner": "admin@28.io",
  "Description": "Contains bla bla",
  "LastModified": "2014-06-25T11:09:07.28464Z",
  "ACL": [
       {
          "Type": "Group",
          "Grantee": "http://28.io/groups/AllUsers",
          "Permission": "READ"
       }
    ],
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
                    "Id" : "0faa52f2-336f-49ee-98da-8e4f09a373f2", 
                    "expanded" : true
                  }, 
                  "fac:EntityCentralIndexKey" : {
                    "Name" : "fac:EntityCentralIndexKey", 
                    "Label" : "Central Index Key (CIK)", 
                    "Id" : "9d0c845e-aeae-4755-b25b-5ac55eeb4c11", 
                    "expanded" : true
                  }, 
                  "fac:EntityFilerCategory" : {
                    "Name" : "fac:EntityFilerCategory", 
                    "Label" : "Entity Filer Category", 
                    "Id" : "5c97d4d6-0a4f-4bf1-8fb1-aec79a129a84", 
                    "expanded" : true
                  }, 
                  "fac:TradingSymbol" : {
                    "Name" : "fac:TradingSymbol", 
                    "Label" : "Trading Symbol", 
                    "Id" : "4365cf66-9b6e-433a-842b-17c6b447e64f", 
                    "expanded" : true
                  }, 
                  "fac:FiscalYearEnd" : {
                    "Name" : "fac:FiscalYearEnd", 
                    "Label" : "Fiscal Year End", 
                    "Id" : "ba01100a-8e4e-4d02-874a-508ef88a0abf", 
                    "expanded" : true
                  }, 
                  "fac:FiscalYear" : {
                    "Name" : "fac:FiscalYear", 
                    "Label" : "Fiscal Year", 
                    "Id" : "24cfc384-4a35-41a6-891c-f88c4288e2b6", 
                    "expanded" : true
                  }, 
                  "fac:FiscalPeriod" : {
                    "Name" : "fac:FiscalPeriod", 
                    "Label" : "Fiscal Period", 
                    "Id" : "a766acf7-db97-497a-854a-71f859e93b93", 
                    "expanded" : true
                  }, 
                  "fac:DocumentType" : {
                    "Name" : "fac:DocumentType", 
                    "Label" : "Document Type", 
                    "Id" : "c34ef95e-2453-4af0-908c-53e367c647e2", 
                    "expanded" : true
                  }, 
                  "fac:BalanceSheetDate" : {
                    "Name" : "fac:BalanceSheetDate", 
                    "Label" : "Balance Sheet Date", 
                    "Id" : "d2438c22-0bf8-420c-ada5-4c6271f99ed4", 
                    "expanded" : true
                  }, 
                  "fac:IncomeStatementStartPeriod" : {
                    "Name" : "fac:IncomeStatementStartPeriod", 
                    "Label" : "Income Statement Start of Period", 
                    "Id" : "93940333-1905-4e35-ace6-50b610222a59", 
                    "expanded" : true
                  }, 
                  "fac:BalanceSheetFormat" : {
                    "Name" : "fac:BalanceSheetFormat", 
                    "Label" : "Balance Sheet Format", 
                    "Id" : "31e675df-393c-4c94-a59a-3d8e24fef49b", 
                    "expanded" : true
                  }, 
                  "fac:IncomeStatementFormat" : {
                    "Name" : "fac:IncomeStatementFormat", 
                    "Label" : "Income Statement Format", 
                    "Id" : "2d213e03-f88d-4808-8a2c-d8d9eeaa0368", 
                    "expanded" : true
                  }, 
                  "fac:NatureOfOperations" : {
                    "Name" : "fac:NatureOfOperations", 
                    "Label" : "Nature of Operations", 
                    "Id" : "abf38e04-76c9-4fdf-81c9-72dffad172fb", 
                    "expanded" : true
                  }
                }, 
                "Id" : "368e4683-e47f-4e04-854f-dfc5eb43e401", 
                "expanded" : true
              }, 
              "fac:BalanceSheetHierarchy" : {
                "Name" : "fac:BalanceSheetHierarchy", 
                "Label" : "Balance Sheet [Hierarchy]", 
                "To" : {
                  "fac:CurrentAssets" : {
                    "Name" : "fac:CurrentAssets", 
                    "Label" : "Current Assets", 
                    "Order" : 1, 
                    "Id" : "119ac3ff-cfc7-4595-947d-42acab81284b", 
                    "expanded" : true
                  }, 
                  "fac:NoncurrentAssets" : {
                    "Name" : "fac:NoncurrentAssets", 
                    "Label" : "Noncurrent Assets", 
                    "Order" : 2, 
                    "Id" : "598130de-2a5a-4280-b57c-1a6e378d437b", 
                    "expanded" : true
                  }, 
                  "fac:Assets" : {
                    "Name" : "fac:Assets", 
                    "Label" : "Assets", 
                    "Order" : 3, 
                    "Id" : "db2044bc-74d0-4f33-bbe3-66956f59bbe1", 
                    "expanded" : true
                  }, 
                  "fac:CurrentLiabilities" : {
                    "Name" : "fac:CurrentLiabilities", 
                    "Label" : "Current Liabilities", 
                    "Order" : 4, 
                    "Id" : "ac483d05-972b-4a3c-a89c-01e9afe60ab9", 
                    "expanded" : true
                  }, 
                  "fac:NoncurrentLiabilities" : {
                    "Name" : "fac:NoncurrentLiabilities", 
                    "Label" : "Noncurrent Liabilities", 
                    "Order" : 5, 
                    "Id" : "d54ac4a8-af6a-4e11-94e1-d7566fbdb23f", 
                    "expanded" : true
                  }, 
                  "fac:Liabilities" : {
                    "Name" : "fac:Liabilities", 
                    "Label" : "Liabilities", 
                    "Order" : 6, 
                    "Id" : "530d7100-72c7-4e2e-b6bf-7fe047108b6a", 
                    "expanded" : true
                  }, 
                  "fac:CommitmentsAndContingencies" : {
                    "Name" : "fac:CommitmentsAndContingencies", 
                    "Label" : "Commitments and Contingencies", 
                    "Order" : 7, 
                    "Id" : "3fcec7f9-ac17-4cff-95df-2a0f0a7f3de8", 
                    "expanded" : true
                  }, 
                  "fac:TemporaryEquity" : {
                    "Name" : "fac:TemporaryEquity", 
                    "Label" : "Temporary Equity", 
                    "Order" : 8, 
                    "Id" : "5b6ad874-5269-4114-9df8-d82b40e65af2", 
                    "expanded" : true
                  }, 
                  "fac:RedeemableNoncontrollingInterest" : {
                    "Name" : "fac:RedeemableNoncontrollingInterest", 
                    "Label" : "Redeemable Noncontrolling Interest", 
                    "Order" : 9, 
                    "Id" : "f4d9ed7d-ab0e-434f-b3d1-ddceda0803e8", 
                    "expanded" : true
                  }, 
                  "fac:EquityAttributableToParent" : {
                    "Name" : "fac:EquityAttributableToParent", 
                    "Label" : "Equity Attributable to Parent", 
                    "Order" : 10, 
                    "Id" : "6d70df8c-5215-4bc2-85ae-70eda5e06744", 
                    "expanded" : true
                  }, 
                  "fac:EquityAttributableToNoncontrollingInterest" : {
                    "Name" : "fac:EquityAttributableToNoncontrollingInterest", 
                    "Label" : "Equity Attributable to Noncontrolling Interest", 
                    "Order" : 11, 
                    "Id" : "97003475-c14d-4a53-be10-7a4975d34d50", 
                    "expanded" : true
                  }, 
                  "fac:Equity" : {
                    "Name" : "fac:Equity", 
                    "Label" : "Equity", 
                    "Order" : 12, 
                    "Id" : "c59cdf52-d304-45f4-b131-93d74a838d98", 
                    "expanded" : true
                  }, 
                  "fac:LiabilitiesAndEquity" : {
                    "Name" : "fac:LiabilitiesAndEquity", 
                    "Label" : "Liabilities and Equity", 
                    "Order" : 13, 
                    "Id" : "b5a1c875-5911-4398-940d-8d1695cd7eac", 
                    "expanded" : true
                  }
                }, 
                "Id" : "35ad1007-6674-481d-b1d2-9bb8c6bbb45f", 
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
                    "Id" : "bc17477e-b75c-407c-834a-90b1383d88c6", 
                    "expanded" : true
                  }, 
                  "fac:CostOfRevenue" : {
                    "Name" : "fac:CostOfRevenue", 
                    "Label" : "Cost of Revenues", 
                    "Order" : 2, 
                    "Id" : "b3a8878e-bcc7-42c1-9232-7a3b5548769d", 
                    "expanded" : true
                  }, 
                  "fac:GrossProfit" : {
                    "Name" : "fac:GrossProfit", 
                    "Label" : "Gross Profit", 
                    "Order" : 3, 
                    "Id" : "a3a91297-d9b9-4f46-8f90-972bdcdbd705", 
                    "expanded" : true
                  }, 
                  "fac:OperatingExpenses" : {
                    "Name" : "fac:OperatingExpenses", 
                    "Label" : "Operating Expenses", 
                    "Order" : 4, 
                    "Id" : "01ee4d13-15f8-44be-88f5-fa8e0dd428ba", 
                    "expanded" : true
                  }, 
                  "fac:CostsAndExpenses" : {
                    "Name" : "fac:CostsAndExpenses", 
                    "Label" : "Costs and Expenses", 
                    "Order" : 5, 
                    "Id" : "dd389af7-9349-40cd-898d-82f892eb1776", 
                    "expanded" : true
                  }, 
                  "fac:OtherOperatingIncomeExpenses" : {
                    "Name" : "fac:OtherOperatingIncomeExpenses", 
                    "Label" : "Other Operating Income (Expenses)", 
                    "Order" : 6, 
                    "Id" : "5d21070a-7b9b-4640-be1e-eb9247aaffd2", 
                    "expanded" : true
                  }, 
                  "fac:OperatingIncomeLoss" : {
                    "Name" : "fac:OperatingIncomeLoss", 
                    "Label" : "Operating Income (Loss)", 
                    "Order" : 7, 
                    "Id" : "e20bf4b9-3855-42fe-8911-1ed7b8595033", 
                    "expanded" : true
                  }, 
                  "fac:NonoperatingIncomeLoss" : {
                    "Name" : "fac:NonoperatingIncomeLoss", 
                    "Label" : "Nonoperating Income (Loss)", 
                    "Order" : 8, 
                    "Id" : "f03d19df-1cdb-419e-b2f0-8e59b84b4e5c", 
                    "expanded" : true
                  }, 
                  "fac:InterestAndDebtExpense" : {
                    "Name" : "fac:InterestAndDebtExpense", 
                    "Label" : "Interest and Debt Expense", 
                    "Order" : 9, 
                    "Id" : "bd1d42e3-6b96-4a9b-bbe3-beb312e91150", 
                    "expanded" : true
                  }, 
                  "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense" : {
                    "Name" : "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                    "Label" : "Nonoperating Income (Loss) + Interest and Debt Expense", 
                    "Order" : 10, 
                    "Id" : "898f9cde-740d-4403-8a51-5a460c1d5223", 
                    "expanded" : true
                  }, 
                  "fac:IncomeBeforeEquityMethodInvestments" : {
                    "Name" : "fac:IncomeBeforeEquityMethodInvestments", 
                    "Label" : "Income (Loss) Before Equity Method Investments", 
                    "Order" : 11, 
                    "Id" : "6d3b7bd9-fc2b-4ca9-b071-926930af6a03", 
                    "expanded" : true
                  }, 
                  "fac:IncomeLossFromEquityMethodInvestments" : {
                    "Name" : "fac:IncomeLossFromEquityMethodInvestments", 
                    "Label" : "Income (Loss) from Equity Method Investments", 
                    "Order" : 12, 
                    "Id" : "573d25c1-cc32-4420-9dc9-6f3d6745c924", 
                    "expanded" : true
                  }, 
                  "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments" : {
                    "Name" : "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments", 
                    "Label" : "Nonoperating Income (Loss) + Interest and Debt Expense + Income (Loss) from Equity Method Investments", 
                    "Order" : 13, 
                    "Id" : "b8c4bf89-b2a7-4d4a-9006-73586dea7cca", 
                    "expanded" : true
                  }, 
                  "fac:IncomeLossFromContinuingOperationsBeforeTax" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTax", 
                    "Label" : "Income (Loss) from Continuing Operations Before Tax", 
                    "Order" : 14, 
                    "Id" : "bdf371e6-4aa2-457a-b6b6-334041dd17a4", 
                    "expanded" : true
                  }, 
                  "fac:IncomeTaxExpenseBenefit" : {
                    "Name" : "fac:IncomeTaxExpenseBenefit", 
                    "Label" : "Income Tax Expense (Benefit)", 
                    "Order" : 15, 
                    "Id" : "127c2ead-9dc2-48af-a609-54596217d3e5", 
                    "expanded" : true
                  }, 
                  "fac:IncomeLossFromContinuingOperationsAfterTax" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsAfterTax", 
                    "Label" : "Income (Loss) from Continuing Operations After Tax", 
                    "Order" : 16, 
                    "Id" : "5ff26803-ca39-45ce-9623-083959b019d6", 
                    "expanded" : true
                  }, 
                  "fac:IncomeLossFromDiscontinuedOperationsNetTax" : {
                    "Name" : "fac:IncomeLossFromDiscontinuedOperationsNetTax", 
                    "Label" : "Income (Loss) from Discontinued Operations, Net of Tax", 
                    "Order" : 17, 
                    "Id" : "d1aaa4d3-9e7c-4cb8-936b-7c1de91cc458", 
                    "expanded" : true
                  }, 
                  "fac:ExtraordinaryItemsIncomeExpenseNetTax" : {
                    "Name" : "fac:ExtraordinaryItemsIncomeExpenseNetTax", 
                    "Label" : "Extraordinary Items of Income (Expense), Net of Tax", 
                    "Order" : 18, 
                    "Id" : "e2af888c-8dcd-41b0-8ff1-c444f5a1a0fa", 
                    "expanded" : true
                  }, 
                  "fac:NetIncomeLoss" : {
                    "Name" : "fac:NetIncomeLoss", 
                    "Label" : "Net Income (Loss)", 
                    "Order" : 19, 
                    "Id" : "8de38627-fc83-493e-b810-8c430cf89821", 
                    "expanded" : true
                  }, 
                  "fac:NetIncomeAttributableToParent" : {
                    "Name" : "fac:NetIncomeAttributableToParent", 
                    "Label" : "Net Income Attributable to Parent", 
                    "Order" : 20, 
                    "Id" : "57c7b889-eeb8-493e-a98f-11247ec21f4e", 
                    "expanded" : true
                  }, 
                  "fac:NetIncomeAttributableToNoncontrollingInterest" : {
                    "Name" : "fac:NetIncomeAttributableToNoncontrollingInterest", 
                    "Label" : "Net Income Attributable to Noncontrolling Interest", 
                    "Order" : 21, 
                    "Id" : "abd4cf79-16d1-401d-be06-5f208719cd5c", 
                    "expanded" : true
                  }, 
                  "fac:ResearchAndDevelopment" : {
                    "Name" : "fac:ResearchAndDevelopment", 
                    "Label" : "Research and Development", 
                    "Order" : 22, 
                    "Id" : "ef297e4d-89ac-4188-b2fd-0effc268544c", 
                    "expanded" : true
                  }, 
                  "fac:PreferredStockDividendsAndOtherAdjustments" : {
                    "Name" : "fac:PreferredStockDividendsAndOtherAdjustments", 
                    "Label" : "Preferred Stock Dividends and Other Adjustments", 
                    "Order" : 23, 
                    "Id" : "68ab4c38-51d3-489a-9c5d-05a2ccbf16c2", 
                    "expanded" : true
                  }, 
                  "fac:NetIncomeLossAvailableToCommonStockholdersBasic" : {
                    "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
                    "Label" : "Net Income (Loss) Available to Common Stockholders, Basic", 
                    "Order" : 24, 
                    "Id" : "4819769a-e020-41fc-a1fc-591c6e2b855d", 
                    "expanded" : true
                  }
                }, 
                "Id" : "9bc9d470-7536-4161-bbe3-e0e4925082ed", 
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
                    "Id" : "4c96a34b-f8b6-4978-8bd0-4bf3878f108a", 
                    "expanded" : true
                  }, 
                  "fac:OtherComprehensiveIncomeLoss" : {
                    "Name" : "fac:OtherComprehensiveIncomeLoss", 
                    "Label" : "Other Comprehensive Income (Loss)", 
                    "Order" : 2, 
                    "Id" : "bfb0b730-a206-4f23-8fb1-3c252f7eae89", 
                    "expanded" : true
                  }, 
                  "fac:ComprehensiveIncomeLoss" : {
                    "Name" : "fac:ComprehensiveIncomeLoss", 
                    "Label" : "Comprehensive Income (Loss)", 
                    "Order" : 3, 
                    "Id" : "8e874feb-fc5b-4261-baae-d3ecd897ab15", 
                    "expanded" : true
                  }, 
                  "fac:ComprehensiveIncomeLossAttributableToParent" : {
                    "Name" : "fac:ComprehensiveIncomeLossAttributableToParent", 
                    "Label" : "Comprehensive Income (Loss) Attributable to Parent", 
                    "Order" : 4, 
                    "Id" : "945c25b6-5795-4ced-8c0f-ad6c97714bb3", 
                    "expanded" : true
                  }, 
                  "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest" : {
                    "Name" : "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                    "Label" : "Comprehensive Income (Loss) Attributable to Noncontrolling Interest", 
                    "Order" : 5, 
                    "Id" : "18c6cb18-bd7e-4244-8e90-b49a17d2445f", 
                    "expanded" : true
                  }
                }, 
                "Id" : "3345a395-a301-4e78-aad1-ecb1de1166aa", 
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
                    "Id" : "efcb63cc-18ba-4469-ad2f-7e2ca09363f5", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flows from Operating Activities, Discontinued", 
                    "Order" : 2, 
                    "Id" : "35426691-b2fe-41d0-a525-def1802d5e72", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromOperatingActivities" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivities", 
                    "Label" : "Net Cash Flows from Operating Activities", 
                    "Order" : 3, 
                    "Id" : "ed5d99ef-a7ee-465b-a96f-f5eca5eb1f3f", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromInvestingActivitiesContinuing" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivitiesContinuing", 
                    "Label" : "Net Cash Flows from Investing Activities, Continuing", 
                    "Order" : 4, 
                    "Id" : "22d9c484-33e7-42ea-b5f9-3905cd15c738", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flows from Investing Activities, Discontinued", 
                    "Order" : 5, 
                    "Id" : "b32c86ba-616c-4685-8fd4-c08ad2baf36b", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromInvestingActivities" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivities", 
                    "Label" : "Net Cash Flows from Investing Activities", 
                    "Order" : 6, 
                    "Id" : "7bd10758-1899-4e5d-b565-8188065af6aa", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromFinancingActivitiesContinuing" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivitiesContinuing", 
                    "Label" : "Net Cash Flows from Financing Activities, Continuing", 
                    "Order" : 7, 
                    "Id" : "34a5cbf9-197b-490d-a146-22f54bcbac66", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flows from Financing Activities, Discontinued", 
                    "Order" : 8, 
                    "Id" : "2f1a141d-981d-4c75-b03e-94919b030aec", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromFinancingActivities" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivities", 
                    "Label" : "Net Cash Flows from Financing Activities", 
                    "Order" : 9, 
                    "Id" : "e4602916-882e-472a-8574-a991f86c8152", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsContinuing" : {
                    "Name" : "fac:NetCashFlowsContinuing", 
                    "Label" : "Net Cash Flows, Continuing", 
                    "Order" : 10, 
                    "Id" : "464004ea-9f9a-439f-9cb7-04af54024ed9", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsDiscontinued" : {
                    "Name" : "fac:NetCashFlowsDiscontinued", 
                    "Label" : "Net Cash Flows, Discontinued", 
                    "Order" : 11, 
                    "Id" : "fb5a765f-6f8e-4409-be72-af711bca19cc", 
                    "expanded" : true
                  }, 
                  "fac:ExchangeGainsLosses" : {
                    "Name" : "fac:ExchangeGainsLosses", 
                    "Label" : "Exchange Gains (Losses)", 
                    "Order" : 12, 
                    "Id" : "cf75293f-3eb5-45d3-9477-c5a025edd184", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlows" : {
                    "Name" : "fac:NetCashFlows", 
                    "Label" : "Net Cash Flows", 
                    "Order" : 13, 
                    "Id" : "e988dd46-dbf2-4a1e-89ea-55c23e753f79", 
                    "expanded" : true
                  }
                }, 
                "Id" : "ea86a7f9-ab3b-4a87-9d4c-f248f33e59b7", 
                "expanded" : true
              }, 
              "fac:KeyRatiosHierarchy" : {
                "Name" : "fac:KeyRatiosHierarchy", 
                "Label" : "Key Ratios [Hierarchy]", 
                "To" : {
                  "fac:ReturnOnEquity" : {
                    "Name" : "fac:ReturnOnEquity", 
                    "Label" : "Return on Equity (ROE)", 
                    "Order" : 1, 
                    "Id" : "fa933373-3a51-422a-ab67-66d8cecf6736", 
                    "expanded" : true
                  }, 
                  "fac:ReturnOnAssets" : {
                    "Name" : "fac:ReturnOnAssets", 
                    "Label" : "Return on Assets (ROA)", 
                    "Order" : 2, 
                    "Id" : "1308ff1d-5835-4058-8f3f-586a92215db3", 
                    "expanded" : true
                  }, 
                  "fac:ReturnOnSalesROS" : {
                    "Name" : "fac:ReturnOnSalesROS", 
                    "Label" : "Return on Sales (ROS)", 
                    "Order" : 3, 
                    "Id" : "3802316b-efc5-4c1c-b29a-37419a8e3d32", 
                    "expanded" : true
                  }, 
                  "fac:SustainableGrowthRate" : {
                    "Name" : "fac:SustainableGrowthRate", 
                    "Label" : "Sustainable Growth Rate (SGR)", 
                    "Order" : 4, 
                    "Id" : "eafd48e1-672a-4743-8208-f12ee998d7a7", 
                    "expanded" : true
                  }
                }, 
                "Id" : "cb706c3a-cf45-476d-b7b4-4074a163026e", 
                "expanded" : true
              }, 
              "fac:ValidationStatistics" : {
                "Name" : "fac:ValidationStatistics", 
                "Label" : "Validation Rule Statistics [Hierarchy]", 
                "To" : {
                  "fac:PassedValidations" : {
                    "Name" : "fac:PassedValidations", 
                    "Label" : "Passed Validations", 
                    "Id" : "ea5517cb-239a-4f49-80b0-2401406bf0dd", 
                    "expanded" : true
                  }, 
                  "fac:FailedValidations" : {
                    "Name" : "fac:FailedValidations", 
                    "Label" : "Failing Validations", 
                    "Id" : "901e2c73-dc4b-43c6-8fe1-acce601ec3f8", 
                    "expanded" : true
                  }, 
                  "fac:NotApplicableValidations" : {
                    "Name" : "fac:NotApplicableValidations", 
                    "Label" : "Skipped Validations (unmet preconditions)", 
                    "Id" : "a3538326-e1c2-416f-bb5a-84ee55d6b1ae", 
                    "expanded" : true
                  }
                }, 
                "Id" : "5961832a-41d8-4f10-9a26-60a298599c12", 
                "expanded" : true
              }, 
              "fac:Validations" : {
                "Name" : "fac:Validations", 
                "Label" : "Fact Validation Rule Results [Hierarchy]", 
                "To" : {
                  "fac:EquityValidation" : {
                    "Name" : "fac:EquityValidation", 
                    "Label" : "Equity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest", 
                    "Id" : "a91f84a2-7333-40eb-9682-fb6f9e673b18", 
                    "expanded" : true
                  }, 
                  "fac:Assets2Validation" : {
                    "Name" : "fac:Assets2Validation", 
                    "Label" : "Assets = LiabilitiesAndEquity", 
                    "Id" : "1314c825-263e-4026-b1e8-52f1019a5a82", 
                    "expanded" : true
                  }, 
                  "fac:AssetsValidation" : {
                    "Name" : "fac:AssetsValidation", 
                    "Label" : "Assets = CurrentAssets + NoncurrentAssets", 
                    "Id" : "201eb543-13dd-4d0f-ad4c-be3825f01930", 
                    "expanded" : true
                  }, 
                  "fac:LiabilitiesValidation" : {
                    "Name" : "fac:LiabilitiesValidation", 
                    "Label" : "Liabilities = CurrentLiabilities + NoncurrentLiabilities", 
                    "Id" : "9a4f5bd8-ea40-4738-b89c-1c1d4c9732aa", 
                    "expanded" : true
                  }, 
                  "fac:LiabilitiesAndEquityValidation" : {
                    "Name" : "fac:LiabilitiesAndEquityValidation", 
                    "Label" : "LiabilitiesAndEquity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest", 
                    "Id" : "c91f1008-a989-42cf-a83a-81a0dbab4873", 
                    "expanded" : true
                  }, 
                  "fac:GrossProfitValidation" : {
                    "Name" : "fac:GrossProfitValidation", 
                    "Label" : "GrossProfit = Revenues - CostOfRevenue", 
                    "Id" : "49f1c876-4510-41f5-84b1-55c94678c46a", 
                    "expanded" : true
                  }, 
                  "fac:OperatingIncomeLossValidation" : {
                    "Name" : "fac:OperatingIncomeLossValidation", 
                    "Label" : "OperatingIncomeLoss = GrossProfit - OperatingExpenses + OtherOperatingIncomeExpenses", 
                    "Id" : "92459f1c-8051-49e5-9fd5-db16cd2e3710", 
                    "expanded" : true
                  }, 
                  "fac:IncomeBeforeEquityMethodInvestmentsValidation" : {
                    "Name" : "fac:IncomeBeforeEquityMethodInvestmentsValidation", 
                    "Label" : "IncomeBeforeEquityMethodInvestments = OperatingIncomeLoss + NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                    "Id" : "ed742251-b569-43f1-98f9-fe1c814c374e", 
                    "expanded" : true
                  }, 
                  "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", 
                    "Label" : "IncomeLossFromContinuingOperationsBeforeTax = IncomeBeforeEquityMethodInvestments + IncomeLossFromEquityMethodInvestments", 
                    "Id" : "fb75d915-dbb1-4386-a616-f850a21e14a1", 
                    "expanded" : true
                  }, 
                  "fac:IncomeLossFromContinuingOperationsAfterTaxValidation" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", 
                    "Label" : "IncomeLossFromContinuingOperationsAfterTax = IncomeLossFromContinuingOperationsBeforeTax - IncomeTaxExpenseBenefit", 
                    "Id" : "f1b04b83-1b34-465d-b73b-0bfe58d25924", 
                    "expanded" : true
                  }, 
                  "fac:NetIncomeLossValidation" : {
                    "Name" : "fac:NetIncomeLossValidation", 
                    "Label" : "NetIncomeLoss = IncomeLossFromContinuingOperationsAfterTax + IncomeLossFromDiscontinuedOperationsNetTax + ExtraordinaryItemsIncomeExpenseNetTax", 
                    "Id" : "3a502c79-29ce-44e5-acea-8670ad4d4aba", 
                    "expanded" : true
                  }, 
                  "fac:NetIncomeLoss2Validation" : {
                    "Name" : "fac:NetIncomeLoss2Validation", 
                    "Label" : "NetIncomeLoss = NetIncomeAttributableToParent + NetIncomeAttributableToNoncontrollingInterest", 
                    "Id" : "ada5245b-0a9f-4783-8ea7-852e639a716a", 
                    "expanded" : true
                  }, 
                  "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation" : {
                    "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", 
                    "Label" : "NetIncomeLossAvailableToCommonStockholdersBasic = NetIncomeAttributableToParent - PreferredStockDividendsAndOtherAdjustments", 
                    "Id" : "2550e442-9a0f-41da-99a2-8ebab9acca60", 
                    "expanded" : true
                  }, 
                  "fac:ComprehensiveIncomeLossValidation" : {
                    "Name" : "fac:ComprehensiveIncomeLossValidation", 
                    "Label" : "ComprehensiveIncomeLoss = ComprehensiveIncomeLossAttributableToParent + ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                    "Id" : "86bd842b-7c76-41a5-862d-2a73d3b09b12", 
                    "expanded" : true
                  }, 
                  "fac:ComprehensiveIncomeLoss2Validation" : {
                    "Name" : "fac:ComprehensiveIncomeLoss2Validation", 
                    "Label" : "ComprehensiveIncome = NetIncomeLoss + OtherComprehensiveIncome", 
                    "Id" : "b6f17ac1-3244-43c4-ac74-873697c0ef9c", 
                    "expanded" : true
                  }, 
                  "fac:OperatingIncomeLoss2Validation" : {
                    "Name" : "fac:OperatingIncomeLoss2Validation", 
                    "Label" : "OperatingIncomeLoss = Revenues - CostsAndExpenses + OtherOperatingIncomeExpenses", 
                    "Id" : "b464599f-25a6-4bc7-83c0-18b53ddb61e1", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsValidation" : {
                    "Name" : "fac:NetCashFlowsValidation", 
                    "Label" : "NetCashFlows = NetCashFlowsFromOperatingActivities + NetCashFlowsFromInvestingActivities + NetCashFlowsFromFinancingActivities [+ ExchangeGainsLosses]", 
                    "Id" : "c13c8d66-f83b-44d3-9296-305e874b794b", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsContinuingValidation" : {
                    "Name" : "fac:NetCashFlowsContinuingValidation", 
                    "Label" : "NetCashFlowsContinuing = NetCashFlowsFromOperatingActivitiesContinuing + NetCashFlowsFromInvestingActivitiesContinuing + NetCashFlowsFromFinancingActivitiesContinuing", 
                    "Id" : "56dc32e6-1f26-4f8f-a93e-20b246a56575", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsDiscontinuedValidation" : {
                    "Name" : "fac:NetCashFlowsDiscontinuedValidation", 
                    "Label" : "NetCashFlowsDiscontinued = NetCashFlowsFromOperatingActivitiesDiscontinued + NetCashFlowsFromInvestingActivitiesDiscontinued + NetCashFlowsFromFinancingActivitiesDiscontinued", 
                    "Id" : "0fb7b760-405d-447c-ba69-de41d99216f9", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromOperatingActivitiesValidation" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivitiesValidation", 
                    "Label" : "NetCashFlowsFromOperatingActivities = NetCashFlowsFromOperatingActivitiesContinuing + NetCashFlowsFromOperatingActivitiesDiscontinued", 
                    "Id" : "897ba356-f94f-4d11-95ae-950be64ff656", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromInvestingActivitiesValidation" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivitiesValidation", 
                    "Label" : "NetCashFlowsFromInvestingActivities = NetCashFlowsFromInvestingActivitiesContinuing + NetCashFlowsFromInvestingActivitiesDiscontinued", 
                    "Id" : "a40fe0f9-c8cd-46f2-a2d9-0c862f5fd987", 
                    "expanded" : true
                  }, 
                  "fac:NetCashFlowsFromFinancingActivitiesValidation" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivitiesValidation", 
                    "Label" : "NetCashFlowsFromFinancingActivities = NetCashFlowsFromFinancingActivitiesContinuing + NetCashFlowsFromFinancingActivitiesDiscontinued", 
                    "Id" : "30cf2b70-ae4d-4f22-a445-3e42afb37363", 
                    "expanded" : true
                  }
                }, 
                "Id" : "07449cd9-1dbf-4978-ba43-7d84cf5cfc2f", 
                "expanded" : true
              }
            }, 
            "Id" : "5a800c15-8a39-4228-93e1-08c967d917e5", 
            "expanded" : true
          }
        }, 
        "Id" : "7f8a6800-a523-41a5-98d2-6c2a01f3f604", 
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
            "Id" : "07a67fb6-f09c-4d7a-8cd9-405db8bb447e"
          }
        }, 
        "Id" : "3947f39d-4a52-4aa9-b750-1e2c466a2ffb"
      }, 
      "fac:NoncurrentLiabilities" : {
        "Name" : "fac:NoncurrentLiabilities", 
        "Label" : "Noncurrent Liabilities", 
        "To" : {
          "us-gaap:LiabilitiesNoncurrent" : {
            "Name" : "us-gaap:LiabilitiesNoncurrent", 
            "Id" : "20d8f287-f6ab-411a-bee7-aeda9022da96"
          }
        }, 
        "Id" : "43aa816d-3602-4cd0-bbe3-80be9cc7c9b6"
      }, 
      "fac:EntityRegistrantName" : {
        "Name" : "fac:EntityRegistrantName", 
        "Label" : "Entity Registrant Name", 
        "To" : {
          "dei:EntityRegistrantName" : {
            "Name" : "dei:EntityRegistrantName", 
            "Id" : "40cdc89c-ed17-4fab-993e-9d7573369c47"
          }
        }, 
        "Id" : "cafbf475-357d-4d5a-a004-4f594fc90474"
      }, 
      "fac:Revenues" : {
        "Name" : "fac:Revenues", 
        "Label" : "Revenues", 
        "To" : {
          "us-gaap:Revenues" : {
            "Name" : "us-gaap:Revenues", 
            "Id" : "bb17a6b5-c881-4e32-82c9-f6208a15d9de"
          }, 
          "us-gaap:SalesRevenueNet" : {
            "Name" : "us-gaap:SalesRevenueNet", 
            "Id" : "afbe39a6-9a62-40e2-9acb-4d0c45f5d1f2"
          }, 
          "us-gaap:SalesRevenueServicesNet" : {
            "Name" : "us-gaap:SalesRevenueServicesNet", 
            "Id" : "80cbc877-b0f4-47fb-a44d-59d33302f724"
          }, 
          "us-gaap:SalesRevenueGoodsNet" : {
            "Name" : "us-gaap:SalesRevenueGoodsNet", 
            "Id" : "e4d3bd39-4441-462b-b778-37b487415b97"
          }, 
          "us-gaap:RevenuesNetOfInterestExpense" : {
            "Name" : "us-gaap:RevenuesNetOfInterestExpense", 
            "Id" : "206d16ea-7aa3-4357-892e-162635694f5b"
          }, 
          "us-gaap:HealthCareOrganizationRevenue" : {
            "Name" : "us-gaap:HealthCareOrganizationRevenue", 
            "Id" : "fd8b327c-556d-4ea8-a06e-dca505bfe17a"
          }, 
          "us-gaap:InterestAndDividendIncomeOperating" : {
            "Name" : "us-gaap:InterestAndDividendIncomeOperating", 
            "Id" : "d54ea5a3-0766-4284-83c1-885848c97c0f"
          }, 
          "us-gaap:RealEstateRevenueNet" : {
            "Name" : "us-gaap:RealEstateRevenueNet", 
            "Id" : "b94f6393-f316-4017-bce6-b92cfe044c0d"
          }, 
          "us-gaap:RevenueMineralSales" : {
            "Name" : "us-gaap:RevenueMineralSales", 
            "Id" : "428f6c42-b229-4005-936e-11d863459cff"
          }, 
          "us-gaap:OilAndGasRevenue" : {
            "Name" : "us-gaap:OilAndGasRevenue", 
            "Id" : "8484103d-fd87-42c3-ac14-abf7a094a282"
          }, 
          "us-gaap:RegulatedAndUnregulatedOperatingRevenue" : {
            "Name" : "us-gaap:RegulatedAndUnregulatedOperatingRevenue", 
            "Id" : "003c1b99-3074-4758-b81e-f37b418f9eac"
          }, 
          "us-gaap:FinancialServicesRevenue" : {
            "Name" : "us-gaap:FinancialServicesRevenue", 
            "Id" : "43d3e84c-e06c-458a-87a0-ade7f98f452c"
          }, 
          "us-gaap:ShippingAndHandlingRevenue" : {
            "Name" : "us-gaap:ShippingAndHandlingRevenue", 
            "Id" : "52ca1a52-0cce-4980-b3d6-d47551610d34"
          }, 
          "us-gaap:SalesRevenueFromEnergyCommoditiesAndServices" : {
            "Name" : "us-gaap:SalesRevenueFromEnergyCommoditiesAndServices", 
            "Id" : "b002598a-c744-4554-b1f8-98824fb82d82"
          }, 
          "us-gaap:UtilityRevenue" : {
            "Name" : "us-gaap:UtilityRevenue", 
            "Id" : "032bd095-8901-409e-8982-f1aac3681ad6"
          }, 
          "us-gaap:PhaseInPlanAmountOfCapitalizedCostsRecovered" : {
            "Name" : "us-gaap:PhaseInPlanAmountOfCapitalizedCostsRecovered", 
            "Id" : "a5412af0-2583-4e33-8dfe-3dd5bd55e944"
          }, 
          "us-gaap:SecondaryProcessingRevenue" : {
            "Name" : "us-gaap:SecondaryProcessingRevenue", 
            "Id" : "20da8d58-67c4-40db-ad37-9b96d72fb1b4"
          }, 
          "us-gaap:RevenueSteamProductsAndServices" : {
            "Name" : "us-gaap:RevenueSteamProductsAndServices", 
            "Id" : "c77f9e01-44f2-4537-a0e1-de41dbc4de78"
          }, 
          "us-gaap:RevenueFromLeasedAndOwnedHotels" : {
            "Name" : "us-gaap:RevenueFromLeasedAndOwnedHotels", 
            "Id" : "37c1dcfe-d982-450a-83e6-032f271fb75e"
          }, 
          "us-gaap:FranchisorRevenue" : {
            "Name" : "us-gaap:FranchisorRevenue", 
            "Id" : "fff4d73b-c03f-4842-a0bc-ca5659df8200"
          }, 
          "us-gaap:SubscriptionRevenue" : {
            "Name" : "us-gaap:SubscriptionRevenue", 
            "Id" : "887294e2-001b-420f-b700-b27194225335"
          }, 
          "us-gaap:AdvertisingRevenue" : {
            "Name" : "us-gaap:AdvertisingRevenue", 
            "Id" : "5dc17ee0-1da6-481f-93bb-f05e776b6f54"
          }, 
          "us-gaap:AdmissionsRevenue" : {
            "Name" : "us-gaap:AdmissionsRevenue", 
            "Id" : "5bc89800-986e-4c6d-b068-6a774184c1cd"
          }, 
          "us-gaap:RevenueFromEnrollmentAndRegistrationFeesExcludingHospitalityEnterprises" : {
            "Name" : "us-gaap:RevenueFromEnrollmentAndRegistrationFeesExcludingHospitalityEnterprises", 
            "Id" : "046895b9-2f82-4009-8c47-f225a97cfef4"
          }, 
          "us-gaap:MembershipDuesRevenueOnGoing" : {
            "Name" : "us-gaap:MembershipDuesRevenueOnGoing", 
            "Id" : "cfd58746-e2f0-4a4f-a666-d8ba73c99c7b"
          }, 
          "us-gaap:LicensesRevenue" : {
            "Name" : "us-gaap:LicensesRevenue", 
            "Id" : "edf01b78-011a-45a0-ade3-14347f7b073f"
          }, 
          "us-gaap:RoyaltyRevenue" : {
            "Name" : "us-gaap:RoyaltyRevenue", 
            "Id" : "d34686af-345a-4052-bcdf-44c77b3c26b9"
          }, 
          "us-gaap:SalesOfOilAndGasProspects" : {
            "Name" : "us-gaap:SalesOfOilAndGasProspects", 
            "Id" : "89e34d89-8868-42dc-95e9-16a41ad1a75c"
          }, 
          "us-gaap:ClearingFeesRevenue" : {
            "Name" : "us-gaap:ClearingFeesRevenue", 
            "Id" : "d730fb6b-1c61-411a-9a71-a818227a0699"
          }, 
          "us-gaap:ReimbursementRevenue" : {
            "Name" : "us-gaap:ReimbursementRevenue", 
            "Id" : "6dc8d8da-40c5-4db7-9952-d1a4bf31638b"
          }, 
          "us-gaap:RevenueFromGrants" : {
            "Name" : "us-gaap:RevenueFromGrants", 
            "Id" : "cdde62ba-b974-4939-b46a-2eb72ecc6177"
          }, 
          "us-gaap:RevenueOtherManufacturedProducts" : {
            "Name" : "us-gaap:RevenueOtherManufacturedProducts", 
            "Id" : "8672b43f-8716-4ec2-a3cb-bed35ed6591e"
          }, 
          "us-gaap:ConstructionMaterialsRevenue" : {
            "Name" : "us-gaap:ConstructionMaterialsRevenue", 
            "Id" : "3ff17025-aa04-47a2-a84b-d757330e20bb"
          }, 
          "us-gaap:TimberRevenue" : {
            "Name" : "us-gaap:TimberRevenue", 
            "Id" : "5638565d-565a-4fb4-8c8a-89f099b6eb00"
          }, 
          "us-gaap:RecyclingRevenue" : {
            "Name" : "us-gaap:RecyclingRevenue", 
            "Id" : "2d15a667-612e-4c59-bb28-3c82e97df038"
          }, 
          "us-gaap:OtherSalesRevenueNet" : {
            "Name" : "us-gaap:OtherSalesRevenueNet", 
            "Id" : "cb036fbb-373b-45fa-b567-7b304f8feca3"
          }, 
          "us-gaap:SaleOfTrustAssetsToPayExpenses" : {
            "Name" : "us-gaap:SaleOfTrustAssetsToPayExpenses", 
            "Id" : "f98f6df2-7c08-4f7a-9d56-96884e0e5d54"
          }, 
          "us-gaap:PassengerRevenue" : {
            "Name" : "us-gaap:PassengerRevenue", 
            "Id" : "f894a241-19bf-431d-b271-fd866658fa66"
          }, 
          "us-gaap:VehicleTollRevenue" : {
            "Name" : "us-gaap:VehicleTollRevenue", 
            "Id" : "07d81ec1-dd6a-44c6-9d22-3d6aa69d2ced"
          }, 
          "us-gaap:CargoAndFreightRevenue" : {
            "Name" : "us-gaap:CargoAndFreightRevenue", 
            "Id" : "f4f07b9a-7e23-4a08-bf22-3cecd123e37c"
          }, 
          "us-gaap:NetInvestmentIncome" : {
            "Name" : "us-gaap:NetInvestmentIncome", 
            "Id" : "cc9169e5-dbfa-49bf-9237-3e2a07687e0a"
          }, 
          "us-gaap:RevenuesExcludingInterestAndDividends" : {
            "Name" : "us-gaap:RevenuesExcludingInterestAndDividends", 
            "Id" : "70fbf496-2fd1-4b1f-b838-bda9a2a21e72"
          }, 
          "us-gaap:InvestmentBankingRevenue" : {
            "Name" : "us-gaap:InvestmentBankingRevenue", 
            "Id" : "d6204306-6101-407f-bb71-1ac7394eb818"
          }, 
          "us-gaap:UnderwritingIncomeLoss" : {
            "Name" : "us-gaap:UnderwritingIncomeLoss", 
            "Id" : "f3b0fcdc-4c00-4f43-926b-286c786a31df"
          }, 
          "us-gaap:MarketDataRevenue" : {
            "Name" : "us-gaap:MarketDataRevenue", 
            "Id" : "5a2c3012-c599-4cc3-8155-352f1cc5aff0"
          }
        }, 
        "Id" : "b7adfbd2-ee02-406c-84e2-2b1cadd396b1"
      }, 
      "fac:NetCashFlowsContinuing" : {
        "Name" : "fac:NetCashFlowsContinuing", 
        "Label" : "Net Cash Flows, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInContinuingOperations", 
            "Id" : "456ba8bf-7c9b-4019-95a8-2b90ac4084fc"
          }
        }, 
        "Id" : "47771240-291b-467f-999a-dd8539290a29"
      }, 
      "fac:Assets" : {
        "Name" : "fac:Assets", 
        "Label" : "Assets", 
        "To" : {
          "us-gaap:Assets" : {
            "Name" : "us-gaap:Assets", 
            "Id" : "d66bcf22-f5e9-451a-b22b-b5673b0ae537"
          }, 
          "us-gaap:AssetsCurrent" : {
            "Name" : "us-gaap:AssetsCurrent", 
            "Id" : "8eaee000-39f5-4b3d-828c-9c426fe7199b"
          }
        }, 
        "Id" : "4ab5d61d-393d-4d9e-9b9f-6c7ae97d8db1"
      }, 
      "fac:EquityAttributableToParent" : {
        "Name" : "fac:EquityAttributableToParent", 
        "Label" : "Equity Attributable to Parent", 
        "To" : {
          "us-gaap:StockholdersEquity" : {
            "Name" : "us-gaap:StockholdersEquity", 
            "Id" : "131424be-7c97-4cda-b735-200ef2309844"
          }, 
          "us-gaap:PartnersCapital" : {
            "Name" : "us-gaap:PartnersCapital", 
            "Id" : "9591c4c2-7c49-4bb2-95cd-5b6035df0c60"
          }, 
          "us-gaap:MemberEquity" : {
            "Name" : "us-gaap:MemberEquity", 
            "Id" : "3dda6a8a-6dae-4209-9c85-6af499e26f68"
          }
        }, 
        "Id" : "080b29b1-98ff-4b1c-a520-9f50460b2545"
      }, 
      "fac:InterestAndDebtExpense" : {
        "Name" : "fac:InterestAndDebtExpense", 
        "Label" : "Interest and Debt Expense", 
        "To" : {
          "us-gaap:InterestAndDebtExpense" : {
            "Name" : "us-gaap:InterestAndDebtExpense", 
            "Id" : "01fe3c6b-3d0a-4010-a96a-a19da9bf8de7"
          }
        }, 
        "Id" : "f913dfa2-a0f3-4e92-ba89-94cc487c6749"
      }, 
      "fac:IncomeTaxExpenseBenefit" : {
        "Name" : "fac:IncomeTaxExpenseBenefit", 
        "Label" : "Income Tax Expense (Benefit)", 
        "To" : {
          "us-gaap:IncomeTaxExpenseBenefit" : {
            "Name" : "us-gaap:IncomeTaxExpenseBenefit", 
            "Id" : "bea18b1f-129c-448a-a9ee-c74b121057f6"
          }, 
          "us-gaap:IncomeTaxExpenseBenefitContinuingOperations" : {
            "Name" : "us-gaap:IncomeTaxExpenseBenefitContinuingOperations", 
            "Id" : "18a9eaa4-5135-4917-8edb-ee1bf800f6b0"
          }, 
          "us-gaap:FederalHomeLoanBankAssessments" : {
            "Name" : "us-gaap:FederalHomeLoanBankAssessments", 
            "Id" : "d72beb19-fcd2-4f8d-8a74-3daabf6c4df0"
          }
        }, 
        "Id" : "593c2099-f044-4e4d-853c-a2f5dbf66cc4"
      }, 
      "fac:EntityCentralIndexKey" : {
        "Name" : "fac:EntityCentralIndexKey", 
        "Label" : "Central Index Key (CIK)", 
        "To" : {
          "dei:EntityCentralIndexKey" : {
            "Name" : "dei:EntityCentralIndexKey", 
            "Id" : "042d8097-89a1-451d-8ee7-d81361db4c40"
          }
        }, 
        "Id" : "73c3ebbd-1861-4581-9633-e1debb503037"
      }, 
      "fac:NatureOfOperations" : {
        "Name" : "fac:NatureOfOperations", 
        "Label" : "Nature of Operations", 
        "To" : {
          "us-gaap:NatureOfOperations" : {
            "Name" : "us-gaap:NatureOfOperations", 
            "Id" : "d3c74b93-6595-4d0d-afef-bd0e5a3def6a"
          }, 
          "us-gaap:BusinessDescriptionAndBasisOfPresentationTextBlock" : {
            "Name" : "us-gaap:BusinessDescriptionAndBasisOfPresentationTextBlock", 
            "Id" : "1c1a4021-690b-4278-b563-1a680264e916"
          }, 
          "us-gaap:OrganizationConsolidationAndPresentationOfFinancialStatementsDisclosureTextBlock" : {
            "Name" : "us-gaap:OrganizationConsolidationAndPresentationOfFinancialStatementsDisclosureTextBlock", 
            "Id" : "718781e7-4faa-4ee3-9b65-f019c946f23e"
          }, 
          "us-gaap:OrganizationConsolidationBasisOfPresentationBusinessDescriptionAndAccountingPoliciesTextBlock" : {
            "Name" : "us-gaap:OrganizationConsolidationBasisOfPresentationBusinessDescriptionAndAccountingPoliciesTextBlock", 
            "Id" : "415a27ba-96ba-4ea4-a56e-3ee68a7cd696"
          }
        }, 
        "Id" : "63b4557c-e54d-4b55-abfd-4f1638f8595a"
      }, 
      "fac:ResearchAndDevelopment" : {
        "Name" : "fac:ResearchAndDevelopment", 
        "Label" : "Research and Development", 
        "To" : {
          "us-gaap:ResearchAndDevelopmentExpense" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpense", 
            "Id" : "216f2594-0294-4fda-9366-61bcd0240385"
          }, 
          "us-gaap:ResearchAndDevelopmentExpenseExcludingAcquiredInProcessCost" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpenseExcludingAcquiredInProcessCost", 
            "Id" : "da9322fc-1331-4dec-b5e5-94607cf385cd"
          }, 
          "us-gaap:ResearchAndDevelopmentExpenseSoftwareExcludingAcquiredInProcessCost" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpenseSoftwareExcludingAcquiredInProcessCost", 
            "Id" : "fc62e94d-ec13-499e-bcfc-3f6e553f9dfb"
          }, 
          "us-gaap:ResearchAndDevelopmentInProcess" : {
            "Name" : "us-gaap:ResearchAndDevelopmentInProcess", 
            "Id" : "6e5f5939-6b33-4872-afb4-ecacc5166828"
          }, 
          "us-gaap:ResearchAndDevelopmentAssetAcquiredOtherThanThroughBusinessCombinationWrittenOff" : {
            "Name" : "us-gaap:ResearchAndDevelopmentAssetAcquiredOtherThanThroughBusinessCombinationWrittenOff", 
            "Id" : "0aabca20-300b-4cd6-8522-e936dfa91aa1"
          }
        }, 
        "Id" : "3dde3358-7168-4b01-9a96-034344ee7681"
      }, 
      "fac:OtherOperatingIncomeExpenses" : {
        "Name" : "fac:OtherOperatingIncomeExpenses", 
        "Label" : "Other Operating Income (Expenses)", 
        "To" : {
          "us-gaap:OtherOperatingIncome" : {
            "Name" : "us-gaap:OtherOperatingIncome", 
            "Id" : "4682eb68-4c28-44d5-bc9f-e50b0c36c4fc"
          }
        }, 
        "Id" : "bbb6ebda-c920-4d11-b71c-31738b5f4501"
      }, 
      "fac:NetCashFlowsFromInvestingActivities" : {
        "Name" : "fac:NetCashFlowsFromInvestingActivities", 
        "Label" : "Net Cash Flows from Investing Activities", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInInvestingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInInvestingActivities", 
            "Id" : "27be0330-d36e-41dd-81e8-2a42b3a930e8"
          }
        }, 
        "Id" : "1daaeb76-c502-4e33-b139-465af8b9ea6b"
      }, 
      "fac:IncomeBeforeEquityMethodInvestments" : {
        "Name" : "fac:IncomeBeforeEquityMethodInvestments", 
        "Label" : "Income (Loss) Before Equity Method Investments", 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments", 
            "Id" : "d71ef5ab-0448-4a1e-ac46-eed1f191a9d8"
          }
        }, 
        "Id" : "7c5986ff-40a0-4f6e-a9d6-7c142fa6896b"
      }, 
      "fac:TradingSymbol" : {
        "Name" : "fac:TradingSymbol", 
        "Label" : "Trading Symbol", 
        "To" : {
          "dei:TradingSymbol" : {
            "Name" : "dei:TradingSymbol", 
            "Id" : "19d02c19-ea68-420b-8b92-c4208f34880c"
          }
        }, 
        "Id" : "8f5e2b02-d51d-473e-8c2a-4b01275d975c"
      }, 
      "fac:NetIncomeLossAvailableToCommonStockholdersBasic" : {
        "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
        "Label" : "Net Income (Loss) Available to Common Stockholders, Basic", 
        "To" : {
          "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic" : {
            "Name" : "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic", 
            "Id" : "a5d316f3-9a21-4da6-9344-b5054b531e31"
          }
        }, 
        "Id" : "1588c523-1f20-43c0-95b5-926dd5e087d6"
      }, 
      "fac:EntityFilerCategory" : {
        "Name" : "fac:EntityFilerCategory", 
        "Label" : "Entity Filer Category", 
        "To" : {
          "dei:EntityFilerCategory" : {
            "Name" : "dei:EntityFilerCategory", 
            "Id" : "0d4a05e8-f64f-4fef-bb07-81108da1759d"
          }
        }, 
        "Id" : "939209d3-5434-4436-a636-66e36e372c98"
      }, 
      "fac:IncomeLossFromContinuingOperationsBeforeTax" : {
        "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTax", 
        "Label" : "Income (Loss) from Continuing Operations Before Tax", 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments", 
            "Id" : "50765905-a1ab-4593-a742-a84f7ce8fe10"
          }, 
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest", 
            "Id" : "2ab4dcbb-3f95-4c47-af72-c9972e5cf3d8"
          }
        }, 
        "Id" : "aeddbae4-63a0-4982-bba7-f47763404186"
      }, 
      "fac:OperatingExpenses" : {
        "Name" : "fac:OperatingExpenses", 
        "Label" : "Operating Expenses", 
        "To" : {
          "us-gaap:OperatingExpenses" : {
            "Name" : "us-gaap:OperatingExpenses", 
            "Id" : "4bd413f0-2ee4-4852-b7e9-ce545e10e828"
          }, 
          "us-gaap:OperatingCostsAndExpenses" : {
            "Name" : "us-gaap:OperatingCostsAndExpenses", 
            "Id" : "289e6457-3721-40f1-a9d7-98e14b5d0e65"
          }
        }, 
        "Id" : "8470e939-9745-48b3-8d5a-4da8cea3ca69"
      }, 
      "fac:NetCashFlowsDiscontinued" : {
        "Name" : "fac:NetCashFlowsDiscontinued", 
        "Label" : "Net Cash Flows, Discontinued", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInDiscontinuedOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInDiscontinuedOperations", 
            "Id" : "e8415a25-01fa-4f56-847d-e5147376fcca"
          }
        }, 
        "Id" : "77329c4a-d5f3-437d-9edc-77498e4a63b6"
      }, 
      "fac:Liabilities" : {
        "Name" : "fac:Liabilities", 
        "Label" : "Liabilities", 
        "To" : {
          "us-gaap:Liabilities" : {
            "Name" : "us-gaap:Liabilities", 
            "Id" : "4edf6ae7-0919-4756-9b93-dcb0637fd6d0"
          }
        }, 
        "Id" : "7083d81c-4851-47ad-a33f-5147d0fa5553"
      }, 
      "fac:ComprehensiveIncomeLossAttributableToParent" : {
        "Name" : "fac:ComprehensiveIncomeLossAttributableToParent", 
        "Label" : "Comprehensive Income (Loss) Attributable to Parent", 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTax" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTax", 
            "Id" : "6a1eb0d4-74d8-4fbd-b890-fe04d388fcaf"
          }
        }, 
        "Id" : "36e37b04-64bb-426d-a6c9-e2a82dc6f18c"
      }, 
      "fac:CostOfRevenue" : {
        "Name" : "fac:CostOfRevenue", 
        "Label" : "Cost of Revenues", 
        "To" : {
          "us-gaap:CostOfRevenue" : {
            "Name" : "us-gaap:CostOfRevenue", 
            "Id" : "be2cc426-3691-4feb-9a53-ad63cf85b843"
          }, 
          "us-gaap:CostOfGoodsAndServicesSold" : {
            "Name" : "us-gaap:CostOfGoodsAndServicesSold", 
            "Id" : "b55a9135-ceae-42c6-b6c3-e38c970a7a78"
          }, 
          "us-gaap:CostOfServices" : {
            "Name" : "us-gaap:CostOfServices", 
            "Id" : "7d25bb66-320f-4958-a942-90a3c2ff34a0"
          }, 
          "us-gaap:CostOfGoodsSold" : {
            "Name" : "us-gaap:CostOfGoodsSold", 
            "Id" : "2b2d1a1c-d4f0-4fc4-8247-aebfb86f7778"
          }
        }, 
        "Id" : "da7d9535-dec2-48b7-a532-5fc2e59f7e10"
      }, 
      "fac:NetCashFlows" : {
        "Name" : "fac:NetCashFlows", 
        "Label" : "Net Cash Flows", 
        "To" : {
          "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease" : {
            "Name" : "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease", 
            "Id" : "306de736-7887-408e-a29b-488a03e93994"
          }, 
          "us-gaap:CashPeriodIncreaseDecrease" : {
            "Name" : "us-gaap:CashPeriodIncreaseDecrease", 
            "Id" : "b0442974-a7f4-4764-b1ac-5b359ac3cef9"
          }, 
          "us-gaap:NetCashProvidedByUsedInContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInContinuingOperations", 
            "Id" : "f2830469-9df9-4b86-8c66-2cf80162daff"
          }
        }, 
        "Id" : "03ced8bf-bfaf-4b2f-a099-0070660991d4"
      }, 
      "fac:NonoperatingIncomeLoss" : {
        "Name" : "fac:NonoperatingIncomeLoss", 
        "Label" : "Nonoperating Income (Loss)", 
        "To" : {
          "us-gaap:NonoperatingIncomeExpense" : {
            "Name" : "us-gaap:NonoperatingIncomeExpense", 
            "Id" : "96dd0fa2-4244-482e-aba9-75df3f0de85d"
          }
        }, 
        "Id" : "073a78d0-6f53-4715-8c52-5434dfe761aa"
      }, 
      "fac:NetCashFlowsFromFinancingActivitiesContinuing" : {
        "Name" : "fac:NetCashFlowsFromFinancingActivitiesContinuing", 
        "Label" : "Net Cash Flows from Financing Activities, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInFinancingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInFinancingActivitiesContinuingOperations", 
            "Id" : "d59918e9-11b6-42a6-b3cc-cc194aa81cda"
          }
        }, 
        "Id" : "a69d5218-110d-4122-9b36-474f5b73c749"
      }, 
      "fac:IncomeLossFromContinuingOperationsAfterTax" : {
        "Name" : "fac:IncomeLossFromContinuingOperationsAfterTax", 
        "Label" : "Income (Loss) from Continuing Operations After Tax", 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "74d61400-8e48-4ad9-a8bb-5891cc75f1b0"
          }, 
          "us-gaap:IncomeLossBeforeExtraordinaryItemsAndCumulativeEffectOfChangeInAccountingPrinciple" : {
            "Name" : "us-gaap:IncomeLossBeforeExtraordinaryItemsAndCumulativeEffectOfChangeInAccountingPrinciple", 
            "Id" : "05bc52bd-ed84-4caf-9dcf-2bd7776dc241"
          }, 
          "us-gaap:IncomeLossFromContinuingOperations" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperations", 
            "Id" : "7db2fec5-373f-4357-b8e3-61e7f5f4f8e0"
          }
        }, 
        "Id" : "b411d599-3024-4e91-a9fe-7a4c4f9332a1"
      }, 
      "fac:NetIncomeAttributableToParent" : {
        "Name" : "fac:NetIncomeAttributableToParent", 
        "Label" : "Net Income Attributable to Parent", 
        "To" : {
          "us-gaap:NetIncomeLoss" : {
            "Name" : "us-gaap:NetIncomeLoss", 
            "Id" : "472745ea-362d-484f-b85d-59222229c820"
          }
        }, 
        "Id" : "47a59d37-7cec-4815-90eb-c6809041e5e2"
      }, 
      "fac:CommitmentsAndContingencies" : {
        "Name" : "fac:CommitmentsAndContingencies", 
        "Label" : "Commitments and Contingencies", 
        "To" : {
          "us-gaap:CommitmentsAndContingencies" : {
            "Name" : "us-gaap:CommitmentsAndContingencies", 
            "Id" : "3311107e-61bc-431e-aa37-3b3784f113d3"
          }
        }, 
        "Id" : "f6dc2e49-451c-40cd-834b-4a5186c043b3"
      }, 
      "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" : {
        "Name" : "fac:NetCashFlowsFromInvestingActivitiesDiscontinued", 
        "Label" : "Net Cash Flows from Investing Activities, Discontinued", 
        "To" : {
          "us-gaap:CashProvidedByUsedInInvestingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInInvestingActivitiesDiscontinuedOperations", 
            "Id" : "dc316e40-dd3d-4432-86f2-cd7250da0c6e"
          }
        }, 
        "Id" : "ba4ce76b-05a7-46f1-ac81-d0a3ea052fb8"
      }, 
      "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" : {
        "Name" : "fac:NetCashFlowsFromFinancingActivitiesDiscontinued", 
        "Label" : "Net Cash Flows from Financing Activities, Discontinued", 
        "To" : {
          "us-gaap:CashProvidedByUsedInFinancingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInFinancingActivitiesDiscontinuedOperations", 
            "Id" : "99c3e1f0-4faf-4453-87e9-c2617b1b8d49"
          }
        }, 
        "Id" : "792e8053-1fd1-4052-80b7-c3647099daef"
      }, 
      "fac:NetIncomeAttributableToNoncontrollingInterest" : {
        "Name" : "fac:NetIncomeAttributableToNoncontrollingInterest", 
        "Label" : "Net Income Attributable to Noncontrolling Interest", 
        "To" : {
          "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest", 
            "Id" : "d7f71c5c-a7ed-40a2-b592-1fc7d81006bf"
          }
        }, 
        "Id" : "c5832ad5-094f-4f12-9991-15303b56074b"
      }, 
      "fac:FiscalYearEnd" : {
        "Name" : "fac:FiscalYearEnd", 
        "Label" : "Fiscal Year End", 
        "To" : {
          "dei:CurrentFiscalYearEndDate" : {
            "Name" : "dei:CurrentFiscalYearEndDate", 
            "Id" : "5297ff3b-0d8b-4274-8b95-73fad1df2a03"
          }
        }, 
        "Id" : "e8db794e-17b0-4335-b288-6655e8ec0bca"
      }, 
      "fac:NoncurrentAssets" : {
        "Name" : "fac:NoncurrentAssets", 
        "Label" : "Noncurrent Assets", 
        "To" : {
          "us-gaap:AssetsNoncurrent" : {
            "Name" : "us-gaap:AssetsNoncurrent", 
            "Id" : "78a8aeb6-66b5-4de8-bd45-d147d045da63"
          }
        }, 
        "Id" : "4c882455-6e23-4398-9fa0-6ac12dd80b04"
      }, 
      "fac:FiscalPeriod" : {
        "Name" : "fac:FiscalPeriod", 
        "Label" : "Fiscal Period", 
        "To" : {
          "dei:DocumentFiscalPeriodFocus" : {
            "Name" : "dei:DocumentFiscalPeriodFocus", 
            "Id" : "b10919ff-b88a-407e-84ab-69c334824c13"
          }
        }, 
        "Id" : "357ac670-ac11-4ce2-803a-1fb7cbf12e1d"
      }, 
      "fac:FiscalYear" : {
        "Name" : "fac:FiscalYear", 
        "Label" : "Fiscal Year", 
        "To" : {
          "dei:DocumentFiscalYearFocus" : {
            "Name" : "dei:DocumentFiscalYearFocus", 
            "Id" : "ffeeaf3a-794c-4b6c-ba71-f73013ce612f"
          }
        }, 
        "Id" : "3155f4fa-fc35-4ec2-a667-a45b5cf226af"
      }, 
      "fac:NetIncomeLoss" : {
        "Name" : "fac:NetIncomeLoss", 
        "Label" : "Net Income (Loss)", 
        "To" : {
          "us-gaap:ProfitLoss" : {
            "Name" : "us-gaap:ProfitLoss", 
            "Id" : "60633ca0-4313-4407-8577-c5bb870bf9b0"
          }, 
          "us-gaap:NetIncomeLoss" : {
            "Name" : "us-gaap:NetIncomeLoss", 
            "Id" : "22a47996-5cc3-48dd-93b3-f15ee6e6277e"
          }, 
          "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic" : {
            "Name" : "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic", 
            "Id" : "4ac07caf-5443-4c8e-98c8-2b97095af197"
          }, 
          "us-gaap:IncomeLossFromContinuingOperations" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperations", 
            "Id" : "9076ab5c-5c52-4086-b867-27292a53ae0f"
          }, 
          "us-gaap:IncomeLossAttributableToParent" : {
            "Name" : "us-gaap:IncomeLossAttributableToParent", 
            "Id" : "f037c4da-08d7-47c8-8dae-9faf5bb35a59"
          }, 
          "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "fb683fe6-6175-4e4f-b455-f95ca20b6ed6"
          }
        }, 
        "Id" : "b5164267-d716-452e-aa19-e77922614ef2"
      }, 
      "fac:ExchangeGainsLosses" : {
        "Name" : "fac:ExchangeGainsLosses", 
        "Label" : "Exchange Gains (Losses)", 
        "To" : {
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents", 
            "Id" : "26df39ea-441a-46d9-8e40-98e4b188e1ce"
          }, 
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsContinuingOperations" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsContinuingOperations", 
            "Id" : "7f75fac8-fcda-4504-b5c2-e0a3b14536b5"
          }, 
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsDiscontinuedOperations" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsDiscontinuedOperations", 
            "Id" : "4c8c160d-3418-4485-af6f-f77f4c314a59"
          }
        }, 
        "Id" : "99cea5bd-1fee-4ccd-bc18-1d9cbd045bd7"
      }, 
      "fac:GrossProfit" : {
        "Name" : "fac:GrossProfit", 
        "Label" : "Gross Profit", 
        "To" : {
          "us-gaap:GrossProfit" : {
            "Name" : "us-gaap:GrossProfit", 
            "Id" : "632bc06e-34d2-4ed9-b9cb-c04667c51079"
          }
        }, 
        "Id" : "1b2165c5-9d51-4d3a-aa89-83bcb2b7d342"
      }, 
      "fac:EquityAttributableToNoncontrollingInterest" : {
        "Name" : "fac:EquityAttributableToNoncontrollingInterest", 
        "Label" : "Equity Attributable to Noncontrolling Interest", 
        "To" : {
          "us-gaap:MinorityInterest" : {
            "Name" : "us-gaap:MinorityInterest", 
            "Id" : "22c9ec20-42b4-4546-9a7f-1dd835d9d7af"
          }, 
          "us-gaap:PartnersCapitalAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:PartnersCapitalAttributableToNoncontrollingInterest", 
            "Id" : "f327ef02-45a2-4e8f-82b5-5027d67ff22b"
          }, 
          "us-gaap:MinorityInterestInLimitedPartnerships" : {
            "Name" : "us-gaap:MinorityInterestInLimitedPartnerships", 
            "Id" : "19df2274-d288-4310-b091-7df23534ef90"
          }, 
          "us-gaap:MinorityInterestInOperatingPartnerships" : {
            "Name" : "us-gaap:MinorityInterestInOperatingPartnerships", 
            "Id" : "703e568c-ce77-40b2-bc06-3b2fe947c4cc"
          }, 
          "us-gaap:MinorityInterestInPreferredUnitHolders" : {
            "Name" : "us-gaap:MinorityInterestInPreferredUnitHolders", 
            "Id" : "ebe44195-4153-493a-9982-c1f00ac27512"
          }, 
          "us-gaap:MinorityInterestInJointVentures" : {
            "Name" : "us-gaap:MinorityInterestInJointVentures", 
            "Id" : "b1da4617-01f6-4da3-a40f-2d44397a2cf9"
          }, 
          "us-gaap:OtherMinorityInterests" : {
            "Name" : "us-gaap:OtherMinorityInterests", 
            "Id" : "7fcf84da-f1ca-4cc0-ba44-945831aee050"
          }, 
          "us-gaap:NonredeemableNoncontrollingInterest" : {
            "Name" : "us-gaap:NonredeemableNoncontrollingInterest", 
            "Id" : "10199204-e6df-492b-a25c-160d1f4d17f3"
          }, 
          "us-gaap:NoncontrollingInterestInVariableInterestEntity" : {
            "Name" : "us-gaap:NoncontrollingInterestInVariableInterestEntity", 
            "Id" : "77293bf4-3640-4210-ab73-f5436ff46dc4"
          }
        }, 
        "Id" : "1636709f-e87c-4a40-897f-d5986c9c356a"
      }, 
      "fac:CostsAndExpenses" : {
        "Name" : "fac:CostsAndExpenses", 
        "Label" : "Costs and Expenses", 
        "To" : {
          "us-gaap:CostsAndExpenses" : {
            "Name" : "us-gaap:CostsAndExpenses", 
            "Id" : "69657de5-aed4-4cb4-9ed0-d5db9bbdaa9c"
          }, 
          "us-gaap:BenefitsLossesAndExpenses" : {
            "Name" : "us-gaap:BenefitsLossesAndExpenses", 
            "Id" : "016ee4fd-1ced-4c0b-9ea0-dd9b2b096f92"
          }
        }, 
        "Id" : "597781a3-83f9-4e99-82da-9972bbb7b22d"
      }, 
      "fac:CurrentLiabilities" : {
        "Name" : "fac:CurrentLiabilities", 
        "Label" : "Current Liabilities", 
        "To" : {
          "us-gaap:LiabilitiesCurrent" : {
            "Name" : "us-gaap:LiabilitiesCurrent", 
            "Id" : "1595b29a-6b6f-4cfc-8de2-adab5c8456d4"
          }
        }, 
        "Id" : "1e727def-6aa1-4831-854b-056b7ac7fae7"
      }, 
      "fac:NetCashFlowsFromOperatingActivities" : {
        "Name" : "fac:NetCashFlowsFromOperatingActivities", 
        "Label" : "Net Cash Flows from Operating Activities", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInOperatingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInOperatingActivities", 
            "Id" : "fdcef487-dc84-49e4-bc6b-65a47a338704"
          }
        }, 
        "Id" : "8363034f-85c3-43d6-b79a-458ef80dbb33"
      }, 
      "fac:IncomeLossFromDiscontinuedOperationsNetTax" : {
        "Name" : "fac:IncomeLossFromDiscontinuedOperationsNetTax", 
        "Label" : "Income (Loss) from Discontinued Operations, Net of Tax", 
        "To" : {
          "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTax" : {
            "Name" : "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTax", 
            "Id" : "181316cc-b5f9-44c7-9c99-89f9122fdb64"
          }, 
          "us-gaap:DiscontinuedOperationGainLossOnDisposalOfDiscontinuedOperationNetOfTax" : {
            "Name" : "us-gaap:DiscontinuedOperationGainLossOnDisposalOfDiscontinuedOperationNetOfTax", 
            "Id" : "0d532ea3-6f82-4843-aa2b-db331d1dee6e"
          }, 
          "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTaxAttributableToReportingEntity" : {
            "Name" : "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTaxAttributableToReportingEntity", 
            "Id" : "05445a31-648b-4d17-adee-aa3f8adbea79"
          }
        }, 
        "Id" : "9abcb2f2-e290-45d4-8bd8-d3806b52e403"
      }, 
      "fac:ExtraordinaryItemsIncomeExpenseNetTax" : {
        "Name" : "fac:ExtraordinaryItemsIncomeExpenseNetTax", 
        "Label" : "Extraordinary Items of Income (Expense), Net of Tax", 
        "To" : {
          "us-gaap:ExtraordinaryItemNetOfTax" : {
            "Name" : "us-gaap:ExtraordinaryItemNetOfTax", 
            "Id" : "deedfae1-c498-46f0-b685-aa23dd5421fb"
          }
        }, 
        "Id" : "ee671db2-27af-4a5a-8457-64725c1e3050"
      }, 
      "fac:OperatingIncomeLoss" : {
        "Name" : "fac:OperatingIncomeLoss", 
        "Label" : "Operating Income (Loss)", 
        "To" : {
          "us-gaap:OperatingIncomeLoss" : {
            "Name" : "us-gaap:OperatingIncomeLoss", 
            "Id" : "7fbc4329-1e0f-492a-9cf6-d8dcd155c8a2"
          }
        }, 
        "Id" : "246e80e2-4fa6-4fe8-b58a-e5f0867de76d"
      }, 
      "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" : {
        "Name" : "fac:NetCashFlowsFromOperatingActivitiesDiscontinued", 
        "Label" : "Net Cash Flows from Operating Activities, Discontinued", 
        "To" : {
          "us-gaap:CashProvidedByUsedInOperatingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInOperatingActivitiesDiscontinuedOperations", 
            "Id" : "a0f59d64-87c9-416e-a118-57151704c731"
          }
        }, 
        "Id" : "4a4d2947-511d-46c8-9d53-2c8cab3755a3"
      }, 
      "fac:OtherComprehensiveIncomeLoss" : {
        "Name" : "fac:OtherComprehensiveIncomeLoss", 
        "Label" : "Other Comprehensive Income (Loss)", 
        "To" : {
          "us-gaap:OtherComprehensiveIncomeLossNetOfTax" : {
            "Name" : "us-gaap:OtherComprehensiveIncomeLossNetOfTax", 
            "Id" : "31c04c0d-cb55-4f1e-8144-590de1f4cd57"
          }
        }, 
        "Id" : "d451751d-53eb-4486-9df0-019fe91b58d8"
      }, 
      "fac:NetCashFlowsFromInvestingActivitiesContinuing" : {
        "Name" : "fac:NetCashFlowsFromInvestingActivitiesContinuing", 
        "Label" : "Net Cash Flows from Investing Activities, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInInvestingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInInvestingActivitiesContinuingOperations", 
            "Id" : "815599b0-f3ab-4d48-9bb0-99413bb93208"
          }
        }, 
        "Id" : "c0ce069d-b6c2-41db-9f92-bdce9a862c49"
      }, 
      "fac:BalanceSheetDate" : {
        "Name" : "fac:BalanceSheetDate", 
        "Label" : "Balance Sheet Date", 
        "To" : {
          "dei:DocumentPeriodEndDate" : {
            "Name" : "dei:DocumentPeriodEndDate", 
            "Id" : "fc76f9b2-4f42-4f4f-818a-824924b45db2"
          }
        }, 
        "Id" : "df7711f4-da56-4905-a5a7-e6f302f928d2"
      }, 
      "fac:LiabilitiesAndEquity" : {
        "Name" : "fac:LiabilitiesAndEquity", 
        "Label" : "Liabilities and Equity", 
        "To" : {
          "us-gaap:LiabilitiesAndStockholdersEquity" : {
            "Name" : "us-gaap:LiabilitiesAndStockholdersEquity", 
            "Id" : "9395f54e-c718-4cb0-ae32-292f90828132"
          }, 
          "us-gaap:LiabilitiesAndPartnersCapital" : {
            "Name" : "us-gaap:LiabilitiesAndPartnersCapital", 
            "Id" : "9218d081-a9ba-4408-bee4-cc8b3ca579fe"
          }
        }, 
        "Id" : "9c69663a-83da-443f-b655-a97ef548a4af"
      }, 
      "fac:Equity" : {
        "Name" : "fac:Equity", 
        "Label" : "Equity", 
        "To" : {
          "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "ca33c20d-690f-4614-ac2b-525f1b336eff"
          }, 
          "us-gaap:StockholdersEquity" : {
            "Name" : "us-gaap:StockholdersEquity", 
            "Id" : "bf0635dc-e8c0-428f-b44e-78cec721179e"
          }, 
          "us-gaap:PartnersCapitalIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:PartnersCapitalIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "ead36051-7319-46cf-9520-80cbc6806318"
          }, 
          "us-gaap:PartnersCapital" : {
            "Name" : "us-gaap:PartnersCapital", 
            "Id" : "86d10a99-c26a-49a1-b978-3f8cb08afc4b"
          }, 
          "us-gaap:CommonStockholdersEquity" : {
            "Name" : "us-gaap:CommonStockholdersEquity", 
            "Id" : "2c4624e3-9840-4305-9c09-9ecffe10760a"
          }, 
          "us-gaap:MembersEquity" : {
            "Name" : "us-gaap:MembersEquity", 
            "Id" : "cee8e0b9-bd28-4c0b-ad4c-dd5ee2f5daa0"
          }, 
          "us-gaap:AssetsNet" : {
            "Name" : "us-gaap:AssetsNet", 
            "Id" : "f20bbcf1-31a7-4b23-87a9-9f232582b8cb"
          }
        }, 
        "Id" : "e8f74834-bdb0-48cf-9663-28a92e1f1127"
      }, 
      "fac:DocumentType" : {
        "Name" : "fac:DocumentType", 
        "Label" : "Document Type", 
        "To" : {
          "dei:DocumentType" : {
            "Name" : "dei:DocumentType", 
            "Id" : "db93a09a-7e44-47fa-a857-f22d6f2305d7"
          }
        }, 
        "Id" : "8f72ed83-0ae2-4191-aaf7-caaa09d54de6"
      }, 
      "fac:IncomeLossFromEquityMethodInvestments" : {
        "Name" : "fac:IncomeLossFromEquityMethodInvestments", 
        "Label" : "Income (Loss) from Equity Method Investments", 
        "To" : {
          "us-gaap:IncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromEquityMethodInvestments", 
            "Id" : "c2fae18d-a1c6-45d1-9aec-d0f844ba78e7"
          }
        }, 
        "Id" : "9856be7e-52a8-403f-b686-d1ef542a947c"
      }, 
      "fac:ComprehensiveIncomeLoss" : {
        "Name" : "fac:ComprehensiveIncomeLoss", 
        "Label" : "Comprehensive Income (Loss)", 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "01baa298-9848-41fc-ac2f-9df9dc7228e2"
          }, 
          "us-gaap:ComprehensiveIncomeNetOfTax" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTax", 
            "Id" : "077db573-fa7e-4cb3-aa9e-aa9cf04fb8eb"
          }
        }, 
        "Id" : "d5ec6aee-4064-4fec-8b38-0dc9c0e35999"
      }, 
      "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest" : {
        "Name" : "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
        "Label" : "Comprehensive Income (Loss) Attributable to Noncontrolling Interest", 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest", 
            "Id" : "4a3f299a-8e79-451d-b408-1728a472d98e"
          }
        }, 
        "Id" : "035819d1-0c4b-48fb-8faa-ccc088f0224d"
      }, 
      "fac:CurrentAssets" : {
        "Name" : "fac:CurrentAssets", 
        "Label" : "Current Assets", 
        "To" : {
          "us-gaap:AssetsCurrent" : {
            "Name" : "us-gaap:AssetsCurrent", 
            "Id" : "fd39bfed-2bb6-49b9-9074-328311517a80"
          }
        }, 
        "Id" : "1f6d48e4-1d47-4d5b-8517-29b7764b9c9a"
      }, 
      "fac:NetCashFlowsFromOperatingActivitiesContinuing" : {
        "Name" : "fac:NetCashFlowsFromOperatingActivitiesContinuing", 
        "Label" : "Net Cash Flows from Operating Activities, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInOperatingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInOperatingActivitiesContinuingOperations", 
            "Id" : "48c92ff0-fe98-4dd5-b0d5-4e16b1902222"
          }
        }, 
        "Id" : "8c1990e3-92ee-495a-8f1b-16fafd601b7b"
      }, 
      "fac:NetCashFlowsFromFinancingActivities" : {
        "Name" : "fac:NetCashFlowsFromFinancingActivities", 
        "Label" : "Net Cash Flows from Financing Activities", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInFinancingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInFinancingActivities", 
            "Id" : "62605fc8-42c1-4113-86d7-e79199b91b7f"
          }
        }, 
        "Id" : "46f4cf55-b374-4997-8485-b45a19923614"
      }, 
      "fac:RedeemableNoncontrollingInterest" : {
        "Name" : "fac:RedeemableNoncontrollingInterest", 
        "Label" : "Redeemable Noncontrolling Interest", 
        "To" : {
          "us-gaap:RedeemableNoncontrollingInterestEquityCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityCarryingAmount", 
            "Id" : "ff83bd5e-452e-469c-8e3c-dfdad75c7e0a"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount", 
            "Id" : "ff86b9b1-6c49-44bc-9221-442ba6dda242"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityPreferredCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityPreferredCarryingAmount", 
            "Id" : "5414d30c-2f01-4d9a-b424-c6accd6abd86"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityOtherCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityOtherCarryingAmount", 
            "Id" : "3d65c847-f0cd-434c-9b16-64836775d2af"
          }
        }, 
        "Id" : "be981102-0b02-41d0-8868-6d3bf7d48553"
      }, 
      "fac:TemporaryEquity" : {
        "Name" : "fac:TemporaryEquity", 
        "Label" : "Temporary Equity", 
        "To" : {
          "us-gaap:TemporaryEquityCarryingAmountIncludingPortionAttributableToNoncontrollingInterests" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmountIncludingPortionAttributableToNoncontrollingInterests", 
            "Id" : "099675a7-27f0-4ad1-bb08-cf778d02723b"
          }, 
          "us-gaap:TemporaryEquityRedemptionValue" : {
            "Name" : "us-gaap:TemporaryEquityRedemptionValue", 
            "Id" : "6914f034-7469-4765-a382-4fda5d5f4214"
          }, 
          "us-gaap:RedeemablePreferredStockCarryingAmount" : {
            "Name" : "us-gaap:RedeemablePreferredStockCarryingAmount", 
            "Id" : "fb628cc2-a11c-45bd-b05d-0150adcaba70"
          }, 
          "us-gaap:TemporaryEquityCarryingAmount" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmount", 
            "Id" : "7038aaea-9d86-4cc7-9dd1-6004004bd394"
          }, 
          "us-gaap:TemporaryEquityValueExcludingAdditionalPaidInCapital" : {
            "Name" : "us-gaap:TemporaryEquityValueExcludingAdditionalPaidInCapital", 
            "Id" : "03245243-7c9a-4040-aca5-cf801f0f1a0e"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityFairValue" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityFairValue", 
            "Id" : "ba6a7e75-42d4-4984-96b5-6af80f4f68f3"
          }, 
          "us-gaap:TemporaryEquityCarryingAmountAttributableToParent" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmountAttributableToParent", 
            "Id" : "88357649-2be2-4112-a366-95b12c76ed65"
          }
        }, 
        "Id" : "0dca4bc2-e289-4c90-8c30-429be9f72ce2"
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
                "fac:AssetsValidation" : {
                  "Name" : "fac:AssetsValidation", 
                  "Label" : "Assets = CurrentAssets + NoncurrentAssets"
                }, 
                "fac:Assets2Validation" : {
                  "Name" : "fac:Assets2Validation", 
                  "Label" : "Assets = LiabilitiesAndEquity"
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
        }, 
        "xbrl:Unit" : {
          "Name" : "xbrl:Unit", 
          "Label" : "Unit", 
          "Default" : "xbrl:NonNumeric"
        }, 
        "sec:Accepted" : {
          "Name" : "sec:Accepted", 
          "Label" : "Acceptance Date"
        }, 
        "sec:Archive" : {
          "Name" : "sec:Archive", 
          "Label" : "Archive ID", 
          "Kind" : "TypedDimension", 
          "Type" : "string"
        }, 
        "sec:FiscalYear" : {
          "Name" : "sec:FiscalYear", 
          "Label" : "Fiscal Year"
        }, 
        "sec:FiscalPeriod" : {
          "Name" : "sec:FiscalPeriod", 
          "Label" : "Fiscal Period"
        }
      }
    }
  }, 
  "Rules": 
[ {
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
    "SourceFact" : [ "Assets" ], 
    "BodySrc" : "Assets = LiabilitiesAndEquity"
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
    "SourceFact" : [ "Assets" ], 
    "BodySrc" : "Assets = CurrentAssets + NoncurrentAssets"
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
    "SourceFact" : [ "LiabilitiesAndEquity" ], 
    "BodySrc" : "CurrentAssets"
  }, {
    "PrereqSrc" : "and(not(isblank(LiabilitiesAndEquity)),LiabilitiesAndEquity=Equity+Liabilities)", 
    "SourceFact" : [ "NoncurrentAssets" ], 
    "BodySrc" : "CurrentAssets"
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
  "Id" : "af746544-e3f6-412e-9046-4e744cf11335", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Current Assets", 
  "Description" : "Rule to compute Current Assets (fac:CurrentAssets).", 
  "ComputableConcepts" : [ "fac:CurrentAssets" ], 
  "DependsOn" : [ "fac:NoncurrentAssets", "fac:Assets" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:CurrentAssets\", \"fac:NoncurrentAssets\", \"fac:Assets\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $CurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"]\nlet $NoncurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"]\nlet $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($CurrentAssets) return $CurrentAssets\n  case (exists($Assets) and not((not(exists($NoncurrentAssets)))))\n  return\n    let $computed-value := rules:decimal-value($Assets) - rules:decimal-value($NoncurrentAssets)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:CurrentAssets\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($Assets, \"Assets\") || \" - \" || rules:fact-trail($NoncurrentAssets, \"NoncurrentAssets\")\n\t let $source-facts := ($CurrentAssets, $NoncurrentAssets, $Assets)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $Assets,\n            \"fac:CurrentAssets\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $Assets,\n          \"fac:CurrentAssets\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(NoncurrentAssets))", 
    "SourceFact" : [ "Assets" ], 
    "BodySrc" : "Assets-NoncurrentAssets"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "5d5eefb8-d022-44b7-8575-cadd6d377469", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Noncurrent Assets", 
  "Description" : "Rule to compute Noncurrent Assets (fac:NoncurrentAssets).", 
  "ComputableConcepts" : [ "fac:NoncurrentAssets" ], 
  "DependsOn" : [ "fac:CurrentAssets", "fac:Assets" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NoncurrentAssets\", \"fac:CurrentAssets\", \"fac:Assets\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NoncurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"]\nlet $CurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"]\nlet $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NoncurrentAssets) return $NoncurrentAssets\n  case (exists($Assets) and not((not(exists($CurrentAssets)))))\n  return\n    let $computed-value := rules:decimal-value($Assets) - rules:decimal-value($CurrentAssets)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NoncurrentAssets\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($Assets, \"Assets\") || \" - \" || rules:fact-trail($CurrentAssets, \"CurrentAssets\")\n\t let $source-facts := ($NoncurrentAssets, $CurrentAssets, $Assets)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $Assets,\n            \"fac:NoncurrentAssets\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $Assets,\n          \"fac:NoncurrentAssets\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(CurrentAssets))", 
    "SourceFact" : [ "Assets" ], 
    "BodySrc" : "Assets-CurrentAssets"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "5b6807a6-c57a-4cb5-8d1e-b6ce56162741", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Cost of Revenues", 
  "Description" : "Rule to compute Cost of Revenues (fac:CostOfRevenue).", 
  "ComputableConcepts" : [ "fac:CostOfRevenue" ], 
  "DependsOn" : [ "fac:GrossProfit", "fac:Revenues", "fac:CostsAndExpenses", "fac:OperatingExpenses" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:CostOfRevenue\", \"fac:GrossProfit\", \"fac:Revenues\", \"fac:CostsAndExpenses\", \"fac:OperatingExpenses\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $CostOfRevenue as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostOfRevenue\"]\nlet $GrossProfit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:GrossProfit\"]\nlet $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"]\nlet $CostsAndExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostsAndExpenses\"]\nlet $OperatingExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingExpenses\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($CostOfRevenue) return $CostOfRevenue\n  case (exists($Revenues) and not((not(exists($GrossProfit)))))\n  return\n    let $computed-value := rules:decimal-value($Revenues) - rules:decimal-value($GrossProfit)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:CostOfRevenue\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($Revenues, \"Revenues\") || \" - \" || rules:fact-trail($GrossProfit, \"GrossProfit\")\n\t let $source-facts := ($CostOfRevenue, $GrossProfit, $Revenues, $CostsAndExpenses, $OperatingExpenses)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $Revenues,\n            \"fac:CostOfRevenue\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $Revenues,\n          \"fac:CostOfRevenue\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  case (exists($CostsAndExpenses) and ())\n  return\n    let $computed-value := rules:decimal-value($CostsAndExpenses) - rules:decimal-value($OperatingExpenses)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:CostOfRevenue\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($CostsAndExpenses, \"CostsAndExpenses\") || \" - \" || rules:fact-trail($OperatingExpenses, \"OperatingExpenses\")\n\t let $source-facts := ($CostOfRevenue, $GrossProfit, $Revenues, $CostsAndExpenses, $OperatingExpenses)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $CostsAndExpenses,\n            \"fac:CostOfRevenue\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $CostsAndExpenses,\n          \"fac:CostOfRevenue\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(GrossProfit))", 
    "SourceFact" : [ "Revenues" ], 
    "BodySrc" : "Revenues-GrossProfit"
  }, {
    "PrereqSrc" : "and(not(isblank(CostOfRevenue)) , not(isblank(Revenues)), isblank(GrossProfit) , (Revenues - CostsAndExpenses = OperatingIncomeLoss), isblank(OperatingExpenses) , isblank(OtherOperatingIncomeExpenses))", 
    "SourceFact" : [ "CostsAndExpenses" ], 
    "BodySrc" : "CostsAndExpenses-OperatingExpenses"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "fc6d4f5d-58db-41f3-8f40-fea21461be53", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Operating Expenses", 
  "Description" : "Rule to compute Operating Expenses (fac:OperatingExpenses).", 
  "ComputableConcepts" : [ "fac:OperatingExpenses" ], 
  "DependsOn" : [ "fac:CostOfRevenue", "fac:CostsAndExpenses" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:OperatingExpenses\", \"fac:CostOfRevenue\", \"fac:CostsAndExpenses\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $OperatingExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingExpenses\"]\nlet $CostOfRevenue as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostOfRevenue\"]\nlet $CostsAndExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostsAndExpenses\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($OperatingExpenses) return $OperatingExpenses\n  case (exists($CostsAndExpenses) and not((not(exists($CostOfRevenue)))))\n  return\n    let $computed-value := rules:decimal-value($CostsAndExpenses) - rules:decimal-value($CostOfRevenue)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:OperatingExpenses\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($CostsAndExpenses, \"CostsAndExpenses\") || \" - \" || rules:fact-trail($CostOfRevenue, \"CostOfRevenue\")\n\t let $source-facts := ($OperatingExpenses, $CostOfRevenue, $CostsAndExpenses)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $CostsAndExpenses,\n            \"fac:OperatingExpenses\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $CostsAndExpenses,\n          \"fac:OperatingExpenses\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(CostOfRevenue))", 
    "SourceFact" : [ "CostsAndExpenses" ], 
    "BodySrc" : "CostsAndExpenses-CostOfRevenue"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "58996a6a-1c4a-4b92-9aa0-7b29bd4ff514", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Costs and Expenses", 
  "Description" : "Rule to compute Costs and Expenses (fac:CostsAndExpenses).", 
  "ComputableConcepts" : [ "fac:CostsAndExpenses" ], 
  "DependsOn" : [ "fac:OperatingExpenses", "fac:CostOfRevenue", "fac:Revenues", "fac:OperatingIncomeLoss", "fac:OtherOperatingIncomeExpenses" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:CostsAndExpenses\", \"fac:OperatingExpenses\", \"fac:CostOfRevenue\", \"fac:Revenues\", \"fac:OperatingIncomeLoss\", \"fac:OtherOperatingIncomeExpenses\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $CostsAndExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostsAndExpenses\"]\nlet $OperatingExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingExpenses\"]\nlet $CostOfRevenue as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostOfRevenue\"]\nlet $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"]\nlet $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"]\nlet $OtherOperatingIncomeExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OtherOperatingIncomeExpenses\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($CostsAndExpenses) return $CostsAndExpenses\n  case (exists($CostOfRevenue) and not((not(exists($OperatingExpenses)))))\n  return\n    let $computed-value := rules:decimal-value($CostOfRevenue) + rules:decimal-value($OperatingExpenses)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:CostsAndExpenses\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($CostOfRevenue, \"CostOfRevenue\") || \" + \" || rules:fact-trail($OperatingExpenses, \"OperatingExpenses\")\n\t let $source-facts := ($CostsAndExpenses, $OperatingExpenses, $CostOfRevenue, $Revenues, $OperatingIncomeLoss, $OtherOperatingIncomeExpenses)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $CostOfRevenue,\n            \"fac:CostsAndExpenses\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $CostOfRevenue,\n          \"fac:CostsAndExpenses\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  case (exists($Revenues) and ())\n  return\n    let $computed-value := rules:decimal-value($Revenues) - rules:decimal-value($OperatingIncomeLoss) - rules:decimal-value($OtherOperatingIncomeExpenses)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:CostsAndExpenses\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($Revenues, \"Revenues\") || \" - \" || rules:fact-trail($OperatingIncomeLoss, \"OperatingIncomeLoss\") || \" - \" || rules:fact-trail($OtherOperatingIncomeExpenses, \"OtherOperatingIncomeExpenses\")\n\t let $source-facts := ($CostsAndExpenses, $OperatingExpenses, $CostOfRevenue, $Revenues, $OperatingIncomeLoss, $OtherOperatingIncomeExpenses)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $Revenues,\n            \"fac:CostsAndExpenses\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $Revenues,\n          \"fac:CostsAndExpenses\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(OperatingExpenses))", 
    "SourceFact" : [ "CostOfRevenue" ], 
    "BodySrc" : "CostOfRevenue+OperatingExpenses"
  }, {
    "PrereqSrc" : "and(isblank(GrossProfit), not(isblank(Revenues)), not(isblank(OperatingIncomeLoss)) and not(isblank(OtherOperatingIncomeExpenses)))", 
    "SourceFact" : [ "Revenues" ], 
    "BodySrc" : "Revenues-OperatingIncomeLoss-OtherOperatingIncomeExpenses"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "78e824dc-4b68-4a1b-9aa3-ec51d0f55335", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Return on Assets (ROA)", 
  "Description" : "Rule to compute Return on Assets (ROA) (fac:ReturnOnAssets).", 
  "ComputableConcepts" : [ "fac:ReturnOnAssets" ], 
  "DependsOn" : [ "fac:Assets", "fac:NetIncomeLoss" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:ReturnOnAssets\", \"fac:Assets\", \"fac:NetIncomeLoss\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $ReturnOnAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ReturnOnAssets\"]\nlet $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"]\nlet $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($ReturnOnAssets) return $ReturnOnAssets\n  case (exists($Assets) and rules:decimal-value($Assets) ne 0)\n  return\n    let $computed-value := rules:decimal-value($NetIncomeLoss) div rules:decimal-value($Assets)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:ReturnOnAssets\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetIncomeLoss, \"NetIncomeLoss\") || \" div \" || rules:fact-trail($Assets, \"Assets\")\n\t let $source-facts := ($ReturnOnAssets, $Assets, $NetIncomeLoss)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $Assets,\n            \"fac:ReturnOnAssets\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $Assets,\n          \"fac:ReturnOnAssets\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "Assets<>0", 
    "SourceFact" : [ "Assets" ], 
    "BodySrc" : "NetIncomeLoss/Assets"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "fe735813-326b-4f09-a38e-8f80c80e816b", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Return on Equity (ROE)", 
  "Description" : "Rule to compute Return on Equity (ROE) (fac:ReturnOnEquity).", 
  "ComputableConcepts" : [ "fac:ReturnOnEquity" ], 
  "DependsOn" : [ "fac:Equity", "fac:NetIncomeLoss" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:ReturnOnEquity\", \"fac:Equity\", \"fac:NetIncomeLoss\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $ReturnOnEquity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ReturnOnEquity\"]\nlet $Equity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Equity\"]\nlet $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($ReturnOnEquity) return $ReturnOnEquity\n  case (exists($Equity) and rules:decimal-value($Equity) ne 0)\n  return\n    let $computed-value := rules:decimal-value($NetIncomeLoss) div rules:decimal-value($Equity)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:ReturnOnEquity\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetIncomeLoss, \"NetIncomeLoss\") || \" div \" || rules:fact-trail($Equity, \"Equity\")\n\t let $source-facts := ($ReturnOnEquity, $Equity, $NetIncomeLoss)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $Equity,\n            \"fac:ReturnOnEquity\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $Equity,\n          \"fac:ReturnOnEquity\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "Equity<>0", 
    "SourceFact" : [ "Equity" ], 
    "BodySrc" : "NetIncomeLoss/Equity"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "de1806dc-ff91-47a9-a10b-fb631b268ae3", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Return on Sales (ROS)", 
  "Description" : "Rule to compute Return on Sales (ROS) (fac:ReturnOnSalesROS).", 
  "ComputableConcepts" : [ "fac:ReturnOnSalesROS" ], 
  "DependsOn" : [ "fac:Revenues", "fac:NetIncomeLoss" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:ReturnOnSalesROS\", \"fac:Revenues\", \"fac:NetIncomeLoss\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $ReturnOnSalesROS as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ReturnOnSalesROS\"]\nlet $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"]\nlet $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($ReturnOnSalesROS) return $ReturnOnSalesROS\n  case (exists($Revenues) and rules:decimal-value($Revenues) ne 0)\n  return\n    let $computed-value := rules:decimal-value($NetIncomeLoss) div rules:decimal-value($Revenues)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:ReturnOnSalesROS\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetIncomeLoss, \"NetIncomeLoss\") || \" div \" || rules:fact-trail($Revenues, \"Revenues\")\n\t let $source-facts := ($ReturnOnSalesROS, $Revenues, $NetIncomeLoss)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $Revenues,\n            \"fac:ReturnOnSalesROS\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $Revenues,\n          \"fac:ReturnOnSalesROS\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "Revenues<>0", 
    "SourceFact" : [ "Revenues" ], 
    "BodySrc" : "NetIncomeLoss/Revenues"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "bf2d1587-491c-4492-b587-ddd00d762f2d", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Other Operating Income (Expenses)", 
  "Description" : "Rule to compute Other Operating Income (Expenses) (fac:OtherOperatingIncomeExpenses).", 
  "ComputableConcepts" : [ "fac:OtherOperatingIncomeExpenses" ], 
  "DependsOn" : [ "fac:OperatingIncomeLoss", "fac:GrossProfit", "fac:OperatingExpenses" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:OtherOperatingIncomeExpenses\", \"fac:OperatingIncomeLoss\", \"fac:GrossProfit\", \"fac:OperatingExpenses\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $OtherOperatingIncomeExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OtherOperatingIncomeExpenses\"]\nlet $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"]\nlet $GrossProfit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:GrossProfit\"]\nlet $OperatingExpenses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingExpenses\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($OtherOperatingIncomeExpenses) return $OtherOperatingIncomeExpenses\n  case (exists($OperatingIncomeLoss) and ())\n  return\n    let $computed-value := rules:decimal-value($OperatingIncomeLoss) - rules:decimal-value($GrossProfit) - rules:decimal-value($OperatingExpenses)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:OtherOperatingIncomeExpenses\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($OperatingIncomeLoss, \"OperatingIncomeLoss\") || \" - \" || rules:fact-trail($GrossProfit, \"GrossProfit\") || \" - \" || rules:fact-trail($OperatingExpenses, \"OperatingExpenses\")\n\t let $source-facts := ($OtherOperatingIncomeExpenses, $OperatingIncomeLoss, $GrossProfit, $OperatingExpenses)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $OperatingIncomeLoss,\n            \"fac:OtherOperatingIncomeExpenses\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $OperatingIncomeLoss,\n          \"fac:OtherOperatingIncomeExpenses\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(OperatingIncomeLoss)) and not(isblank(GrossProfit)) and not(isblank(OperatingExpenses)))", 
    "SourceFact" : [ "OperatingIncomeLoss" ], 
    "BodySrc" : "OperatingIncomeLoss-GrossProfit-OperatingExpenses"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "97cdc544-35ea-4d12-b3d4-128b4b1e593a", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Operating Income (Loss)", 
  "Description" : "Rule to compute Operating Income (Loss) (fac:OperatingIncomeLoss).", 
  "ComputableConcepts" : [ "fac:OperatingIncomeLoss" ], 
  "DependsOn" : [ "fac:IncomeBeforeEquityMethodInvestments", "fac:NonoperatingIncomeLoss", "fac:InterestAndDebtExpense" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:OperatingIncomeLoss\", \"fac:IncomeBeforeEquityMethodInvestments\", \"fac:NonoperatingIncomeLoss\", \"fac:InterestAndDebtExpense\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"]\nlet $IncomeBeforeEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeBeforeEquityMethodInvestments\"]\nlet $NonoperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NonoperatingIncomeLoss\"]\nlet $InterestAndDebtExpense as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:InterestAndDebtExpense\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($OperatingIncomeLoss) return $OperatingIncomeLoss\n  case (exists($IncomeBeforeEquityMethodInvestments) and not((not(exists($IncomeBeforeEquityMethodInvestments)))))\n  return\n    let $computed-value := rules:decimal-value($IncomeBeforeEquityMethodInvestments) + rules:decimal-value($NonoperatingIncomeLoss) - rules:decimal-value($InterestAndDebtExpense)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:OperatingIncomeLoss\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($IncomeBeforeEquityMethodInvestments, \"IncomeBeforeEquityMethodInvestments\") || \" + \" || rules:fact-trail($NonoperatingIncomeLoss, \"NonoperatingIncomeLoss\") || \" - \" || rules:fact-trail($InterestAndDebtExpense, \"InterestAndDebtExpense\")\n\t let $source-facts := ($OperatingIncomeLoss, $IncomeBeforeEquityMethodInvestments, $NonoperatingIncomeLoss, $InterestAndDebtExpense)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $IncomeBeforeEquityMethodInvestments,\n            \"fac:OperatingIncomeLoss\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $IncomeBeforeEquityMethodInvestments,\n          \"fac:OperatingIncomeLoss\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(IncomeBeforeEquityMethodInvestments))", 
    "SourceFact" : [ "IncomeBeforeEquityMethodInvestments" ], 
    "BodySrc" : "IncomeBeforeEquityMethodInvestments+NonoperatingIncomeLoss-InterestAndDebtExpense"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "fd810901-ee86-46ad-8c55-ec933c27169a", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Revenues", 
  "Description" : "Rule to compute Revenues (fac:Revenues).", 
  "ComputableConcepts" : [ "fac:Revenues" ], 
  "DependsOn" : [ "fac:CostOfRevenue", "fac:GrossProfit" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:Revenues\", \"fac:CostOfRevenue\", \"fac:GrossProfit\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"]\nlet $CostOfRevenue as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostOfRevenue\"]\nlet $GrossProfit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:GrossProfit\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($Revenues) return $Revenues\n  case (exists($GrossProfit) and not((not(exists($CostOfRevenue)))))\n  return\n    let $computed-value := rules:decimal-value($GrossProfit) + rules:decimal-value($CostOfRevenue)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:Revenues\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($GrossProfit, \"GrossProfit\") || \" + \" || rules:fact-trail($CostOfRevenue, \"CostOfRevenue\")\n\t let $source-facts := ($Revenues, $CostOfRevenue, $GrossProfit)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $GrossProfit,\n            \"fac:Revenues\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $GrossProfit,\n          \"fac:Revenues\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(CostOfRevenue))", 
    "SourceFact" : [ "GrossProfit" ], 
    "BodySrc" : "GrossProfit+CostOfRevenue"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "752e7bc0-858b-4c36-9e82-fb560298e98e", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Gross Profit", 
  "Description" : "Rule to compute Gross Profit (fac:GrossProfit).", 
  "ComputableConcepts" : [ "fac:GrossProfit" ], 
  "DependsOn" : [ "fac:Revenues", "fac:CostOfRevenue" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:GrossProfit\", \"fac:Revenues\", \"fac:CostOfRevenue\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $GrossProfit as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:GrossProfit\"]\nlet $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"]\nlet $CostOfRevenue as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CostOfRevenue\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($GrossProfit) return $GrossProfit\n  case (exists($Revenues) and ())\n  return\n    let $computed-value := rules:decimal-value($Revenues) - rules:decimal-value($CostOfRevenue)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:GrossProfit\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($Revenues, \"Revenues\") || \" - \" || rules:fact-trail($CostOfRevenue, \"CostOfRevenue\")\n\t let $source-facts := ($GrossProfit, $Revenues, $CostOfRevenue)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $Revenues,\n            \"fac:GrossProfit\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $Revenues,\n          \"fac:GrossProfit\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(Revenues)),not(isblank(CostOfRevenue)))", 
    "SourceFact" : [ "Revenues" ], 
    "BodySrc" : "Revenues-CostOfRevenue"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "6853bb17-792a-4aa0-8a5e-db3f38675382", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Interest and Debt Expense", 
  "Description" : "Rule to compute Interest and Debt Expense (fac:InterestAndDebtExpense).", 
  "ComputableConcepts" : [ "fac:InterestAndDebtExpense" ], 
  "DependsOn" : [ "fac:IncomeBeforeEquityMethodInvestments", "fac:OperatingIncomeLoss", "fac:NonoperatingIncomeLoss" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:InterestAndDebtExpense\", \"fac:IncomeBeforeEquityMethodInvestments\", \"fac:OperatingIncomeLoss\", \"fac:NonoperatingIncomeLoss\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $InterestAndDebtExpense as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:InterestAndDebtExpense\"]\nlet $IncomeBeforeEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeBeforeEquityMethodInvestments\"]\nlet $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"]\nlet $NonoperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NonoperatingIncomeLoss\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($InterestAndDebtExpense) return $InterestAndDebtExpense\n  case (exists($IncomeBeforeEquityMethodInvestments) and ())\n  return\n    let $computed-value := rules:decimal-value($IncomeBeforeEquityMethodInvestments) - rules:decimal-value($OperatingIncomeLoss) - rules:decimal-value($NonoperatingIncomeLoss)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:InterestAndDebtExpense\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($IncomeBeforeEquityMethodInvestments, \"IncomeBeforeEquityMethodInvestments\") || \" - \" || rules:fact-trail($OperatingIncomeLoss, \"OperatingIncomeLoss\") || \" - \" || rules:fact-trail($NonoperatingIncomeLoss, \"NonoperatingIncomeLoss\")\n\t let $source-facts := ($InterestAndDebtExpense, $IncomeBeforeEquityMethodInvestments, $OperatingIncomeLoss, $NonoperatingIncomeLoss)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $IncomeBeforeEquityMethodInvestments,\n            \"fac:InterestAndDebtExpense\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $IncomeBeforeEquityMethodInvestments,\n          \"fac:InterestAndDebtExpense\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(OperatingIncomeLoss)), not(isblank(NonoperatingIncomeLoss)), not(isblank(IncomeBeforeEquityMethodInvestments)))", 
    "SourceFact" : [ "IncomeBeforeEquityMethodInvestments" ], 
    "BodySrc" : "IncomeBeforeEquityMethodInvestments-OperatingIncomeLoss-NonoperatingIncomeLoss"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "ee2117cd-9220-4ee2-a982-33f4074c1ebc", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Nonoperating Income (Loss) + Interest and Debt Expense", 
  "Description" : "Rule to compute Nonoperating Income (Loss) + Interest and Debt Expense (fac:NonoperatingIncomeLossPlusInterestAndDebtExpense).", 
  "ComputableConcepts" : [ "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense" ], 
  "DependsOn" : [ "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments", "fac:IncomeLossFromEquityMethodInvestments" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NonoperatingIncomeLossPlusInterestAndDebtExpense\", \"fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\", \"fac:IncomeLossFromEquityMethodInvestments\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NonoperatingIncomeLossPlusInterestAndDebtExpense as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NonoperatingIncomeLossPlusInterestAndDebtExpense\"]\nlet $NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\"]\nlet $IncomeLossFromEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromEquityMethodInvestments\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NonoperatingIncomeLossPlusInterestAndDebtExpense) return $NonoperatingIncomeLossPlusInterestAndDebtExpense\n  case (exists($NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments) and not((not(exists($NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments)))))\n  return\n    let $computed-value := rules:decimal-value($NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments) - rules:decimal-value($IncomeLossFromEquityMethodInvestments)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NonoperatingIncomeLossPlusInterestAndDebtExpense\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments, \"NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\") || \" - \" || rules:fact-trail($IncomeLossFromEquityMethodInvestments, \"IncomeLossFromEquityMethodInvestments\")\n\t let $source-facts := ($NonoperatingIncomeLossPlusInterestAndDebtExpense, $NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments, $IncomeLossFromEquityMethodInvestments)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments,\n            \"fac:NonoperatingIncomeLossPlusInterestAndDebtExpense\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments,\n          \"fac:NonoperatingIncomeLossPlusInterestAndDebtExpense\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments))", 
    "SourceFact" : [ "NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments" ], 
    "BodySrc" : "NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments -IncomeLossFromEquityMethodInvestments"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "6abca1d8-12f9-4b87-b410-9d5d9e9322a3", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Nonoperating Income (Loss) + Interest and Debt Expense + Income (Loss) from Equity Method Investments", 
  "Description" : "Rule to compute Nonoperating Income (Loss) + Interest and Debt Expense + Income (Loss) from Equity Method Investments (fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments).", 
  "ComputableConcepts" : [ "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments" ], 
  "DependsOn" : [ "fac:IncomeLossFromContinuingOperationsBeforeTax", "fac:OperatingIncomeLoss" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\", \"fac:IncomeLossFromContinuingOperationsBeforeTax\", \"fac:OperatingIncomeLoss\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\"]\nlet $IncomeLossFromContinuingOperationsBeforeTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromContinuingOperationsBeforeTax\"]\nlet $OperatingIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OperatingIncomeLoss\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments) return $NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\n  case (exists($IncomeLossFromContinuingOperationsBeforeTax) and not((not(exists($IncomeLossFromContinuingOperationsBeforeTax)))))\n  return\n    let $computed-value := rules:decimal-value($IncomeLossFromContinuingOperationsBeforeTax) - rules:decimal-value($OperatingIncomeLoss)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($IncomeLossFromContinuingOperationsBeforeTax, \"IncomeLossFromContinuingOperationsBeforeTax\") || \" - \" || rules:fact-trail($OperatingIncomeLoss, \"OperatingIncomeLoss\")\n\t let $source-facts := ($NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments, $IncomeLossFromContinuingOperationsBeforeTax, $OperatingIncomeLoss)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $IncomeLossFromContinuingOperationsBeforeTax,\n            \"fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $IncomeLossFromContinuingOperationsBeforeTax,\n          \"fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(IncomeLossFromContinuingOperationsBeforeTax))", 
    "SourceFact" : [ "IncomeLossFromContinuingOperationsBeforeTax" ], 
    "BodySrc" : "IncomeLossFromContinuingOperationsBeforeTax-OperatingIncomeLoss"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "f1a8f202-897e-4978-98f3-c81279f7c767", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Income (Loss) from Continuing Operations Before Tax", 
  "Description" : "Rule to compute Income (Loss) from Continuing Operations Before Tax (fac:IncomeLossFromContinuingOperationsBeforeTax).", 
  "ComputableConcepts" : [ "fac:IncomeLossFromContinuingOperationsBeforeTax" ], 
  "DependsOn" : [ "fac:IncomeLossFromEquityMethodInvestments", "fac:IncomeBeforeEquityMethodInvestments" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:IncomeLossFromContinuingOperationsBeforeTax\", \"fac:IncomeLossFromEquityMethodInvestments\", \"fac:IncomeBeforeEquityMethodInvestments\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $IncomeLossFromContinuingOperationsBeforeTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromContinuingOperationsBeforeTax\"]\nlet $IncomeLossFromEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromEquityMethodInvestments\"]\nlet $IncomeBeforeEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeBeforeEquityMethodInvestments\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($IncomeLossFromContinuingOperationsBeforeTax) return $IncomeLossFromContinuingOperationsBeforeTax\n  case (exists($IncomeLossFromEquityMethodInvestments) and ())\n  return\n    let $computed-value := rules:decimal-value($IncomeLossFromEquityMethodInvestments) + rules:decimal-value($IncomeBeforeEquityMethodInvestments)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:IncomeLossFromContinuingOperationsBeforeTax\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($IncomeLossFromEquityMethodInvestments, \"IncomeLossFromEquityMethodInvestments\") || \" + \" || rules:fact-trail($IncomeBeforeEquityMethodInvestments, \"IncomeBeforeEquityMethodInvestments\")\n\t let $source-facts := ($IncomeLossFromContinuingOperationsBeforeTax, $IncomeLossFromEquityMethodInvestments, $IncomeBeforeEquityMethodInvestments)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $IncomeLossFromEquityMethodInvestments,\n            \"fac:IncomeLossFromContinuingOperationsBeforeTax\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $IncomeLossFromEquityMethodInvestments,\n          \"fac:IncomeLossFromContinuingOperationsBeforeTax\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(IncomeLossFromEquityMethodInvestments)), not(isblank(IncomeBeforeEquityMethodInvestments)))", 
    "SourceFact" : [ "IncomeLossFromEquityMethodInvestments" ], 
    "BodySrc" : "IncomeLossFromEquityMethodInvestments+IncomeBeforeEquityMethodInvestments"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "7cf0211d-caad-47bd-81e1-cacd6e288ecc", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Income (Loss) from Continuing Operations After Tax", 
  "Description" : "Rule to compute Income (Loss) from Continuing Operations After Tax (fac:IncomeLossFromContinuingOperationsAfterTax).", 
  "ComputableConcepts" : [ "fac:IncomeLossFromContinuingOperationsAfterTax" ], 
  "DependsOn" : [ "fac:NetIncomeLoss", "fac:IncomeLossFromDiscontinuedOperationsNetTax", "fac:ExtraordinaryItemsIncomeExpenseNetTax" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:IncomeLossFromContinuingOperationsAfterTax\", \"fac:NetIncomeLoss\", \"fac:IncomeLossFromDiscontinuedOperationsNetTax\", \"fac:ExtraordinaryItemsIncomeExpenseNetTax\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $IncomeLossFromContinuingOperationsAfterTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromContinuingOperationsAfterTax\"]\nlet $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"]\nlet $IncomeLossFromDiscontinuedOperationsNetTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromDiscontinuedOperationsNetTax\"]\nlet $ExtraordinaryItemsIncomeExpenseNetTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ExtraordinaryItemsIncomeExpenseNetTax\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($IncomeLossFromContinuingOperationsAfterTax) return $IncomeLossFromContinuingOperationsAfterTax\n  case (exists($NetIncomeLoss) and not((not(exists($NetIncomeLoss)))))\n  return\n    let $computed-value := rules:decimal-value($NetIncomeLoss) - rules:decimal-value($IncomeLossFromDiscontinuedOperationsNetTax) - rules:decimal-value($ExtraordinaryItemsIncomeExpenseNetTax)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:IncomeLossFromContinuingOperationsAfterTax\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetIncomeLoss, \"NetIncomeLoss\") || \" - \" || rules:fact-trail($IncomeLossFromDiscontinuedOperationsNetTax, \"IncomeLossFromDiscontinuedOperationsNetTax\") || \" - \" || rules:fact-trail($ExtraordinaryItemsIncomeExpenseNetTax, \"ExtraordinaryItemsIncomeExpenseNetTax\")\n\t let $source-facts := ($IncomeLossFromContinuingOperationsAfterTax, $NetIncomeLoss, $IncomeLossFromDiscontinuedOperationsNetTax, $ExtraordinaryItemsIncomeExpenseNetTax)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetIncomeLoss,\n            \"fac:IncomeLossFromContinuingOperationsAfterTax\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetIncomeLoss,\n          \"fac:IncomeLossFromContinuingOperationsAfterTax\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(NetIncomeLoss))", 
    "SourceFact" : [ "NetIncomeLoss" ], 
    "BodySrc" : "NetIncomeLoss-IncomeLossFromDiscontinuedOperationsNetTax-ExtraordinaryItemsIncomeExpenseNetTax"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "0e7003bf-f1ac-490c-81e1-764f093e678e", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Net Income Attributable to Parent", 
  "Description" : "Rule to compute Net Income Attributable to Parent (fac:NetIncomeAttributableToParent).", 
  "ComputableConcepts" : [ "fac:NetIncomeAttributableToParent" ], 
  "DependsOn" : [ "fac:NetIncomeLoss" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NetIncomeAttributableToParent\", \"fac:NetIncomeLoss\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NetIncomeAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeAttributableToParent\"]\nlet $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NetIncomeAttributableToParent) return $NetIncomeAttributableToParent\n  case (exists($NetIncomeLoss) and ())\n  return\n    let $computed-value := rules:decimal-value($NetIncomeLoss)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NetIncomeAttributableToParent\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetIncomeLoss, \"NetIncomeLoss\")\n\t let $source-facts := ($NetIncomeAttributableToParent, $NetIncomeLoss)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetIncomeLoss,\n            \"fac:NetIncomeAttributableToParent\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetIncomeLoss,\n          \"fac:NetIncomeAttributableToParent\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and (not(isblank(NetIncomeLoss)), isblank(NetIncomeAttributableToNoncontrollingInterest))", 
    "SourceFact" : [ "NetIncomeLoss" ], 
    "BodySrc" : "NetIncomeLoss"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "4b138859-c05a-4715-86d2-5e75cc0ec110", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Preferred Stock Dividends and Other Adjustments", 
  "Description" : "Rule to compute Preferred Stock Dividends and Other Adjustments (fac:PreferredStockDividendsAndOtherAdjustments).", 
  "ComputableConcepts" : [ "fac:PreferredStockDividendsAndOtherAdjustments" ], 
  "DependsOn" : [ "fac:NetIncomeAttributableToParent", "fac:NetIncomeLossAvailableToCommonStockholdersBasic" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:PreferredStockDividendsAndOtherAdjustments\", \"fac:NetIncomeAttributableToParent\", \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $PreferredStockDividendsAndOtherAdjustments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:PreferredStockDividendsAndOtherAdjustments\"]\nlet $NetIncomeAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeAttributableToParent\"]\nlet $NetIncomeLossAvailableToCommonStockholdersBasic as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($PreferredStockDividendsAndOtherAdjustments) return $PreferredStockDividendsAndOtherAdjustments\n  case (exists($NetIncomeAttributableToParent) and ())\n  return\n    let $computed-value := rules:decimal-value($NetIncomeAttributableToParent) - rules:decimal-value($NetIncomeLossAvailableToCommonStockholdersBasic)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:PreferredStockDividendsAndOtherAdjustments\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetIncomeAttributableToParent, \"NetIncomeAttributableToParent\") || \" - \" || rules:fact-trail($NetIncomeLossAvailableToCommonStockholdersBasic, \"NetIncomeLossAvailableToCommonStockholdersBasic\")\n\t let $source-facts := ($PreferredStockDividendsAndOtherAdjustments, $NetIncomeAttributableToParent, $NetIncomeLossAvailableToCommonStockholdersBasic)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetIncomeAttributableToParent,\n            \"fac:PreferredStockDividendsAndOtherAdjustments\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetIncomeAttributableToParent,\n          \"fac:PreferredStockDividendsAndOtherAdjustments\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(NetIncomeAttributableToParent)), not(isblank(NetIncomeLossAvailableToCommonStockholdersBasic)))", 
    "SourceFact" : [ "NetIncomeAttributableToParent" ], 
    "BodySrc" : "NetIncomeAttributableToParent-NetIncomeLossAvailableToCommonStockholdersBasic"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "2c454b43-7933-41b8-ad05-a799dad6d4c0", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Net Income (Loss) Available to Common Stockholders, Basic", 
  "Description" : "Rule to compute Net Income (Loss) Available to Common Stockholders, Basic (fac:NetIncomeLossAvailableToCommonStockholdersBasic).", 
  "ComputableConcepts" : [ "fac:NetIncomeLossAvailableToCommonStockholdersBasic" ], 
  "DependsOn" : [ "fac:NetIncomeAttributableToParent" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\", \"fac:NetIncomeAttributableToParent\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NetIncomeLossAvailableToCommonStockholdersBasic as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\"]\nlet $NetIncomeAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeAttributableToParent\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NetIncomeLossAvailableToCommonStockholdersBasic) return $NetIncomeLossAvailableToCommonStockholdersBasic\n  case (exists($NetIncomeAttributableToParent) and not((not(exists($NetIncomeAttributableToParent)))))\n  return\n    let $computed-value := rules:decimal-value($NetIncomeAttributableToParent)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetIncomeAttributableToParent, \"NetIncomeAttributableToParent\")\n\t let $source-facts := ($NetIncomeLossAvailableToCommonStockholdersBasic, $NetIncomeAttributableToParent)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetIncomeAttributableToParent,\n            \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetIncomeAttributableToParent,\n          \"fac:NetIncomeLossAvailableToCommonStockholdersBasic\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(NetIncomeAttributableToParent))", 
    "SourceFact" : [ "NetIncomeAttributableToParent" ], 
    "BodySrc" : "NetIncomeAttributableToParent"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "0cf36e1f-fa8d-4007-b083-008c9a2bd589", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Income (Loss) Before Equity Method Investments", 
  "Description" : "Rule to compute Income (Loss) Before Equity Method Investments (fac:IncomeBeforeEquityMethodInvestments).", 
  "ComputableConcepts" : [ "fac:IncomeBeforeEquityMethodInvestments" ], 
  "DependsOn" : [ "fac:IncomeLossFromContinuingOperationsBeforeTax", "fac:IncomeLossFromEquityMethodInvestments" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:IncomeBeforeEquityMethodInvestments\", \"fac:IncomeLossFromContinuingOperationsBeforeTax\", \"fac:IncomeLossFromEquityMethodInvestments\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $IncomeBeforeEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeBeforeEquityMethodInvestments\"]\nlet $IncomeLossFromContinuingOperationsBeforeTax as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromContinuingOperationsBeforeTax\"]\nlet $IncomeLossFromEquityMethodInvestments as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:IncomeLossFromEquityMethodInvestments\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($IncomeBeforeEquityMethodInvestments) return $IncomeBeforeEquityMethodInvestments\n  case (exists($IncomeLossFromContinuingOperationsBeforeTax) and not((not(exists($IncomeLossFromContinuingOperationsBeforeTax)))))\n  return\n    let $computed-value := rules:decimal-value($IncomeLossFromContinuingOperationsBeforeTax) - rules:decimal-value($IncomeLossFromEquityMethodInvestments)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:IncomeBeforeEquityMethodInvestments\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($IncomeLossFromContinuingOperationsBeforeTax, \"IncomeLossFromContinuingOperationsBeforeTax\") || \" - \" || rules:fact-trail($IncomeLossFromEquityMethodInvestments, \"IncomeLossFromEquityMethodInvestments\")\n\t let $source-facts := ($IncomeBeforeEquityMethodInvestments, $IncomeLossFromContinuingOperationsBeforeTax, $IncomeLossFromEquityMethodInvestments)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $IncomeLossFromContinuingOperationsBeforeTax,\n            \"fac:IncomeBeforeEquityMethodInvestments\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $IncomeLossFromContinuingOperationsBeforeTax,\n          \"fac:IncomeBeforeEquityMethodInvestments\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(IncomeLossFromContinuingOperationsBeforeTax))", 
    "SourceFact" : [ "IncomeLossFromContinuingOperationsBeforeTax" ], 
    "BodySrc" : "IncomeLossFromContinuingOperationsBeforeTax-IncomeLossFromEquityMethodInvestments"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "cd07373d-1c26-4278-86e9-9b4715dff5ea", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Other Comprehensive Income (Loss)", 
  "Description" : "Rule to compute Other Comprehensive Income (Loss) (fac:OtherComprehensiveIncomeLoss).", 
  "ComputableConcepts" : [ "fac:OtherComprehensiveIncomeLoss" ], 
  "DependsOn" : [ "fac:ComprehensiveIncomeLoss", "fac:NetIncomeLoss" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:OtherComprehensiveIncomeLoss\", \"fac:ComprehensiveIncomeLoss\", \"fac:NetIncomeLoss\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $OtherComprehensiveIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:OtherComprehensiveIncomeLoss\"]\nlet $ComprehensiveIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLoss\"]\nlet $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($OtherComprehensiveIncomeLoss) return $OtherComprehensiveIncomeLoss\n  case (exists($ComprehensiveIncomeLoss) and not((not(exists($ComprehensiveIncomeLoss)))))\n  return\n    let $computed-value := rules:decimal-value($ComprehensiveIncomeLoss) - rules:decimal-value($NetIncomeLoss)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:OtherComprehensiveIncomeLoss\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($ComprehensiveIncomeLoss, \"ComprehensiveIncomeLoss\") || \" - \" || rules:fact-trail($NetIncomeLoss, \"NetIncomeLoss\")\n\t let $source-facts := ($OtherComprehensiveIncomeLoss, $ComprehensiveIncomeLoss, $NetIncomeLoss)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $ComprehensiveIncomeLoss,\n            \"fac:OtherComprehensiveIncomeLoss\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $ComprehensiveIncomeLoss,\n          \"fac:OtherComprehensiveIncomeLoss\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(ComprehensiveIncomeLoss))", 
    "SourceFact" : [ "ComprehensiveIncomeLoss" ], 
    "BodySrc" : "ComprehensiveIncomeLoss-NetIncomeLoss"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "a3a832ba-ff2e-471f-899f-115eb415f8b2", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Comprehensive Income (Loss)", 
  "Description" : "Rule to compute Comprehensive Income (Loss) (fac:ComprehensiveIncomeLoss).", 
  "ComputableConcepts" : [ "fac:ComprehensiveIncomeLoss" ], 
  "DependsOn" : [ "fac:NetIncomeLoss" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:ComprehensiveIncomeLoss\", \"fac:NetIncomeLoss\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $ComprehensiveIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLoss\"]\nlet $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($ComprehensiveIncomeLoss) return $ComprehensiveIncomeLoss\n  case (exists($NetIncomeLoss) and ())\n  return\n    let $computed-value := rules:decimal-value($NetIncomeLoss)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:ComprehensiveIncomeLoss\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetIncomeLoss, \"NetIncomeLoss\")\n\t let $source-facts := ($ComprehensiveIncomeLoss, $NetIncomeLoss)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetIncomeLoss,\n            \"fac:ComprehensiveIncomeLoss\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetIncomeLoss,\n          \"fac:ComprehensiveIncomeLoss\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(NetIncomeLoss)),\n           not(isblank(ComprehensiveIncomeLossAttributableToParent)),\n           (NetIncomeLoss-ComprehensiveIncomeLossAttributableToParent=0),\n           (ComprehensiveIncomeLossAttributableToNoncontrollingInterest=0),\n           (OtherComprehensiveIncomeLoss=0))", 
    "SourceFact" : [ "NetIncomeLoss" ], 
    "BodySrc" : "NetIncomeLoss"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "85c0c5be-dfdf-4da7-ae99-c006e87eba15", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Comprehensive Income (Loss) Attributable to Parent", 
  "Description" : "Rule to compute Comprehensive Income (Loss) Attributable to Parent (fac:ComprehensiveIncomeLossAttributableToParent).", 
  "ComputableConcepts" : [ "fac:ComprehensiveIncomeLossAttributableToParent" ], 
  "DependsOn" : [ "fac:ComprehensiveIncomeLoss", "fac:NetIncomeLoss" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:ComprehensiveIncomeLossAttributableToParent\", \"fac:ComprehensiveIncomeLoss\", \"fac:NetIncomeLoss\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $ComprehensiveIncomeLossAttributableToParent as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLossAttributableToParent\"]\nlet $ComprehensiveIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ComprehensiveIncomeLoss\"]\nlet $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($ComprehensiveIncomeLossAttributableToParent) return $ComprehensiveIncomeLossAttributableToParent\n  case (exists($ComprehensiveIncomeLoss) and ())\n  return\n    let $computed-value := rules:decimal-value($ComprehensiveIncomeLoss)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:ComprehensiveIncomeLossAttributableToParent\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($ComprehensiveIncomeLoss, \"ComprehensiveIncomeLoss\")\n\t let $source-facts := ($ComprehensiveIncomeLossAttributableToParent, $ComprehensiveIncomeLoss, $NetIncomeLoss)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $ComprehensiveIncomeLoss,\n            \"fac:ComprehensiveIncomeLossAttributableToParent\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $ComprehensiveIncomeLoss,\n          \"fac:ComprehensiveIncomeLossAttributableToParent\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  case (exists($ComprehensiveIncomeLoss) and ())\n  return\n    let $computed-value := rules:decimal-value($NetIncomeLoss)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:ComprehensiveIncomeLossAttributableToParent\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetIncomeLoss, \"NetIncomeLoss\")\n\t let $source-facts := ($ComprehensiveIncomeLossAttributableToParent, $ComprehensiveIncomeLoss, $NetIncomeLoss)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $ComprehensiveIncomeLoss,\n            \"fac:ComprehensiveIncomeLossAttributableToParent\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $ComprehensiveIncomeLoss,\n          \"fac:ComprehensiveIncomeLossAttributableToParent\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(ComprehensiveIncomeLoss)), isblank(ComprehensiveIncomeLossAttributableToNoncontrollingInterest))", 
    "SourceFact" : [ "ComprehensiveIncomeLoss" ], 
    "BodySrc" : "ComprehensiveIncomeLoss"
  }, {
    "PrereqSrc" : "and(isblank(ComprehensiveIncomeLoss), isblank(ComprehensiveIncomeLossAttributableToNoncontrollingInterest), \n     isblank(IncomeBeforeEquityMethodInvestments),not(isblank(NetIncomeLoss)) )", 
    "SourceFact" : [ "ComprehensiveIncomeLoss" ], 
    "BodySrc" : "NetIncomeLoss"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "50a01bf0-30ab-4d46-8418-066173dd2e67", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Net Cash Flows from Operating Activities, Continuing", 
  "Description" : "Rule to compute Net Cash Flows from Operating Activities, Continuing (fac:NetCashFlowsFromOperatingActivitiesContinuing).", 
  "ComputableConcepts" : [ "fac:NetCashFlowsFromOperatingActivitiesContinuing" ], 
  "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivities", "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NetCashFlowsFromOperatingActivitiesContinuing\", \"fac:NetCashFlowsFromOperatingActivities\", \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NetCashFlowsFromOperatingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesContinuing\"]\nlet $NetCashFlowsFromOperatingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivities\"]\nlet $NetCashFlowsFromOperatingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NetCashFlowsFromOperatingActivitiesContinuing) return $NetCashFlowsFromOperatingActivitiesContinuing\n  case (exists($NetCashFlowsFromOperatingActivities) and not((not(exists($NetCashFlowsFromOperatingActivities)))))\n  return\n    let $computed-value := rules:decimal-value($NetCashFlowsFromOperatingActivities) - rules:decimal-value($NetCashFlowsFromOperatingActivitiesDiscontinued)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromOperatingActivitiesContinuing\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetCashFlowsFromOperatingActivities, \"NetCashFlowsFromOperatingActivities\") || \" - \" || rules:fact-trail($NetCashFlowsFromOperatingActivitiesDiscontinued, \"NetCashFlowsFromOperatingActivitiesDiscontinued\")\n\t let $source-facts := ($NetCashFlowsFromOperatingActivitiesContinuing, $NetCashFlowsFromOperatingActivities, $NetCashFlowsFromOperatingActivitiesDiscontinued)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetCashFlowsFromOperatingActivities,\n            \"fac:NetCashFlowsFromOperatingActivitiesContinuing\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetCashFlowsFromOperatingActivities,\n          \"fac:NetCashFlowsFromOperatingActivitiesContinuing\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(NetCashFlowsFromOperatingActivities))", 
    "SourceFact" : [ "NetCashFlowsFromOperatingActivities" ], 
    "BodySrc" : "NetCashFlowsFromOperatingActivities-NetCashFlowsFromOperatingActivitiesDiscontinued"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "e7f1c48e-4b36-429c-90cc-48634d543ab9", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Net Cash Flows from Operating Activities, Discontinued", 
  "Description" : "Rule to compute Net Cash Flows from Operating Activities, Discontinued (fac:NetCashFlowsFromOperatingActivitiesDiscontinued).", 
  "ComputableConcepts" : [ "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" ], 
  "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivities" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\", \"fac:NetCashFlowsFromOperatingActivities\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NetCashFlowsFromOperatingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\"]\nlet $NetCashFlowsFromOperatingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivities\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NetCashFlowsFromOperatingActivitiesDiscontinued) return $NetCashFlowsFromOperatingActivitiesDiscontinued\n  case (exists($NetCashFlowsFromOperatingActivities) and ())\n  return\n    let $computed-value := 0\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\" }, Value: $computed-value }) || \" = \" || \n\t        \"0\"\n\t let $source-facts := ($NetCashFlowsFromOperatingActivitiesDiscontinued, $NetCashFlowsFromOperatingActivities)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetCashFlowsFromOperatingActivities,\n            \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetCashFlowsFromOperatingActivities,\n          \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(isblank(NetCashFlowsFromOperatingActivities), isblank(NetCashFlowsFromOperatingActivitiesContinuing), \n     NetCashFlowsFromOperatingActivitiesContinuing=NetCashFlowsFromOperatingActivities)", 
    "SourceFact" : [ "NetCashFlowsFromOperatingActivities" ], 
    "BodySrc" : "0"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "bc4dacb2-95d1-45e7-8594-2ad4e7f9f8d9", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Net Cash Flows from Investing Activities, Continuing", 
  "Description" : "Rule to compute Net Cash Flows from Investing Activities, Continuing (fac:NetCashFlowsFromInvestingActivitiesContinuing).", 
  "ComputableConcepts" : [ "fac:NetCashFlowsFromInvestingActivitiesContinuing" ], 
  "DependsOn" : [ "fac:NetCashFlowsFromInvestingActivities", "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NetCashFlowsFromInvestingActivitiesContinuing\", \"fac:NetCashFlowsFromInvestingActivities\", \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NetCashFlowsFromInvestingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesContinuing\"]\nlet $NetCashFlowsFromInvestingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivities\"]\nlet $NetCashFlowsFromInvestingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NetCashFlowsFromInvestingActivitiesContinuing) return $NetCashFlowsFromInvestingActivitiesContinuing\n  case (exists($NetCashFlowsFromInvestingActivities) and not((not(exists($NetCashFlowsFromInvestingActivities)))))\n  return\n    let $computed-value := rules:decimal-value($NetCashFlowsFromInvestingActivities) - rules:decimal-value($NetCashFlowsFromInvestingActivitiesDiscontinued)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromInvestingActivitiesContinuing\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetCashFlowsFromInvestingActivities, \"NetCashFlowsFromInvestingActivities\") || \" - \" || rules:fact-trail($NetCashFlowsFromInvestingActivitiesDiscontinued, \"NetCashFlowsFromInvestingActivitiesDiscontinued\")\n\t let $source-facts := ($NetCashFlowsFromInvestingActivitiesContinuing, $NetCashFlowsFromInvestingActivities, $NetCashFlowsFromInvestingActivitiesDiscontinued)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetCashFlowsFromInvestingActivities,\n            \"fac:NetCashFlowsFromInvestingActivitiesContinuing\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetCashFlowsFromInvestingActivities,\n          \"fac:NetCashFlowsFromInvestingActivitiesContinuing\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(NetCashFlowsFromInvestingActivities))", 
    "SourceFact" : [ "NetCashFlowsFromInvestingActivities" ], 
    "BodySrc" : "NetCashFlowsFromInvestingActivities-NetCashFlowsFromInvestingActivitiesDiscontinued"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "394a9eab-557e-4cd0-9f1d-cb45d5b6e6ae", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Net Cash Flows from Investing Activities, Discontinued", 
  "Description" : "If NetCashFlowsInvesting = NetCashFlowsInvestingContinuing then NetCashFlowsInvestingDiscontinued must be 0", 
  "ComputableConcepts" : [ "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" ], 
  "DependsOn" : [ "fac:NetCashFlowsFromInvestingActivities" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\", \"fac:NetCashFlowsFromInvestingActivities\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NetCashFlowsFromInvestingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\"]\nlet $NetCashFlowsFromInvestingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivities\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NetCashFlowsFromInvestingActivitiesDiscontinued) return $NetCashFlowsFromInvestingActivitiesDiscontinued\n  case (exists($NetCashFlowsFromInvestingActivities) and ())\n  return\n    let $computed-value := 0\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\" }, Value: $computed-value }) || \" = \" || \n\t        \"0\"\n\t let $source-facts := ($NetCashFlowsFromInvestingActivitiesDiscontinued, $NetCashFlowsFromInvestingActivities)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetCashFlowsFromInvestingActivities,\n            \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetCashFlowsFromInvestingActivities,\n          \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(NetCashFlowsFromInvestingActivities)),\n           not(isblank(NetCashFlowsFromInvestingActivitiesContinuing)),\n           (NetCashFlowsFromInvestingActivitiesContinuing= NetCashFlowsFromInvestingActivities))", 
    "SourceFact" : [ "NetCashFlowsFromInvestingActivities" ], 
    "BodySrc" : "0"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "f9e2b8b9-1798-42b9-85a8-0848faa00c33", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Net Cash Flows from Investing Activities", 
  "Description" : "Rule to compute Net Cash Flows from Investing Activities (fac:NetCashFlowsFromInvestingActivities).", 
  "ComputableConcepts" : [ "fac:NetCashFlowsFromInvestingActivities" ], 
  "DependsOn" : [ "fac:NetCashFlowsFromInvestingActivitiesContinuing" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NetCashFlowsFromInvestingActivities\", \"fac:NetCashFlowsFromInvestingActivitiesContinuing\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NetCashFlowsFromInvestingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivities\"]\nlet $NetCashFlowsFromInvestingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesContinuing\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NetCashFlowsFromInvestingActivities) return $NetCashFlowsFromInvestingActivities\n  case (exists($NetCashFlowsFromInvestingActivitiesContinuing) and ())\n  return\n    let $computed-value := rules:decimal-value($NetCashFlowsFromInvestingActivitiesContinuing)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromInvestingActivities\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetCashFlowsFromInvestingActivitiesContinuing, \"NetCashFlowsFromInvestingActivitiesContinuing\")\n\t let $source-facts := ($NetCashFlowsFromInvestingActivities, $NetCashFlowsFromInvestingActivitiesContinuing)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetCashFlowsFromInvestingActivitiesContinuing,\n            \"fac:NetCashFlowsFromInvestingActivities\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetCashFlowsFromInvestingActivitiesContinuing,\n          \"fac:NetCashFlowsFromInvestingActivities\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(NetCashFlowsFromInvestingActivitiesContinuing)),\n          NetCashFlowsFromInvestingActivitiesDiscontinued=0)", 
    "SourceFact" : [ "NetCashFlowsFromInvestingActivitiesContinuing" ], 
    "BodySrc" : "NetCashFlowsFromInvestingActivitiesContinuing"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "74a3bfc8-8ac4-483a-9325-a27fcb1342d6", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Net Cash Flows from Financing Activities, Continuing", 
  "Description" : "Rule to compute Net Cash Flows from Financing Activities, Continuing (fac:NetCashFlowsFromFinancingActivitiesContinuing).", 
  "ComputableConcepts" : [ "fac:NetCashFlowsFromFinancingActivitiesContinuing" ], 
  "DependsOn" : [ "fac:NetCashFlowsFromFinancingActivities", "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NetCashFlowsFromFinancingActivitiesContinuing\", \"fac:NetCashFlowsFromFinancingActivities\", \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NetCashFlowsFromFinancingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesContinuing\"]\nlet $NetCashFlowsFromFinancingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivities\"]\nlet $NetCashFlowsFromFinancingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NetCashFlowsFromFinancingActivitiesContinuing) return $NetCashFlowsFromFinancingActivitiesContinuing\n  case (exists($NetCashFlowsFromFinancingActivities) and not((not(exists($NetCashFlowsFromFinancingActivities)))))\n  return\n    let $computed-value := rules:decimal-value($NetCashFlowsFromFinancingActivities) - rules:decimal-value($NetCashFlowsFromFinancingActivitiesDiscontinued)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromFinancingActivitiesContinuing\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetCashFlowsFromFinancingActivities, \"NetCashFlowsFromFinancingActivities\") || \" - \" || rules:fact-trail($NetCashFlowsFromFinancingActivitiesDiscontinued, \"NetCashFlowsFromFinancingActivitiesDiscontinued\")\n\t let $source-facts := ($NetCashFlowsFromFinancingActivitiesContinuing, $NetCashFlowsFromFinancingActivities, $NetCashFlowsFromFinancingActivitiesDiscontinued)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetCashFlowsFromFinancingActivities,\n            \"fac:NetCashFlowsFromFinancingActivitiesContinuing\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetCashFlowsFromFinancingActivities,\n          \"fac:NetCashFlowsFromFinancingActivitiesContinuing\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "not(isblank(NetCashFlowsFromFinancingActivities))", 
    "SourceFact" : [ "NetCashFlowsFromFinancingActivities" ], 
    "BodySrc" : "NetCashFlowsFromFinancingActivities-NetCashFlowsFromFinancingActivitiesDiscontinued"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "d9bd6917-a92a-497b-a8f1-4d8d6098fcec", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Net Cash Flows from Financing Activities, Discontinued", 
  "Description" : "RIf NetCashFlowsFinancing = NetCashFlowsFinancingContinuing then NetCashFlowsFinancingDiscontinued must be 0", 
  "ComputableConcepts" : [ "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" ], 
  "DependsOn" : [ "fac:NetCashFlowsFromFinancingActivities" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\", \"fac:NetCashFlowsFromFinancingActivities\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NetCashFlowsFromFinancingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"]\nlet $NetCashFlowsFromFinancingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivities\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NetCashFlowsFromFinancingActivitiesDiscontinued) return $NetCashFlowsFromFinancingActivitiesDiscontinued\n  case (exists($NetCashFlowsFromFinancingActivities) and ())\n  return\n    let $computed-value := 0\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\" }, Value: $computed-value }) || \" = \" || \n\t        \"0\"\n\t let $source-facts := ($NetCashFlowsFromFinancingActivitiesDiscontinued, $NetCashFlowsFromFinancingActivities)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetCashFlowsFromFinancingActivities,\n            \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetCashFlowsFromFinancingActivities,\n          \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(NetCashFlowsFromInvestingActivities)),\n           not(isblank(NetCashFlowsFromInvestingActivitiesContinuing)),\n           (NetCashFlowsFromInvestingActivitiesContinuing= NetCashFlowsFromInvestingActivities))", 
    "SourceFact" : [ "NetCashFlowsFromFinancingActivities" ], 
    "BodySrc" : "0"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "c4cc5336-76fa-430b-8f60-c14a507bbaaa", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Net Cash Flows from Operating Activities", 
  "Description" : "Rule to compute Net Cash Flows from Operating Activities (fac:NetCashFlowsFromOperatingActivities).", 
  "ComputableConcepts" : [ "fac:NetCashFlowsFromOperatingActivities" ], 
  "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivitiesContinuing" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NetCashFlowsFromOperatingActivities\", \"fac:NetCashFlowsFromOperatingActivitiesContinuing\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NetCashFlowsFromOperatingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivities\"]\nlet $NetCashFlowsFromOperatingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesContinuing\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NetCashFlowsFromOperatingActivities) return $NetCashFlowsFromOperatingActivities\n  case (exists($NetCashFlowsFromOperatingActivitiesContinuing) and ())\n  return\n    let $computed-value := rules:decimal-value($NetCashFlowsFromOperatingActivitiesContinuing)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromOperatingActivities\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetCashFlowsFromOperatingActivitiesContinuing, \"NetCashFlowsFromOperatingActivitiesContinuing\")\n\t let $source-facts := ($NetCashFlowsFromOperatingActivities, $NetCashFlowsFromOperatingActivitiesContinuing)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetCashFlowsFromOperatingActivitiesContinuing,\n            \"fac:NetCashFlowsFromOperatingActivities\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetCashFlowsFromOperatingActivitiesContinuing,\n          \"fac:NetCashFlowsFromOperatingActivities\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(NetCashFlowsFromOperatingActivitiesContinuing)), NetCashFlowsFromOperatingActivitiesDiscontinued=0)", 
    "SourceFact" : [ "NetCashFlowsFromOperatingActivitiesContinuing" ], 
    "BodySrc" : "NetCashFlowsFromOperatingActivitiesContinuing"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "d7c2ba1a-141f-4035-877b-e4c149478da8", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Net Cash Flows, Continuing", 
  "Description" : "Rule to compute Net Cash Flows, Continuing (fac:NetCashFlowsContinuing).", 
  "ComputableConcepts" : [ "fac:NetCashFlowsContinuing" ], 
  "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivitiesContinuing", "fac:NetCashFlowsFromInvestingActivitiesContinuing", "fac:NetCashFlowsFromFinancingActivitiesContinuing" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NetCashFlowsContinuing\", \"fac:NetCashFlowsFromOperatingActivitiesContinuing\", \"fac:NetCashFlowsFromInvestingActivitiesContinuing\", \"fac:NetCashFlowsFromFinancingActivitiesContinuing\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NetCashFlowsContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsContinuing\"]\nlet $NetCashFlowsFromOperatingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesContinuing\"]\nlet $NetCashFlowsFromInvestingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesContinuing\"]\nlet $NetCashFlowsFromFinancingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesContinuing\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NetCashFlowsContinuing) return $NetCashFlowsContinuing\n  case (exists($NetCashFlowsFromOperatingActivitiesContinuing) and ())\n  return\n    let $computed-value := rules:decimal-value($NetCashFlowsFromOperatingActivitiesContinuing) + rules:decimal-value($NetCashFlowsFromInvestingActivitiesContinuing) + rules:decimal-value($NetCashFlowsFromFinancingActivitiesContinuing)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NetCashFlowsContinuing\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetCashFlowsFromOperatingActivitiesContinuing, \"NetCashFlowsFromOperatingActivitiesContinuing\") || \" + \" || rules:fact-trail($NetCashFlowsFromInvestingActivitiesContinuing, \"NetCashFlowsFromInvestingActivitiesContinuing\") || \" + \" || rules:fact-trail($NetCashFlowsFromFinancingActivitiesContinuing, \"NetCashFlowsFromFinancingActivitiesContinuing\")\n\t let $source-facts := ($NetCashFlowsContinuing, $NetCashFlowsFromOperatingActivitiesContinuing, $NetCashFlowsFromInvestingActivitiesContinuing, $NetCashFlowsFromFinancingActivitiesContinuing)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetCashFlowsFromOperatingActivitiesContinuing,\n            \"fac:NetCashFlowsContinuing\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetCashFlowsFromOperatingActivitiesContinuing,\n          \"fac:NetCashFlowsContinuing\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(NetCashFlowsFromOperatingActivitiesContinuing)), not(isblank(NetCashFlowsFromInvestingActivitiesContinuing)), \n     not(isblank(NetCashFlowsFromFinancingActivitiesContinuing)) )", 
    "SourceFact" : [ "NetCashFlowsFromOperatingActivitiesContinuing" ], 
    "BodySrc" : "NetCashFlowsFromOperatingActivitiesContinuing+NetCashFlowsFromInvestingActivitiesContinuing+NetCashFlowsFromFinancingActivitiesContinuing"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "260e6e0f-e6f4-48d2-8361-75cbfe04fe75", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Net Cash Flows, Discontinued", 
  "Description" : "Rule to compute Net Cash Flows, Discontinued (fac:NetCashFlowsDiscontinued).", 
  "ComputableConcepts" : [ "fac:NetCashFlowsDiscontinued" ], 
  "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivitiesDiscontinued", "fac:NetCashFlowsFromInvestingActivitiesDiscontinued", "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NetCashFlowsDiscontinued\", \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\", \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\", \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NetCashFlowsDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsDiscontinued\"]\nlet $NetCashFlowsFromOperatingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivitiesDiscontinued\"]\nlet $NetCashFlowsFromInvestingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivitiesDiscontinued\"]\nlet $NetCashFlowsFromFinancingActivitiesDiscontinued as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesDiscontinued\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NetCashFlowsDiscontinued) return $NetCashFlowsDiscontinued\n  case (exists($NetCashFlowsFromOperatingActivitiesDiscontinued) and ())\n  return\n    let $computed-value := rules:decimal-value($NetCashFlowsFromOperatingActivitiesDiscontinued) + rules:decimal-value($NetCashFlowsFromInvestingActivitiesDiscontinued) + rules:decimal-value($NetCashFlowsFromFinancingActivitiesDiscontinued)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NetCashFlowsDiscontinued\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetCashFlowsFromOperatingActivitiesDiscontinued, \"NetCashFlowsFromOperatingActivitiesDiscontinued\") || \" + \" || rules:fact-trail($NetCashFlowsFromInvestingActivitiesDiscontinued, \"NetCashFlowsFromInvestingActivitiesDiscontinued\") || \" + \" || rules:fact-trail($NetCashFlowsFromFinancingActivitiesDiscontinued, \"NetCashFlowsFromFinancingActivitiesDiscontinued\")\n\t let $source-facts := ($NetCashFlowsDiscontinued, $NetCashFlowsFromOperatingActivitiesDiscontinued, $NetCashFlowsFromInvestingActivitiesDiscontinued, $NetCashFlowsFromFinancingActivitiesDiscontinued)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetCashFlowsFromOperatingActivitiesDiscontinued,\n            \"fac:NetCashFlowsDiscontinued\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetCashFlowsFromOperatingActivitiesDiscontinued,\n          \"fac:NetCashFlowsDiscontinued\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(NetCashFlowsFromOperatingActivitiesDiscontinued)), not(isblank(NetCashFlowsFromInvestingActivitiesDiscontinued)), \n     not(isblank(NetCashFlowsFromFinancingActivitiesDiscontinued)) )", 
    "SourceFact" : [ "NetCashFlowsFromOperatingActivitiesDiscontinued" ], 
    "BodySrc" : "NetCashFlowsFromOperatingActivitiesDiscontinued+NetCashFlowsFromInvestingActivitiesDiscontinued+NetCashFlowsFromFinancingActivitiesDiscontinued"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "290f2141-89a1-4854-89f0-5511ffd1558b", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Net Cash Flows", 
  "Description" : "Rule to compute Net Cash Flows (fac:NetCashFlows).", 
  "ComputableConcepts" : [ "fac:NetCashFlows" ], 
  "DependsOn" : [ "fac:NetCashFlowsFromOperatingActivities", "fac:NetCashFlowsFromInvestingActivities", "fac:NetCashFlowsFromFinancingActivities", "fac:ExchangeGainsLosses" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NetCashFlows\", \"fac:NetCashFlowsFromOperatingActivities\", \"fac:NetCashFlowsFromInvestingActivities\", \"fac:NetCashFlowsFromFinancingActivities\", \"fac:ExchangeGainsLosses\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NetCashFlows as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlows\"]\nlet $NetCashFlowsFromOperatingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromOperatingActivities\"]\nlet $NetCashFlowsFromInvestingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromInvestingActivities\"]\nlet $NetCashFlowsFromFinancingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivities\"]\nlet $ExchangeGainsLosses as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:ExchangeGainsLosses\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NetCashFlows) return $NetCashFlows\n  case (exists($NetCashFlowsFromOperatingActivities) and ())\n  return\n    let $computed-value := rules:decimal-value($NetCashFlowsFromOperatingActivities) + rules:decimal-value($NetCashFlowsFromInvestingActivities) + rules:decimal-value($NetCashFlowsFromFinancingActivities) + rules:decimal-value($ExchangeGainsLosses)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NetCashFlows\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetCashFlowsFromOperatingActivities, \"NetCashFlowsFromOperatingActivities\") || \" + \" || rules:fact-trail($NetCashFlowsFromInvestingActivities, \"NetCashFlowsFromInvestingActivities\") || \" + \" || rules:fact-trail($NetCashFlowsFromFinancingActivities, \"NetCashFlowsFromFinancingActivities\") || \" + \" || rules:fact-trail($ExchangeGainsLosses, \"ExchangeGainsLosses\")\n\t let $source-facts := ($NetCashFlows, $NetCashFlowsFromOperatingActivities, $NetCashFlowsFromInvestingActivities, $NetCashFlowsFromFinancingActivities, $ExchangeGainsLosses)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetCashFlowsFromOperatingActivities,\n            \"fac:NetCashFlows\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetCashFlowsFromOperatingActivities,\n          \"fac:NetCashFlows\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(NetCashFlowsFromOperatingActivities)), not(isblank(NetCashFlowsFromInvestingActivities)), \n     not(isblank(NetCashFlowsFromFinancingActivities)), not(isblank(ExchangeGainsLosses)))", 
    "SourceFact" : [ "NetCashFlowsFromOperatingActivities" ], 
    "BodySrc" : "NetCashFlowsFromOperatingActivities+NetCashFlowsFromInvestingActivities+NetCashFlowsFromFinancingActivities+ExchangeGainsLosses"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "f4766685-ab66-4ef8-b16e-46d65ccaaaf8", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Sustainable Growth Rate (SGR)", 
  "Description" : "Rule to compute Sustainable Growth Rate (SGR) (fac:SustainableGrowthRate).", 
  "ComputableConcepts" : [ "fac:SustainableGrowthRate" ], 
  "DependsOn" : [ "fac:NetIncomeLoss", "fac:Revenues", "fac:Assets", "fac:Equity" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:SustainableGrowthRate\", \"fac:NetIncomeLoss\", \"fac:Revenues\", \"fac:Assets\", \"fac:Equity\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $SustainableGrowthRate as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:SustainableGrowthRate\"]\nlet $NetIncomeLoss as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetIncomeLoss\"]\nlet $Revenues as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Revenues\"]\nlet $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"]\nlet $Equity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Equity\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($SustainableGrowthRate) return $SustainableGrowthRate\n  case (exists($Assets) and ())\n  return\n    let $computed-value := ((rules:decimal-value($NetIncomeLoss) div rules:decimal-value($Revenues)) * (1 + (rules:decimal-value($Assets) - rules:decimal-value($Equity)) div rules:decimal-value($Equity))) div ((1 div (rules:decimal-value($Revenues) div rules:decimal-value($Assets))) - ((rules:decimal-value($NetIncomeLoss) div rules:decimal-value($Revenues)) * (1 + (rules:decimal-value($Assets) - rules:decimal-value($Equity)) div rules:decimal-value($Equity))))\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:SustainableGrowthRate\" }, Value: $computed-value }) || \" = \" || \n\t        \" ( \" || \" ( \" || rules:fact-trail($NetIncomeLoss, \"NetIncomeLoss\") || \" div \" || rules:fact-trail($Revenues, \"Revenues\") || \" )\" || \" * \" || \" ( \" || \"1\" || \" + \" || \" ( \" || rules:fact-trail($Assets, \"Assets\") || \" - \" || rules:fact-trail($Equity, \"Equity\") || \" )\" || \" div \" || rules:fact-trail($Equity, \"Equity\") || \" )\" || \" )\" || \" div \" || \" ( \" || \" ( \" || \"1\" || \" div \" || \" ( \" || rules:fact-trail($Revenues, \"Revenues\") || \" div \" || rules:fact-trail($Assets, \"Assets\") || \" )\" || \" )\" || \" - \" || \" ( \" || \" ( \" || rules:fact-trail($NetIncomeLoss, \"NetIncomeLoss\") || \" div \" || rules:fact-trail($Revenues, \"Revenues\") || \" )\" || \" * \" || \" ( \" || \"1\" || \" + \" || \" ( \" || rules:fact-trail($Assets, \"Assets\") || \" - \" || rules:fact-trail($Equity, \"Equity\") || \" )\" || \" div \" || rules:fact-trail($Equity, \"Equity\") || \" )\" || \" )\" || \" )\"\n\t let $source-facts := ($SustainableGrowthRate, $NetIncomeLoss, $Revenues, $Assets, $Equity)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $Assets,\n            \"fac:SustainableGrowthRate\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $Assets,\n          \"fac:SustainableGrowthRate\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(Equity <> 0, Assets <>0, Revenues <>0, NetIncomeLoss <> 0)", 
    "SourceFact" : [ "Assets" ], 
    "BodySrc" : "(( NetIncomeLoss / Revenues ) * (1 + ( Assets - Equity ) / Equity ))\n  /\n  (( 1 / ( Revenues / Assets )) - (( NetIncomeLoss / Revenues ) * (1 + ( Assets - Equity ) / Equity )))"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
}, {
  "Id" : "f85598dc-58af-45c0-a2c5-94bf4b1bd277", 
  "OriginalLanguage" : "SpreadsheetFormula", 
  "Type" : "xbrl28:formula", 
  "Label" : "Net Cash Flows from Financing Activities", 
  "Description" : "Rule to compute Net Cash Flows from Financing Activities (fac:NetCashFlowsFromFinancingActivities).", 
  "ComputableConcepts" : [ "fac:NetCashFlowsFromFinancingActivities" ], 
  "DependsOn" : [ "fac:NetCashFlowsFromFinancingActivitiesContinuing" ], 
  "Formula" : "\nfor $facts in facts:facts-for-internal((\n      \"fac:NetCashFlowsFromFinancingActivities\", \"fac:NetCashFlowsFromFinancingActivitiesContinuing\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]\ngroup by $canonical-filter-string := \n  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))\n  , $aligned-period\nlet $NetCashFlowsFromFinancingActivities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivities\"]\nlet $NetCashFlowsFromFinancingActivitiesContinuing as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NetCashFlowsFromFinancingActivitiesContinuing\"]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NetCashFlowsFromFinancingActivities) return $NetCashFlowsFromFinancingActivities\n  case (exists($NetCashFlowsFromFinancingActivitiesContinuing) and ())\n  return\n    let $computed-value := rules:decimal-value($NetCashFlowsFromFinancingActivitiesContinuing)\n    let $audit-trail-message := \n\t     rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NetCashFlowsFromFinancingActivities\" }, Value: $computed-value }) || \" = \" || \n\t        rules:fact-trail($NetCashFlowsFromFinancingActivitiesContinuing, \"NetCashFlowsFromFinancingActivitiesContinuing\")\n\t let $source-facts := ($NetCashFlowsFromFinancingActivities, $NetCashFlowsFromFinancingActivitiesContinuing)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $NetCashFlowsFromFinancingActivitiesContinuing,\n            \"fac:NetCashFlowsFromFinancingActivities\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $NetCashFlowsFromFinancingActivitiesContinuing,\n          \"fac:NetCashFlowsFromFinancingActivities\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n          $options)\n  default return ()", 
  "Formulae" : [ {
    "PrereqSrc" : "and(not(isblank(NetCashFlowsFromFinancingActivitiesContinuing)),NetCashFlowsFromFinancingActivitiesDiscontinued=0)", 
    "SourceFact" : [ "NetCashFlowsFromFinancingActivitiesContinuing" ], 
    "BodySrc" : "NetCashFlowsFromFinancingActivitiesContinuing"
  } ], 
  "AllowCrossPeriod" : true, 
  "AllowCrossBalance" : true
} ],
  "Prefix" : "fac"
}