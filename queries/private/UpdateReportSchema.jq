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
                    "Id" : "f1079749-bb6a-4b89-8eae-1b0c55929348"
                  }, 
                  "fac:EntityCentralIndexKey" : {
                    "Name" : "fac:EntityCentralIndexKey", 
                    "Label" : "Central Index Key (CIK)", 
                    "Id" : "2b57b840-4e8a-4dc9-9b00-f63d7657ac0e"
                  }, 
                  "fac:EntityFilerCategory" : {
                    "Name" : "fac:EntityFilerCategory", 
                    "Label" : "Entity Filer Category", 
                    "Id" : "6f6cb7e3-a1a1-49eb-843a-245b9f244da7"
                  }, 
                  "fac:TradingSymbol" : {
                    "Name" : "fac:TradingSymbol", 
                    "Label" : "Trading Symbol", 
                    "Id" : "a1699000-b7d3-4cff-9662-8ed6602cb0f9"
                  }, 
                  "fac:FiscalYearEnd" : {
                    "Name" : "fac:FiscalYearEnd", 
                    "Label" : "Fiscal Year End", 
                    "Id" : "f67c8ba4-fdd0-4c55-8149-597be484fe0a"
                  }, 
                  "fac:FiscalYear" : {
                    "Name" : "fac:FiscalYear", 
                    "Label" : "Fiscal Year", 
                    "Id" : "cf480f34-819c-4986-8bb9-ce77092f89f4"
                  }, 
                  "fac:FiscalPeriod" : {
                    "Name" : "fac:FiscalPeriod", 
                    "Label" : "Fiscal Period", 
                    "Id" : "0b7276c9-a8ff-4f5f-86cb-69dc6f3d2661"
                  }, 
                  "fac:DocumentType" : {
                    "Name" : "fac:DocumentType", 
                    "Label" : "Document Type", 
                    "Id" : "7c47570f-a107-4b84-afb7-90100cc08beb"
                  }, 
                  "fac:BalanceSheetDate" : {
                    "Name" : "fac:BalanceSheetDate", 
                    "Label" : "Balance Sheet Date", 
                    "Id" : "191cb2b2-b339-46bd-8b47-e3d6b36e4987"
                  }, 
                  "fac:IncomeStatementStartPeriod" : {
                    "Name" : "fac:IncomeStatementStartPeriod", 
                    "Label" : "Income Statement Start of Period", 
                    "Id" : "b6501ead-df8d-4bbd-89d2-2ebf3dcd3d9f"
                  }, 
                  "fac:BalanceSheetFormat" : {
                    "Name" : "fac:BalanceSheetFormat", 
                    "Label" : "Balance Sheet Format", 
                    "Id" : "53a1c9e5-0296-4e5e-9886-9ab3364d2c5d"
                  }, 
                  "fac:IncomeStatementFormat" : {
                    "Name" : "fac:IncomeStatementFormat", 
                    "Label" : "Income Statement Format", 
                    "Id" : "8719be24-8b28-46a4-98c3-eeca64643691"
                  }, 
                  "fac:NatureOfOperations" : {
                    "Name" : "fac:NatureOfOperations", 
                    "Label" : "Nature of Operations", 
                    "Id" : "5d414999-4aa3-4c57-810a-f9822e5ff60c"
                  }
                }, 
                "Id" : "ee97d4ab-704d-4bc7-9eee-f775969673fd"
              }, 
              "fac:BalanceSheetHierarchy" : {
                "Name" : "fac:BalanceSheetHierarchy", 
                "Label" : "Balance Sheet [Hierarchy]", 
                "To" : {
                  "fac:CurrentAssets" : {
                    "Name" : "fac:CurrentAssets", 
                    "Label" : "Current Assets", 
                    "Order" : 1, 
                    "Id" : "239d38f8-c64a-411f-8783-5b7e74a97d00"
                  }, 
                  "fac:NoncurrentAssets" : {
                    "Name" : "fac:NoncurrentAssets", 
                    "Label" : "Noncurrent Assets", 
                    "Order" : 2, 
                    "Id" : "e5e52c3c-9412-465a-b55e-f2874659b193"
                  }, 
                  "fac:Assets" : {
                    "Name" : "fac:Assets", 
                    "Label" : "Assets", 
                    "Order" : 3, 
                    "Id" : "a02a0d00-1309-4498-b6ca-ee3184d92a28"
                  }, 
                  "fac:CurrentLiabilities" : {
                    "Name" : "fac:CurrentLiabilities", 
                    "Label" : "Current Liabilities", 
                    "Order" : 4, 
                    "Id" : "3c09f5ee-d98b-4fc9-a8a9-e2e9e431b2d3"
                  }, 
                  "fac:NoncurrentLiabilities" : {
                    "Name" : "fac:NoncurrentLiabilities", 
                    "Label" : "Noncurrent Liabilities", 
                    "Order" : 5, 
                    "Id" : "c4d42a3d-96f6-4740-953a-29c468ee742b"
                  }, 
                  "fac:Liabilities" : {
                    "Name" : "fac:Liabilities", 
                    "Label" : "Liabilities", 
                    "Order" : 6, 
                    "Id" : "58c43b87-dec6-4d2b-b5bf-eb2769885333"
                  }, 
                  "fac:CommitmentsAndContingencies" : {
                    "Name" : "fac:CommitmentsAndContingencies", 
                    "Label" : "Commitments and Contingencies", 
                    "Order" : 7, 
                    "Id" : "7f4eb288-8756-46b2-98c9-2d28578fc78a"
                  }, 
                  "fac:TemporaryEquity" : {
                    "Name" : "fac:TemporaryEquity", 
                    "Label" : "Temporary Equity", 
                    "Order" : 8, 
                    "Id" : "41fcf92f-04d5-442b-adf8-1f88040debd9"
                  }, 
                  "fac:RedeemableNoncontrollingInterest" : {
                    "Name" : "fac:RedeemableNoncontrollingInterest", 
                    "Label" : "Redeemable Noncontrolling Interest", 
                    "Order" : 9, 
                    "Id" : "0f8c4e13-2c18-4540-9139-38a4e0d20230"
                  }, 
                  "fac:EquityAttributableToParent" : {
                    "Name" : "fac:EquityAttributableToParent", 
                    "Label" : "Equity Attributable to Parent", 
                    "Order" : 10, 
                    "Id" : "2c75735d-1f5a-44a1-948b-ae8d9484c55a"
                  }, 
                  "fac:EquityAttributableToNoncontrollingInterest" : {
                    "Name" : "fac:EquityAttributableToNoncontrollingInterest", 
                    "Label" : "Equity Attributable to Noncontrolling Interest", 
                    "Order" : 11, 
                    "Id" : "e463eb3a-8bdf-4147-bca8-f419c97b79cb"
                  }, 
                  "fac:Equity" : {
                    "Name" : "fac:Equity", 
                    "Label" : "Equity", 
                    "Order" : 12, 
                    "Id" : "d7afa58e-859d-468f-83dd-914c7facc732"
                  }, 
                  "fac:LiabilitiesAndEquity" : {
                    "Name" : "fac:LiabilitiesAndEquity", 
                    "Label" : "Liabilities and Equity", 
                    "Order" : 13, 
                    "Id" : "fe3b3335-d5f3-4ed0-b82b-20d7d5a5469d"
                  }
                }, 
                "Id" : "7de95353-874a-4f1a-9ee2-e1cd4a757374"
              }, 
              "fac:IncomeStatementHierarchy" : {
                "Name" : "fac:IncomeStatementHierarchy", 
                "Label" : "Income Statement [Hierarchy]", 
                "To" : {
                  "fac:Revenues" : {
                    "Name" : "fac:Revenues", 
                    "Label" : "Revenues", 
                    "Order" : 1, 
                    "Id" : "6c966ba9-4b49-4725-badc-7ccd7763d2ca"
                  }, 
                  "fac:CostOfRevenue" : {
                    "Name" : "fac:CostOfRevenue", 
                    "Label" : "Cost of Revenues", 
                    "Order" : 2, 
                    "Id" : "e116bec7-8064-4727-8035-57bc78c9bd72"
                  }, 
                  "fac:GrossProfit" : {
                    "Name" : "fac:GrossProfit", 
                    "Label" : "Gross Profit", 
                    "Order" : 3, 
                    "Id" : "b74a92c6-7639-459f-831a-3cf38702a9b7"
                  }, 
                  "fac:OperatingExpenses" : {
                    "Name" : "fac:OperatingExpenses", 
                    "Label" : "Operating Expenses", 
                    "Order" : 4, 
                    "Id" : "ee9d8605-b82d-4e02-91be-5c23c0114779"
                  }, 
                  "fac:CostsAndExpenses" : {
                    "Name" : "fac:CostsAndExpenses", 
                    "Label" : "Costs and Expenses", 
                    "Order" : 5, 
                    "Id" : "cd43bba5-1b0c-43e9-bb2c-c34d95f75263"
                  }, 
                  "fac:OtherOperatingIncomeExpenses" : {
                    "Name" : "fac:OtherOperatingIncomeExpenses", 
                    "Label" : "Other Operating Income (Expenses)", 
                    "Order" : 6, 
                    "Id" : "75926861-39ae-4bba-a511-5984f69b4a4d"
                  }, 
                  "fac:OperatingIncomeLoss" : {
                    "Name" : "fac:OperatingIncomeLoss", 
                    "Label" : "Operating Income (Loss)", 
                    "Order" : 7, 
                    "Id" : "7f2f3c44-d81a-4754-987b-1dc2ce1799a0"
                  }, 
                  "fac:NonoperatingIncomeLoss" : {
                    "Name" : "fac:NonoperatingIncomeLoss", 
                    "Label" : "Nonoperating Income (Loss)", 
                    "Order" : 8, 
                    "Id" : "3ec64471-da6f-4739-a83f-8197a481d7ef"
                  }, 
                  "fac:InterestAndDebtExpense" : {
                    "Name" : "fac:InterestAndDebtExpense", 
                    "Label" : "Interest and Debt Expense", 
                    "Order" : 9, 
                    "Id" : "cf86202f-2be1-41e4-9f6c-a448e87b0de0"
                  }, 
                  "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense" : {
                    "Name" : "fac:NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                    "Label" : "Nonoperating Income (Loss) + Interest and Debt Expense", 
                    "Order" : 10, 
                    "Id" : "2da28cb9-1a48-4517-9ce2-60aa33eec2b2"
                  }, 
                  "fac:IncomeBeforeEquityMethodInvestments" : {
                    "Name" : "fac:IncomeBeforeEquityMethodInvestments", 
                    "Label" : "Income (Loss) Before Equity Method Investments", 
                    "Order" : 11, 
                    "Id" : "88be833e-a1d8-4ec5-aa35-bfc4c02377e9"
                  }, 
                  "fac:IncomeLossFromEquityMethodInvestments" : {
                    "Name" : "fac:IncomeLossFromEquityMethodInvestments", 
                    "Label" : "Income (Loss) from Equity Method Investments", 
                    "Order" : 12, 
                    "Id" : "63005aa7-fd36-499c-bac0-8b41022ca14c"
                  }, 
                  "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments" : {
                    "Name" : "fac:NonoperatingIncomePlusInterestAndDebtExpensePlusIncomeFromEquityMethodInvestments", 
                    "Label" : "Nonoperating Income (Loss) + Interest and Debt Expense + Income (Loss) from Equity Method Investments", 
                    "Order" : 13, 
                    "Id" : "4289a83c-43ee-4a9d-aaca-fcd062ddc041"
                  }, 
                  "fac:IncomeLossFromContinuingOperationsBeforeTax" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTax", 
                    "Label" : "Income (Loss) from Continuing Operations Before Tax", 
                    "Order" : 14, 
                    "Id" : "0659b0a4-20c7-4cb4-ac17-a6ad0b22da12"
                  }, 
                  "fac:IncomeTaxExpenseBenefit" : {
                    "Name" : "fac:IncomeTaxExpenseBenefit", 
                    "Label" : "Income Tax Expense (Benefit)", 
                    "Order" : 15, 
                    "Id" : "cbfcb2b0-e79e-4d12-8d16-1e805da49d6c"
                  }, 
                  "fac:IncomeLossFromContinuingOperationsAfterTax" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsAfterTax", 
                    "Label" : "Income (Loss) from Continuing Operations After Tax", 
                    "Order" : 16, 
                    "Id" : "209aba39-9372-423a-b889-362d5083db95"
                  }, 
                  "fac:IncomeLossFromDiscontinuedOperationsNetTax" : {
                    "Name" : "fac:IncomeLossFromDiscontinuedOperationsNetTax", 
                    "Label" : "Income (Loss) from Discontinued Operations, Net of Tax", 
                    "Order" : 17, 
                    "Id" : "2b0a6aec-2f36-47df-8710-be04dfa4d21e"
                  }, 
                  "fac:ExtraordinaryItemsIncomeExpenseNetTax" : {
                    "Name" : "fac:ExtraordinaryItemsIncomeExpenseNetTax", 
                    "Label" : "Extraordinary Items of Income (Expense), Net of Tax", 
                    "Order" : 18, 
                    "Id" : "04e30b2b-1b14-4f06-a6ae-b6a6fcf3d057"
                  }, 
                  "fac:NetIncomeLoss" : {
                    "Name" : "fac:NetIncomeLoss", 
                    "Label" : "Net Income (Loss)", 
                    "Order" : 19, 
                    "Id" : "477c3aa6-e89d-4cc5-afcc-dbb324454278"
                  }, 
                  "fac:NetIncomeAttributableToParent" : {
                    "Name" : "fac:NetIncomeAttributableToParent", 
                    "Label" : "Net Income Attributable to Parent", 
                    "Order" : 20, 
                    "Id" : "6f500a77-9af3-4a72-9df5-a080e677edaa"
                  }, 
                  "fac:NetIncomeAttributableToNoncontrollingInterest" : {
                    "Name" : "fac:NetIncomeAttributableToNoncontrollingInterest", 
                    "Label" : "Net Income Attributable to Noncontrolling Interest", 
                    "Order" : 21, 
                    "Id" : "83463da1-5249-49f0-b710-b8c6e15f9c14"
                  }, 
                  "fac:ResearchAndDevelopment" : {
                    "Name" : "fac:ResearchAndDevelopment", 
                    "Label" : "Research and Development", 
                    "Order" : 22, 
                    "Id" : "998f37a0-3d96-46ae-a203-302981f29f41"
                  }, 
                  "fac:PreferredStockDividendsAndOtherAdjustments" : {
                    "Name" : "fac:PreferredStockDividendsAndOtherAdjustments", 
                    "Label" : "Preferred Stock Dividends and Other Adjustments", 
                    "Order" : 23, 
                    "Id" : "28d0be7c-c6ea-4e5d-888c-db9609d0e19d"
                  }, 
                  "fac:NetIncomeLossAvailableToCommonStockholdersBasic" : {
                    "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
                    "Label" : "Net Income (Loss) Available to Common Stockholders, Basic", 
                    "Order" : 24, 
                    "Id" : "9d851f9c-26e8-4be8-acba-c905b677adc7"
                  }
                }, 
                "Id" : "ac114baa-eec5-46b0-9d42-94d6e9339956"
              }, 
              "fac:StatementComprehensiveIncomeHierarchy" : {
                "Name" : "fac:StatementComprehensiveIncomeHierarchy", 
                "Label" : "Statement of Comprehensive Income [Hierarchy]", 
                "To" : {
                  "fac:NetIncomeLoss" : {
                    "Name" : "fac:NetIncomeLoss", 
                    "Label" : "Net Income (Loss)", 
                    "Order" : 1, 
                    "Id" : "19630171-0438-46c8-8061-51f94c4b5139"
                  }, 
                  "fac:OtherComprehensiveIncomeLoss" : {
                    "Name" : "fac:OtherComprehensiveIncomeLoss", 
                    "Label" : "Other Comprehensive Income (Loss)", 
                    "Order" : 2, 
                    "Id" : "8b044028-5bbb-4e37-a299-3fe4f0c27d5b"
                  }, 
                  "fac:ComprehensiveIncomeLoss" : {
                    "Name" : "fac:ComprehensiveIncomeLoss", 
                    "Label" : "Comprehensive Income (Loss)", 
                    "Order" : 3, 
                    "Id" : "dab3c4f7-1753-4fe8-bd45-76089d1dcd75"
                  }, 
                  "fac:ComprehensiveIncomeLossAttributableToParent" : {
                    "Name" : "fac:ComprehensiveIncomeLossAttributableToParent", 
                    "Label" : "Comprehensive Income (Loss) Attributable to Parent", 
                    "Order" : 4, 
                    "Id" : "ae4e16cb-6a65-4404-bde6-8a5fd5200bbf"
                  }, 
                  "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest" : {
                    "Name" : "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                    "Label" : "Comprehensive Income (Loss) Attributable to Noncontrolling Interest", 
                    "Order" : 5, 
                    "Id" : "fc18b054-c6f4-484b-8dd9-120cc56b4a8c"
                  }
                }, 
                "Id" : "72166390-efe7-4f12-afa1-9abb4b9cdd5c"
              }, 
              "fac:CashFlowStatementHierarchy" : {
                "Name" : "fac:CashFlowStatementHierarchy", 
                "Label" : "Cash Flow Statement [Hierarchy]", 
                "To" : {
                  "fac:NetCashFlowsFromOperatingActivitiesContinuing" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivitiesContinuing", 
                    "Label" : "Net Cash Flows from Operating Activities, Continuing", 
                    "Order" : 1, 
                    "Id" : "1408317f-cecb-44bf-9ce0-111e53cfc05c"
                  }, 
                  "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flows from Operating Activities, Discontinued", 
                    "Order" : 2, 
                    "Id" : "ce55e8f5-e17f-4770-b3b6-3dd5cc67659d"
                  }, 
                  "fac:NetCashFlowsFromOperatingActivities" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivities", 
                    "Label" : "Net Cash Flows from Operating Activities", 
                    "Order" : 3, 
                    "Id" : "372f794f-5625-4354-9358-5b46f05c957e"
                  }, 
                  "fac:NetCashFlowsFromInvestingActivitiesContinuing" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivitiesContinuing", 
                    "Label" : "Net Cash Flows from Investing Activities, Continuing", 
                    "Order" : 4, 
                    "Id" : "f8bbc64f-1ff7-4b18-83de-87cd8b70eef0"
                  }, 
                  "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flows from Investing Activities, Discontinued", 
                    "Order" : 5, 
                    "Id" : "ac16cb52-8901-47a4-8b25-c221f836f1a1"
                  }, 
                  "fac:NetCashFlowsFromInvestingActivities" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivities", 
                    "Label" : "Net Cash Flows from Investing Activities", 
                    "Order" : 6, 
                    "Id" : "c34e4de9-323b-440d-960b-b87a5768b573"
                  }, 
                  "fac:NetCashFlowsFromFinancingActivitiesContinuing" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivitiesContinuing", 
                    "Label" : "Net Cash Flows from Financing Activities, Continuing", 
                    "Order" : 7, 
                    "Id" : "f1263386-973d-4a8d-8c6b-07dbab640642"
                  }, 
                  "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flows from Financing Activities, Discontinued", 
                    "Order" : 8, 
                    "Id" : "2677cf6e-c03f-4840-8561-e817e2cd18dc"
                  }, 
                  "fac:NetCashFlowsFromFinancingActivities" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivities", 
                    "Label" : "Net Cash Flows from Financing Activities", 
                    "Order" : 9, 
                    "Id" : "398c6c55-8597-4492-a4e9-62561e59aace"
                  }, 
                  "fac:NetCashFlowsContinuing" : {
                    "Name" : "fac:NetCashFlowsContinuing", 
                    "Label" : "Net Cash Flows, Continuing", 
                    "Order" : 10, 
                    "Id" : "a6350756-325d-4d59-98f8-0a25d657eaf4"
                  }, 
                  "fac:NetCashFlowsDiscontinued" : {
                    "Name" : "fac:NetCashFlowsDiscontinued", 
                    "Label" : "Net Cash Flows, Discontinued", 
                    "Order" : 11, 
                    "Id" : "41c3bf9f-afe0-4e69-900b-9d6ad33ad51e"
                  }, 
                  "fac:ExchangeGainsLosses" : {
                    "Name" : "fac:ExchangeGainsLosses", 
                    "Label" : "Exchange Gains (Losses)", 
                    "Order" : 12, 
                    "Id" : "d0a448d2-8e65-4f76-a36d-f1e62ff25709"
                  }, 
                  "fac:NetCashFlows" : {
                    "Name" : "fac:NetCashFlows", 
                    "Label" : "Net Cash Flows", 
                    "Order" : 13, 
                    "Id" : "2adc5ee2-51bd-4bd4-88e3-3de62db12792"
                  }
                }, 
                "Id" : "0c025df6-c894-4a46-82a8-16bb1d918fa2"
              }, 
              "fac:KeyRatiosHierarchy" : {
                "Name" : "fac:KeyRatiosHierarchy", 
                "Label" : "Key Ratios [Hierarchy]", 
                "To" : {
                  "fac:ReturnOnEquity" : {
                    "Name" : "fac:ReturnOnEquity", 
                    "Label" : "Return on Equity (ROE)", 
                    "Order" : 1, 
                    "Id" : "bdae2799-5f78-4463-8141-00b532e1e038"
                  }, 
                  "fac:ReturnOnAssets" : {
                    "Name" : "fac:ReturnOnAssets", 
                    "Label" : "Return on Assets (ROA)", 
                    "Order" : 2, 
                    "Id" : "a0f57e8d-89ad-458c-88b1-a48ba23c7395"
                  }, 
                  "fac:ReturnOnSalesROS" : {
                    "Name" : "fac:ReturnOnSalesROS", 
                    "Label" : "Return on Sales (ROS)", 
                    "Order" : 3, 
                    "Id" : "cea31b0f-5dd9-47f5-b2d1-bd72c12407be"
                  }, 
                  "fac:SustainableGrowthRate" : {
                    "Name" : "fac:SustainableGrowthRate", 
                    "Label" : "Sustainable Growth Rate (SGR)", 
                    "Order" : 4, 
                    "Id" : "5252d20e-34c9-412c-80f2-b893d654ac10"
                  }
                }, 
                "Id" : "6d7ac851-81ad-444b-bb75-161c00737b0c"
              }, 
              "fac:ValidationStatistics" : {
                "Name" : "fac:ValidationStatistics", 
                "Label" : "Validation Rule Statistics [Hierarchy]", 
                "To" : {
                  "fac:PassedValidations" : {
                    "Name" : "fac:PassedValidations", 
                    "Label" : "Passed Validations", 
                    "Id" : "abce42c7-e9f3-4324-a73b-f6db7da07eff"
                  }, 
                  "fac:FailedValidations" : {
                    "Name" : "fac:FailedValidations", 
                    "Label" : "Failing Validations", 
                    "Id" : "d753f11f-0041-455e-983e-062d70af9336"
                  }, 
                  "fac:NotApplicableValidations" : {
                    "Name" : "fac:NotApplicableValidations", 
                    "Label" : "Skipped Validations (unmet preconditions)", 
                    "Id" : "e2e55c97-24dc-4600-8c5e-a73e6c09b20b"
                  }
                }, 
                "Id" : "41274d2d-6f2a-4e47-9327-c0171463f996"
              }, 
              "fac:Validations" : {
                "Name" : "fac:Validations", 
                "Label" : "Fact Validation Rule Results [Hierarchy]", 
                "To" : {
                  "fac:EquityValidation" : {
                    "Name" : "fac:EquityValidation", 
                    "Label" : "Equity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest", 
                    "Id" : "321594d1-475d-42cf-9462-812a18de14f3"
                  }, 
                  "fac:Assets2Validation" : {
                    "Name" : "fac:Assets2Validation", 
                    "Label" : "Assets = LiabilitiesAndEquity", 
                    "Id" : "a6e2a23c-42a8-49a2-ae27-57f720b6330c"
                  }, 
                  "fac:AssetsValidation" : {
                    "Name" : "fac:AssetsValidation", 
                    "Label" : "Assets = CurrentAssets + NoncurrentAssets", 
                    "Id" : "004ce0f9-e0e9-4606-8665-59205cf55598"
                  }, 
                  "fac:LiabilitiesValidation" : {
                    "Name" : "fac:LiabilitiesValidation", 
                    "Label" : "Liabilities = CurrentLiabilities + NoncurrentLiabilities", 
                    "Id" : "aaf6e7db-261f-4610-a1e6-71994e854ccc"
                  }, 
                  "fac:LiabilitiesAndEquityValidation" : {
                    "Name" : "fac:LiabilitiesAndEquityValidation", 
                    "Label" : "LiabilitiesAndEquity = EquityAttributableToParent + EquityAttributableToNoncontrollingInterest", 
                    "Id" : "fc6f8538-b171-49fc-acdd-ef5bfbe36643"
                  }, 
                  "fac:GrossProfitValidation" : {
                    "Name" : "fac:GrossProfitValidation", 
                    "Label" : "GrossProfit = Revenues - CostOfRevenue", 
                    "Id" : "8ed46fda-c4d7-4a67-9540-9ac08bbcb8cf"
                  }, 
                  "fac:OperatingIncomeLossValidation" : {
                    "Name" : "fac:OperatingIncomeLossValidation", 
                    "Label" : "OperatingIncomeLoss = GrossProfit - OperatingExpenses + OtherOperatingIncomeExpenses", 
                    "Id" : "263f1b83-762e-4a91-97b1-dcbbfcecee6e"
                  }, 
                  "fac:IncomeBeforeEquityMethodInvestmentsValidation" : {
                    "Name" : "fac:IncomeBeforeEquityMethodInvestmentsValidation", 
                    "Label" : "IncomeBeforeEquityMethodInvestments = OperatingIncomeLoss + NonoperatingIncomeLossPlusInterestAndDebtExpense", 
                    "Id" : "30a76613-23dc-456d-b4ea-f899a446b12d"
                  }, 
                  "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTaxValidation", 
                    "Label" : "IncomeLossFromContinuingOperationsBeforeTax = IncomeBeforeEquityMethodInvestments + IncomeLossFromEquityMethodInvestments", 
                    "Id" : "98aa10ff-a80c-4b0a-9ed6-b9f27edb93bf"
                  }, 
                  "fac:IncomeLossFromContinuingOperationsAfterTaxValidation" : {
                    "Name" : "fac:IncomeLossFromContinuingOperationsAfterTaxValidation", 
                    "Label" : "IncomeLossFromContinuingOperationsAfterTax = IncomeLossFromContinuingOperationsBeforeTax - IncomeTaxExpenseBenefit", 
                    "Id" : "ba696487-98eb-4f56-b8e6-4680167e3745"
                  }, 
                  "fac:NetIncomeLossValidation" : {
                    "Name" : "fac:NetIncomeLossValidation", 
                    "Label" : "NetIncomeLoss = IncomeLossFromContinuingOperationsAfterTax + IncomeLossFromDiscontinuedOperationsNetTax + ExtraordinaryItemsIncomeExpenseNetTax", 
                    "Id" : "925f9293-ec0e-498f-9833-184050b7d900"
                  }, 
                  "fac:NetIncomeLoss2Validation" : {
                    "Name" : "fac:NetIncomeLoss2Validation", 
                    "Label" : "NetIncomeLoss = NetIncomeAttributableToParent + NetIncomeAttributableToNoncontrollingInterest", 
                    "Id" : "44b03699-58d4-4438-b5a0-196d53328a9a"
                  }, 
                  "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation" : {
                    "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasicValidation", 
                    "Label" : "NetIncomeLossAvailableToCommonStockholdersBasic = NetIncomeAttributableToParent - PreferredStockDividendsAndOtherAdjustments", 
                    "Id" : "635d0b73-cf0d-4882-a5cd-12908906c0f7"
                  }, 
                  "fac:ComprehensiveIncomeLossValidation" : {
                    "Name" : "fac:ComprehensiveIncomeLossValidation", 
                    "Label" : "ComprehensiveIncomeLoss = ComprehensiveIncomeLossAttributableToParent + ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
                    "Id" : "7753f380-c21d-41f9-8c17-cc3d36504d14"
                  }, 
                  "fac:ComprehensiveIncomeLoss2Validation" : {
                    "Name" : "fac:ComprehensiveIncomeLoss2Validation", 
                    "Label" : "ComprehensiveIncome = NetIncomeLoss + OtherComprehensiveIncome", 
                    "Id" : "32c6b7dc-95e1-4757-a54a-b15fc1210038"
                  }, 
                  "fac:OperatingIncomeLoss2Validation" : {
                    "Name" : "fac:OperatingIncomeLoss2Validation", 
                    "Label" : "OperatingIncomeLoss = Revenues - CostsAndExpenses + OtherOperatingIncomeExpenses", 
                    "Id" : "3a6e41f7-c668-49f8-a3d1-efe0e74bd680"
                  }, 
                  "fac:NetCashFlowsValidation" : {
                    "Name" : "fac:NetCashFlowsValidation", 
                    "Label" : "NetCashFlows = NetCashFlowsFromOperatingActivities + NetCashFlowsFromInvestingActivities + NetCashFlowsFromFinancingActivities [+ ExchangeGainsLosses]", 
                    "Id" : "f99c78b0-1cfa-4ca1-b3ca-19acd9f0c411"
                  }, 
                  "fac:NetCashFlowsContinuingValidation" : {
                    "Name" : "fac:NetCashFlowsContinuingValidation", 
                    "Label" : "NetCashFlowsContinuing = NetCashFlowsFromOperatingActivitiesContinuing + NetCashFlowsFromInvestingActivitiesContinuing + NetCashFlowsFromFinancingActivitiesContinuing", 
                    "Id" : "4056d3b9-0147-4413-8b43-da303d5f1858"
                  }, 
                  "fac:NetCashFlowsDiscontinuedValidation" : {
                    "Name" : "fac:NetCashFlowsDiscontinuedValidation", 
                    "Label" : "NetCashFlowsDiscontinued = NetCashFlowsFromOperatingActivitiesDiscontinued + NetCashFlowsFromInvestingActivitiesDiscontinued + NetCashFlowsFromFinancingActivitiesDiscontinued", 
                    "Id" : "588057ce-2c37-4b18-8510-d3d6613034a9"
                  }, 
                  "fac:NetCashFlowsFromOperatingActivitiesValidation" : {
                    "Name" : "fac:NetCashFlowsFromOperatingActivitiesValidation", 
                    "Label" : "NetCashFlowsFromOperatingActivities = NetCashFlowsFromOperatingActivitiesContinuing + NetCashFlowsFromOperatingActivitiesDiscontinued", 
                    "Id" : "fc25db2f-efc5-49b6-b7f0-2fac7a6c83b5"
                  }, 
                  "fac:NetCashFlowsFromInvestingActivitiesValidation" : {
                    "Name" : "fac:NetCashFlowsFromInvestingActivitiesValidation", 
                    "Label" : "NetCashFlowsFromInvestingActivities = NetCashFlowsFromInvestingActivitiesContinuing + NetCashFlowsFromInvestingActivitiesDiscontinued", 
                    "Id" : "56b96817-7742-4067-ad91-0746f85e20b7"
                  }, 
                  "fac:NetCashFlowsFromFinancingActivitiesValidation" : {
                    "Name" : "fac:NetCashFlowsFromFinancingActivitiesValidation", 
                    "Label" : "NetCashFlowsFromFinancingActivities = NetCashFlowsFromFinancingActivitiesContinuing + NetCashFlowsFromFinancingActivitiesDiscontinued", 
                    "Id" : "e53e01c4-2232-4f28-bd36-fc6009bf1d75"
                  }
                }, 
                "Id" : "0a3a1392-0496-42ad-895d-803ccc4b2c63"
              }
            }, 
            "Id" : "637206a5-2865-4adc-ba05-b0b4c44e71cd"
          }
        }, 
        "Id" : "b5a50994-596a-496e-a636-cabe18ab7301"
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
            "Id" : "7472db2b-828c-4594-be69-40e14e1a6575"
          }
        }, 
        "Id" : "c9b1e2e4-070b-46b6-a248-2b857ed6eef6"
      }, 
      "fac:NoncurrentLiabilities" : {
        "Name" : "fac:NoncurrentLiabilities", 
        "Label" : "Noncurrent Liabilities", 
        "To" : {
          "us-gaap:LiabilitiesNoncurrent" : {
            "Name" : "us-gaap:LiabilitiesNoncurrent", 
            "Id" : "3b8a8492-8cb7-42fe-b7e5-8ab95436ebc2"
          }
        }, 
        "Id" : "d3d68122-197e-4ffa-a6ce-67d85a31803f"
      }, 
      "fac:EntityRegistrantName" : {
        "Name" : "fac:EntityRegistrantName", 
        "Label" : "Entity Registrant Name", 
        "To" : {
          "dei:EntityRegistrantName" : {
            "Name" : "dei:EntityRegistrantName", 
            "Id" : "36762e25-6a1b-4ca0-baab-0be51803a09c"
          }
        }, 
        "Id" : "bad70b31-5604-4378-b4e7-05462c775a08"
      }, 
      "fac:Revenues" : {
        "Name" : "fac:Revenues", 
        "Label" : "Revenues", 
        "To" : {
          "us-gaap:Revenues" : {
            "Name" : "us-gaap:Revenues", 
            "Id" : "b07dac03-17f3-465a-8db3-9cc743f7c28e"
          }, 
          "us-gaap:SalesRevenueNet" : {
            "Name" : "us-gaap:SalesRevenueNet", 
            "Id" : "2be1e283-40df-405a-ab3b-1fbba3104e9b"
          }, 
          "us-gaap:SalesRevenueServicesNet" : {
            "Name" : "us-gaap:SalesRevenueServicesNet", 
            "Id" : "b5a47eec-0115-45f3-8859-694775a73a3d"
          }, 
          "us-gaap:SalesRevenueGoodsNet" : {
            "Name" : "us-gaap:SalesRevenueGoodsNet", 
            "Id" : "be65139c-483f-42d9-a26d-d87ae9ab6c86"
          }, 
          "us-gaap:RevenuesNetOfInterestExpense" : {
            "Name" : "us-gaap:RevenuesNetOfInterestExpense", 
            "Id" : "06c69dc3-67cf-4f61-943e-05482e06265e"
          }, 
          "us-gaap:HealthCareOrganizationRevenue" : {
            "Name" : "us-gaap:HealthCareOrganizationRevenue", 
            "Id" : "160bbafe-25f5-40a3-83c0-54bb07d0744e"
          }, 
          "us-gaap:InterestAndDividendIncomeOperating" : {
            "Name" : "us-gaap:InterestAndDividendIncomeOperating", 
            "Id" : "b9171388-324c-49be-a77d-d2a6c6e7ca79"
          }, 
          "us-gaap:RealEstateRevenueNet" : {
            "Name" : "us-gaap:RealEstateRevenueNet", 
            "Id" : "88bd9137-ce6f-4a1a-ae64-08fde7ce2f2f"
          }, 
          "us-gaap:RevenueMineralSales" : {
            "Name" : "us-gaap:RevenueMineralSales", 
            "Id" : "d0775de7-0508-4868-830e-08d5731e486c"
          }, 
          "us-gaap:OilAndGasRevenue" : {
            "Name" : "us-gaap:OilAndGasRevenue", 
            "Id" : "1c81bb62-b03f-493d-9cdc-af5bad3895c0"
          }, 
          "us-gaap:RegulatedAndUnregulatedOperatingRevenue" : {
            "Name" : "us-gaap:RegulatedAndUnregulatedOperatingRevenue", 
            "Id" : "0e98e277-b62e-4b5a-869f-3862ababa824"
          }, 
          "us-gaap:FinancialServicesRevenue" : {
            "Name" : "us-gaap:FinancialServicesRevenue", 
            "Id" : "45a83a1b-b1a0-4b52-959c-58d2ea6e9287"
          }, 
          "us-gaap:ShippingAndHandlingRevenue" : {
            "Name" : "us-gaap:ShippingAndHandlingRevenue", 
            "Id" : "49f62771-224a-4897-ada3-7edf1e62c365"
          }, 
          "us-gaap:SalesRevenueFromEnergyCommoditiesAndServices" : {
            "Name" : "us-gaap:SalesRevenueFromEnergyCommoditiesAndServices", 
            "Id" : "89d7989c-3293-4832-ae35-ce3aa67f5d1d"
          }, 
          "us-gaap:UtilityRevenue" : {
            "Name" : "us-gaap:UtilityRevenue", 
            "Id" : "a2b4b09d-59cf-4e3b-9933-f48c6d1e4b11"
          }, 
          "us-gaap:PhaseInPlanAmountOfCapitalizedCostsRecovered" : {
            "Name" : "us-gaap:PhaseInPlanAmountOfCapitalizedCostsRecovered", 
            "Id" : "477c38ab-4ecc-4bf4-8c45-90289da002ac"
          }, 
          "us-gaap:SecondaryProcessingRevenue" : {
            "Name" : "us-gaap:SecondaryProcessingRevenue", 
            "Id" : "cb8e39d5-cf16-472e-8eb9-1ddfa6d2f49b"
          }, 
          "us-gaap:RevenueSteamProductsAndServices" : {
            "Name" : "us-gaap:RevenueSteamProductsAndServices", 
            "Id" : "dcb94bfa-9cf2-4659-b64d-17bd3bab3cd8"
          }, 
          "us-gaap:RevenueFromLeasedAndOwnedHotels" : {
            "Name" : "us-gaap:RevenueFromLeasedAndOwnedHotels", 
            "Id" : "8ab4c992-628c-49d6-9074-6ec172a451a0"
          }, 
          "us-gaap:FranchisorRevenue" : {
            "Name" : "us-gaap:FranchisorRevenue", 
            "Id" : "d0bec30b-83de-4b59-8b9e-c9dbfa447ab7"
          }, 
          "us-gaap:SubscriptionRevenue" : {
            "Name" : "us-gaap:SubscriptionRevenue", 
            "Id" : "30df4161-7396-420a-ade2-62812e616a3d"
          }, 
          "us-gaap:AdvertisingRevenue" : {
            "Name" : "us-gaap:AdvertisingRevenue", 
            "Id" : "3ff016ab-bbfa-4fc0-9746-62a4241b568c"
          }, 
          "us-gaap:AdmissionsRevenue" : {
            "Name" : "us-gaap:AdmissionsRevenue", 
            "Id" : "e6aa9de2-274c-4fcb-84b8-9de781e45047"
          }, 
          "us-gaap:RevenueFromEnrollmentAndRegistrationFeesExcludingHospitalityEnterprises" : {
            "Name" : "us-gaap:RevenueFromEnrollmentAndRegistrationFeesExcludingHospitalityEnterprises", 
            "Id" : "af4ec895-76b0-4890-8c90-8f32f073fcbb"
          }, 
          "us-gaap:MembershipDuesRevenueOnGoing" : {
            "Name" : "us-gaap:MembershipDuesRevenueOnGoing", 
            "Id" : "3f802570-c29b-466e-94ef-e461c9776adb"
          }, 
          "us-gaap:LicensesRevenue" : {
            "Name" : "us-gaap:LicensesRevenue", 
            "Id" : "fcef9ad7-91ea-4856-a86f-363fba0d2948"
          }, 
          "us-gaap:RoyaltyRevenue" : {
            "Name" : "us-gaap:RoyaltyRevenue", 
            "Id" : "f1d6fe7f-811e-4ba0-9988-d2e7d8491d1c"
          }, 
          "us-gaap:SalesOfOilAndGasProspects" : {
            "Name" : "us-gaap:SalesOfOilAndGasProspects", 
            "Id" : "44249469-d079-4a83-8e71-5a64c642c4a0"
          }, 
          "us-gaap:ClearingFeesRevenue" : {
            "Name" : "us-gaap:ClearingFeesRevenue", 
            "Id" : "e9256c90-ba89-4c01-b717-51f35684e12a"
          }, 
          "us-gaap:ReimbursementRevenue" : {
            "Name" : "us-gaap:ReimbursementRevenue", 
            "Id" : "7dbc088d-bdc4-45fb-8eb2-d44ac02ad1fb"
          }, 
          "us-gaap:RevenueFromGrants" : {
            "Name" : "us-gaap:RevenueFromGrants", 
            "Id" : "284da2fd-6116-42b7-a661-ce557648bc69"
          }, 
          "us-gaap:RevenueOtherManufacturedProducts" : {
            "Name" : "us-gaap:RevenueOtherManufacturedProducts", 
            "Id" : "4ae3a867-2971-4b95-981f-eded201377bd"
          }, 
          "us-gaap:ConstructionMaterialsRevenue" : {
            "Name" : "us-gaap:ConstructionMaterialsRevenue", 
            "Id" : "435eb0ba-582a-4472-b3e8-ff2f2d4a04dd"
          }, 
          "us-gaap:TimberRevenue" : {
            "Name" : "us-gaap:TimberRevenue", 
            "Id" : "090ab3ad-9359-48c3-a51e-811ec84f70cd"
          }, 
          "us-gaap:RecyclingRevenue" : {
            "Name" : "us-gaap:RecyclingRevenue", 
            "Id" : "abc38930-4a23-4854-86db-1e753672a905"
          }, 
          "us-gaap:OtherSalesRevenueNet" : {
            "Name" : "us-gaap:OtherSalesRevenueNet", 
            "Id" : "4752b9b9-6882-4e5e-891c-68ca68261f22"
          }, 
          "us-gaap:SaleOfTrustAssetsToPayExpenses" : {
            "Name" : "us-gaap:SaleOfTrustAssetsToPayExpenses", 
            "Id" : "885860d5-754b-4522-bc28-51a4301546b1"
          }, 
          "us-gaap:PassengerRevenue" : {
            "Name" : "us-gaap:PassengerRevenue", 
            "Id" : "ca3d2e66-05ee-4c25-b0a0-2cb3baa01af7"
          }, 
          "us-gaap:VehicleTollRevenue" : {
            "Name" : "us-gaap:VehicleTollRevenue", 
            "Id" : "13701b58-089f-45d5-ad9b-e2136e020a50"
          }, 
          "us-gaap:CargoAndFreightRevenue" : {
            "Name" : "us-gaap:CargoAndFreightRevenue", 
            "Id" : "0a11932a-072a-4353-92bb-aebb82b540cc"
          }, 
          "us-gaap:NetInvestmentIncome" : {
            "Name" : "us-gaap:NetInvestmentIncome", 
            "Id" : "03e23013-1b94-4518-a8da-3ac4445b453d"
          }, 
          "us-gaap:RevenuesExcludingInterestAndDividends" : {
            "Name" : "us-gaap:RevenuesExcludingInterestAndDividends", 
            "Id" : "cf74c479-ff65-4c27-b99d-eb5ab9e50a9d"
          }, 
          "us-gaap:InvestmentBankingRevenue" : {
            "Name" : "us-gaap:InvestmentBankingRevenue", 
            "Id" : "82467f70-9029-4a74-9950-37cce8ccffc1"
          }, 
          "us-gaap:UnderwritingIncomeLoss" : {
            "Name" : "us-gaap:UnderwritingIncomeLoss", 
            "Id" : "291403f9-86a9-4470-9603-1a0f07e7151e"
          }, 
          "us-gaap:MarketDataRevenue" : {
            "Name" : "us-gaap:MarketDataRevenue", 
            "Id" : "9abc569f-b1b9-4f7e-85e2-374e19eb17ec"
          }
        }, 
        "Id" : "64e3252a-e9ba-4500-b626-85fb3c941031"
      }, 
      "fac:NetCashFlowsContinuing" : {
        "Name" : "fac:NetCashFlowsContinuing", 
        "Label" : "Net Cash Flows, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInContinuingOperations", 
            "Id" : "c6ba6cd2-fa3a-4d45-b5b4-39be57ac9888"
          }
        }, 
        "Id" : "b5a90a86-ea9f-48e9-a92f-cfc8b463de91"
      }, 
      "fac:Assets" : {
        "Name" : "fac:Assets", 
        "Label" : "Assets", 
        "To" : {
          "us-gaap:Assets" : {
            "Name" : "us-gaap:Assets", 
            "Id" : "5f8f5fae-7d66-4f25-9984-116ae271748b"
          }, 
          "us-gaap:AssetsCurrent" : {
            "Name" : "us-gaap:AssetsCurrent", 
            "Id" : "8207c005-3434-4451-90db-a2582c9df521"
          }
        }, 
        "Id" : "8911b161-bb05-4ba3-a64d-b2e6512a061b"
      }, 
      "fac:EquityAttributableToParent" : {
        "Name" : "fac:EquityAttributableToParent", 
        "Label" : "Equity Attributable to Parent", 
        "To" : {
          "us-gaap:StockholdersEquity" : {
            "Name" : "us-gaap:StockholdersEquity", 
            "Id" : "53d3190e-075b-455e-9d3e-b78170b92088"
          }, 
          "us-gaap:PartnersCapital" : {
            "Name" : "us-gaap:PartnersCapital", 
            "Id" : "b14786c6-ffa0-45b4-bdf8-77905a0d4034"
          }, 
          "us-gaap:MemberEquity" : {
            "Name" : "us-gaap:MemberEquity", 
            "Id" : "633060b1-dc68-4e7f-81f5-0531e6d9908d"
          }
        }, 
        "Id" : "e4246fdd-df4b-4b28-ba77-b96573da26e4"
      }, 
      "fac:InterestAndDebtExpense" : {
        "Name" : "fac:InterestAndDebtExpense", 
        "Label" : "Interest and Debt Expense", 
        "To" : {
          "us-gaap:InterestAndDebtExpense" : {
            "Name" : "us-gaap:InterestAndDebtExpense", 
            "Id" : "d4b5d7a4-eedd-48dd-9234-af8c41b620c6"
          }
        }, 
        "Id" : "537f3e57-4f47-4093-b84f-c5190c987e46"
      }, 
      "fac:IncomeTaxExpenseBenefit" : {
        "Name" : "fac:IncomeTaxExpenseBenefit", 
        "Label" : "Income Tax Expense (Benefit)", 
        "To" : {
          "us-gaap:IncomeTaxExpenseBenefit" : {
            "Name" : "us-gaap:IncomeTaxExpenseBenefit", 
            "Id" : "ce66c40e-71eb-4afb-8cca-78cadde50459"
          }, 
          "us-gaap:IncomeTaxExpenseBenefitContinuingOperations" : {
            "Name" : "us-gaap:IncomeTaxExpenseBenefitContinuingOperations", 
            "Id" : "d78f909a-8fc4-4961-ad00-74d193da300d"
          }, 
          "us-gaap:FederalHomeLoanBankAssessments" : {
            "Name" : "us-gaap:FederalHomeLoanBankAssessments", 
            "Id" : "63910e5b-f234-406f-851a-5ff76a4bb648"
          }
        }, 
        "Id" : "3a4fac72-9673-4fd8-8f3f-0960a1c76e52"
      }, 
      "fac:EntityCentralIndexKey" : {
        "Name" : "fac:EntityCentralIndexKey", 
        "Label" : "Central Index Key (CIK)", 
        "To" : {
          "dei:EntityCentralIndexKey" : {
            "Name" : "dei:EntityCentralIndexKey", 
            "Id" : "aae9413f-e7aa-4af1-9ac0-e279d401770a"
          }
        }, 
        "Id" : "c13b42a5-fed5-4ccc-8b9e-8ab98f9ef328"
      }, 
      "fac:NatureOfOperations" : {
        "Name" : "fac:NatureOfOperations", 
        "Label" : "Nature of Operations", 
        "To" : {
          "us-gaap:NatureOfOperations" : {
            "Name" : "us-gaap:NatureOfOperations", 
            "Id" : "0f0fb4a7-23c5-43b2-98d2-0bdc324a8198"
          }, 
          "us-gaap:BusinessDescriptionAndBasisOfPresentationTextBlock" : {
            "Name" : "us-gaap:BusinessDescriptionAndBasisOfPresentationTextBlock", 
            "Id" : "dd3bb2d9-cb06-4343-93ae-e0f55c28a497"
          }, 
          "us-gaap:OrganizationConsolidationAndPresentationOfFinancialStatementsDisclosureTextBlock" : {
            "Name" : "us-gaap:OrganizationConsolidationAndPresentationOfFinancialStatementsDisclosureTextBlock", 
            "Id" : "10f93d66-6c7d-4d46-8057-0c6397631bcc"
          }, 
          "us-gaap:OrganizationConsolidationBasisOfPresentationBusinessDescriptionAndAccountingPoliciesTextBlock" : {
            "Name" : "us-gaap:OrganizationConsolidationBasisOfPresentationBusinessDescriptionAndAccountingPoliciesTextBlock", 
            "Id" : "aa30645d-b2bc-4277-90cc-1228c682a45a"
          }
        }, 
        "Id" : "0f06c2f5-9b6d-414e-afc6-ac378b41da61"
      }, 
      "fac:ResearchAndDevelopment" : {
        "Name" : "fac:ResearchAndDevelopment", 
        "Label" : "Research and Development", 
        "To" : {
          "us-gaap:ResearchAndDevelopmentExpense" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpense", 
            "Id" : "a1a88694-ab59-4da5-b710-5dfe14b4f36b"
          }, 
          "us-gaap:ResearchAndDevelopmentExpenseExcludingAcquiredInProcessCost" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpenseExcludingAcquiredInProcessCost", 
            "Id" : "71630786-5a0a-4ac6-a407-433dd6020619"
          }, 
          "us-gaap:ResearchAndDevelopmentExpenseSoftwareExcludingAcquiredInProcessCost" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpenseSoftwareExcludingAcquiredInProcessCost", 
            "Id" : "6819ea0a-43bb-485b-bbd5-5e99af3b867d"
          }, 
          "us-gaap:ResearchAndDevelopmentInProcess" : {
            "Name" : "us-gaap:ResearchAndDevelopmentInProcess", 
            "Id" : "6965ba53-784e-4ad8-91d8-21ad93ef9db7"
          }, 
          "us-gaap:ResearchAndDevelopmentAssetAcquiredOtherThanThroughBusinessCombinationWrittenOff" : {
            "Name" : "us-gaap:ResearchAndDevelopmentAssetAcquiredOtherThanThroughBusinessCombinationWrittenOff", 
            "Id" : "4a407bf7-c40a-4ef3-8c0f-6981a60eb3d1"
          }
        }, 
        "Id" : "d1f1fe3a-dd66-4333-a369-9dae853f42e3"
      }, 
      "fac:OtherOperatingIncomeExpenses" : {
        "Name" : "fac:OtherOperatingIncomeExpenses", 
        "Label" : "Other Operating Income (Expenses)", 
        "To" : {
          "us-gaap:OtherOperatingIncome" : {
            "Name" : "us-gaap:OtherOperatingIncome", 
            "Id" : "1e9aaa1d-1faf-417d-be3f-f6b071b4611a"
          }
        }, 
        "Id" : "294fb43e-423c-4983-86bb-f6e32056c5a9"
      }, 
      "fac:NetCashFlowsFromInvestingActivities" : {
        "Name" : "fac:NetCashFlowsFromInvestingActivities", 
        "Label" : "Net Cash Flows from Investing Activities", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInInvestingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInInvestingActivities", 
            "Id" : "9d72dd5c-1c16-4d21-994d-1e8f0e8395a2"
          }
        }, 
        "Id" : "cc2c54bc-11ca-4f42-977d-727244b48205"
      }, 
      "fac:IncomeBeforeEquityMethodInvestments" : {
        "Name" : "fac:IncomeBeforeEquityMethodInvestments", 
        "Label" : "Income (Loss) Before Equity Method Investments", 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments", 
            "Id" : "35173cef-a47f-4a36-ab9b-2fb278648110"
          }
        }, 
        "Id" : "eefef6e5-f7d3-4e5e-90c2-1469bc7d0fd1"
      }, 
      "fac:TradingSymbol" : {
        "Name" : "fac:TradingSymbol", 
        "Label" : "Trading Symbol", 
        "To" : {
          "dei:TradingSymbol" : {
            "Name" : "dei:TradingSymbol", 
            "Id" : "3679a09a-60f5-4782-81cc-f896586d57cb"
          }
        }, 
        "Id" : "81c1f80f-3e08-43a2-9f2c-4e5d0f024760"
      }, 
      "fac:NetIncomeLossAvailableToCommonStockholdersBasic" : {
        "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
        "Label" : "Net Income (Loss) Available to Common Stockholders, Basic", 
        "To" : {
          "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic" : {
            "Name" : "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic", 
            "Id" : "036f1437-2c14-4fb8-acd0-e528dc4a8174"
          }
        }, 
        "Id" : "38780dd3-ea53-448a-8399-13ce9a1f993c"
      }, 
      "fac:EntityFilerCategory" : {
        "Name" : "fac:EntityFilerCategory", 
        "Label" : "Entity Filer Category", 
        "To" : {
          "dei:EntityFilerCategory" : {
            "Name" : "dei:EntityFilerCategory", 
            "Id" : "28dca934-65cb-4d38-ae75-5ddbcf85e44b"
          }
        }, 
        "Id" : "c71a2144-cd6e-42bd-af8e-ea0251e2cee7"
      }, 
      "fac:IncomeLossFromContinuingOperationsBeforeTax" : {
        "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTax", 
        "Label" : "Income (Loss) from Continuing Operations Before Tax", 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments", 
            "Id" : "bc019c85-56d2-4235-826f-b4ca87a89412"
          }, 
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest", 
            "Id" : "a5bc569b-488a-4713-89ab-e98590e75f77"
          }
        }, 
        "Id" : "47502919-1029-4077-814b-f13b4e819196"
      }, 
      "fac:OperatingExpenses" : {
        "Name" : "fac:OperatingExpenses", 
        "Label" : "Operating Expenses", 
        "To" : {
          "us-gaap:OperatingExpenses" : {
            "Name" : "us-gaap:OperatingExpenses", 
            "Id" : "8bc5afeb-a700-465b-b7ec-5a65725089ed"
          }, 
          "us-gaap:OperatingCostsAndExpenses" : {
            "Name" : "us-gaap:OperatingCostsAndExpenses", 
            "Id" : "bac1c9a9-f889-4210-9095-031a332a158a"
          }
        }, 
        "Id" : "c22a35ad-804c-4cc4-af19-13875990ee06"
      }, 
      "fac:NetCashFlowsDiscontinued" : {
        "Name" : "fac:NetCashFlowsDiscontinued", 
        "Label" : "Net Cash Flows, Discontinued", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInDiscontinuedOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInDiscontinuedOperations", 
            "Id" : "048d1bc8-0bb7-4416-904a-f87554f2c879"
          }
        }, 
        "Id" : "73e22082-8431-4332-a977-87ba19af506f"
      }, 
      "fac:Liabilities" : {
        "Name" : "fac:Liabilities", 
        "Label" : "Liabilities", 
        "To" : {
          "us-gaap:Liabilities" : {
            "Name" : "us-gaap:Liabilities", 
            "Id" : "94682efd-1dfc-470a-a5f4-2c5f9d61f69c"
          }
        }, 
        "Id" : "327c2526-ab75-4e96-8026-c070d9ab9723"
      }, 
      "fac:ComprehensiveIncomeLossAttributableToParent" : {
        "Name" : "fac:ComprehensiveIncomeLossAttributableToParent", 
        "Label" : "Comprehensive Income (Loss) Attributable to Parent", 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTax" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTax", 
            "Id" : "b5673d6d-12cf-4c59-ac14-499e6bc1ced1"
          }
        }, 
        "Id" : "1eaa9a93-1c6a-4dc3-b162-e1cef74763c1"
      }, 
      "fac:CostOfRevenue" : {
        "Name" : "fac:CostOfRevenue", 
        "Label" : "Cost of Revenues", 
        "To" : {
          "us-gaap:CostOfRevenue" : {
            "Name" : "us-gaap:CostOfRevenue", 
            "Id" : "ad897537-b3ce-40a1-8ab5-470e7ebe2c2e"
          }, 
          "us-gaap:CostOfGoodsAndServicesSold" : {
            "Name" : "us-gaap:CostOfGoodsAndServicesSold", 
            "Id" : "91a7963e-80cb-4d0b-9d0a-8890e234c4a5"
          }, 
          "us-gaap:CostOfServices" : {
            "Name" : "us-gaap:CostOfServices", 
            "Id" : "0f355ead-a81c-45f8-a2fe-eec697a38d7c"
          }, 
          "us-gaap:CostOfGoodsSold" : {
            "Name" : "us-gaap:CostOfGoodsSold", 
            "Id" : "1ebc67eb-a483-4d87-9d13-515c684db006"
          }
        }, 
        "Id" : "777ae64f-beda-47aa-9811-d1b670287554"
      }, 
      "fac:NetCashFlows" : {
        "Name" : "fac:NetCashFlows", 
        "Label" : "Net Cash Flows", 
        "To" : {
          "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease" : {
            "Name" : "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease", 
            "Id" : "eebf1a66-8805-4239-9f3e-bf492b2e2286"
          }, 
          "us-gaap:CashPeriodIncreaseDecrease" : {
            "Name" : "us-gaap:CashPeriodIncreaseDecrease", 
            "Id" : "041773d3-4c75-4a30-b42e-cb8713c14220"
          }, 
          "us-gaap:NetCashProvidedByUsedInContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInContinuingOperations", 
            "Id" : "15056bc7-d438-42c0-a660-3fa0a6e70d24"
          }
        }, 
        "Id" : "078b9d6e-406b-4a6f-af55-702773d1f109"
      }, 
      "fac:NonoperatingIncomeLoss" : {
        "Name" : "fac:NonoperatingIncomeLoss", 
        "Label" : "Nonoperating Income (Loss)", 
        "To" : {
          "us-gaap:NonoperatingIncomeExpense" : {
            "Name" : "us-gaap:NonoperatingIncomeExpense", 
            "Id" : "2cb60107-68a8-4a26-ac81-805deff940fa"
          }
        }, 
        "Id" : "120462d1-0a1a-4314-afcc-b1c1bd9394db"
      }, 
      "fac:NetCashFlowsFromFinancingActivitiesContinuing" : {
        "Name" : "fac:NetCashFlowsFromFinancingActivitiesContinuing", 
        "Label" : "Net Cash Flows from Financing Activities, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInFinancingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInFinancingActivitiesContinuingOperations", 
            "Id" : "be6379b4-3b70-4576-b080-e83c14ff99ad"
          }
        }, 
        "Id" : "8bf17490-680d-4c95-a49a-94f998addd29"
      }, 
      "fac:IncomeLossFromContinuingOperationsAfterTax" : {
        "Name" : "fac:IncomeLossFromContinuingOperationsAfterTax", 
        "Label" : "Income (Loss) from Continuing Operations After Tax", 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "c84cac32-1bdb-4271-8a42-e7adedb8c8fa"
          }, 
          "us-gaap:IncomeLossBeforeExtraordinaryItemsAndCumulativeEffectOfChangeInAccountingPrinciple" : {
            "Name" : "us-gaap:IncomeLossBeforeExtraordinaryItemsAndCumulativeEffectOfChangeInAccountingPrinciple", 
            "Id" : "201b0d40-85e3-4616-ad47-f23f0bbf242e"
          }, 
          "us-gaap:IncomeLossFromContinuingOperations" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperations", 
            "Id" : "46878162-d33a-4161-800f-72838aa1e667"
          }
        }, 
        "Id" : "ddc25968-0ec5-4a57-b9d9-3aa97ad38142"
      }, 
      "fac:NetIncomeAttributableToParent" : {
        "Name" : "fac:NetIncomeAttributableToParent", 
        "Label" : "Net Income Attributable to Parent", 
        "To" : {
          "us-gaap:NetIncomeLoss" : {
            "Name" : "us-gaap:NetIncomeLoss", 
            "Id" : "f4376114-3727-4071-97e6-6cc5034d3a0c"
          }
        }, 
        "Id" : "522a4d27-bdb2-454a-abe1-87410f3446c4"
      }, 
      "fac:CommitmentsAndContingencies" : {
        "Name" : "fac:CommitmentsAndContingencies", 
        "Label" : "Commitments and Contingencies", 
        "To" : {
          "us-gaap:CommitmentsAndContingencies" : {
            "Name" : "us-gaap:CommitmentsAndContingencies", 
            "Id" : "45a3e2d6-9b9f-4b3d-90b1-4a88e19c100d"
          }
        }, 
        "Id" : "1791972b-fade-41eb-8b2a-f3ff6b6e6b05"
      }, 
      "fac:NetCashFlowsFromInvestingActivitiesDiscontinued" : {
        "Name" : "fac:NetCashFlowsFromInvestingActivitiesDiscontinued", 
        "Label" : "Net Cash Flows from Investing Activities, Discontinued", 
        "To" : {
          "us-gaap:CashProvidedByUsedInInvestingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInInvestingActivitiesDiscontinuedOperations", 
            "Id" : "53e7301c-6e53-4b08-aef1-f4ba485e2b58"
          }
        }, 
        "Id" : "d7de8283-2eca-4a38-af6d-9a9047a8b8c5"
      }, 
      "fac:NetCashFlowsFromFinancingActivitiesDiscontinued" : {
        "Name" : "fac:NetCashFlowsFromFinancingActivitiesDiscontinued", 
        "Label" : "Net Cash Flows from Financing Activities, Discontinued", 
        "To" : {
          "us-gaap:CashProvidedByUsedInFinancingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInFinancingActivitiesDiscontinuedOperations", 
            "Id" : "92078b6d-9453-43e5-9c08-1ac99f9e4421"
          }
        }, 
        "Id" : "6b949b8e-f8b5-45e3-ae43-33af7eded07a"
      }, 
      "fac:NetIncomeAttributableToNoncontrollingInterest" : {
        "Name" : "fac:NetIncomeAttributableToNoncontrollingInterest", 
        "Label" : "Net Income Attributable to Noncontrolling Interest", 
        "To" : {
          "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest", 
            "Id" : "44693ae3-788e-42c8-8f3b-a934e894aa42"
          }
        }, 
        "Id" : "b986fb64-5c5c-428d-89f5-fef0987a2f31"
      }, 
      "fac:FiscalYearEnd" : {
        "Name" : "fac:FiscalYearEnd", 
        "Label" : "Fiscal Year End", 
        "To" : {
          "dei:CurrentFiscalYearEndDate" : {
            "Name" : "dei:CurrentFiscalYearEndDate", 
            "Id" : "b7304589-9f3b-4af2-b9ae-5db9b69f243c"
          }
        }, 
        "Id" : "c91b67e1-7b92-487b-9c07-f40ae8726c59"
      }, 
      "fac:NoncurrentAssets" : {
        "Name" : "fac:NoncurrentAssets", 
        "Label" : "Noncurrent Assets", 
        "To" : {
          "us-gaap:AssetsNoncurrent" : {
            "Name" : "us-gaap:AssetsNoncurrent", 
            "Id" : "96e7fb08-7531-49ff-b778-2311f340cb85"
          }
        }, 
        "Id" : "72411896-b8ec-46ba-bd72-e01d742a2b87"
      }, 
      "fac:FiscalPeriod" : {
        "Name" : "fac:FiscalPeriod", 
        "Label" : "Fiscal Period", 
        "To" : {
          "dei:DocumentFiscalPeriodFocus" : {
            "Name" : "dei:DocumentFiscalPeriodFocus", 
            "Id" : "5acf036e-7730-4495-b2da-bb6cdd347a35"
          }
        }, 
        "Id" : "ce61aad4-86c2-4727-889e-51485e40bc5b"
      }, 
      "fac:FiscalYear" : {
        "Name" : "fac:FiscalYear", 
        "Label" : "Fiscal Year", 
        "To" : {
          "dei:DocumentFiscalYearFocus" : {
            "Name" : "dei:DocumentFiscalYearFocus", 
            "Id" : "1d1869fa-e828-43bf-a735-48517d7fbde6"
          }
        }, 
        "Id" : "bb5632b0-c348-4762-9851-f9ebbeaf83c5"
      }, 
      "fac:NetIncomeLoss" : {
        "Name" : "fac:NetIncomeLoss", 
        "Label" : "Net Income (Loss)", 
        "To" : {
          "us-gaap:ProfitLoss" : {
            "Name" : "us-gaap:ProfitLoss", 
            "Id" : "7e72c024-2b36-4c05-99e8-fb8319ab5350"
          }, 
          "us-gaap:NetIncomeLoss" : {
            "Name" : "us-gaap:NetIncomeLoss", 
            "Id" : "c4e6d287-5f76-46a6-b3d2-66f10be5358c"
          }, 
          "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic" : {
            "Name" : "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic", 
            "Id" : "9ef56659-3b76-4ab4-8f93-580ba2d8fa4b"
          }, 
          "us-gaap:IncomeLossFromContinuingOperations" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperations", 
            "Id" : "459649be-f5d1-4d39-8f6a-557f01963296"
          }, 
          "us-gaap:IncomeLossAttributableToParent" : {
            "Name" : "us-gaap:IncomeLossAttributableToParent", 
            "Id" : "65f4764a-c883-4d61-8dbc-ca3fb779c765"
          }, 
          "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "c95d0060-8346-4a5d-814c-7212e8fdac56"
          }
        }, 
        "Id" : "1fbf914a-64f1-4b86-ac1a-36d63424daeb"
      }, 
      "fac:ExchangeGainsLosses" : {
        "Name" : "fac:ExchangeGainsLosses", 
        "Label" : "Exchange Gains (Losses)", 
        "To" : {
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents", 
            "Id" : "7c3d8878-dbf3-45d1-97b9-29ac82503c00"
          }, 
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsContinuingOperations" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsContinuingOperations", 
            "Id" : "90ba23fa-5d8d-4624-aba2-45e33afb2d62"
          }, 
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsDiscontinuedOperations" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsDiscontinuedOperations", 
            "Id" : "853a66b0-40f2-4dd6-b98a-4422459d103f"
          }
        }, 
        "Id" : "db9925f3-d218-4d23-9410-9e77a45fc872"
      }, 
      "fac:GrossProfit" : {
        "Name" : "fac:GrossProfit", 
        "Label" : "Gross Profit", 
        "To" : {
          "us-gaap:GrossProfit" : {
            "Name" : "us-gaap:GrossProfit", 
            "Id" : "07170445-693b-41eb-9381-df8e15a910b8"
          }
        }, 
        "Id" : "fd26062f-4f5c-4d9d-8fed-563c261e0da3"
      }, 
      "fac:EquityAttributableToNoncontrollingInterest" : {
        "Name" : "fac:EquityAttributableToNoncontrollingInterest", 
        "Label" : "Equity Attributable to Noncontrolling Interest", 
        "To" : {
          "us-gaap:MinorityInterest" : {
            "Name" : "us-gaap:MinorityInterest", 
            "Id" : "0eb7b655-88d0-4a27-9169-f56283b8f20b"
          }, 
          "us-gaap:PartnersCapitalAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:PartnersCapitalAttributableToNoncontrollingInterest", 
            "Id" : "9af97f50-78d1-4272-8a64-7d1b07fcb209"
          }, 
          "us-gaap:MinorityInterestInLimitedPartnerships" : {
            "Name" : "us-gaap:MinorityInterestInLimitedPartnerships", 
            "Id" : "dadc2e55-7296-4381-80b1-c8e1bde0e2ca"
          }, 
          "us-gaap:MinorityInterestInOperatingPartnerships" : {
            "Name" : "us-gaap:MinorityInterestInOperatingPartnerships", 
            "Id" : "de286384-4308-403f-b873-d8d960921af3"
          }, 
          "us-gaap:MinorityInterestInPreferredUnitHolders" : {
            "Name" : "us-gaap:MinorityInterestInPreferredUnitHolders", 
            "Id" : "6cee4869-07a5-4462-8904-c0ada5b71d6e"
          }, 
          "us-gaap:MinorityInterestInJointVentures" : {
            "Name" : "us-gaap:MinorityInterestInJointVentures", 
            "Id" : "d00790fd-26bf-4f50-b976-949367969039"
          }, 
          "us-gaap:OtherMinorityInterests" : {
            "Name" : "us-gaap:OtherMinorityInterests", 
            "Id" : "6b54972b-4686-458d-99a4-e3620f7388fa"
          }, 
          "us-gaap:NonredeemableNoncontrollingInterest" : {
            "Name" : "us-gaap:NonredeemableNoncontrollingInterest", 
            "Id" : "444c2420-653b-4186-abb1-835adf034f92"
          }, 
          "us-gaap:NoncontrollingInterestInVariableInterestEntity" : {
            "Name" : "us-gaap:NoncontrollingInterestInVariableInterestEntity", 
            "Id" : "7eb6f5b1-f46e-4a65-ad9c-c54bd7ff5427"
          }
        }, 
        "Id" : "ee02c470-9198-47c2-87d0-e0f354790db2"
      }, 
      "fac:CostsAndExpenses" : {
        "Name" : "fac:CostsAndExpenses", 
        "Label" : "Costs and Expenses", 
        "To" : {
          "us-gaap:CostsAndExpenses" : {
            "Name" : "us-gaap:CostsAndExpenses", 
            "Id" : "bf66649d-70b1-4ac4-9e6f-1704ecdfce84"
          }, 
          "us-gaap:BenefitsLossesAndExpenses" : {
            "Name" : "us-gaap:BenefitsLossesAndExpenses", 
            "Id" : "60a5ffb9-7232-4754-a98d-fd61e8a605d7"
          }
        }, 
        "Id" : "b8fdf65f-5f1a-4b2d-989f-ea2c31779c4f"
      }, 
      "fac:CurrentLiabilities" : {
        "Name" : "fac:CurrentLiabilities", 
        "Label" : "Current Liabilities", 
        "To" : {
          "us-gaap:LiabilitiesCurrent" : {
            "Name" : "us-gaap:LiabilitiesCurrent", 
            "Id" : "3ba76578-4df9-46ad-a531-efd7ef115d7f"
          }
        }, 
        "Id" : "1090c394-e19e-4164-96e2-c294cd3bc74d"
      }, 
      "fac:NetCashFlowsFromOperatingActivities" : {
        "Name" : "fac:NetCashFlowsFromOperatingActivities", 
        "Label" : "Net Cash Flows from Operating Activities", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInOperatingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInOperatingActivities", 
            "Id" : "9a39b1e6-ebf0-4f64-a8a0-d3f859c3f8ae"
          }
        }, 
        "Id" : "93ac2390-69c1-48e0-94b4-0b233e736624"
      }, 
      "fac:IncomeLossFromDiscontinuedOperationsNetTax" : {
        "Name" : "fac:IncomeLossFromDiscontinuedOperationsNetTax", 
        "Label" : "Income (Loss) from Discontinued Operations, Net of Tax", 
        "To" : {
          "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTax" : {
            "Name" : "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTax", 
            "Id" : "b103aeb3-48c3-456d-919d-31d039e328ec"
          }, 
          "us-gaap:DiscontinuedOperationGainLossOnDisposalOfDiscontinuedOperationNetOfTax" : {
            "Name" : "us-gaap:DiscontinuedOperationGainLossOnDisposalOfDiscontinuedOperationNetOfTax", 
            "Id" : "295cb26b-aeea-43fa-b474-7102286a45a2"
          }, 
          "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTaxAttributableToReportingEntity" : {
            "Name" : "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTaxAttributableToReportingEntity", 
            "Id" : "e452b0e6-b98f-4af8-b8a4-3a53d9abcd29"
          }
        }, 
        "Id" : "73d5743a-809c-4de6-9a92-b5be28a00bef"
      }, 
      "fac:ExtraordinaryItemsIncomeExpenseNetTax" : {
        "Name" : "fac:ExtraordinaryItemsIncomeExpenseNetTax", 
        "Label" : "Extraordinary Items of Income (Expense), Net of Tax", 
        "To" : {
          "us-gaap:ExtraordinaryItemNetOfTax" : {
            "Name" : "us-gaap:ExtraordinaryItemNetOfTax", 
            "Id" : "9d38646c-4d8c-400e-904e-2c0b2f06b0f9"
          }
        }, 
        "Id" : "a2311719-bb15-4da5-a517-8fe65a30bc1f"
      }, 
      "fac:OperatingIncomeLoss" : {
        "Name" : "fac:OperatingIncomeLoss", 
        "Label" : "Operating Income (Loss)", 
        "To" : {
          "us-gaap:OperatingIncomeLoss" : {
            "Name" : "us-gaap:OperatingIncomeLoss", 
            "Id" : "96f32116-9dff-4291-944e-f8db3bccdfef"
          }
        }, 
        "Id" : "44f74103-123b-41b6-8199-eceb27314dd2"
      }, 
      "fac:NetCashFlowsFromOperatingActivitiesDiscontinued" : {
        "Name" : "fac:NetCashFlowsFromOperatingActivitiesDiscontinued", 
        "Label" : "Net Cash Flows from Operating Activities, Discontinued", 
        "To" : {
          "us-gaap:CashProvidedByUsedInOperatingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInOperatingActivitiesDiscontinuedOperations", 
            "Id" : "53be047d-f1bb-4daf-b01d-0ac7834ab4e1"
          }
        }, 
        "Id" : "1f433455-c934-44e2-941a-691c0c04f92e"
      }, 
      "fac:OtherComprehensiveIncomeLoss" : {
        "Name" : "fac:OtherComprehensiveIncomeLoss", 
        "Label" : "Other Comprehensive Income (Loss)", 
        "To" : {
          "us-gaap:OtherComprehensiveIncomeLossNetOfTax" : {
            "Name" : "us-gaap:OtherComprehensiveIncomeLossNetOfTax", 
            "Id" : "1d93bf72-f185-4fe4-9874-b003ce33f3f8"
          }
        }, 
        "Id" : "67c71269-cdc3-48be-9713-ef380d4c0961"
      }, 
      "fac:NetCashFlowsFromInvestingActivitiesContinuing" : {
        "Name" : "fac:NetCashFlowsFromInvestingActivitiesContinuing", 
        "Label" : "Net Cash Flows from Investing Activities, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInInvestingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInInvestingActivitiesContinuingOperations", 
            "Id" : "7d7b906e-18d1-46e0-a5b6-f3e18685ebfb"
          }
        }, 
        "Id" : "22bab53d-610c-4a1b-b227-695948568b0c"
      }, 
      "fac:BalanceSheetDate" : {
        "Name" : "fac:BalanceSheetDate", 
        "Label" : "Balance Sheet Date", 
        "To" : {
          "dei:DocumentPeriodEndDate" : {
            "Name" : "dei:DocumentPeriodEndDate", 
            "Id" : "024df475-ccff-4ece-8570-142bf1a59a11"
          }
        }, 
        "Id" : "48e34505-6984-4438-8b10-5a1d75b01f98"
      }, 
      "fac:LiabilitiesAndEquity" : {
        "Name" : "fac:LiabilitiesAndEquity", 
        "Label" : "Liabilities and Equity", 
        "To" : {
          "us-gaap:LiabilitiesAndStockholdersEquity" : {
            "Name" : "us-gaap:LiabilitiesAndStockholdersEquity", 
            "Id" : "22a117d0-af68-4c82-9c23-96af0645f243"
          }, 
          "us-gaap:LiabilitiesAndPartnersCapital" : {
            "Name" : "us-gaap:LiabilitiesAndPartnersCapital", 
            "Id" : "e23b5df3-a203-4eae-a6d3-2049f442ef2d"
          }
        }, 
        "Id" : "0844d29d-3259-46a0-bd92-d0256220f013"
      }, 
      "fac:Equity" : {
        "Name" : "fac:Equity", 
        "Label" : "Equity", 
        "To" : {
          "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "a16b774b-af01-4433-b982-76a341b985f6"
          }, 
          "us-gaap:StockholdersEquity" : {
            "Name" : "us-gaap:StockholdersEquity", 
            "Id" : "4a17761f-59a3-418f-9c52-260c73c5c159"
          }, 
          "us-gaap:PartnersCapitalIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:PartnersCapitalIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "1aeafb99-6fb7-4638-9252-c66c7cf25799"
          }, 
          "us-gaap:PartnersCapital" : {
            "Name" : "us-gaap:PartnersCapital", 
            "Id" : "22ca7ea4-b107-424d-9e1d-e029125de6d1"
          }, 
          "us-gaap:CommonStockholdersEquity" : {
            "Name" : "us-gaap:CommonStockholdersEquity", 
            "Id" : "969f8407-7a7d-48d6-9fe4-1461c380b0d8"
          }, 
          "us-gaap:MembersEquity" : {
            "Name" : "us-gaap:MembersEquity", 
            "Id" : "e28b2014-871f-4c00-a979-2093d815bde3"
          }, 
          "us-gaap:AssetsNet" : {
            "Name" : "us-gaap:AssetsNet", 
            "Id" : "078594b4-8df4-499f-a0d5-4f6d21cca451"
          }
        }, 
        "Id" : "26bcfe3a-f718-4d11-9561-687969b2d808"
      }, 
      "fac:DocumentType" : {
        "Name" : "fac:DocumentType", 
        "Label" : "Document Type", 
        "To" : {
          "dei:DocumentType" : {
            "Name" : "dei:DocumentType", 
            "Id" : "dae94287-1e48-4248-a775-3ecce259fef9"
          }
        }, 
        "Id" : "8c6da674-7db9-46ba-9e8a-b37083acd333"
      }, 
      "fac:IncomeLossFromEquityMethodInvestments" : {
        "Name" : "fac:IncomeLossFromEquityMethodInvestments", 
        "Label" : "Income (Loss) from Equity Method Investments", 
        "To" : {
          "us-gaap:IncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromEquityMethodInvestments", 
            "Id" : "830cd924-650a-4ce9-9803-97475cea21ce"
          }
        }, 
        "Id" : "2cd245d0-9609-47d1-ae1d-bbd1d17ee120"
      }, 
      "fac:ComprehensiveIncomeLoss" : {
        "Name" : "fac:ComprehensiveIncomeLoss", 
        "Label" : "Comprehensive Income (Loss)", 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest", 
            "Id" : "f87211b7-719d-47c6-80b5-11d49acad0ce"
          }, 
          "us-gaap:ComprehensiveIncomeNetOfTax" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTax", 
            "Id" : "b9568105-0ce6-4d31-974a-21bac8f73992"
          }
        }, 
        "Id" : "cc0f814b-0d53-4e9c-836b-bc3f435e3aca"
      }, 
      "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest" : {
        "Name" : "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
        "Label" : "Comprehensive Income (Loss) Attributable to Noncontrolling Interest", 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest", 
            "Id" : "d1bcb7ad-1b16-485c-87e0-e534d2407b63"
          }
        }, 
        "Id" : "edcc5d8b-ab65-469c-8062-9db986ee8371"
      }, 
      "fac:CurrentAssets" : {
        "Name" : "fac:CurrentAssets", 
        "Label" : "Current Assets", 
        "To" : {
          "us-gaap:AssetsCurrent" : {
            "Name" : "us-gaap:AssetsCurrent", 
            "Id" : "8f8effbd-f681-4707-aecc-f51c1e37676c"
          }
        }, 
        "Id" : "9df8a2db-4c9f-4392-8f66-faf180531cd8"
      }, 
      "fac:NetCashFlowsFromOperatingActivitiesContinuing" : {
        "Name" : "fac:NetCashFlowsFromOperatingActivitiesContinuing", 
        "Label" : "Net Cash Flows from Operating Activities, Continuing", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInOperatingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInOperatingActivitiesContinuingOperations", 
            "Id" : "c41c18df-147b-455e-a58f-aa8afc609e1e"
          }
        }, 
        "Id" : "32feb8da-ad5f-4d58-bfde-0a2922899820"
      }, 
      "fac:NetCashFlowsFromFinancingActivities" : {
        "Name" : "fac:NetCashFlowsFromFinancingActivities", 
        "Label" : "Net Cash Flows from Financing Activities", 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInFinancingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInFinancingActivities", 
            "Id" : "9df1a80b-05ed-4e95-b26b-400443cfef95"
          }
        }, 
        "Id" : "f21084d8-d881-463c-956a-77901b859495"
      }, 
      "fac:RedeemableNoncontrollingInterest" : {
        "Name" : "fac:RedeemableNoncontrollingInterest", 
        "Label" : "Redeemable Noncontrolling Interest", 
        "To" : {
          "us-gaap:RedeemableNoncontrollingInterestEquityCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityCarryingAmount", 
            "Id" : "18e088fb-a46a-4afb-9675-5ec61a9c4a51"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount", 
            "Id" : "0469aa4d-38db-4b1a-9cc2-25b743328af3"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityPreferredCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityPreferredCarryingAmount", 
            "Id" : "53a3cba3-c3ed-414c-ba4a-844e4fec761a"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityOtherCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityOtherCarryingAmount", 
            "Id" : "c29773f5-68ed-41d0-8b01-3f1338688622"
          }
        }, 
        "Id" : "31072699-ffe9-4680-a1c1-4247fb481ce6"
      }, 
      "fac:TemporaryEquity" : {
        "Name" : "fac:TemporaryEquity", 
        "Label" : "Temporary Equity", 
        "To" : {
          "us-gaap:TemporaryEquityCarryingAmountIncludingPortionAttributableToNoncontrollingInterests" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmountIncludingPortionAttributableToNoncontrollingInterests", 
            "Id" : "55ae844c-9938-4201-95c8-236b09798840"
          }, 
          "us-gaap:TemporaryEquityRedemptionValue" : {
            "Name" : "us-gaap:TemporaryEquityRedemptionValue", 
            "Id" : "d031ae1b-c338-4c2d-bcf4-1b31e46218ee"
          }, 
          "us-gaap:RedeemablePreferredStockCarryingAmount" : {
            "Name" : "us-gaap:RedeemablePreferredStockCarryingAmount", 
            "Id" : "9dd2768b-4071-4f3e-ad03-dd4eab8bdc3d"
          }, 
          "us-gaap:TemporaryEquityCarryingAmount" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmount", 
            "Id" : "835c936e-3cd4-4483-ab8b-a3d20185e9a4"
          }, 
          "us-gaap:TemporaryEquityValueExcludingAdditionalPaidInCapital" : {
            "Name" : "us-gaap:TemporaryEquityValueExcludingAdditionalPaidInCapital", 
            "Id" : "b12c514e-cad4-4e89-9dfa-5c7f92a11f38"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityFairValue" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityFairValue", 
            "Id" : "fb3258dc-856e-445b-8493-62f4da50e61e"
          }, 
          "us-gaap:TemporaryEquityCarryingAmountAttributableToParent" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmountAttributableToParent", 
            "Id" : "7572e5ff-1218-4a38-b7c5-e6ec8cfc2bfe"
          }
        }, 
        "Id" : "9bec10e3-0b24-44fa-b7cc-7748d5f395e8"
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
          "Label" : "Concept", 
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
          "Label" : "Period"
        }, 
        "xbrl:Entity" : {
          "Name" : "xbrl:Entity", 
          "Label" : "Reporting Entity"
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
        }, 
        "dei:LegalEntityAxis" : {
          "Name" : "dei:LegalEntityAxis", 
          "Label" : "Legal Entity", 
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