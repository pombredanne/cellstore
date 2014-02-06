import module namespace report-schemas = "http://xbrl.io/modules/bizql/report-schemas";

report-schemas:update({
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
                    "Label" : "Entity Registrant Name"
                  }, 
                  "fac:EntityCentralIndexKey" : {
                    "Name" : "fac:EntityCentralIndexKey", 
                    "Label" : "Central Index Key"
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
                  "fac:IncomeStatementStartPeriodYearToDate" : {
                    "Name" : "fac:IncomeStatementStartPeriodYearToDate", 
                    "Label" : "Income Statement Start Period (Year to Date)"
                  }
                }
              }, 
              "fac:BalanceSheetHierarchy" : {
                "Name" : "fac:BalanceSheetHierarchy", 
                "Label" : "Balance Sheet [Hierarchy]", 
                "To" : {
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
                  "fac:Equity" : {
                    "Name" : "fac:Equity", 
                    "Label" : "Equity"
                  }, 
                  "fac:LiabilitiesAndEquity" : {
                    "Name" : "fac:LiabilitiesAndEquity", 
                    "Label" : "Liabilities and Equity"
                  }
                }
              }, 
              "fac:IncomeStatementHierarchy" : {
                "Name" : "fac:IncomeStatementHierarchy", 
                "Label" : "Income Statement [Hierarchy]", 
                "To" : {
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
                  "fac:OperatingIncomeLoss" : {
                    "Name" : "fac:OperatingIncomeLoss", 
                    "Label" : "Operating Income (Loss)"
                  }, 
                  "fac:NonoperatingIncomeLoss" : {
                    "Name" : "fac:NonoperatingIncomeLoss", 
                    "Label" : "Nonoperating Income (Loss)"
                  }, 
                  "fac:InterestDebtExpense" : {
                    "Name" : "fac:InterestDebtExpense", 
                    "Label" : "Interest and Debt Expense"
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
                  "fac:PreferredStockDividendsOtherAdjustments" : {
                    "Name" : "fac:PreferredStockDividendsOtherAdjustments", 
                    "Label" : "Preferred Stock Dividends and Other Adjustments"
                  }, 
                  "fac:NetIncomeLossAvailableToCommonStockholdersBasic" : {
                    "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
                    "Label" : "Net Income (Loss) Available to Common Stockholders, Basic"
                  }
                }
              }, 
              "fac:StatementComprehensiveIncomeHierarchy" : {
                "Name" : "fac:StatementComprehensiveIncomeHierarchy", 
                "Label" : "Statement of Comprehensive Income [Hierarchy]", 
                "To" : {
                  "fac:NetIncomeLoss" : {
                    "Name" : "fac:NetIncomeLoss", 
                    "Label" : "Net Income (Loss)"
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
                  }
                }
              }, 
              "fac:CashFlowStatementHierarchy" : {
                "Name" : "fac:CashFlowStatementHierarchy", 
                "Label" : "Cash Flow Statement [Hierarchy]", 
                "To" : {
                  "fac:NetCashFlowFromOperatingActivitiesContinuing" : {
                    "Name" : "fac:NetCashFlowFromOperatingActivitiesContinuing", 
                    "Label" : "Net Cash Flow from Operating Activities, Continuing"
                  }, 
                  "fac:NetCashFlowFromOperatingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowFromOperatingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flow from Operating Activities, Discontinued"
                  }, 
                  "fac:NetCashFlowFromOperatingActivities" : {
                    "Name" : "fac:NetCashFlowFromOperatingActivities", 
                    "Label" : "Net Cash Flow from Operating Activities"
                  }, 
                  "fac:NetCashFlowFromInvestingActivitiesContinuing" : {
                    "Name" : "fac:NetCashFlowFromInvestingActivitiesContinuing", 
                    "Label" : "Net Cash flow from Investing Activities, Continuing"
                  }, 
                  "fac:NetCashFlowFromInvestingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowFromInvestingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flow from Investing Activities, Discontinued"
                  }, 
                  "fac:NetCashFlowFromInvestingActivities" : {
                    "Name" : "fac:NetCashFlowFromInvestingActivities", 
                    "Label" : "Net Cash Flow from Investing Activities"
                  }, 
                  "fac:NetCashFlowFromFinancingActivitiesContinuing" : {
                    "Name" : "fac:NetCashFlowFromFinancingActivitiesContinuing", 
                    "Label" : "Net Cash flow from Financing Activities, Continuing"
                  }, 
                  "fac:NetCashFlowFromFinancingActivitiesDiscontinued" : {
                    "Name" : "fac:NetCashFlowFromFinancingActivitiesDiscontinued", 
                    "Label" : "Net Cash Flow from Financing Activities, Discontinued"
                  }, 
                  "fac:NetCashFlowFromFinancingActivities" : {
                    "Name" : "fac:NetCashFlowFromFinancingActivities", 
                    "Label" : "Net Cash Flow from Financing Activities"
                  }, 
                  "fac:ExchangeGainsLosses" : {
                    "Name" : "fac:ExchangeGainsLosses", 
                    "Label" : "Exchange Gains (Losses)"
                  }, 
                  "fac:NetCashFlow" : {
                    "Name" : "fac:NetCashFlow", 
                    "Label" : "Net Cash Flow"
                  }, 
                  "fac:NetCashFlowContinuing" : {
                    "Name" : "fac:NetCashFlowContinuing", 
                    "Label" : "Net Cash Flow, Continuing"
                  }, 
                  "fac:NetCashFlowDiscontinued" : {
                    "Name" : "fac:NetCashFlowDiscontinued", 
                    "Label" : "Net Cash Flow, Discontinued"
                  }
                }
              }, 
              "fac:KeyRatiosHierarchy" : {
                "Name" : "fac:KeyRatiosHierarchy", 
                "Label" : "Key Ratios [Hierarchy]", 
                "To" : {
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
                  }
                }
              }
            }
          }
        }
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
        "Label" : null, 
        "To" : {
          "us-gaap:PreferredStockDividendsAndOtherAdjustments" : {
            "Name" : "us-gaap:PreferredStockDividendsAndOtherAdjustments"
          }
        }
      }, 
      "fac:NoncurrentLiabilities" : {
        "Name" : "fac:NoncurrentLiabilities", 
        "Label" : "Noncurrent Liabilities", 
        "To" : {
          "us-gaap:LiabilitiesNoncurrent" : {
            "Name" : "us-gaap:LiabilitiesNoncurrent"
          }
        }
      }, 
      "fac:EntityRegistrantName" : {
        "Name" : "fac:EntityRegistrantName", 
        "Label" : "Entity Registrant Name", 
        "To" : {
          "dei:EntityRegistrantName" : {
            "Name" : "dei:EntityRegistrantName"
          }
        }
      }, 
      "fac:Revenues" : {
        "Name" : "fac:Revenues", 
        "Label" : "Revenues", 
        "To" : {
          "us-gaap:Revenues" : {
            "Name" : "us-gaap:Revenues"
          }, 
          "us-gaap:SalesRevenueNet" : {
            "Name" : "us-gaap:SalesRevenueNet"
          }, 
          "us-gaap:SalesRevenueServicesNet" : {
            "Name" : "us-gaap:SalesRevenueServicesNet"
          }, 
          "us-gaap:SalesRevenueGoodsNet" : {
            "Name" : "us-gaap:SalesRevenueGoodsNet"
          }, 
          "us-gaap:RevenuesNetOfInterestExpense" : {
            "Name" : "us-gaap:RevenuesNetOfInterestExpense"
          }, 
          "us-gaap:HealthCareOrganizationRevenue" : {
            "Name" : "us-gaap:HealthCareOrganizationRevenue"
          }, 
          "us-gaap:InterestAndDividendIncomeOperating" : {
            "Name" : "us-gaap:InterestAndDividendIncomeOperating"
          }, 
          "us-gaap:RealEstateRevenueNet" : {
            "Name" : "us-gaap:RealEstateRevenueNet"
          }, 
          "us-gaap:RevenueMineralSales" : {
            "Name" : "us-gaap:RevenueMineralSales"
          }, 
          "us-gaap:OilAndGasRevenue" : {
            "Name" : "us-gaap:OilAndGasRevenue"
          }, 
          "us-gaap:RegulatedAndUnregulatedOperatingRevenue" : {
            "Name" : "us-gaap:RegulatedAndUnregulatedOperatingRevenue"
          }, 
          "us-gaap:FinancialServicesRevenue" : {
            "Name" : "us-gaap:FinancialServicesRevenue"
          }, 
          "us-gaap:ShippingAndHandlingRevenue" : {
            "Name" : "us-gaap:ShippingAndHandlingRevenue"
          }, 
          "us-gaap:SalesRevenueFromEnergyCommoditiesAndServices" : {
            "Name" : "us-gaap:SalesRevenueFromEnergyCommoditiesAndServices"
          }, 
          "us-gaap:UtilityRevenue" : {
            "Name" : "us-gaap:UtilityRevenue"
          }, 
          "us-gaap:PhaseInPlanAmountOfCapitalizedCostsRecovered" : {
            "Name" : "us-gaap:PhaseInPlanAmountOfCapitalizedCostsRecovered"
          }, 
          "us-gaap:SecondaryProcessingRevenue" : {
            "Name" : "us-gaap:SecondaryProcessingRevenue"
          }, 
          "us-gaap:RevenueSteamProductsAndServices" : {
            "Name" : "us-gaap:RevenueSteamProductsAndServices"
          }, 
          "us-gaap:RevenueFromLeasedAndOwnedHotels" : {
            "Name" : "us-gaap:RevenueFromLeasedAndOwnedHotels"
          }, 
          "us-gaap:FranchisorRevenue" : {
            "Name" : "us-gaap:FranchisorRevenue"
          }, 
          "us-gaap:SubscriptionRevenue" : {
            "Name" : "us-gaap:SubscriptionRevenue"
          }, 
          "us-gaap:AdvertisingRevenue" : {
            "Name" : "us-gaap:AdvertisingRevenue"
          }, 
          "us-gaap:AdmissionsRevenue" : {
            "Name" : "us-gaap:AdmissionsRevenue"
          }, 
          "us-gaap:RevenueFromEnrollmentAndRegistrationFeesExcludingHospitalityEnterprises" : {
            "Name" : "us-gaap:RevenueFromEnrollmentAndRegistrationFeesExcludingHospitalityEnterprises"
          }, 
          "us-gaap:MembershipDuesRevenueOnGoing" : {
            "Name" : "us-gaap:MembershipDuesRevenueOnGoing"
          }, 
          "us-gaap:LicensesRevenue" : {
            "Name" : "us-gaap:LicensesRevenue"
          }, 
          "us-gaap:RoyaltyRevenue" : {
            "Name" : "us-gaap:RoyaltyRevenue"
          }, 
          "us-gaap:SalesOfOilAndGasProspects" : {
            "Name" : "us-gaap:SalesOfOilAndGasProspects"
          }, 
          "us-gaap:ClearingFeesRevenue" : {
            "Name" : "us-gaap:ClearingFeesRevenue"
          }, 
          "us-gaap:ReimbursementRevenue" : {
            "Name" : "us-gaap:ReimbursementRevenue"
          }, 
          "us-gaap:RevenueFromGrants" : {
            "Name" : "us-gaap:RevenueFromGrants"
          }, 
          "us-gaap:RevenueOtherManufacturedProducts" : {
            "Name" : "us-gaap:RevenueOtherManufacturedProducts"
          }, 
          "us-gaap:ConstructionMaterialsRevenue" : {
            "Name" : "us-gaap:ConstructionMaterialsRevenue"
          }, 
          "us-gaap:TimberRevenue" : {
            "Name" : "us-gaap:TimberRevenue"
          }, 
          "us-gaap:RecyclingRevenue" : {
            "Name" : "us-gaap:RecyclingRevenue"
          }, 
          "us-gaap:OtherSalesRevenueNet" : {
            "Name" : "us-gaap:OtherSalesRevenueNet"
          }, 
          "us-gaap:SaleOfTrustAssetsToPayExpenses" : {
            "Name" : "us-gaap:SaleOfTrustAssetsToPayExpenses"
          }, 
          "us-gaap:PassengerRevenue" : {
            "Name" : "us-gaap:PassengerRevenue"
          }, 
          "us-gaap:VehicleTollRevenue" : {
            "Name" : "us-gaap:VehicleTollRevenue"
          }, 
          "us-gaap:CargoAndFreightRevenue" : {
            "Name" : "us-gaap:CargoAndFreightRevenue"
          }, 
          "us-gaap:NetInvestmentIncome" : {
            "Name" : "us-gaap:NetInvestmentIncome"
          }, 
          "us-gaap:RevenuesExcludingInterestAndDividends" : {
            "Name" : "us-gaap:RevenuesExcludingInterestAndDividends"
          }, 
          "us-gaap:InvestmentBankingRevenue" : {
            "Name" : "us-gaap:InvestmentBankingRevenue"
          }, 
          "us-gaap:UnderwritingIncomeLoss" : {
            "Name" : "us-gaap:UnderwritingIncomeLoss"
          }, 
          "us-gaap:MarketDataRevenue" : {
            "Name" : "us-gaap:MarketDataRevenue"
          }
        }
      }, 
      "fac:NetCashFlowsContinuing" : {
        "Name" : "fac:NetCashFlowsContinuing", 
        "Label" : null, 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInContinuingOperations"
          }
        }
      }, 
      "fac:Assets" : {
        "Name" : "fac:Assets", 
        "Label" : "Assets", 
        "To" : {
          "us-gaap:Assets" : {
            "Name" : "us-gaap:Assets"
          }, 
          "us-gaap:AssetsCurrent" : {
            "Name" : "us-gaap:AssetsCurrent"
          }
        }
      }, 
      "fac:EquityAttributableToParent" : {
        "Name" : "fac:EquityAttributableToParent", 
        "Label" : "Equity Attributable to Parent", 
        "To" : {
          "us-gaap:StockholdersEquity" : {
            "Name" : "us-gaap:StockholdersEquity"
          }, 
          "us-gaap:PartnersCapital" : {
            "Name" : "us-gaap:PartnersCapital"
          }, 
          "us-gaap:MemberEquity" : {
            "Name" : "us-gaap:MemberEquity"
          }
        }
      }, 
      "fac:InterestAndDebtExpense" : {
        "Name" : "fac:InterestAndDebtExpense", 
        "Label" : null, 
        "To" : {
          "us-gaap:InterestAndDebtExpense" : {
            "Name" : "us-gaap:InterestAndDebtExpense"
          }
        }
      }, 
      "fac:IncomeTaxExpenseBenefit" : {
        "Name" : "fac:IncomeTaxExpenseBenefit", 
        "Label" : "Income Tax Expense (Benefit)", 
        "To" : {
          "us-gaap:IncomeTaxExpenseBenefit" : {
            "Name" : "us-gaap:IncomeTaxExpenseBenefit"
          }, 
          "us-gaap:IncomeTaxExpenseBenefitContinuingOperations" : {
            "Name" : "us-gaap:IncomeTaxExpenseBenefitContinuingOperations"
          }, 
          "us-gaap:FederalHomeLoanBankAssessments" : {
            "Name" : "us-gaap:FederalHomeLoanBankAssessments"
          }
        }
      }, 
      "fac:EntityCentralIndexKey" : {
        "Name" : "fac:EntityCentralIndexKey", 
        "Label" : null, 
        "To" : {
          "dei:EntityCentralIndexKey" : {
            "Name" : "dei:EntityCentralIndexKey"
          }
        }
      }, 
      "fac:NatureOfOperations" : {
        "Name" : "fac:NatureOfOperations", 
        "Label" : null, 
        "To" : {
          "us-gaap:NatureOfOperations" : {
            "Name" : "us-gaap:NatureOfOperations"
          }, 
          "us-gaap:BusinessDescriptionAndBasisOfPresentationTextBlock" : {
            "Name" : "us-gaap:BusinessDescriptionAndBasisOfPresentationTextBlock"
          }, 
          "us-gaap:OrganizationConsolidationAndPresentationOfFinancialStatementsDisclosureTextBlock" : {
            "Name" : "us-gaap:OrganizationConsolidationAndPresentationOfFinancialStatementsDisclosureTextBlock"
          }, 
          "us-gaap:OrganizationConsolidationBasisOfPresentationBusinessDescriptionAndAccountingPoliciesTextBlock" : {
            "Name" : "us-gaap:OrganizationConsolidationBasisOfPresentationBusinessDescriptionAndAccountingPoliciesTextBlock"
          }
        }
      }, 
      "fac:ResearchAndDevelopment" : {
        "Name" : "fac:ResearchAndDevelopment", 
        "Label" : null, 
        "To" : {
          "us-gaap:ResearchAndDevelopmentExpense" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpense"
          }, 
          "us-gaap:ResearchAndDevelopmentExpenseExcludingAcquiredInProcessCost" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpenseExcludingAcquiredInProcessCost"
          }, 
          "us-gaap:ResearchAndDevelopmentExpenseSoftwareExcludingAcquiredInProcessCost" : {
            "Name" : "us-gaap:ResearchAndDevelopmentExpenseSoftwareExcludingAcquiredInProcessCost"
          }, 
          "us-gaap:ResearchAndDevelopmentInProcess" : {
            "Name" : "us-gaap:ResearchAndDevelopmentInProcess"
          }, 
          "us-gaap:ResearchAndDevelopmentAssetAcquiredOtherThanThroughBusinessCombinationWrittenOff" : {
            "Name" : "us-gaap:ResearchAndDevelopmentAssetAcquiredOtherThanThroughBusinessCombinationWrittenOff"
          }
        }
      }, 
      "fac:OtherOperatingIncome" : {
        "Name" : "fac:OtherOperatingIncome", 
        "Label" : null, 
        "To" : {
          "us-gaap:OtherOperatingIncome" : {
            "Name" : "us-gaap:OtherOperatingIncome"
          }
        }
      }, 
      "fac:NetCashFlowFromInvestingActivities" : {
        "Name" : "fac:NetCashFlowFromInvestingActivities", 
        "Label" : null, 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInInvestingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInInvestingActivities"
          }
        }
      }, 
      "fac:IncomeBeforeEquityMethodInvestments" : {
        "Name" : "fac:IncomeBeforeEquityMethodInvestments", 
        "Label" : null, 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments"
          }
        }
      }, 
      "fac:TradingSymbol" : {
        "Name" : "fac:TradingSymbol", 
        "Label" : "Trading Symbol", 
        "To" : {
          "dei:TradingSymbol" : {
            "Name" : "dei:TradingSymbol"
          }
        }
      }, 
      "fac:NetIncomeAvailableToCommonStockholdersBasic" : {
        "Name" : "fac:NetIncomeAvailableToCommonStockholdersBasic", 
        "Label" : null, 
        "To" : {
          "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic" : {
            "Name" : "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic"
          }
        }
      }, 
      "fac:EntityFilerCategory" : {
        "Name" : "fac:EntityFilerCategory", 
        "Label" : "Entity Filer Category", 
        "To" : {
          "dei:EntityFilerCategory" : {
            "Name" : "dei:EntityFilerCategory"
          }
        }
      }, 
      "fac:IncomeLossFromContinuingOperationsBeforeTax" : {
        "Name" : "fac:IncomeLossFromContinuingOperationsBeforeTax", 
        "Label" : null, 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesMinorityInterestAndIncomeLossFromEquityMethodInvestments"
          }, 
          "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest"
          }
        }
      }, 
      "fac:OperatingExpenses" : {
        "Name" : "fac:OperatingExpenses", 
        "Label" : "Operating Expenses", 
        "To" : {
          "us-gaap:OperatingExpenses" : {
            "Name" : "us-gaap:OperatingExpenses"
          }, 
          "us-gaap:OperatingCostsAndExpenses" : {
            "Name" : "us-gaap:OperatingCostsAndExpenses"
          }
        }
      }, 
      "fac:NetCashFlowsDiscontinued" : {
        "Name" : "fac:NetCashFlowsDiscontinued", 
        "Label" : null, 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInDiscontinuedOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInDiscontinuedOperations"
          }
        }
      }, 
      "fac:Liabilities" : {
        "Name" : "fac:Liabilities", 
        "Label" : "Liabilities", 
        "To" : {
          "us-gaap:Liabilities" : {
            "Name" : "us-gaap:Liabilities"
          }
        }
      }, 
      "fac:ComprehensiveIncomeLossAttributableToParent" : {
        "Name" : "fac:ComprehensiveIncomeLossAttributableToParent", 
        "Label" : null, 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTax" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTax"
          }
        }
      }, 
      "fac:CostOfRevenue" : {
        "Name" : "fac:CostOfRevenue", 
        "Label" : null, 
        "To" : {
          "us-gaap:CostOfRevenue" : {
            "Name" : "us-gaap:CostOfRevenue"
          }, 
          "us-gaap:CostOfGoodsAndServicesSold" : {
            "Name" : "us-gaap:CostOfGoodsAndServicesSold"
          }, 
          "us-gaap:CostOfServices" : {
            "Name" : "us-gaap:CostOfServices"
          }, 
          "us-gaap:CostOfGoodsSold" : {
            "Name" : "us-gaap:CostOfGoodsSold"
          }
        }
      }, 
      "fac:NetCashFlow" : {
        "Name" : "fac:NetCashFlow", 
        "Label" : "Net Cash Flow", 
        "To" : {
          "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease" : {
            "Name" : "us-gaap:CashAndCashEquivalentsPeriodIncreaseDecrease"
          }, 
          "us-gaap:CashPeriodIncreaseDecrease" : {
            "Name" : "us-gaap:CashPeriodIncreaseDecrease"
          }, 
          "us-gaap:NetCashProvidedByUsedInContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInContinuingOperations"
          }
        }
      }, 
      "fac:NonoperatingIncomeLoss" : {
        "Name" : "fac:NonoperatingIncomeLoss", 
        "Label" : "Nonoperating Income (Loss)", 
        "To" : {
          "us-gaap:NonoperatingIncomeExpense" : {
            "Name" : "us-gaap:NonoperatingIncomeExpense"
          }
        }
      }, 
      "fac:NetCashFlowsFinancingContinuing" : {
        "Name" : "fac:NetCashFlowsFinancingContinuing", 
        "Label" : null, 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInFinancingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInFinancingActivitiesContinuingOperations"
          }
        }
      }, 
      "fac:IncomeFromContinuingOperationsAfterTax" : {
        "Name" : "fac:IncomeFromContinuingOperationsAfterTax", 
        "Label" : null, 
        "To" : {
          "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest"
          }, 
          "us-gaap:IncomeLossBeforeExtraordinaryItemsAndCumulativeEffectOfChangeInAccountingPrinciple" : {
            "Name" : "us-gaap:IncomeLossBeforeExtraordinaryItemsAndCumulativeEffectOfChangeInAccountingPrinciple"
          }, 
          "us-gaap:IncomeLossFromContinuingOperations" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperations"
          }
        }
      }, 
      "fac:NetIncomeAttributableToParent" : {
        "Name" : "fac:NetIncomeAttributableToParent", 
        "Label" : "Net Income Attributable to Parent", 
        "To" : {
          "us-gaap:NetIncomeLoss" : {
            "Name" : "us-gaap:NetIncomeLoss"
          }
        }
      }, 
      "fac:CommitmentsAndContingencies" : {
        "Name" : "fac:CommitmentsAndContingencies", 
        "Label" : null, 
        "To" : {
          "us-gaap:CommitmentsAndContingencies" : {
            "Name" : "us-gaap:CommitmentsAndContingencies"
          }
        }
      }, 
      "fac:NetCashFlowsInvestingDiscontinued" : {
        "Name" : "fac:NetCashFlowsInvestingDiscontinued", 
        "Label" : null, 
        "To" : {
          "us-gaap:CashProvidedByUsedInInvestingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInInvestingActivitiesDiscontinuedOperations"
          }
        }
      }, 
      "fac:NetCashFlowsFinancingDiscontinued" : {
        "Name" : "fac:NetCashFlowsFinancingDiscontinued", 
        "Label" : null, 
        "To" : {
          "us-gaap:CashProvidedByUsedInFinancingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInFinancingActivitiesDiscontinuedOperations"
          }
        }
      }, 
      "fac:NetIncomeAttributableToNoncontrollingInterest" : {
        "Name" : "fac:NetIncomeAttributableToNoncontrollingInterest", 
        "Label" : null, 
        "To" : {
          "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:NetIncomeLossAttributableToNoncontrollingInterest"
          }
        }
      }, 
      "fac:FiscalYearEnd" : {
        "Name" : "fac:FiscalYearEnd", 
        "Label" : "Fiscal Year End", 
        "To" : {
          "dei:CurrentFiscalYearEndDate" : {
            "Name" : "dei:CurrentFiscalYearEndDate"
          }
        }
      }, 
      "fac:NoncurrentAssets" : {
        "Name" : "fac:NoncurrentAssets", 
        "Label" : "Noncurrent Assets", 
        "To" : {
          "us-gaap:AssetsNoncurrent" : {
            "Name" : "us-gaap:AssetsNoncurrent"
          }
        }
      }, 
      "fac:IncomeStatementPeriodYTD" : {
        "Name" : "fac:IncomeStatementPeriodYTD", 
        "Label" : null, 
        "To" : {
          "" : {
            "Name" : ""
          }
        }
      }, 
      "fac:FiscalPeriod" : {
        "Name" : "fac:FiscalPeriod", 
        "Label" : "Fiscal Period", 
        "To" : {
          "dei:DocumentFiscalPeriodFocus" : {
            "Name" : "dei:DocumentFiscalPeriodFocus"
          }
        }
      }, 
      "fac:FiscalYear" : {
        "Name" : "fac:FiscalYear", 
        "Label" : "Fiscal Year", 
        "To" : {
          "dei:DocumentFiscalYearFocus" : {
            "Name" : "dei:DocumentFiscalYearFocus"
          }
        }
      }, 
      "fac:NetIncomeLoss" : {
        "Name" : "fac:NetIncomeLoss", 
        "Label" : [ "Net Income (Loss)", "Net Income (Loss)" ], 
        "To" : {
          "us-gaap:ProfitLoss" : {
            "Name" : "us-gaap:ProfitLoss"
          }, 
          "us-gaap:NetIncomeLoss" : {
            "Name" : "us-gaap:NetIncomeLoss"
          }, 
          "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic" : {
            "Name" : "us-gaap:NetIncomeLossAvailableToCommonStockholdersBasic"
          }, 
          "us-gaap:IncomeLossFromContinuingOperations" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperations"
          }, 
          "us-gaap:IncomeLossAttributableToParent" : {
            "Name" : "us-gaap:IncomeLossAttributableToParent"
          }, 
          "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:IncomeLossFromContinuingOperationsIncludingPortionAttributableToNoncontrollingInterest"
          }
        }
      }, 
      "fac:ExchangeGainsLosses" : {
        "Name" : "fac:ExchangeGainsLosses", 
        "Label" : "Exchange Gains (Losses)", 
        "To" : {
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalents"
          }, 
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsContinuingOperations" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsContinuingOperations"
          }, 
          "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsDiscontinuedOperations" : {
            "Name" : "us-gaap:EffectOfExchangeRateOnCashAndCashEquivalentsDiscontinuedOperations"
          }
        }
      }, 
      "fac:GrossProfit" : {
        "Name" : "fac:GrossProfit", 
        "Label" : "Gross Profit", 
        "To" : {
          "us-gaap:GrossProfit" : {
            "Name" : "us-gaap:GrossProfit"
          }
        }
      }, 
      "fac:EquityAttributableToNoncontrollingInterest" : {
        "Name" : "fac:EquityAttributableToNoncontrollingInterest", 
        "Label" : "Equity Attributable to Noncontrolling Interest", 
        "To" : {
          "us-gaap:MinorityInterest" : {
            "Name" : "us-gaap:MinorityInterest"
          }, 
          "us-gaap:PartnersCapitalAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:PartnersCapitalAttributableToNoncontrollingInterest"
          }, 
          "us-gaap:MinorityInterestInLimitedPartnerships" : {
            "Name" : "us-gaap:MinorityInterestInLimitedPartnerships"
          }, 
          "us-gaap:MinorityInterestInOperatingPartnerships" : {
            "Name" : "us-gaap:MinorityInterestInOperatingPartnerships"
          }, 
          "us-gaap:MinorityInterestInPreferredUnitHolders" : {
            "Name" : "us-gaap:MinorityInterestInPreferredUnitHolders"
          }, 
          "us-gaap:MinorityInterestInJointVentures" : {
            "Name" : "us-gaap:MinorityInterestInJointVentures"
          }, 
          "us-gaap:OtherMinorityInterests" : {
            "Name" : "us-gaap:OtherMinorityInterests"
          }, 
          "us-gaap:NonredeemableNoncontrollingInterest" : {
            "Name" : "us-gaap:NonredeemableNoncontrollingInterest"
          }, 
          "us-gaap:NoncontrollingInterestInVariableInterestEntity" : {
            "Name" : "us-gaap:NoncontrollingInterestInVariableInterestEntity"
          }
        }
      }, 
      "fac:CostsAndExpenses" : {
        "Name" : "fac:CostsAndExpenses", 
        "Label" : null, 
        "To" : {
          "us-gaap:CostsAndExpenses" : {
            "Name" : "us-gaap:CostsAndExpenses"
          }, 
          "us-gaap:BenefitsLossesAndExpenses" : {
            "Name" : "us-gaap:BenefitsLossesAndExpenses"
          }
        }
      }, 
      "fac:CurrentLiabilities" : {
        "Name" : "fac:CurrentLiabilities", 
        "Label" : "Current Liabilities", 
        "To" : {
          "us-gaap:LiabilitiesCurrent" : {
            "Name" : "us-gaap:LiabilitiesCurrent"
          }
        }
      }, 
      "fac:NetCashFlowFromOperatingActivities" : {
        "Name" : "fac:NetCashFlowFromOperatingActivities", 
        "Label" : null, 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInOperatingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInOperatingActivities"
          }
        }
      }, 
      "fac:IncomeFromDiscontinuedOperations" : {
        "Name" : "fac:IncomeFromDiscontinuedOperations", 
        "Label" : null, 
        "To" : {
          "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTax" : {
            "Name" : "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTax"
          }, 
          "us-gaap:DiscontinuedOperationGainLossOnDisposalOfDiscontinuedOperationNetOfTax" : {
            "Name" : "us-gaap:DiscontinuedOperationGainLossOnDisposalOfDiscontinuedOperationNetOfTax"
          }, 
          "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTaxAttributableToReportingEntity" : {
            "Name" : "us-gaap:IncomeLossFromDiscontinuedOperationsNetOfTaxAttributableToReportingEntity"
          }
        }
      }, 
      "fac:ExtraordaryItemsGainLoss" : {
        "Name" : "fac:ExtraordaryItemsGainLoss", 
        "Label" : null, 
        "To" : {
          "us-gaap:ExtraordinaryItemNetOfTax" : {
            "Name" : "us-gaap:ExtraordinaryItemNetOfTax"
          }
        }
      }, 
      "fac:OperatingIncomeLoss" : {
        "Name" : "fac:OperatingIncomeLoss", 
        "Label" : "Operating Income (Loss)", 
        "To" : {
          "us-gaap:OperatingIncomeLoss" : {
            "Name" : "us-gaap:OperatingIncomeLoss"
          }
        }
      }, 
      "fac:NetCashFlowsOperatingDiscontinued" : {
        "Name" : "fac:NetCashFlowsOperatingDiscontinued", 
        "Label" : null, 
        "To" : {
          "us-gaap:CashProvidedByUsedInOperatingActivitiesDiscontinuedOperations" : {
            "Name" : "us-gaap:CashProvidedByUsedInOperatingActivitiesDiscontinuedOperations"
          }
        }
      }, 
      "fac:OtherComprehensiveIncomeLoss" : {
        "Name" : "fac:OtherComprehensiveIncomeLoss", 
        "Label" : null, 
        "To" : {
          "us-gaap:OtherComprehensiveIncomeLossNetOfTax" : {
            "Name" : "us-gaap:OtherComprehensiveIncomeLossNetOfTax"
          }
        }
      }, 
      "fac:NetCashFlowsInvestingContinuing" : {
        "Name" : "fac:NetCashFlowsInvestingContinuing", 
        "Label" : null, 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInInvestingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInInvestingActivitiesContinuingOperations"
          }
        }
      }, 
      "fac:BalanceSheetDate" : {
        "Name" : "fac:BalanceSheetDate", 
        "Label" : "Balance Sheet Date", 
        "To" : {
          "dei:DocumentPeriodEndDate" : {
            "Name" : "dei:DocumentPeriodEndDate"
          }
        }
      }, 
      "fac:LiabilitiesAndEquity" : {
        "Name" : "fac:LiabilitiesAndEquity", 
        "Label" : null, 
        "To" : {
          "us-gaap:LiabilitiesAndStockholdersEquity" : {
            "Name" : "us-gaap:LiabilitiesAndStockholdersEquity"
          }, 
          "us-gaap:LiabilitiesAndPartnersCapital" : {
            "Name" : "us-gaap:LiabilitiesAndPartnersCapital"
          }
        }
      }, 
      "fac:Equity" : {
        "Name" : "fac:Equity", 
        "Label" : "Equity", 
        "To" : {
          "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest"
          }, 
          "us-gaap:StockholdersEquity" : {
            "Name" : "us-gaap:StockholdersEquity"
          }, 
          "us-gaap:PartnersCapitalIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:PartnersCapitalIncludingPortionAttributableToNoncontrollingInterest"
          }, 
          "us-gaap:PartnersCapital" : {
            "Name" : "us-gaap:PartnersCapital"
          }, 
          "us-gaap:CommonStockholdersEquity" : {
            "Name" : "us-gaap:CommonStockholdersEquity"
          }, 
          "us-gaap:MembersEquity" : {
            "Name" : "us-gaap:MembersEquity"
          }, 
          "us-gaap:AssetsNet" : {
            "Name" : "us-gaap:AssetsNet"
          }
        }
      }, 
      "fac:DocumentType" : {
        "Name" : "fac:DocumentType", 
        "Label" : "Document Type", 
        "To" : {
          "dei:DocumentType" : {
            "Name" : "dei:DocumentType"
          }
        }
      }, 
      "fac:IncomeLossFromEquityMethodInvestments" : {
        "Name" : "fac:IncomeLossFromEquityMethodInvestments", 
        "Label" : null, 
        "To" : {
          "us-gaap:IncomeLossFromEquityMethodInvestments" : {
            "Name" : "us-gaap:IncomeLossFromEquityMethodInvestments"
          }
        }
      }, 
      "fac:ComprehensiveIncomeLoss" : {
        "Name" : "fac:ComprehensiveIncomeLoss", 
        "Label" : null, 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTaxIncludingPortionAttributableToNoncontrollingInterest"
          }, 
          "us-gaap:ComprehensiveIncomeNetOfTax" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTax"
          }
        }
      }, 
      "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest" : {
        "Name" : "fac:ComprehensiveIncomeLossAttributableToNoncontrollingInterest", 
        "Label" : null, 
        "To" : {
          "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest" : {
            "Name" : "us-gaap:ComprehensiveIncomeNetOfTaxAttributableToNoncontrollingInterest"
          }
        }
      }, 
      "fac:CurrentAssets" : {
        "Name" : "fac:CurrentAssets", 
        "Label" : "Current Assets", 
        "To" : {
          "us-gaap:AssetsCurrent" : {
            "Name" : "us-gaap:AssetsCurrent"
          }
        }
      }, 
      "fac:NetCashFlowsOperatingContinuing" : {
        "Name" : "fac:NetCashFlowsOperatingContinuing", 
        "Label" : null, 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInOperatingActivitiesContinuingOperations" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInOperatingActivitiesContinuingOperations"
          }
        }
      }, 
      "fac:NetCashFlowFromFinancingActivities" : {
        "Name" : "fac:NetCashFlowFromFinancingActivities", 
        "Label" : null, 
        "To" : {
          "us-gaap:NetCashProvidedByUsedInFinancingActivities" : {
            "Name" : "us-gaap:NetCashProvidedByUsedInFinancingActivities"
          }
        }
      }, 
      "fac:InstanceURI" : {
        "Name" : "fac:InstanceURI", 
        "Label" : null, 
        "To" : {
          "" : {
            "Name" : ""
          }
        }
      }, 
      "fac:RedeemableNoncontrollingInterest" : {
        "Name" : "fac:RedeemableNoncontrollingInterest", 
        "Label" : null, 
        "To" : {
          "us-gaap:RedeemableNoncontrollingInterestEquityCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityCarryingAmount"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityCommonCarryingAmount"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityPreferredCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityPreferredCarryingAmount"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityOtherCarryingAmount" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityOtherCarryingAmount"
          }
        }
      }, 
      "fac:TemporaryEquity" : {
        "Name" : "fac:TemporaryEquity", 
        "Label" : "Temporary Equity", 
        "To" : {
          "us-gaap:TemporaryEquityCarryingAmountIncludingPortionAttributableToNoncontrollingInterests" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmountIncludingPortionAttributableToNoncontrollingInterests"
          }, 
          "us-gaap:TemporaryEquityRedemptionValue" : {
            "Name" : "us-gaap:TemporaryEquityRedemptionValue"
          }, 
          "us-gaap:RedeemablePreferredStockCarryingAmount" : {
            "Name" : "us-gaap:RedeemablePreferredStockCarryingAmount"
          }, 
          "us-gaap:TemporaryEquityCarryingAmount" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmount"
          }, 
          "us-gaap:TemporaryEquityValueExcludingAdditionalPaidInCapital" : {
            "Name" : "us-gaap:TemporaryEquityValueExcludingAdditionalPaidInCapital"
          }, 
          "us-gaap:RedeemableNoncontrollingInterestEquityFairValue" : {
            "Name" : "us-gaap:RedeemableNoncontrollingInterestEquityFairValue"
          }, 
          "us-gaap:TemporaryEquityCarryingAmountAttributableToParent" : {
            "Name" : "us-gaap:TemporaryEquityCarryingAmountAttributableToParent"
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
                "fac:FundamentalAccountingConceptsLineItems" : {
                  "Name" : "fac:FundamentalAccountingConceptsLineItems", 
                  "Label" : "Fundamental Accounting Concepts [Line Items]"
                }, 
                "fac:FundamentalAccountingConceptsHierarchy" : {
                  "Name" : "fac:FundamentalAccountingConceptsHierarchy", 
                  "Label" : "Fundamental Accounting Concepts [Hierarchy]"
                }, 
                "fac:GeneralInformationHierarchy" : {
                  "Name" : "fac:GeneralInformationHierarchy", 
                  "Label" : "General Information [Hierarchy]"
                }, 
                "fac:EntityRegistrantName" : {
                  "Name" : "fac:EntityRegistrantName", 
                  "Label" : "Entity Registrant Name"
                }, 
                "fac:EntityCentralIndexKey" : {
                  "Name" : "fac:EntityCentralIndexKey", 
                  "Label" : "Central Index Key"
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
                "fac:IncomeStatementStartPeriodYearToDate" : {
                  "Name" : "fac:IncomeStatementStartPeriodYearToDate", 
                  "Label" : "Income Statement Start Period (Year to Date)"
                }, 
                "fac:BalanceSheetHierarchy" : {
                  "Name" : "fac:BalanceSheetHierarchy", 
                  "Label" : "Balance Sheet [Hierarchy]"
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
                  "Label" : "Income Statement [Hierarchy]"
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
                "fac:OperatingIncomeLoss" : {
                  "Name" : "fac:OperatingIncomeLoss", 
                  "Label" : "Operating Income (Loss)"
                }, 
                "fac:NonoperatingIncomeLoss" : {
                  "Name" : "fac:NonoperatingIncomeLoss", 
                  "Label" : "Nonoperating Income (Loss)"
                }, 
                "fac:InterestDebtExpense" : {
                  "Name" : "fac:InterestDebtExpense", 
                  "Label" : "Interest and Debt Expense"
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
                "fac:PreferredStockDividendsOtherAdjustments" : {
                  "Name" : "fac:PreferredStockDividendsOtherAdjustments", 
                  "Label" : "Preferred Stock Dividends and Other Adjustments"
                }, 
                "fac:NetIncomeLossAvailableToCommonStockholdersBasic" : {
                  "Name" : "fac:NetIncomeLossAvailableToCommonStockholdersBasic", 
                  "Label" : "Net Income (Loss) Available to Common Stockholders, Basic"
                }, 
                "fac:StatementComprehensiveIncomeHierarchy" : {
                  "Name" : "fac:StatementComprehensiveIncomeHierarchy", 
                  "Label" : "Statement of Comprehensive Income [Hierarchy]"
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
                  "Label" : "Cash Flow Statement [Hierarchy]"
                }, 
                "fac:NetCashFlowFromOperatingActivitiesContinuing" : {
                  "Name" : "fac:NetCashFlowFromOperatingActivitiesContinuing", 
                  "Label" : "Net Cash Flow from Operating Activities, Continuing"
                }, 
                "fac:NetCashFlowFromOperatingActivitiesDiscontinued" : {
                  "Name" : "fac:NetCashFlowFromOperatingActivitiesDiscontinued", 
                  "Label" : "Net Cash Flow from Operating Activities, Discontinued"
                }, 
                "fac:NetCashFlowFromOperatingActivities" : {
                  "Name" : "fac:NetCashFlowFromOperatingActivities", 
                  "Label" : "Net Cash Flow from Operating Activities"
                }, 
                "fac:NetCashFlowFromInvestingActivitiesContinuing" : {
                  "Name" : "fac:NetCashFlowFromInvestingActivitiesContinuing", 
                  "Label" : "Net Cash flow from Investing Activities, Continuing"
                }, 
                "fac:NetCashFlowFromInvestingActivitiesDiscontinued" : {
                  "Name" : "fac:NetCashFlowFromInvestingActivitiesDiscontinued", 
                  "Label" : "Net Cash Flow from Investing Activities, Discontinued"
                }, 
                "fac:NetCashFlowFromInvestingActivities" : {
                  "Name" : "fac:NetCashFlowFromInvestingActivities", 
                  "Label" : "Net Cash Flow from Investing Activities"
                }, 
                "fac:NetCashFlowFromFinancingActivitiesContinuing" : {
                  "Name" : "fac:NetCashFlowFromFinancingActivitiesContinuing", 
                  "Label" : "Net Cash flow from Financing Activities, Continuing"
                }, 
                "fac:NetCashFlowFromFinancingActivitiesDiscontinued" : {
                  "Name" : "fac:NetCashFlowFromFinancingActivitiesDiscontinued", 
                  "Label" : "Net Cash Flow from Financing Activities, Discontinued"
                }, 
                "fac:NetCashFlowFromFinancingActivities" : {
                  "Name" : "fac:NetCashFlowFromFinancingActivities", 
                  "Label" : "Net Cash Flow from Financing Activities"
                }, 
                "fac:ExchangeGainsLosses" : {
                  "Name" : "fac:ExchangeGainsLosses", 
                  "Label" : "Exchange Gains (Losses)"
                }, 
                "fac:NetCashFlow" : {
                  "Name" : "fac:NetCashFlow", 
                  "Label" : "Net Cash Flow"
                }, 
                "fac:NetCashFlowContinuing" : {
                  "Name" : "fac:NetCashFlowContinuing", 
                  "Label" : "Net Cash Flow, Continuing"
                }, 
                "fac:NetCashFlowDiscontinued" : {
                  "Name" : "fac:NetCashFlowDiscontinued", 
                  "Label" : "Net Cash Flow, Discontinued"
                }, 
                "fac:KeyRatiosHierarchy" : {
                  "Name" : "fac:KeyRatiosHierarchy", 
                  "Label" : "Key Ratios [Hierarchy]"
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
        }
      }
    }
  }
});