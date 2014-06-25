let $schema := {
  "_id" : "FundamentalAccountingConcepts", 
  "Archive" : null, 
  "Label" : "Fundamental Accounting Concepts", 
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
                    "Id" : "f4be5f54-5408-4774-a24b-d9da2beeda58"
                  }, 
                  "fac:EntityCentralIndexKey" : {
                    "Name" : "fac:EntityCentralIndexKey", 
                    "Label" : "Central Index Key (CIK)", 
                    "Id" : "a6e288ed-6ece-481f-b3cf-6e1752afe892"
                  }, 
                  "fac:EntityFilerCategory" : {
                    "Name" : "fac:EntityFilerCategory", 
                    "Label" : "Entity Filer Category", 
                    "Id" : "1ba705df-66ed-43ea-be01-a415bc22d5d2"
                  }, 
                  "fac:TradingSymbol" : {
                    "Name" : "fac:TradingSymbol", 
                    "Label" : "Trading Symbol", 
                    "Id" : "12145511-a1ba-4f09-863f-def7e48787a1"
                  }, 
                  "fac:FiscalYearEnd" : {
                    "Name" : "fac:FiscalYearEnd", 
                    "Label" : "Fiscal Year End", 
                    "Id" : "098fc15f-a87b-43b6-b88b-0b9918f3225a"
                  }, 
                  "fac:FiscalYear" : {
                    "Name" : "fac:FiscalYear", 
                    "Label" : "Fiscal Year", 
                    "Id" : "5be81a10-dd13-4187-8702-d0538e516cf5"
                  }, 
                  "fac:FiscalPeriod" : {
                    "Name" : "fac:FiscalPeriod", 
                    "Label" : "Fiscal Period", 
                    "Id" : "c368fece-8db0-4c93-8a84-a6d9e98585d3"
                  }, 
                  "fac:DocumentType" : {
                    "Name" : "fac:DocumentType", 
                    "Label" : "Document Type", 
                    "Id" : "38860378-d447-4ada-a598-26c76aeee4f3"
                  }, 
                  "fac:BalanceSheetDate" : {
                    "Name" : "fac:BalanceSheetDate", 
                    "Label" : "Balance Sheet Date", 
                    "Id" : "9c66b9e8-0375-46d4-b766-025d54439eb6"
                  }, 
                  "fac:IncomeStatementStartPeriod" : {
                    "Name" : "fac:IncomeStatementStartPeriod", 
                    "Label" : "Income Statement Start of Period", 
                    "Id" : "e245aea1-306a-44f0-b25e-cdda6abf56c6"
                  }, 
                  "fac:BalanceSheetFormat" : {
                    "Name" : "fac:BalanceSheetFormat", 
                    "Label" : "Balance Sheet Format", 
                    "Id" : "f400cd22-dc45-4949-81d8-4b0230c7687b"
                  }, 
                  "fac:IncomeStatementFormat" : {
                    "Name" : "fac:IncomeStatementFormat", 
                    "Label" : "Income Statement Format", 
                    "Id" : "d0617a9a-d72d-431a-8cfc-4988fbfb7170"
                  }, 
                  "fac:NatureOfOperations" : {
                    "Name" : "fac:NatureOfOperations", 
                    "Label" : "Nature of Operations", 
                    "Id" : "c3c5def1-f421-429d-97d4-fad114b5bbc9"
                  }
                }, 
                "Id" : "fcd3e56f-4097-4137-8bfb-be6e14dc97ef"
              }, 
              "fac:BalanceSheetHierarchy" : {
                "Name" : "fac:BalanceSheetHierarchy", 
                "Label" : "Balance Sheet [Hierarchy]", 
                "To" : {
                  "fac:CurrentAssets" : {
                    "Name" : "fac:CurrentAssets", 
                    "Label" : "Current Assets", 
                    "Order" : 1, 
                    "Id" : "f83f1c3b-ced6-46bc-b042-a6fc7ec0e391"
                  }, 
                  "fac:NoncurrentAssets" : {
                    "Name" : "fac:NoncurrentAssets", 
                    "Label" : "Noncurrent Assets", 
                    "Order" : 2, 
                    "Id" : "c2fd1f69-6a63-4679-859c-201da0810af7"
                  }, 
                  "fac:Assets" : {
                    "Name" : "fac:Assets", 
                    "Label" : "Assets", 
                    "Order" : 3, 
                    "Id" : "d4776eb9-c0db-4d65-a566-72b7d07a411b"
                  }, 
                  "fac:CurrentLiabilities" : {
                    "Name" : "fac:CurrentLiabilities", 
                    "Label" : "Current Liabilities", 
                    "Order" : 4, 
                    "Id" : "b9833f0b-0788-40e6-b85d-56b4172ec1c1"
                  }, 
                  "fac:NoncurrentLiabilities" : {
                    "Name" : "fac:NoncurrentLiabilities", 
                    "Label" : "Noncurrent Liabilities", 
                    "Order" : 5, 
                    "Id" : "56836396-d5eb-4a70-978f-f6cfbf5f860e"
                  }, 
                  "fac:Liabilities" : {
                    "Name" : "fac:Liabilities", 
                    "Label" : "Liabilities", 
                    "Order" : 6, 
                    "Id" : "83603bc4-34a7-4c2a-9480-22104d96a4ee"
                  }, 
                  "fac:CommitmentsAndContingencies" : {
                    "Name" : "fac:CommitmentsAndContingencies", 
                    "Label" : "Commitments and Contingencies", 
                    "Order" : 7, 
                    "Id" : "ff91bfda-9577-4da6-acad-be1cd540bf23"
                  }, 
                  "fac:TemporaryEquity" : {
                    "Name" : "fac:TemporaryEquity", 
                    "Label" : "Temporary Equity", 
                    "Order" : 8, 
                    "Id" : "fbc5ed87-41b6-4ae8-8063-65c28b333600"
                  }, 
                  "fac:RedeemableNoncontrollingInterest" : {
                    "Name" : "fac:RedeemableNoncontrollingInterest", 
                    "Label" : "Redeemable Noncontrolling Interest", 
                    "Order" : 9, 
                    "Id" : "7e393061-d3f3-418a-a7c8-de99ed15a91c"
                  }, 
                  "fac:EquityAttributableToParent" : {
                    "Name" : "fac:EquityAttributableToParent", 
                    "Label" : "Equity Attributable to Parent", 
                    "Order" : 10, 
                    "Id" : "4c271348-0c8e-4c9e-82cc-fe55ce1a863c"
                  }, 
                  "fac:EquityAttributableToNoncontrollingInterest" : {
                    "Name" : "fac:EquityAttributableToNoncontrollingInterest", 
                    "Label" : "Equity Attributable to Noncontrolling Interest", 
                    "Order" : 11, 
                    "Id" : "efad8ed8-3cc1-405e-9496-89deeef709c6"
                  }, 
                  "fac:Equity" : {
                    "Name" : "fac:Equity", 
                    "Label" : "Equity", 
                    "Order" : 12, 
                    "Id" : "6e11b74a-dd1c-4420-9306-2ad5a110f50e"
                  }, 
                  "fac:LiabilitiesAndEquity" : {
                    "Name" : "fac:LiabilitiesAndEquity", 
                    "Label" : "Liabilities and Equity", 
                    "Order" : 13, 
                    "Id" : "a8b02658-6ac8-4525-a1fc-4936d80532c3"
                  }
                }, 
                "Id" : "c5d3637f-a64f-4e1c-b14d-1206239a3103"
              }, 
              "fac:IncomeStatementHierarchy" : {
                "Name" : "fac:IncomeStatementHierarchy", 
                "Label" : "Income Statement [Hierarchy]", 
                "To" : {
                  "fac:Revenues" : {
                    "Name" : "fac:Revenues", 
                    "Label" : "Revenues", 
                    "Order" : 1, 
                    "Id" : "058fe03d-26ba-43af-986d-43250b65f8c7"
                  }, 
                  "fac:CostOfRevenue" : {
                    "Name" : "fac:CostOfRevenue", 
                    "Label" : "Cost of Revenues", 
                    "Order" : 2, 
                    "Id" : "69e64900-dd7e-4f46-8917-c742d5fc6ba8"
                  }, 
                  "fac:GrossProfit" : {
                    "Name" : "fac:GrossProfit", 
                    "Label" : "Gross Profit", 
                    "Order" : 3, 
                    "Id" : "bf0361a3-191b-4595-b7a2-21743bd29fc1"
                  }, 
                  "fac:OperatingExpenses" : {
                    "Name" : "fac:OperatingExpenses", 
                    "Label" : "Operating Expenses", 
                    "Order" : 4, 
                    "Id" : "a5472d6f-5b64-424b-b659-57e604ce58f8"
                  }, 
                  "fac:CostsAndExpenses" : {
                    "Name" : "fac:CostsAndExpenses", 
                    "Label" : "Costs and Expenses", 
                    "Order" : 5, 
                    "Id" : "65932a15-80a4-4be4-bc8c-16dca2506ecb"
                  }, 
                  "fac:OtherOperatingIncomeExpenses" : {
                    "Name" : "fac:OtherOperatingIncomeExpenses", 
                    "Label" : "Other Operating Income (Expenses)", 
                    "Order" : 6, 
                    "Id" : "fb3b15c5-ec41-4925-a593-6cde62aed090"
                  }, 
                  "fac:OperatingIncomeLoss" : {
                    "Name" : "fac:OperatingIncomeLoss", 
                    "Label" : "Operating Income (Loss)", 
                    "Order" : 7, 
                    "Id" : "729d0741-2bde-440c-a6a1-9524b834d72a"
                  }, 
                  "fac:NonoperatingIncomeLoss" : {
                    "Name" : "fac:NonoperatingIncomeLoss", 
                    "Label" : "Nonoperating Income (Loss)", 
                    "Order" : 8, 
                    "Id" : "72b6ad8d-71e1-4d70-94e4-548f23f07755"
                  }, 
                  "fac:InterestAndDebtExpense" : {
                    "Name" : "fac:InterestAndDebtExpense", 
                    "Label" : "Interest and Debt Expense", 
                    "Order" : 9, 
                    "Id" : "51193787-cf31-456b-a264-0f1408edd186"
                  }, 
                  "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense" : {
                    "Name" : "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                    "Label" : "Nonoperating Income (Loss) + Interest and Debt Expense", 
                    "Order" : 10, 
                    "Id" : "122989c5-8019-435a-a862-eb321c0a05ca"
                  }, 
                  "fac:IncomeBeforeEquityMethodInvestments" : {
                    "Name" : "fac:IncomeBeforeEquityMethodInvestments", 
                    "Label" : "Income (Loss) Before Equity Method Investments", 
                    "Order" : 11, 
                    "Id" : "7e9d8fff-c9a9-45da-ba71-5dce2d41b9e4"
                  }, 
                  "fac:IncomeLossFromEquityMethodInvestments" : {
                    "Name" : "fac:IncomeLossFromEquityMethodInvestments", 
                    "Label" : "Income (Loss) from Equity Method Investments", 
                    "Order" : 12, 
                    "Id" : "d185a05d-1d8f-41e4-b29e-8185b0c7072b"
                  }, 
                  "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments" : {
                    "Name" : "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments", 
                    "Label" : "Nonoperating Income (Loss) + Interest and Debt Expense + Income (Loss) from Equity Method Investments", 
                    "Order" : 13, 
                    "Id" : "d29f7758-1552-487a-935e-d02fe1f62a7c"
                  }, 
                  "fac:IncomeLossFromContinuingOperationsBeforeTax" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTax", 
                    "Label" : "Income (Loss) from Continuing Operations Before Tax", 
                    "Order" : 14, 
                    "Id" : "57948c51-e125-46b2-9185-64a6922a5b28"
                  }, 
                  "fac:IncomeTaxExpenseBenefit" : {
                    "Name" : "fac:IncomeTaxExpenseBenefit", 
                    "Label" : "Income Tax Expense (Benefit)", 
                    "Order" : 15, 
                    "Id" : "7f70a3a1-fbd1-4b52-886f-3fed7af5aaea"
                  }, 
                  "fac:IncomeLossFromContinuingOperationsAfterTax" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsAfterTax", 
                    "Label" : "Income (Loss) from Continuing Operations After Tax", 
                    "Order" : 16, 
                    "Id" : "312f0750-2c5d-4d01-8a62-9892979d7bcd"
                  }, 
                  "fac:IncomeLossFromDiscontinuedOperationsNetTax" : {
                    "Name" : "fac:IncomeLossFromDiscontinuedOperationsNetTax", 
                    "Label" : "Income (Loss) from Discontinued Operations, Net of Tax", 
                    "Order" : 17, 
                    "Id" : "fc004de5-e948-4901-bd74-4ddaea47aeb6"
                  }, 
                  "fac:ExtraordinaryItemsIncomeExpenseNetTax" : {
                    "Name" : "fac:ExtraordinaryItemsIncomeExpenseNetTax", 
                    "Label" : "Extraordinary Items of Income (Expense), Net of Tax", 
                    "Order" : 18, 
                    "Id" : "908a5ece-3d76-4fe5-b52f-01e35f0a04a6"
                  }, 
                  "fac:NetIncomeLoss" : {
                    "Name" : "fac:NetIncomeLoss", 
                    "Label" : "Net Income (Loss)", 
                    "Order" : 19, 
                    "Id" : "49e4abb8-592a-426e-b387-355b2c586373"
                  }, 
                  "fac:NetIncomeAttributableToParent" : {
                    "Name" : "fac:NetIncomeAttributableToParent", 
                    "Label" : "Net Income Attributable to Parent", 
                    "Order" : 20, 
                    "Id" : "49c5cc67-4a4f-4323-8053-a9ddc5dc5d5d"
                  }, 
                  "fac:NetIncomeAttributableToNoncontrollingInterest" : {
                    "Name" : "fac:NetIncomeAttributableToNoncontrollingInterest", 
                    "Label" : "Net Income Attributable to Noncontrolling Interest", 
                    "Order" : 21, 
                    "Id" : "52a5c543-0b67-4bb9-913e-d93a061cf550"
                  }, 
                  "fac:ResearchAndDevelopment" : {
                    "Name" : "fac:ResearchAndDevelopment", 
                    "Label" : "Research and Development", 
                    "Order" : 22, 
                    "Id" : "b9f17d10-0c33-4d66-bd83-863ede13bec7"
                  }, 
                  "fac:PreferredStockDividendsAndOtherAdjustments" : {
                    "Name" : "fac:PreferredStockDividendsAndOtherAdjustments", 
                    "Label" : "Preferred Stock Dividends and Other Adjustments", 
                    "Order" : 23, 
                    "Id" : "e2fe7865-75b1-4070-b4a2-0a961aba71eb"
                  }, 
                  "fac:NetIncomeLossAvailableToCommonStockholdersBasic" : {
                    "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
                    "Label" : "Net Income (Loss) Available to Common Stockholders, Basic", 
                    "Order" : 24, 
                    "Id" : "eda837ce-a122-4d6b-9e1e-8325abc902f4"
                  }
                }, 
                "Id" : "0893fe9b-7377-4e6c-a0b4-d96779bf2ca3"
              }, 
              "fac:StatementComprehensiveIncomeHierarchy" : {
                "Name" : "fac:StatementComprehensiveIncomeHierarchy", 
                "Label" : "Statement of Comprehensive Income [Hierarchy]", 
                "To" : {
                  "fac:NetIncomeLoss" : {
                    "Name" : "fac:NetIncomeLoss", 
                    "Label" : "Net Income (Loss)", 
                    "Order" : 1, 
                    "Id" : "15a1acc5-4de3-4ea3-aa24-5830a27a53ae"
                  }, 
                  "fac:OtherComprehensiveIncomeLoss" : {
                    "Name" : "fac:OtherComprehensiveIncomeLoss", 
                    "Label" : "Other Comprehensive Income (Loss)", 
                    "Order" : 2, 
                    "Id" : "82510463-e9ac-49b2-925d-0b87abca1d18"
                  }, 
                  "fac:ComprehensiveIncomeLoss" : {
                    "Name" : "fac:ComprehensiveIncomeLoss", 
                    "Label" : "Comprehensive Income (Loss)", 
                    "Order" : 3, 
                    "Id" : "95625993-7307-4ccd-b111-a1725ddfbb77"
                  }, 
                  "fac:ComprehensiveIncomeLossAttributableToParent" : {
                    "Name" : "fac:ComprehensiveIncomeLossAttributableToParent", 
                    "Label" : "Comprehensive Income (Loss) Attributable to Parent", 
                    "Order" : 4, 
                    "Id" : "015ed59a-2887-4b2f-b6c1-33d1dfdb6c33"
                  }, 
                  "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest" : {
                    "Name" : "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                    "Label" : "Comprehensive Income (Loss) Attributable to Noncontrolling Interest", 
                    "Order" : 5, 
                    "Id" : "1b7fc0ef-d348-4857-9733-a731a9979462"
                  }
                }, 
                "Id" : "b386599f-eab2-4936-95b1-72a732829053"
              }, 
              "fac:CashFlowStatementHierarchy" : {
                "Name" : "fac:CashFlowStatementHierarchy", 
                "Label" : "Cash Flow Statement [Hierarchy]", 
                "To" : {
                  "fac:NetCashFlowsFromOperatingActivitiesContinuing" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivitiesContinuing", 
                    "Label" : "Net Cash Flows from Operating Activities, Continuing", 
                    "Order" : 1, 
                    "Id" : "37c3d5c1-36be-4f0c-9a45-2175569f979b"
                  }, 
                  "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flows from Operating Activities, Discontinued", 
                    "Order" : 2, 
                    "Id" : "31e7d4ba-50e5-4331-97d4-0603dc56be9e"
                  }, 
                  "fac:NetCashFlowsFromOperatingActivities" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivities", 
                    "Label" : "Net Cash Flows from Operating Activities", 
                    "Order" : 3, 
                    "Id" : "307140ba-6ff0-496f-8f2e-1145f35fd007"
                  }, 
                  "fac:NetCashFlowsFromInvestingActivitiesContinuing" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivitiesContinuing", 
                    "Label" : "Net Cash Flows from Investing Activities, Continuing", 
                    "Order" : 4, 
                    "Id" : "d54c3666-1d9c-4bbe-946f-1c5d7d64ed12"
                  }, 
                  "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flows from Investing Activities, Discontinued", 
                    "Order" : 5, 
                    "Id" : "ca2297a5-f501-4a06-843e-ddfcd5e631e3"
                  }, 
                  "fac:NetCashFlowsFromInvestingActivities" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivities", 
                    "Label" : "Net Cash Flows from Investing Activities", 
                    "Order" : 6, 
                    "Id" : "2c061ae6-a4af-4f20-928b-dcce46fa7482"
                  }, 
                  "fac:NetCashFlowsFromFinancingActivitiesContinuing" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivitiesContinuing", 
                    "Label" : "Net Cash Flows from Financing Activities, Continuing", 
                    "Order" : 7, 
                    "Id" : "0fb42248-d2ed-4ed7-99ed-2d928709b44c"
                  }, 
                  "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flows from Financing Activities, Discontinued", 
                    "Order" : 8, 
                    "Id" : "917c7548-826a-438c-b5cc-782b54b0a37e"
                  }, 
                  "fac:NetCashFlowsFromFinancingActivities" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivities", 
                    "Label" : "Net Cash Flows from Financing Activities", 
                    "Order" : 9, 
                    "Id" : "efc534d2-1eee-46f3-bb99-48f55d3565c2"
                  }, 
                  "fac:NetCashFlowsContinuing" : {
                    "Name" : "fac:NetCashFlowsContinuing", 
                    "Label" : "Net Cash Flows, Continuing", 
                    "Order" : 10, 
                    "Id" : "bff6cca1-833f-47a0-9da6-0cb0f58d1267"
                  }, 
                  "fac:NetCashFlowsDiscontinued" : {
                    "Name" : "fac:NetCashFlowsDiscontinued", 
                    "Label" : "Net Cash Flows, Discontinued", 
                    "Order" : 11, 
                    "Id" : "b00e943b-557b-4626-a867-775c7381e568"
                  }, 
                  "fac:ExchangeGainsLosses" : {
                    "Name" : "fac:ExchangeGainsLosses", 
                    "Label" : "Exchange Gains (Losses)", 
                    "Order" : 12, 
                    "Id" : "0dc48d94-a2ed-4484-800d-f20d8604919b"
                  }, 
                  "fac:NetCashFlows" : {
                    "Name" : "fac:NetCashFlows", 
                    "Label" : "Net Cash Flows", 
                    "Order" : 13, 
                    "Id" : "31a0812d-074e-44f8-a7cc-b8015cb0d796"
                  }
                }, 
                "Id" : "4176514e-16e0-4979-8c81-e9213e32c521"
              }, 
              "fac:KeyRatiosHierarchy" : {
                "Name" : "fac:KeyRatiosHierarchy", 
                "Label" : "Key Ratios [Hierarchy]", 
                "To" : {
                  "fac:ReturnOnEquity" : {
                    "Name" : "fac:ReturnOnEquity", 
                    "Label" : "Return on Equity (ROE)", 
                    "Order" : 1, 
                    "Id" : "dc8f24ff-baab-426c-a43e-d7ce88374b5c"
                  }, 
                  "fac:ReturnOnAssets" : {
                    "Name" : "fac:ReturnOnAssets", 
                    "Label" : "Return on Assets (ROA)", 
                    "Order" : 2, 
                    "Id" : "0e910413-f449-46a8-9185-87efd28ae1ea"
                  }, 
                  "fac:ReturnOnSalesROS" : {
                    "Name" : "fac:ReturnOnSalesROS", 
                    "Label" : "Return on Sales (ROS)", 
                    "Order" : 3, 
                    "Id" : "9a0258fe-08e5-4764-81d5-4b44c5be5dac"
                  }, 
                  "fac:SustainableGrowthRate" : {
                    "Name" : "fac:SustainableGrowthRate", 
                    "Label" : "Sustainable Growth Rate (SGR)", 
                    "Order" : 4, 
                    "Id" : "21274aae-c2c5-40e2-9f7a-7a63f4b5c9bd"
                  }
                }, 
                "Id" : "489be8de-408a-4a86-a3f1-0712d4be9040"
              }, 
              "fac:ValidationStatistics" : {
                "Name" : "fac:ValidationStatistics", 
                "Label" : "Validation Rule Statistics [Hierarchy]", 
                "To" : {
                  "fac:PassedValidations" : {
                    "Name" : "fac:PassedValidations", 
                    "Label" : "Passed Validations", 
                    "Id" : "78817016-47cf-4e2e-a56e-e748aa4fef02"
                  }, 
                  "fac:FailedValidations" : {
                    "Name" : "fac:FailedValidations", 
                    "Label" : "Failing Validations", 
                    "Id" : "58ac34db-f38f-40ee-8ef9-3c171f86055e"
                  }, 
                  "fac:NotApplicableValidations" : {
                    "Name" : "fac:NotApplicableValidations", 
                    "Label" : "Skipped Validations (unmet preconditions)", 
                    "Id" : "c68fafc4-3da1-4b97-95b2-2c6ef58f0bf2"
                  }
                }, 
                "Id" : "ab14acda-3d44-4b07-8859-326499b78084"
              }, 
              "fac:Validations" : {
                "Name" : "fac:Validations", 
                "Label" : "Fact Validation Rule Results [Hierarchy]", 
                "To" : {
                  "fac:EquityValidation" : {
                    "Name" : "fac:EquityValidation", 
                    "Label" : "Equity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest", 
                    "Id" : "c1356123-12ad-48a8-9f37-43eae046659f"
                  }, 
                  "fac:Assets2Validation" : {
                    "Name" : "fac:Assets2Validation", 
                    "Label" : "Assets = LiabilitiesAndEquity", 
                    "Id" : "594e23de-9aaa-49d4-9a2c-42e90135bb6e"
                  }, 
                  "fac:AssetsValidation" : {
                    "Name" : "fac:AssetsValidation", 
                    "Label" : "Assets = CurrentAssets + NoncurrentAssets", 
                    "Id" : "196cd99f-b930-444f-a400-f8993662944c"
                  }, 
                  "fac:LiabilitiesValidation" : {
                    "Name" : "fac:LiabilitiesValidation", 
                    "Label" : "Liabilities = CurrentLiabilities + NoncurrentLiabilities", 
                    "Id" : "1ae16639-1e8e-4c3d-a185-9a8baead455d"
                  }, 
                  "fac:LiabilitiesAndEquityValidation" : {
                    "Name" : "fac:LiabilitiesAndEquityValidation", 
                    "Label" : "LiabilitiesAndEquity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest", 
                    "Id" : "97974d55-8e4e-4c41-937c-136065fd731c"
                  }, 
                  "fac:GrossProfitValidation" : {
                    "Name" : "fac:GrossProfitValidation", 
                    "Label" : "GrossProfit = Revenues - CostOfRevenue", 
                    "Id" : "62f299f6-5993-40bc-be94-20c441920a2b"
                  }, 
                  "fac:OperatingIncomeLossValidation" : {
                    "Name" : "fac:OperatingIncomeLossValidation", 
                    "Label" : "OperatingIncomeLoss = GrossProfit - OperatingExpenses + OtherOperatingIncomeExpenses", 
                    "Id" : "6f6804c0-893e-47e2-b266-7c06a6fe4f01"
                  }, 
                  "fac:IncomeBeforeEquityMethodInvestmentsValidation" : {
                    "Name" : "fac:IncomeBeforeEquityMethodInvestmentsValidation", 
                    "Label" : "IncomeBeforeEquityMethodInvestments = OperatingIncomeLoss + NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                    "Id" : "6a1f25dd-2b76-4e86-ae6c-b132a9cb9d26"
                  }, 
                  "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", 
                    "Label" : "IncomeLossFromContinuingOperationsBeforeTax = IncomeBeforeEquityMethodInvestments + IncomeLossFromEquityMethodInvestments", 
                    "Id" : "aed490cd-ba39-4461-bc5d-97540834679f"
                  }, 
                  "fac:IncomeLossFromContinuingOperationsAfterTaxValidation" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", 
                    "Label" : "IncomeLossFromContinuingOperationsAfterTax = IncomeLossFromContinuingOperationsBeforeTax - IncomeTaxExpenseBenefit", 
                    "Id" : "8227dc16-1229-4712-9dbd-9d664bc70e95"
                  }, 
                  "fac:NetIncomeLossValidation" : {
                    "Name" : "fac:NetIncomeLossValidation", 
                    "Label" : "NetIncomeLoss = IncomeLossFromContinuingOperationsAfterTax + IncomeLossFromDiscontinuedOperationsNetTax + ExtraordinaryItemsIncomeExpenseNetTax", 
                    "Id" : "a95bec4a-4f98-4ede-8027-7eee52068796"
                  }, 
                  "fac:NetIncomeLoss2Validation" : {
                    "Name" : "fac:NetIncomeLoss2Validation", 
                    "Label" : "NetIncomeLoss = NetIncomeAttributableToParent + NetIncomeAttributableToNoncontrollingInterest", 
                    "Id" : "8b71cc8c-8483-40cf-97e1-04c4801d2d44"
                  }, 
                  "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation" : {
                    "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", 
                    "Label" : "NetIncomeLossAvailableToCommonStockholdersBasic = NetIncomeAttributableToParent - PreferredStockDividendsAndOtherAdjustments", 
                    "Id" : "616593b9-856f-432b-8764-cce48eea164a"
                  }, 
                  "fac:ComprehensiveIncomeLossValidation" : {
                    "Name" : "fac:ComprehensiveIncomeLossValidation", 
                    "Label" : "ComprehensiveIncomeLoss = ComprehensiveIncomeLossAttributableToParent + ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                    "Id" : "2caf26f7-c305-4a6c-be47-6f437adbbd8e"
                  }, 
                  "fac:ComprehensiveIncomeLoss2Validation" : {
                    "Name" : "fac:ComprehensiveIncomeLoss2Validation", 
                    "Label" : "ComprehensiveIncome = NetIncomeLoss + OtherComprehensiveIncome", 
                    "Id" : "4b462d69-1b3b-4058-acbb-dc6726262ad5"
                  }, 
                  "fac:OperatingIncomeLoss2Validation" : {
                    "Name" : "fac:OperatingIncomeLoss2Validation", 
                    "Label" : "OperatingIncomeLoss = Revenues - CostsAndExpenses + OtherOperatingIncomeExpenses", 
                    "Id" : "8f1b71b0-9586-49f3-9956-17792aff572f"
                  }, 
                  "fac:NetCashFlowsValidation" : {
                    "Name" : "fac:NetCashFlowsValidation", 
                    "Label" : "NetCashFlows = NetCashFlowsFromOperatingActivities + NetCashFlowsFromInvestingActivities + NetCashFlowsFromFinancingActivities [+ ExchangeGainsLosses]", 
                    "Id" : "e811db10-8ec2-402f-840c-ae946ddfcff0"
                  }, 
                  "fac:NetCashFlowsContinuingValidation" : {
                    "Name" : "fac:NetCashFlowsContinuingValidation", 
                    "Label" : "NetCashFlowsContinuing = NetCashFlowsFromOperatingActivitiesContinuing + NetCashFlowsFromInvestingActivitiesContinuing + NetCashFlowsFromFinancingActivitiesContinuing", 
                    "Id" : "526fcf8f-698d-492e-be3a-5065472b3814"
                  }, 
                  "fac:NetCashFlowsDiscontinuedValidation" : {
                    "Name" : "fac:NetCashFlowsDiscontinuedValidation", 
                    "Label" : "NetCashFlowsDiscontinued = NetCashFlowsFromOperatingActivitiesDiscontinued + NetCashFlowsFromInvestingActivitiesDiscontinued + NetCashFlowsFromFinancingActivitiesDiscontinued", 
                    "Id" : "71bb09f7-3f13-455a-9f51-0a06627101ab"
                  }, 
                  "fac:NetCashFlowsFromOperatingActivitiesValidation" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivitiesValidation", 
                    "Label" : "NetCashFlowsFromOperatingActivities = NetCashFlowsFromOperatingActivitiesContinuing + NetCashFlowsFromOperatingActivitiesDiscontinued", 
                    "Id" : "b4c60501-3c23-46c0-bdb4-0376f6290bd3"
                  }, 
                  "fac:NetCashFlowsFromInvestingActivitiesValidation" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivitiesValidation", 
                    "Label" : "NetCashFlowsFromInvestingActivities = NetCashFlowsFromInvestingActivitiesContinuing + NetCashFlowsFromInvestingActivitiesDiscontinued", 
                    "Id" : "11e9e426-f78d-46e5-bf2d-231ff1c73e1a"
                  }, 
                  "fac:NetCashFlowsFromFinancingActivitiesValidation" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivitiesValidation", 
                    "Label" : "NetCashFlowsFromFinancingActivities = NetCashFlowsFromFinancingActivitiesContinuing + NetCashFlowsFromFinancingActivitiesDiscontinued", 
                    "Id" : "8cee580b-a79c-44dc-9c53-869993f119fb"
                  }
                }, 
                "Id" : "be5f3602-0f95-4bb2-999a-3309bdd41115"
              }
            }, 
            "Id" : "c76427f9-07d3-475d-8d4b-9314451c1732"
          }
        }, 
        "Id" : "3d6ff995-60da-4feb-858f-add6589f93b8"
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
            "Id" : "122aaa92-3a79-4bd4-b153-2dd731ef7e77"
          }
        }, 
        "Id" : "4a9fe56e-c7d3-4016-a470-c44403579adb"
      }, 
      "fac:NoncurrentLiabilities" : {
        "Name" : "fac:NoncurrentLiabilities", 
        "Label" : "Noncurrent Liabilities", 
        "To" : {
          "us-gaap:LiabilitiesNoncurrent" : {
            "Name" : "us-gaap:LiabilitiesNoncurrent", 
            "Id" : "24f8978c-cd96-4685-b080-49521647b1d6"
          }
        }, 
        "Id" : "2d9898e7-ec6f-46d6-b28a-3ba34faa70d7"
      }, 
      "fac:EntityRegistrantName" : {
        "Name" : "fac:EntityRegistrantName", 
        "Label" : "Entity Registrant Name", 
        "To" : {
          "dei:EntityRegistrantName" : {
            "Name" : "dei:EntityRegistrantName", 
            "Id" : "989e2671-e7c8-4a60-be71-7e77f31799f7"
          }
        }, 
        "Id" : "80a6765e-bac0-4dba-9d0b-0564fac28c9d"
      }, 
      "fac:Revenues" : {
        "Name" : "fac:Revenues", 
        "Label" : "Revenues", 
        "To" : {
          "us-gaap:Revenues" : {
            "Name" : "us-gaap:Revenues", 
            "Id" : "85e09aa7-ca7a-49f7-bd8d-73ac249479f0"
          }, 
          "us-gaap:SalesRevenueNet" : {
            "Name" : "us-gaap:SalesRevenueNet", 
            "Id" : "a67d92fe-bff7-4479-be16-0911df24ac51"
          }, 
          "us-gaap:SalesRevenueServicesNet" : {
            "Name" : "us-gaap:SalesRevenueServicesNet", 
            "Id" : "7f6417aa-edc8-40e2-b479-17152c9d8d51"
          }, 
          "us-gaap:SalesRevenueGoodsNet" : {
            "Name" : "us-gaap:SalesRevenueGoodsNet", 
            "Id" : "87b5f196-cf84-4c38-bcfc-fb89bba18c8f"
          }, 
          "us-gaap:RevenuesNetOfInterestExpense" : {
            "Name" : "us-gaap:RevenuesNetOfInterestExpense", 
            "Id" : "49f3b454-e94f-42e7-a539-5157cf077502"
          }, 
          "us-gaap:HealthCareOrganizationRevenue" : {
            "Name" : "us-gaap:HealthCareOrganizationRevenue", 
            "Id" : "6d354ade-191a-4c42-adc2-910a4d939ef9"
          }, 
          "us-gaap:InterestAndDividendIncomeOperating" : {
            "Name" : "us-gaap:InterestAndDividendIncomeOperating", 
            "Id" : "29d96902-494b-4654-b7d3-a499eb321e1b"
          }, 
          "us-gaap:RealEstateRevenueNet" : {
            "Name" : "us-gaap:RealEstateRevenueNet", 
            "Id" : "8175b9dd-9eea-4fbb-be40-9de4958f6423"
          }, 
          "us-gaap:RevenueMineralSales" : {
            "Name" : "us-gaap:RevenueMineralSales", 
            "Id" : "e897bf74-1fd9-431f-a7ff-783dba6554ed"
          }, 
          "us-gaap:OilAndGasRevenue" : {
            "Name" : "us-gaap:OilAndGasRevenue", 
            "Id" : "1083239b-dde8-4865-a2e6-bc18f0dcabed"
          }, 
          "us-gaap:RegulatedAndUnregulatedOperatingRevenue" : {
            "Name" : "us-gaap:RegulatedAndUnregulatedOperatingRevenue", 
            "Id" : "a120302a-0b8c-444d-8a9e-0d39dcac5fa3"
          }, 
          "us-gaap:FinancialServicesRevenue" : {
            "Name" : "us-gaap:FinancialServicesRevenue", 
            "Id" : "8489b660-c014-4734-a556-31c53ad83713"
          }, 
          "us-gaap:ShippingAndHandlingRevenue" : {
            "Name" : "us-gaap:ShippingAndHandlingRevenue", 
            "Id" : "1bd30a0b-729b-4f46-9a03-0e8d04ee1ee9"
          }, 
          "us-gaap:SalesRevenueFromEnergyCommoditiesAndServices" : {
            "Name" : "us-gaap:SalesRevenueFromEnergyCommoditiesAndServices", 
            "Id" : "a81b5815-04c6-436f-956f-8ca5951f1ade"
          }, 
          "us-gaap:UtilityRevenue" : {
            "Name" : "us-gaap:UtilityRevenue", 
            "Id" : "629442cf-aee8-48f3-be29-7536e2535b81"
          }, 
          "us-gaap:PhaseInPlanAmountOfCapitalizedCostsRecovered" : {
            "Name" : "us-gaap:PhaseInPlanAmountOfCapitalizedCostsRecovered", 
            "Id" : "bacae0f0-f8d4-43f3-8f45-b352a54a321a"
          }, 
          "us-gaap:SecondaryProcessingRevenue" : {
            "Name" : "us-gaap:SecondaryProcessingRevenue", 
            "Id" : "ee7a41e9-c0e3-4056-8c9b-ddfb08108df2"
          }, 
          "us-gaap:RevenueSteamProductsAndServices" : {
            "Name" : "us-gaap:RevenueSteamProductsAndServices", 
            "Id" : "2bb1a890-88b3-4fb5-a56a-adae41ac60a0"
          }, 
          "us-gaap:RevenueFromLeasedAndOwnedHotels" : {
            "Name" : "us-gaap:RevenueFromLeasedAndOwnedHotels", 
            "Id" : "3602e60f-94f0-4ef2-8ca0-9ef1cd91b3d4"
          }, 
          "us-gaap:FranchisorRevenue" : {
            "Name" : "us-gaap:FranchisorRevenue", 
            "Id" : "5b2f2026-689f-4dcb-9a79-3d97e4d73b7a"
          }, 
          "us-gaap:SubscriptionRevenue" : {
            "Name" : "us-gaap:SubscriptionRevenue", 
            "Id" : "19a05ea8-3da0-4d88-bf6f-a4775468d418"
          }, 
          "us-gaap:AdvertisingRevenue" : {
            "Name" : "us-gaap:AdvertisingRevenue", 
            "Id" : "b33acb7e-8562-4263-8e07-92ad55e07972"
          }, 
          "us-gaap:AdmissionsRevenue" : {
            "Name" : "us-gaap:AdmissionsRevenue", 
            "Id" : "805989f5-bec7-400e-9386-fa2c9c796f33"
          }, 
          "us-gaap:RevenueFromEnrollmentAndRegistrationFeesExcludingHospitalityEnterprises" : {
            "Name" : "us-gaap:RevenueFromEnrollmentAndRegistrationFeesExcludingHospitalityEnterprises", 
            "Id" : "d914f52b-1a62-4178-bee9-1bb46c17142b"
          }, 
          "us-gaap:MembershipDuesRevenueOnGoing" : {
            "Name" : "us-gaap:MembershipDuesRevenueOnGoing", 
            "Id" : "c4a98630-e0b8-4c91-895f-7aff66f1ce95"
          }, 
          "us-gaap:LicensesRevenue" : {
            "Name" : "us-gaap:LicensesRevenue", 
            "Id" : "c28213c4-0e37-437c-bb85-90da19351ea1"
          }, 
          "us-gaap:RoyaltyRevenue" : {
            "Name" : "us-gaap:RoyaltyRevenue", 
            "Id" : "c230ad16-88a8-4679-84a8-665331d5a308"
          }, 
          "us-gaap:SalesOfOilAndGasProspects" : {
            "Name" : "us-gaap:SalesOfOilAndGasProspects", 
            "Id" : "c57c2731-3fdf-4beb-8df2-590ac40f53f0"
          }, 
          "us-gaap:ClearingFeesRevenue" : {
            "Name" : "us-gaap:ClearingFeesRevenue", 
            "Id" : "b5da4a96-7651-4d6f-8f91-9f8436b6ebf7"
          }, 
          "us-gaap:ReimbursementRevenue" : {
            "Name" : "us-gaap:ReimbursementRevenue", 
            "Id" : "ae79aa39-0a01-40ab-ab2a-6dbc29238075"
          }, 
          "us-gaap:RevenueFromGrants" : {
            "Name" : "us-gaap:RevenueFromGrants", 
            "Id" : "da19fe99-97cf-4992-8f2e-3c06f825d8c5"
          }, 
          "us-gaap:RevenueOtherManufacturedProducts" : {
            "Name" : "us-gaap:RevenueOtherManufacturedProducts", 
            "Id" : "d6cbf3e9-702b-419d-b8de-b98b4e139bab"
          }, 
          "us-gaap:ConstructionMaterialsRevenue" : {
            "Name" : "us-gaap:ConstructionMaterialsRevenue", 
            "Id" : "081ec938-b404-412f-bf49-117b4173335a"
          }, 
          "us-gaap:TimberRevenue" : {
            "Name" : "us-gaap:TimberRevenue", 
            "Id" : "ad8b4cf3-4cb2-4804-bd9f-2946b8dca106"
          }, 
          "us-gaap:RecyclingRevenue" : {
            "Name" : "us-gaap:RecyclingRevenue", 
            "Id" : "465becb2-2892-47cd-9965-2ad877aff51f"
          }, 
          "us-gaap:OtherSalesRevenueNet" : {
            "Name" : "us-gaap:OtherSalesRevenueNet", 
            "Id" : "5a39c997-cafc-400e-a1db-0f78fe8518b1"
          }, 
          "us-gaap:SaleOfTrustAssetsToPayExpenses" : {
            "Name" : "us-gaap:SaleOfTrustAssetsToPayExpenses", 
            "Id" : "0b72ac54-5610-4cca-9381-96bfeb872ab9"
          }, 
          "us-gaap:PassengerRevenue" : {
            "Name" : "us-gaap:PassengerRevenue", 
            "Id" : "19ce5719-405a-4bdf-9698-0a2d15aa08f3"
          }, 
          "us-gaap:VehicleTollRevenue" : {
            "Name" : "us-gaap:VehicleTollRevenue", 
            "Id" : "ffbbe8a6-f36f-4bef-b742-39267d844dd6"
          }, 
          "us-gaap:CargoAndFreightRevenue" : {
            "Name" : "us-gaap:CargoAndFreightRevenue", 
            "Id" : "5c9c566c-fc6b-49ed-88c9-7252cfe6fcdd"
          }, 
          "us-gaap:NetInvestmentIncome" : {
            "Name" : "us-gaap:NetInvestmentIncome", 
            "Id" : "0ac31509-9890-4af0-b89e-339e433ad73e"
          }, 
          "us-gaap:RevenuesExcludingInterestAndDividends" : {
            "Name" : "us-gaap:RevenuesExcludingInterestAndDividends", 
            "Id" : "2ed147d9-b5a1-4b01-bd6d-56723b31e7de"
          }, 
          "us-gaap:InvestmentBankingRevenue" : {
            "Name" : "us-gaap:InvestmentBankingRevenue", 
            "Id" : "193e6040-79e3-464e-9b72-2ce2dec1999e"
          }, 
          "us-gaap:UnderwritingIncomeLoss" : {
            "Name" : "us-gaap:UnderwritingIncomeLoss", 
            "Id" : "11caddb2-185b-4b6d-86ca-694391423758"
          }, 
          "us-gaap:MarketDataRevenue" : {
            "Name" : "us-gaap:MarketDataRevenue", 
            "Id" : "1537cf9f-0f1a-4341-ab0f-34335e2412c3"
          }
        }, 
        "Id" : "5babace5-98ad-4af4-ba34-c19a938a7b4e"
      }, 
      "fac:NetCashFlowsContinuing" : {
        "Name" : "fac:NetCashFlowsContinuing", 
        "Label" : "Net Cash Flows, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInContinuingOperations", 
            "Id" : "55c5a971-085d-4d03-b69c-8885910a8f9d"
          }
        }, 
        "Id" : "25bc09c2-3889-44ce-8a22-6f3c7af59ff7"
      }, 
      "fac:Assets" : {
        "Name" : "fac:Assets", 
        "Label" : "Assets", 
        "To" : {
          "us-gaap:Assets" : {
            "Name" : "us-gaap:Assets", 
            "Id" : "344f562b-d403-45db-8360-204108f580e2"
          }, 
          "us-gaap:AssetsCurrent" : {
            "Name" : "us-gaap:AssetsCurrent", 
            "Id" : "42a18526-7ff1-4fc3-b10d-43734ba8abf8"
          }
        }, 
        "Id" : "4ab5dab2-3235-49ad-86ba-f1c648c5c626"
      }, 
      "fac:EquityAttributableToParent" : {
        "Name" : "fac:EquityAttributableToParent", 
        "Label" : "Equity Attributable to Parent", 
        "To" : {
          "us-gaap:StockholdersEquity" : {
            "Name" : "us-gaap:StockholdersEquity", 
            "Id" : "b277343e-a7f3-4d3a-8c09-72597c8c1842"
          }, 
          "us-gaap:PartnersCapital" : {
            "Name" : "us-gaap:PartnersCapital", 
            "Id" : "77e9a5e3-53d0-4561-af43-7b9373dc2277"
          }, 
          "us-gaap:MemberEquity" : {
            "Name" : "us-gaap:MemberEquity", 
            "Id" : "cb8409c7-52d7-4e03-80b4-3f9bdfb3ecd6"
          }
        }, 
        "Id" : "c050d403-c78e-4d71-a1ca-dbdcdd6efe84"
      }, 
      "fac:InterestAndDebtExpense" : {
        "Name" : "fac:InterestAndDebtExpense", 
        "Label" : "Interest and Debt Expense", 
        "To" : {
          "us-gaap:InterestAndDebtExpense" : {
            "Name" : "us-gaap:InterestAndDebtExpense", 
            "Id" : "7f0225e1-c4ba-4e43-9546-13505685ff27"
          }
        }, 
        "Id" : "a8fd4ddb-6b1c-43b1-bf86-d0eeb8f50a30"
      }, 
      "fac:IncomeTaxExpenseBenefit" : {
        "Name" : "fac:IncomeTaxExpenseBenefit", 
        "Label" : "Income Tax Expense (Benefit)", 
        "To" : {
          "us-gaap:IncomeTaxExpenseBenefit" : {
            "Name" : "us-gaap:IncomeTaxExpenseBenefit", 
            "Id" : "f8210b25-8d3c-4e1c-ab49-6833decf6ad3"
          }, 
          "us-gaap:IncomeTaxExpenseBenefitContinuingOperations" : {
            "Name" : "us-gaap:IncomeTaxExpenseBenefitContinuingOperations", 
            "Id" : "ad098e9f-d7db-4898-96aa-842680038cf1"
          }, 
          "us-gaap:FederalHomeLoanBankAssessments" : {
            "Name" : "us-gaap:FederalHomeLoanBankAssessments", 
            "Id" : "86751168-ae83-4df2-8294-866db759b686"
          }
        }, 
        "Id" : "64defabf-f6d5-41e5-a639-1c987c905c5b"
      }, 
      "fac:EntityCentralIndexKey" : {
        "Name" : "fac:EntityCentralIndexKey", 
        "Label" : "Central Index Key (CIK)", 
        "To" : {
          "dei:EntityCentralIndexKey" : {
            "Name" : "dei:EntityCentralIndexKey", 
            "Id" : "2fbff86e-8bbe-4a29-8af6-1b14b39c2ffd"
          }
        }, 
        "Id" : "9b4cbfc6-4a30-4d80-83ca-554da07c0887"
      }, 
      "fac:NatureOfOperations" : {
        "Name" : "fac:NatureOfOperations", 
        "Label" : "Nature of Operations", 
        "To" : {
          "us-gaap:NatureOfOperations" : {
            "Name" : "us-gaap:NatureOfOperations", 
            "Id" : "fcc41e4e-d5b7-49d8-9096-8d6563b8fded"
          }, 
          "us-gaap:BusinessDescriptionAndBasisOfPresentationTextBlock" : {
            "Name" : "us-gaap:BusinessDescriptionAndBasisOfPresentationTextBlock", 
            "Id" : "a8793aa2-56dd-4aa4-b206-178320adf546"
          }, 
          "us-gaap:OrganizationConsolidationAndPresentationOfFinancialStatementsDisclosureTextBlock" : {
            "Name" : "us-gaap:OrganizationConsolidationAndPresentationOfFinancialStatementsDisclosureTextBlock", 
            "Id" : "5b8ebfd2-cb36-40e4-bc3f-5de169ea33c6"
          }, 
          "us-gaap:OrganizationConsolidationBasisOfPresentationBusinessDescriptionAndAccountingPoliciesTextBlock" : {
            "Name" : "us-gaap:OrganizationConsolidationBasisOfPresentationBusinessDescriptionAndAccountingPoliciesTextBlock", 
            "Id" : "9bdb57a9-c70f-469c-8c2e-2cd23f122863"
          }
        }, 
        "Id" : "bec3aa96-4d02-4d89-ba97-ed0b4b6408bd"
      }, 
      "fac:ResearchAndDevelopment" : {
        "Name" : "fac:ResearchAndDevelopment", 
        "Label" : "Research and Development", 
        "To" : {
          "us-gaap:ResearchAndDevelopmentExpense" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpense", 
            "Id" : "3df2d7b8-a110-409e-8ec8-03f4b094af01"
          }, 
          "us-gaap:ResearchAndDevelopmentExpenseExcludingAcquiredInProcessCost" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpenseExcludingAcquiredInProcessCost", 
            "Id" : "67cf021b-b5d4-42ac-9a8b-d473441a96d9"
          }, 
          "us-gaap:ResearchAndDevelopmentExpenseSoftwareExcludingAcquiredInProcessCost" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpenseSoftwareExcludingAcquiredInProcessCost", 
            "Id" : "8d725f3d-7711-4270-8330-6e3210f127a4"
          }, 
          "us-gaap:ResearchAndDevelopmentInProcess" : {
            "Name" : "us-gaap:ResearchAndDevelopmentInProcess", 
            "Id" : "051b32fe-cde2-44fd-8a6b-41be0cc3f1b0"
          }, 
          "us-gaap:ResearchAndDevelopmentAssetAcquiredOtherThanThroughBusinessCombinationWrittenOff" : {
            "Name" : "us-gaap:ResearchAndDevelopmentAssetAcquiredOtherThanThroughBusinessCombinationWrittenOff", 
            "Id" : "d433b10c-5d19-4ac3-849e-97cbcb0b5c69"
          }
        }, 
        "Id" : "42c0e072-c809-4603-b962-e61512b74ee4"
      }, 
      "fac:OtherOperatingIncomeExpenses" : {
        "Name" : "fac:OtherOperatingIncomeExpenses", 
        "Label" : "Other Operating Income (Expenses)", 
        "To" : {
          "us-gaap:OtherOperatingIncome" : {
            "Name" : "us-gaap:OtherOperatingIncome", 
            "Id" : "e3685a23-84b5-4a3e-a196-13de22661d64"
          }
        }, 
        "Id" : "2303c725-ce4d-4ffe-baf0-1e36d2babcf3"
      }, 
      "fac:NetCashFlowsFromInvestingActivities" : {
        "Name" : "fac:NetCashFlowsFromInvestingActivities", 
        "Label" : "Net Cash Flows from Investing Activities", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInInvestingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInInvestingActivities", 
            "Id" : "290f49e0-b425-4745-a8eb-e71a14c3c38f"
          }
        }, 
        "Id" : "403f8f30-3d1f-4a6f-b6d3-e6a37a29732b"
      }, 
      "fac:IncomeBeforeEquityMethodInvestments" : {
        "Name" : "fac:IncomeBeforeEquityMethodInvestments", 
        "Label" : "Income (Loss) Before Equity Method Investments", 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments", 
            "Id" : "3688d1a5-f4f0-4153-b2a5-935a780cd633"
          }
        }, 
        "Id" : "4ca8138f-e2e9-41b3-a8df-5f19c8161d54"
      }, 
      "fac:TradingSymbol" : {
        "Name" : "fac:TradingSymbol", 
        "Label" : "Trading Symbol", 
        "To" : {
          "dei:TradingSymbol" : {
            "Name" : "dei:TradingSymbol", 
            "Id" : "5051dd54-124b-455c-97c5-085e2f869415"
          }
        }, 
        "Id" : "b01f4806-10c6-4e60-a5ad-78b6b69adb90"
      }, 
      "fac:NetIncomeLossAvailableToCommonStockholdersBasic" : {
        "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
        "Label" : "Net Income (Loss) Available to Common Stockholders, Basic", 
        "To" : {
          "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic" : {
            "Name" : "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic", 
            "Id" : "5718fbb2-2720-44b6-b44c-d05dca2107a0"
          }
        }, 
        "Id" : "de140535-5ded-4823-8823-a76fe46612b1"
      }, 
      "fac:EntityFilerCategory" : {
        "Name" : "fac:EntityFilerCategory", 
        "Label" : "Entity Filer Category", 
        "To" : {
          "dei:EntityFilerCategory" : {
            "Name" : "dei:EntityFilerCategory", 
            "Id" : "953950cd-0d46-4d63-bfd6-5b90712a67fb"
          }
        }, 
        "Id" : "ec04737e-0ec3-46c8-853b-7700da556321"
      }, 
      "fac:IncomeLossFromContinuingOperationsBeforeTax" : {
        "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTax", 
        "Label" : "Income (Loss) from Continuing Operations Before Tax", 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments", 
            "Id" : "a06c150e-0d79-42c3-843e-020f758f8f10"
          }, 
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest", 
            "Id" : "d1a4e83e-1c3c-4d05-baf1-b905a4bd2e11"
          }
        }, 
        "Id" : "c0d663be-0f3c-43d4-ae3c-bdfc9c600c9d"
      }, 
      "fac:OperatingExpenses" : {
        "Name" : "fac:OperatingExpenses", 
        "Label" : "Operating Expenses", 
        "To" : {
          "us-gaap:OperatingExpenses" : {
            "Name" : "us-gaap:OperatingExpenses", 
            "Id" : "1c6ba345-84b9-4617-8bda-b5dcc50c366e"
          }, 
          "us-gaap:OperatingCostsAndExpenses" : {
            "Name" : "us-gaap:OperatingCostsAndExpenses", 
            "Id" : "7c69096b-7952-4d3e-8b23-002cdca52dc5"
          }
        }, 
        "Id" : "4eb429ef-7ddf-4090-8efd-ea88b68f2ff2"
      }, 
      "fac:NetCashFlowsDiscontinued" : {
        "Name" : "fac:NetCashFlowsDiscontinued", 
        "Label" : "Net Cash Flows, Discontinued", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInDiscontinuedOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInDiscontinuedOperations", 
            "Id" : "552576ef-658a-4293-aa4c-ad6f4f146181"
          }
        }, 
        "Id" : "766eafb0-d03a-48b3-8656-2b023f8d61f5"
      }, 
      "fac:Liabilities" : {
        "Name" : "fac:Liabilities", 
        "Label" : "Liabilities", 
        "To" : {
          "us-gaap:Liabilities" : {
            "Name" : "us-gaap:Liabilities", 
            "Id" : "cc792162-a6e1-49fa-9e7c-2f4b3b301591"
          }
        }, 
        "Id" : "22c25aae-cd6f-4674-a864-bfea8aaa8a82"
      }, 
      "fac:ComprehensiveIncomeLossAttributableToParent" : {
        "Name" : "fac:ComprehensiveIncomeLossAttributableToParent", 
        "Label" : "Comprehensive Income (Loss) Attributable to Parent", 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTax" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTax", 
            "Id" : "35150a11-34d7-4311-b36a-160ed5d4941b"
          }
        }, 
        "Id" : "db6d63a9-db8e-4576-a6d9-4f301f03873b"
      }, 
      "fac:CostOfRevenue" : {
        "Name" : "fac:CostOfRevenue", 
        "Label" : "Cost of Revenues", 
        "To" : {
          "us-gaap:CostOfRevenue" : {
            "Name" : "us-gaap:CostOfRevenue", 
            "Id" : "13f12529-005a-43e3-8b5b-e86429ff2eef"
          }, 
          "us-gaap:CostOfGoodsAndServicesSold" : {
            "Name" : "us-gaap:CostOfGoodsAndServicesSold", 
            "Id" : "5592fb24-8eb7-4a72-917b-b2666817eebf"
          }, 
          "us-gaap:CostOfServices" : {
            "Name" : "us-gaap:CostOfServices", 
            "Id" : "29196c83-4038-453c-9732-2c848090670e"
          }, 
          "us-gaap:CostOfGoodsSold" : {
            "Name" : "us-gaap:CostOfGoodsSold", 
            "Id" : "eb81d9e0-89bb-49ef-9880-be48c22fc4ef"
          }
        }, 
        "Id" : "63c48049-33a7-46b8-920f-d40cef80156c"
      }, 
      "fac:NetCashFlows" : {
        "Name" : "fac:NetCashFlows", 
        "Label" : "Net Cash Flows", 
        "To" : {
          "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease" : {
            "Name" : "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease", 
            "Id" : "174053f5-e309-4501-ba69-549727c8b67c"
          }, 
          "us-gaap:CashPeriodIncreaseDecrease" : {
            "Name" : "us-gaap:CashPeriodIncreaseDecrease", 
            "Id" : "a15437a4-18db-4563-a021-6a8fc68fdabb"
          }, 
          "us-gaap:NetCashProvidedByUsedInContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInContinuingOperations", 
            "Id" : "26b44bc0-7295-43d6-adfb-5caef1d515ad"
          }
        }, 
        "Id" : "2ce34aa8-bcd6-478c-9fa4-ea60a0358b59"
      }, 
      "fac:NonoperatingIncomeLoss" : {
        "Name" : "fac:NonoperatingIncomeLoss", 
        "Label" : "Nonoperating Income (Loss)", 
        "To" : {
          "us-gaap:NonoperatingIncomeExpense" : {
            "Name" : "us-gaap:NonoperatingIncomeExpense", 
            "Id" : "dcf07105-1ad7-4fca-a273-560a122d804b"
          }
        }, 
        "Id" : "41806a16-4687-4f31-9db1-9c8debfb307b"
      }, 
      "fac:NetCashFlowsFromFinancingActivitiesContinuing" : {
        "Name" : "fac:NetCashFlowsFromFinancingActivitiesContinuing", 
        "Label" : "Net Cash Flows from Financing Activities, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInFinancingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInFinancingActivitiesContinuingOperations", 
            "Id" : "32c50a20-82a3-40f0-b40b-501fad1867a2"
          }
        }, 
        "Id" : "5b711130-f4ea-4dd2-a5fe-15cdc3309810"
      }, 
      "fac:IncomeLossFromContinuingOperationsAfterTax" : {
        "Name" : "fac:IncomeLossFromContinuingOperationsAfterTax", 
        "Label" : "Income (Loss) from Continuing Operations After Tax", 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "9756d4c5-eb5f-4cd7-87c9-62a9f61aa2ba"
          }, 
          "us-gaap:IncomeLossBeforeExtraordinaryItemsAndCumulativeEffectOfChangeInAccountingPrinciple" : {
            "Name" : "us-gaap:IncomeLossBeforeExtraordinaryItemsAndCumulativeEffectOfChangeInAccountingPrinciple", 
            "Id" : "b4ab777b-40d8-4279-a8bb-d333d9e57d08"
          }, 
          "us-gaap:IncomeLossFromContinuingOperations" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperations", 
            "Id" : "e7200919-73ca-435e-9bc5-f6aeea3148c0"
          }
        }, 
        "Id" : "f13a7484-69bc-4954-9a00-ca43de78cdaa"
      }, 
      "fac:NetIncomeAttributableToParent" : {
        "Name" : "fac:NetIncomeAttributableToParent", 
        "Label" : "Net Income Attributable to Parent", 
        "To" : {
          "us-gaap:NetIncomeLoss" : {
            "Name" : "us-gaap:NetIncomeLoss", 
            "Id" : "51aaac87-b4b9-4961-8b0c-8fd745563605"
          }
        }, 
        "Id" : "b160a642-1322-4784-b6ed-fbb8ef4f573a"
      }, 
      "fac:CommitmentsAndContingencies" : {
        "Name" : "fac:CommitmentsAndContingencies", 
        "Label" : "Commitments and Contingencies", 
        "To" : {
          "us-gaap:CommitmentsAndContingencies" : {
            "Name" : "us-gaap:CommitmentsAndContingencies", 
            "Id" : "e6eb6d18-df03-4db5-8f65-5b5a65a67914"
          }
        }, 
        "Id" : "57e2156b-a531-449b-ab55-75616415a85c"
      }, 
      "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" : {
        "Name" : "fac:NetCashFlowsFromInvestingActivitiesDiscontinued", 
        "Label" : "Net Cash Flows from Investing Activities, Discontinued", 
        "To" : {
          "us-gaap:CashProvidedByUsedInInvestingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInInvestingActivitiesDiscontinuedOperations", 
            "Id" : "157cad01-7040-4318-b9a6-94d689a78990"
          }
        }, 
        "Id" : "a5603160-3adf-48fc-b368-48b3a4c74248"
      }, 
      "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" : {
        "Name" : "fac:NetCashFlowsFromFinancingActivitiesDiscontinued", 
        "Label" : "Net Cash Flows from Financing Activities, Discontinued", 
        "To" : {
          "us-gaap:CashProvidedByUsedInFinancingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInFinancingActivitiesDiscontinuedOperations", 
            "Id" : "610b4362-b5cb-40ba-9f2e-e0b44f4108db"
          }
        }, 
        "Id" : "82e4a239-5512-4ae5-b294-0e7cb3662170"
      }, 
      "fac:NetIncomeAttributableToNoncontrollingInterest" : {
        "Name" : "fac:NetIncomeAttributableToNoncontrollingInterest", 
        "Label" : "Net Income Attributable to Noncontrolling Interest", 
        "To" : {
          "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest", 
            "Id" : "a90687a1-b466-4adf-ac85-febc0f6a4a3c"
          }
        }, 
        "Id" : "f5d31652-fb7d-4505-8620-5ccd1e8bd213"
      }, 
      "fac:FiscalYearEnd" : {
        "Name" : "fac:FiscalYearEnd", 
        "Label" : "Fiscal Year End", 
        "To" : {
          "dei:CurrentFiscalYearEndDate" : {
            "Name" : "dei:CurrentFiscalYearEndDate", 
            "Id" : "2ec009c7-0e88-40ce-b6d5-534cd3fa2321"
          }
        }, 
        "Id" : "ebefba92-9d46-4d6c-a750-695ae7e20828"
      }, 
      "fac:NoncurrentAssets" : {
        "Name" : "fac:NoncurrentAssets", 
        "Label" : "Noncurrent Assets", 
        "To" : {
          "us-gaap:AssetsNoncurrent" : {
            "Name" : "us-gaap:AssetsNoncurrent", 
            "Id" : "c119bf97-6dd0-4d84-9aa2-ca6cbc762923"
          }
        }, 
        "Id" : "c483e2e7-d001-4008-a79d-b1d7d98bf3cd"
      }, 
      "fac:FiscalPeriod" : {
        "Name" : "fac:FiscalPeriod", 
        "Label" : "Fiscal Period", 
        "To" : {
          "dei:DocumentFiscalPeriodFocus" : {
            "Name" : "dei:DocumentFiscalPeriodFocus", 
            "Id" : "d7a3cc20-6a92-4ccc-a061-d73e30f568f8"
          }
        }, 
        "Id" : "253a03fa-a5a3-4b62-a8ee-e65f59b1739b"
      }, 
      "fac:FiscalYear" : {
        "Name" : "fac:FiscalYear", 
        "Label" : "Fiscal Year", 
        "To" : {
          "dei:DocumentFiscalYearFocus" : {
            "Name" : "dei:DocumentFiscalYearFocus", 
            "Id" : "5ddef721-5875-442b-83dd-576984fc657b"
          }
        }, 
        "Id" : "6135d56c-6be9-48b6-a9b5-50be7ed6d3ac"
      }, 
      "fac:NetIncomeLoss" : {
        "Name" : "fac:NetIncomeLoss", 
        "Label" : "Net Income (Loss)", 
        "To" : {
          "us-gaap:ProfitLoss" : {
            "Name" : "us-gaap:ProfitLoss", 
            "Id" : "1f494dbb-363a-408e-b9af-44cf53f230ee"
          }, 
          "us-gaap:NetIncomeLoss" : {
            "Name" : "us-gaap:NetIncomeLoss", 
            "Id" : "74a33b22-9493-4acc-8c38-660cec95f616"
          }, 
          "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic" : {
            "Name" : "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic", 
            "Id" : "3e44ce3f-518c-401e-925b-0b4bd79f8c52"
          }, 
          "us-gaap:IncomeLossFromContinuingOperations" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperations", 
            "Id" : "15e33169-058e-44a7-b3c2-2d93b0bff7ac"
          }, 
          "us-gaap:IncomeLossAttributableToParent" : {
            "Name" : "us-gaap:IncomeLossAttributableToParent", 
            "Id" : "e9ee71a2-dc2e-4fb3-a063-cbe1e28e6a63"
          }, 
          "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "fdcfd60d-426b-434f-b66d-afe376fac682"
          }
        }, 
        "Id" : "85554036-041b-489b-81df-f11578f72363"
      }, 
      "fac:ExchangeGainsLosses" : {
        "Name" : "fac:ExchangeGainsLosses", 
        "Label" : "Exchange Gains (Losses)", 
        "To" : {
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents", 
            "Id" : "1461b3f0-b163-4112-a2d1-fec6812b5d1a"
          }, 
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsContinuingOperations" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsContinuingOperations", 
            "Id" : "f0658a17-05d7-4ef4-90fa-be414260f98b"
          }, 
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsDiscontinuedOperations" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsDiscontinuedOperations", 
            "Id" : "6efc08e3-7a35-40a1-81a3-16f1ae6476eb"
          }
        }, 
        "Id" : "9361b1fc-ee99-4228-a05b-6811466356a5"
      }, 
      "fac:GrossProfit" : {
        "Name" : "fac:GrossProfit", 
        "Label" : "Gross Profit", 
        "To" : {
          "us-gaap:GrossProfit" : {
            "Name" : "us-gaap:GrossProfit", 
            "Id" : "331a03b7-28b3-4c93-b8e7-f66d84c7cebf"
          }
        }, 
        "Id" : "9e58d972-d214-40b0-af75-3431df6488b5"
      }, 
      "fac:EquityAttributableToNoncontrollingInterest" : {
        "Name" : "fac:EquityAttributableToNoncontrollingInterest", 
        "Label" : "Equity Attributable to Noncontrolling Interest", 
        "To" : {
          "us-gaap:MinorityInterest" : {
            "Name" : "us-gaap:MinorityInterest", 
            "Id" : "69a92e49-1f48-4668-addf-b4933d766c6f"
          }, 
          "us-gaap:PartnersCapitalAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:PartnersCapitalAttributableToNoncontrollingInterest", 
            "Id" : "f596446a-3e09-4931-9cf2-fe20bd4f4770"
          }, 
          "us-gaap:MinorityInterestInLimitedPartnerships" : {
            "Name" : "us-gaap:MinorityInterestInLimitedPartnerships", 
            "Id" : "9536988c-25d3-473f-a890-df4b3e78afc9"
          }, 
          "us-gaap:MinorityInterestInOperatingPartnerships" : {
            "Name" : "us-gaap:MinorityInterestInOperatingPartnerships", 
            "Id" : "b5ae9ce1-6bcc-4be4-9d0d-021c3b282ede"
          }, 
          "us-gaap:MinorityInterestInPreferredUnitHolders" : {
            "Name" : "us-gaap:MinorityInterestInPreferredUnitHolders", 
            "Id" : "3a6d4f74-2e27-452c-ab5d-d5a7925c76de"
          }, 
          "us-gaap:MinorityInterestInJointVentures" : {
            "Name" : "us-gaap:MinorityInterestInJointVentures", 
            "Id" : "ece8bc74-d008-4ff0-b69e-f6d08a56bc6f"
          }, 
          "us-gaap:OtherMinorityInterests" : {
            "Name" : "us-gaap:OtherMinorityInterests", 
            "Id" : "9d39aedb-8def-4446-bed2-d18bc6b3e4f6"
          }, 
          "us-gaap:NonredeemableNoncontrollingInterest" : {
            "Name" : "us-gaap:NonredeemableNoncontrollingInterest", 
            "Id" : "923bb217-a886-43a8-bb97-2116f283f7f7"
          }, 
          "us-gaap:NoncontrollingInterestInVariableInterestEntity" : {
            "Name" : "us-gaap:NoncontrollingInterestInVariableInterestEntity", 
            "Id" : "bfb548f8-304f-4464-ab98-afc0c7531ef4"
          }
        }, 
        "Id" : "2cf2b2c8-1ae0-4784-b16e-c71823cb7447"
      }, 
      "fac:CostsAndExpenses" : {
        "Name" : "fac:CostsAndExpenses", 
        "Label" : "Costs and Expenses", 
        "To" : {
          "us-gaap:CostsAndExpenses" : {
            "Name" : "us-gaap:CostsAndExpenses", 
            "Id" : "c77843bb-0e5d-4584-a291-5f2ab9110790"
          }, 
          "us-gaap:BenefitsLossesAndExpenses" : {
            "Name" : "us-gaap:BenefitsLossesAndExpenses", 
            "Id" : "021cc5f4-2ce2-4fe4-a940-5f425356777f"
          }
        }, 
        "Id" : "b2f90245-b175-4fe4-92b4-c2586d2bf2d0"
      }, 
      "fac:CurrentLiabilities" : {
        "Name" : "fac:CurrentLiabilities", 
        "Label" : "Current Liabilities", 
        "To" : {
          "us-gaap:LiabilitiesCurrent" : {
            "Name" : "us-gaap:LiabilitiesCurrent", 
            "Id" : "3298a3d6-f049-466c-9db1-82481489596f"
          }
        }, 
        "Id" : "48415549-673b-42cf-b426-b5064cdacc6f"
      }, 
      "fac:NetCashFlowsFromOperatingActivities" : {
        "Name" : "fac:NetCashFlowsFromOperatingActivities", 
        "Label" : "Net Cash Flows from Operating Activities", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInOperatingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInOperatingActivities", 
            "Id" : "d4b12216-ba53-4f88-a625-01c481d4c553"
          }
        }, 
        "Id" : "f4d811ab-b135-448b-a299-eb8435308739"
      }, 
      "fac:IncomeLossFromDiscontinuedOperationsNetTax" : {
        "Name" : "fac:IncomeLossFromDiscontinuedOperationsNetTax", 
        "Label" : "Income (Loss) from Discontinued Operations, Net of Tax", 
        "To" : {
          "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTax" : {
            "Name" : "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTax", 
            "Id" : "f7d9a864-b183-4e94-9b23-8bb8bbdb89b8"
          }, 
          "us-gaap:DiscontinuedOperationGainLossOnDisposalOfDiscontinuedOperationNetOfTax" : {
            "Name" : "us-gaap:DiscontinuedOperationGainLossOnDisposalOfDiscontinuedOperationNetOfTax", 
            "Id" : "45a27058-1672-4587-9b27-5b2b31190272"
          }, 
          "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTaxAttributableToReportingEntity" : {
            "Name" : "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTaxAttributableToReportingEntity", 
            "Id" : "fe7e8d5f-0c7d-46f7-8638-7bd2e3858b77"
          }
        }, 
        "Id" : "2e12b584-8bf5-4694-a754-048de0d06e14"
      }, 
      "fac:ExtraordinaryItemsIncomeExpenseNetTax" : {
        "Name" : "fac:ExtraordinaryItemsIncomeExpenseNetTax", 
        "Label" : "Extraordinary Items of Income (Expense), Net of Tax", 
        "To" : {
          "us-gaap:ExtraordinaryItemNetOfTax" : {
            "Name" : "us-gaap:ExtraordinaryItemNetOfTax", 
            "Id" : "199ad475-48a2-479a-bcb7-5345dec7601b"
          }
        }, 
        "Id" : "83ed7440-725c-44f3-916f-3417b9d5f4d6"
      }, 
      "fac:OperatingIncomeLoss" : {
        "Name" : "fac:OperatingIncomeLoss", 
        "Label" : "Operating Income (Loss)", 
        "To" : {
          "us-gaap:OperatingIncomeLoss" : {
            "Name" : "us-gaap:OperatingIncomeLoss", 
            "Id" : "77b8d244-1913-4ea7-a200-20f2f3e9a8b6"
          }
        }, 
        "Id" : "022bd92a-7bf7-4b0d-9b1f-f2e6a5b373bd"
      }, 
      "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" : {
        "Name" : "fac:NetCashFlowsFromOperatingActivitiesDiscontinued", 
        "Label" : "Net Cash Flows from Operating Activities, Discontinued", 
        "To" : {
          "us-gaap:CashProvidedByUsedInOperatingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInOperatingActivitiesDiscontinuedOperations", 
            "Id" : "c97361ab-ae84-4e44-9f16-0438398d09a4"
          }
        }, 
        "Id" : "f1a7c6ba-1047-4af6-8d05-5f6b04c78a8c"
      }, 
      "fac:OtherComprehensiveIncomeLoss" : {
        "Name" : "fac:OtherComprehensiveIncomeLoss", 
        "Label" : "Other Comprehensive Income (Loss)", 
        "To" : {
          "us-gaap:OtherComprehensiveIncomeLossNetOfTax" : {
            "Name" : "us-gaap:OtherComprehensiveIncomeLossNetOfTax", 
            "Id" : "dc2d2601-c26b-4c67-a0b5-4c619a000126"
          }
        }, 
        "Id" : "dfb67acf-9d6a-4532-bcc0-e438d6c8b1f4"
      }, 
      "fac:NetCashFlowsFromInvestingActivitiesContinuing" : {
        "Name" : "fac:NetCashFlowsFromInvestingActivitiesContinuing", 
        "Label" : "Net Cash Flows from Investing Activities, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInInvestingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInInvestingActivitiesContinuingOperations", 
            "Id" : "48747c15-660d-4229-9e4c-10c9e022c097"
          }
        }, 
        "Id" : "5f1df2bc-d299-462f-8aac-e950dfcf825b"
      }, 
      "fac:BalanceSheetDate" : {
        "Name" : "fac:BalanceSheetDate", 
        "Label" : "Balance Sheet Date", 
        "To" : {
          "dei:DocumentPeriodEndDate" : {
            "Name" : "dei:DocumentPeriodEndDate", 
            "Id" : "9982037f-f7be-4aab-8f37-af1ca1536694"
          }
        }, 
        "Id" : "7903bd50-d6c3-49e6-8f90-1e5194ff72c8"
      }, 
      "fac:LiabilitiesAndEquity" : {
        "Name" : "fac:LiabilitiesAndEquity", 
        "Label" : "Liabilities and Equity", 
        "To" : {
          "us-gaap:LiabilitiesAndStockholdersEquity" : {
            "Name" : "us-gaap:LiabilitiesAndStockholdersEquity", 
            "Id" : "fb61dbb0-795b-42ef-aed7-a0cad0d83ab6"
          }, 
          "us-gaap:LiabilitiesAndPartnersCapital" : {
            "Name" : "us-gaap:LiabilitiesAndPartnersCapital", 
            "Id" : "9b9d5911-d41f-4bfa-8629-bafdd65633a2"
          }
        }, 
        "Id" : "386fb54b-be85-439d-8c8f-a8de6dbe6645"
      }, 
      "fac:Equity" : {
        "Name" : "fac:Equity", 
        "Label" : "Equity", 
        "To" : {
          "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "e7cdca85-90c9-4a5b-9ac9-23210815c305"
          }, 
          "us-gaap:StockholdersEquity" : {
            "Name" : "us-gaap:StockholdersEquity", 
            "Id" : "cf8ae180-79f8-48b9-b488-655a5e573273"
          }, 
          "us-gaap:PartnersCapitalIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:PartnersCapitalIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "1f1ba1c9-950a-4fde-8fd2-4b0bc0cd9704"
          }, 
          "us-gaap:PartnersCapital" : {
            "Name" : "us-gaap:PartnersCapital", 
            "Id" : "e2b7aa6c-c318-4ee9-8109-d1a9cacfaae5"
          }, 
          "us-gaap:CommonStockholdersEquity" : {
            "Name" : "us-gaap:CommonStockholdersEquity", 
            "Id" : "3a69c455-7add-4c6c-8211-546bab089a62"
          }, 
          "us-gaap:MembersEquity" : {
            "Name" : "us-gaap:MembersEquity", 
            "Id" : "138f2524-347a-41b4-bbf6-0a050998a0eb"
          }, 
          "us-gaap:AssetsNet" : {
            "Name" : "us-gaap:AssetsNet", 
            "Id" : "8aed433c-2162-4390-b1be-ed8b0940edf0"
          }
        }, 
        "Id" : "e16d271b-df21-42c6-a5ed-0928d20d6f21"
      }, 
      "fac:DocumentType" : {
        "Name" : "fac:DocumentType", 
        "Label" : "Document Type", 
        "To" : {
          "dei:DocumentType" : {
            "Name" : "dei:DocumentType", 
            "Id" : "d8b483e9-db29-440f-b7d5-240946404a1e"
          }
        }, 
        "Id" : "77101f28-34db-4f05-a14a-9961420cb83e"
      }, 
      "fac:IncomeLossFromEquityMethodInvestments" : {
        "Name" : "fac:IncomeLossFromEquityMethodInvestments", 
        "Label" : "Income (Loss) from Equity Method Investments", 
        "To" : {
          "us-gaap:IncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromEquityMethodInvestments", 
            "Id" : "a062d305-38ea-48ec-b62a-aebee5db5abb"
          }
        }, 
        "Id" : "b300a427-367b-480d-876f-2b6365a8baaf"
      }, 
      "fac:ComprehensiveIncomeLoss" : {
        "Name" : "fac:ComprehensiveIncomeLoss", 
        "Label" : "Comprehensive Income (Loss)", 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "74d96e8c-ffdb-4649-aa22-bcec2cec5300"
          }, 
          "us-gaap:ComprehensiveIncomeNetOfTax" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTax", 
            "Id" : "c68aef9b-ede7-4849-828b-1de18b5f3136"
          }
        }, 
        "Id" : "779b32b0-fe3f-4da9-853d-0735cd8f2c87"
      }, 
      "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest" : {
        "Name" : "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
        "Label" : "Comprehensive Income (Loss) Attributable to Noncontrolling Interest", 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest", 
            "Id" : "f12df204-3795-4fe5-854f-39559019721c"
          }
        }, 
        "Id" : "61e872e4-54fe-4c51-8178-676311ba2192"
      }, 
      "fac:CurrentAssets" : {
        "Name" : "fac:CurrentAssets", 
        "Label" : "Current Assets", 
        "To" : {
          "us-gaap:AssetsCurrent" : {
            "Name" : "us-gaap:AssetsCurrent", 
            "Id" : "5e8823ad-0532-446b-83fc-7631f49e0aac"
          }
        }, 
        "Id" : "2a6e9641-464d-4b2f-995d-0097201a03bb"
      }, 
      "fac:NetCashFlowsFromOperatingActivitiesContinuing" : {
        "Name" : "fac:NetCashFlowsFromOperatingActivitiesContinuing", 
        "Label" : "Net Cash Flows from Operating Activities, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInOperatingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInOperatingActivitiesContinuingOperations", 
            "Id" : "d9e29620-7612-468a-8bc2-b3e273c32306"
          }
        }, 
        "Id" : "0f14e897-d196-4d2b-a745-c72e57ce7d0f"
      }, 
      "fac:NetCashFlowsFromFinancingActivities" : {
        "Name" : "fac:NetCashFlowsFromFinancingActivities", 
        "Label" : "Net Cash Flows from Financing Activities", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInFinancingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInFinancingActivities", 
            "Id" : "cb9f919f-5426-4e5f-9056-ffa5dde75f18"
          }
        }, 
        "Id" : "9ea62437-0564-4b3f-a962-a344c8723c12"
      }, 
      "fac:RedeemableNoncontrollingInterest" : {
        "Name" : "fac:RedeemableNoncontrollingInterest", 
        "Label" : "Redeemable Noncontrolling Interest", 
        "To" : {
          "us-gaap:RedeemableNoncontrollingInterestEquityCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityCarryingAmount", 
            "Id" : "f49fbd6a-d12c-4af1-97a3-4795584f8d4b"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount", 
            "Id" : "d4dfd2e8-9719-44dd-8059-e52b16122c77"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityPreferredCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityPreferredCarryingAmount", 
            "Id" : "a803c07d-e18d-4aea-88ab-3d3e1cc9fc85"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityOtherCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityOtherCarryingAmount", 
            "Id" : "04429a85-b40a-4567-be3d-8cf59c76d1a8"
          }
        }, 
        "Id" : "565fe376-00c8-4773-9407-5eaf4b7808fa"
      }, 
      "fac:TemporaryEquity" : {
        "Name" : "fac:TemporaryEquity", 
        "Label" : "Temporary Equity", 
        "To" : {
          "us-gaap:TemporaryEquityCarryingAmountIncludingPortionAttributableToNoncontrollingInterests" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmountIncludingPortionAttributableToNoncontrollingInterests", 
            "Id" : "98e13b98-100b-4268-8078-1320227eeceb"
          }, 
          "us-gaap:TemporaryEquityRedemptionValue" : {
            "Name" : "us-gaap:TemporaryEquityRedemptionValue", 
            "Id" : "5a5c28e3-0b7b-4144-9ef2-61e57384ccbf"
          }, 
          "us-gaap:RedeemablePreferredStockCarryingAmount" : {
            "Name" : "us-gaap:RedeemablePreferredStockCarryingAmount", 
            "Id" : "b1e188a4-98a5-471d-a252-d536d7e977bf"
          }, 
          "us-gaap:TemporaryEquityCarryingAmount" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmount", 
            "Id" : "b33c86fa-8f9c-4b27-9d0f-d32e52a14a57"
          }, 
          "us-gaap:TemporaryEquityValueExcludingAdditionalPaidInCapital" : {
            "Name" : "us-gaap:TemporaryEquityValueExcludingAdditionalPaidInCapital", 
            "Id" : "447ac7b3-f2e4-41d5-99dd-f04bd9bf13b3"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityFairValue" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityFairValue", 
            "Id" : "901e881d-7ae4-4ae0-a187-9c3191bd4101"
          }, 
          "us-gaap:TemporaryEquityCarryingAmountAttributableToParent" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmountAttributableToParent", 
            "Id" : "31845664-1885-48f1-b4d3-7547120b28c3"
          }
        }, 
        "Id" : "5eac8b86-0566-437e-8b9a-9e02f4b523d9"
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
    "Id" : "bs_Assets", 
    "Type" : "xbrl28:formula", 
    "Label" : "Assets imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:Assets\", \"fac:CurrentAssets\", \"fac:NoncurrentAssets\", \"fac:Liabilities\", \"fac:LiabilitiesAndEquity\", \"fac:Equity\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"] let $CurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"] let $NoncurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"] let $Liabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Liabilities\"] let $LiabilitiesAndEquity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:LiabilitiesAndEquity\"] let $Equity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Equity\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch (true) case exists($Assets) return $Assets case (exists($LiabilitiesAndEquity)) and (rules:decimal-value ($CurrentAssets) eq rules:decimal-value($LiabilitiesAndEquity)) return let $computed-value := rules:decimal-value($CurrentAssets) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:Assets\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($CurrentAssets, \"CurrentAssets\") let $source-facts := $CurrentAssets return rules:create-computed-fact( $LiabilitiesAndEquity, \"fac:Assets\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) case (empty($NoncurrentAssets)) and (exists($LiabilitiesAndEquity)) and (rules:decimal-value($LiabilitiesAndEquity) eq (rules:decimal-value($Equity) + rules:decimal-value($Liabilities))) return let $computed-value := rules:decimal-value($CurrentAssets) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:Assets\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($CurrentAssets, \"CurrentAssets\") let $source-facts := $CurrentAssets return rules:create-computed-fact( $LiabilitiesAndEquity, \"fac:Assets\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:Assets" ], 
    "DependsOn" : [ "fac:CurrentAssets", "fac:NoncurrentAssets", "fac:Liabilities", "fac:LiabilitiesAndEquity", "fac:Equity" ]
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
    "Id" : "bs_NoncurrentAssets", 
    "Type" : "xbrl28:formula", 
    "Label" : "NoncurrentAssets imputation", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NoncurrentAssets\", \"fac:Assets\", \"fac:CurrentAssets\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NoncurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"] let $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"] let $CurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($NoncurrentAssets) return $NoncurrentAssets case exists($Assets) and exists($CurrentAssets) return let $computed-value := rules:decimal-value($Assets) - rules:decimal-value($CurrentAssets) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NoncurrentAssets\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($Assets, \"Assets\") || \" - \" || rules:fact-trail($CurrentAssets, \"CurrentAssets\") let $source-facts := ($Assets, $CurrentAssets) return rules:create-computed-fact( $Assets, \"fac:NoncurrentAssets\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NoncurrentAssets" ], 
    "DependsOn" : [ "fac:Assets", "fac:CurrentAssets" ]
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
    "Id" : "BS3", 
    "Type" : "xbrl28:validation", 
    "Label" : "Assets = CurrentAssets + NoncurrentAssets", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:Assets\", \"fac:CurrentAssets\", \"fac:NoncurrentAssets\", \"fac:CurrentLiabilities\", \"fac:NoncurrentLiabilities\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"] let $CurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"] let $NoncurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"] let $CurrentLiabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentLiabilities\"] let $NoncurrentLiabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentLiabilities\"] where exists($Assets) and not(rules:decimal-value($CurrentAssets) eq 0 and rules:decimal-value($NoncurrentAssets) eq 0 and rules:decimal-value($CurrentLiabilities) eq 0 and rules:decimal-value($NoncurrentLiabilities) eq 0) return let $test := rules:decimal-value($Assets) eq (rules:decimal-value($CurrentAssets) + rules:decimal-value($NoncurrentAssets)) let $audit-trail-message := rules:fact-trail($Assets) || (if($test) then \" = \" else \" != \") || \"(\" || rules:fact-trail($CurrentAssets,\"CurrentAssets\") || \" + \" || rules:fact-trail($NoncurrentAssets,\"NoncurrentAssets\") || \")\" let $source-facts := ( $CurrentAssets, $NoncurrentAssets, $CurrentLiabilities, $NoncurrentLiabilities) return rules:create-computed-fact( $Assets, \"fac:AssetsValidation\", $test, $rule, $audit-trail-message, $source-facts, $options, $Assets, $test)", 
    "ComputableConcepts" : [ "fac:AssetsValidation" ], 
    "ValidatedConcepts" : [ "fac:Assets" ], 
    "DependsOn" : [ "fac:CurrentAssets", "fac:NoncurrentAssets", "fac:CurrentLiabilities", "fac:NoncurrentLiabilities" ]
  }, {
    "Id" : "BS2", 
    "Type" : "xbrl28:validation", 
    "Label" : "Assets = LiabilitiesAndEquity", 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:Assets\", \"fac:LiabilitiesAndEquity\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"] let $LiabilitiesAndEquity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:LiabilitiesAndEquity\"] where exists($Assets) return let $test := rules:decimal-value($Assets) eq rules:decimal-value($LiabilitiesAndEquity) let $audit-trail-message := rules:fact-trail($Assets) || (if($test) then \" = \" else \" != \") || \"\" || rules:fact-trail($LiabilitiesAndEquity,\"LiabilitiesAndEquity\") || \"\" let $source-facts := ( $LiabilitiesAndEquity) return rules:create-computed-fact( $Assets, \"fac:Assets2Validation\", $test, $rule, $audit-trail-message, $source-facts, $options, $Assets, $test)", 
    "ComputableConcepts" : [ "fac:Assets2Validation" ], 
    "ValidatedConcepts" : [ "fac:Assets" ], 
    "DependsOn" : [ "fac:LiabilitiesAndEquity" ]
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
    "Id" : "VAL1", 
    "Type" : "xbrl28:formula", 
    "Label" : "Validation Statistics", 
    "Formula" : "let $validations := (\"fac:EquityValidation\", \"fac:AssetsValidation\", \"fac:Assets2Validation\", \"fac:LiabilitiesValidation\", \"fac:LiabilitiesAndEquityValidation\", \"fac:NetCashFlowsValidation\", \"fac:NetCashFlowsContinuingValidation\", \"fac:NetCashFlowsDiscontinuedValidation\", \"fac:NetCashFlowsFromOperatingActivitiesValidation\", \"fac:NetCashFlowsFromInvestingActivitiesValidation\", \"fac:NetCashFlowsFromFinancingActivitiesValidation\", \"fac:GrossProfitValidation\", \"fac:OperatingIncomeLossValidation\", \"fac:OperatingIncomeLoss2Validation\", \"fac:IncomeBeforeEquityMethodInvestmentsValidation\", \"fac:IncomeLossFromContinuingOperationsBeforeTaxValidation\", \"fac:IncomeLossFromContinuingOperationsAfterTaxValidation\", \"fac:NetIncomeLossValidation\", \"fac:NetIncomeLoss2Validation\", \"fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation\", \"fac:ComprehensiveIncomeLossValidation\", \"fac:ComprehensiveIncomeLoss2Validation\") for $facts in facts:facts-for-internal($validations, $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) let $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1] group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", $facts:PERIOD, \"Balance\")), $aligned-period return let $passed as object* := $facts[$$.Value eq true] let $failed as object* := $facts[$$.Value eq false] let $not-applied as string* := distinct-values($validations)[not($$ = $facts.$facts:ASPECTS.$facts:CONCEPT)] for $concept in flatten($aligned-filter.$facts:ASPECTS.$facts:CONCEPT) return switch ($concept) case \"fac:PassedValidations\" return let $computed-value := count($passed) let $audit-trail-message := \"count(\" || string-join($passed.$facts:ASPECTS.$facts:CONCEPT, \", \") || \")\" let $source-facts := ($passed) return copy $new := rules:create-computed-fact( ($facts[exists(facts:instant-for-fact($$))],$facts)[1], \"fac:PassedValidations\", $computed-value, {Label: $rule.Label || \": Passed Validations\", Type: \"xbrl28:formula\" }, $audit-trail-message, $source-facts, $options) modify ( if(exists($new.$facts:ASPECTS.$facts:UNIT)) then replace value of json $new.$facts:ASPECTS.$facts:UNIT with \"pure\" else insert json {$facts:UNIT : \"pure\"} into $new.$facts:ASPECTS, if(exists($new.Type)) then replace value of json $new.Type with \"NumericValue\" else insert json { Type : \"NumericValue\"} into $new, if(exists($new.Decimals)) then replace value of json $new.Decimals with 0 else insert json { Decimals : 0} into $new ) return $new case \"fac:FailedValidations\" return let $computed-value := count($failed) let $audit-trail-message := \"count(\" || string-join($failed.$facts:ASPECTS.$facts:CONCEPT, \", \") || \")\" let $source-facts := ($failed) return copy $new := rules:create-computed-fact( ($facts[exists(facts:instant-for-fact($$))],$facts)[1], \"fac:FailedValidations\", $computed-value, {Label: $rule.Label || \": Passed Validations\", Type: \"xbrl28:formula\" }, $audit-trail-message, $source-facts, $options) modify ( if(exists($new.$facts:ASPECTS.$facts:UNIT)) then replace value of json $new.$facts:ASPECTS.$facts:UNIT with \"pure\" else insert json {$facts:UNIT : \"pure\"} into $new.$facts:ASPECTS, if(exists($new.Type)) then replace value of json $new.Type with \"NumericValue\" else insert json { Type : \"NumericValue\"} into $new, if(exists($new.Decimals)) then replace value of json $new.Decimals with 0 else insert json { Decimals : 0} into $new ) return $new case \"fac:NotApplicableValidations\" return let $computed-value := count($not-applied) let $audit-trail-message := \"count(\" || string-join($not-applied, \", \") || \")\" let $source-facts := () return copy $new := rules:create-computed-fact( ($facts[exists(facts:instant-for-fact($$))],$facts)[1], \"fac:NotApplicableValidations\", $computed-value, {Label: $rule.Label || \": Validations that couldn't be applied\", Type: \"xbrl28:formula\" }, $audit-trail-message, $source-facts, $options) modify ( if(exists($new.$facts:ASPECTS.$facts:UNIT)) then replace value of json $new.$facts:ASPECTS.$facts:UNIT with \"pure\" else insert json {$facts:UNIT : \"pure\"} into $new.$facts:ASPECTS, if(exists($new.Type)) then replace value of json $new.Type with \"NumericValue\" else insert json { Type : \"NumericValue\"} into $new, if(exists($new.Decimals)) then replace value of json $new.Decimals with 0 else insert json { Decimals : 0} into $new ) return $new default return ()", 
    "ComputableConcepts" : [ "fac:PassedValidations", "fac:FailedValidations", "fac:NotApplicableValidations" ], 
    "DependsOn" : [ "fac:EquityValidation", "fac:AssetsValidation", "fac:Assets2Validation", "fac:LiabilitiesValidation", "fac:LiabilitiesAndEquityValidation", "fac:NetCashFlowsValidation", "fac:NetCashFlowsContinuingValidation", "fac:NetCashFlowsDiscontinuedValidation", "fac:NetCashFlowsFromOperatingActivitiesValidation", "fac:NetCashFlowsFromInvestingActivitiesValidation", "fac:NetCashFlowsFromFinancingActivitiesValidation", "fac:GrossProfitValidation", "fac:OperatingIncomeLossValidation", "fac:OperatingIncomeLoss2Validation", "fac:IncomeBeforeEquityMethodInvestmentsValidation", "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", "fac:NetIncomeLossValidation", "fac:NetIncomeLoss2Validation", "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", "fac:ComprehensiveIncomeLossValidation", "fac:ComprehensiveIncomeLoss2Validation" ]
  } ]
}

let $record := find("reportschemas", { "_id" : "FundamentalAccountingConcepts" })
return
if(empty($record))
then insert("reportschemas", $schema);
else edit($record, $schema);

if (is-available-collection("reportcache"))
then truncate("reportcache");
else create("reportcache");
"Schema successfully deployed."