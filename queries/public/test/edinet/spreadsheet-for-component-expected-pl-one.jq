{
  "ModelKind" : "LayoutModel", 
  "ComponentAndHypercubeInformation" : {
    "Component" : {
      "Role" : "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_YearToQuarterEndConsolidatedStatementOfIncome", 
      "Label" : "四半期連結損益計算書　四半期連結累計期間"
    }, 
    "Hypercube" : {
      "Name" : "xbrl:UserDefinedHypercube", 
      "Label" : "User-defined Hypercube"
    }
  }, 
  "TableSetLabels" : [ "四半期連結損益計算書　四半期連結累計期間" ], 
  "TableSet" : [ {
    "TableHeaders" : {
      "x" : [ {
        "GroupLabels" : [ "Period breakdown" ], 
        "GroupCells" : [ [ {
          "CellLabels" : [ "Period [Axis]" ], 
          "CellConstraints" : {

          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 2, 
          "RollUp" : false, 
          "IsRollUp" : false, 
          "IsNegated" : false
        } ], [ {
          "CellLabels" : [ "2014-04-01/2014-06-30" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2014-04-01/2014-06-30"
            }, 
            "table.periodStart" : {
              "xbrl:Period" : "2014-03-31"
            }, 
            "table.periodEnd" : {
              "xbrl:Period" : "2014-06-30"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 1, 
          "RollUp" : false
        }, {
          "CellLabels" : [ "2013-04-01/2013-06-30" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2013-04-01/2013-06-30"
            }, 
            "table.periodStart" : {
              "xbrl:Period" : "2013-03-31"
            }, 
            "table.periodEnd" : {
              "xbrl:Period" : "2013-06-30"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 1, 
          "RollUp" : false
        } ] ]
      } ], 
      "y" : [ {
        "GroupLabels" : [ "Breakdown on concepts" ], 
        "GroupCells" : [ [ {
          "CellLabels" : [ "連結損益計算書", "jppfs-cor:StatementOfIncomeLineItems" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:StatementOfIncomeLineItems"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 23, 
          "RollUp" : false, 
          "IsRollUp" : false, 
          "IsNegated" : false
        } ], [ {
          "CellLabels" : [ "売上原価", "jppfs-cor:CostOfSales" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:CostOfSales"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "売上総利益", "jppfs-cor:GrossProfit" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:GrossProfit"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "販売費及び一般管理費", "jppfs-cor:SellingGeneralAndAdministrativeExpenses" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:SellingGeneralAndAdministrativeExpenses"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "営業利益", "jppfs-cor:OperatingIncome" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:OperatingIncome"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "営業外収益", "jppfs-cor:NonOperatingIncomeAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NonOperatingIncomeAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "受取利息", "jppfs-cor:InterestIncomeNOI" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:InterestIncomeNOI"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "受取配当金", "jppfs-cor:DividendsIncomeNOI" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:DividendsIncomeNOI"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "持分法による投資利益", "jppfs-cor:EquityInEarningsOfAffiliatesNOI" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:EquityInEarningsOfAffiliatesNOI"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "為替差益", "jppfs-cor:ForeignExchangeGainsNOI" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:ForeignExchangeGainsNOI"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "その他", "jppfs-cor:OtherNOI" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:OtherNOI"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "営業外収益合計", "jppfs-cor:NonOperatingIncome" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NonOperatingIncome"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : true, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "営業外費用", "jppfs-cor:NonOperatingExpensesAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NonOperatingExpensesAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "支払利息", "jppfs-cor:InterestExpensesNOE" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:InterestExpensesNOE"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "固定資産除却損", "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "その他", "jppfs-cor:OtherNOE" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:OtherNOE"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "営業外費用合計", "jppfs-cor:NonOperatingExpenses" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NonOperatingExpenses"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : true, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "特別利益", "jppfs-cor:ExtraordinaryIncomeAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:ExtraordinaryIncomeAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "投資有価証券売却益", "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "特別利益合計", "jppfs-cor:ExtraordinaryIncome" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:ExtraordinaryIncome"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : true, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "税金等調整前四半期純利益", "jppfs-cor:IncomeBeforeIncomeTaxes" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:IncomeBeforeIncomeTaxes"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "法人税等", "jppfs-cor:IncomeTaxes" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:IncomeTaxes"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "少数株主利益", "jppfs-cor:MinorityInterestsInIncome" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:MinorityInterestsInIncome"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "四半期純利益", "jppfs-cor:NetIncome" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NetIncome"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : false
        } ] ]
      } ]
    }, 
    "TableCells" : {
      "AxisOrder" : [ "y", "x" ], 
      "Facts" : [ [ {
        "_id" : "26a3eff9-23ce-451f-ae2b-398abd0fddec", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CostOfSales", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 1187009000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:CostOfSales"
          }
        } ]
      }, {
        "_id" : "348354c8-4a9c-4faf-adf9-a1fd890a6227", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CostOfSales", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 1121652000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:CostOfSales"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CostOfSales"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CostOfSales"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CostOfSales"
          }
        } ]
      } ], [ {
        "_id" : "ce8ea3f4-1bd8-4077-a134-07d1f9585d71", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:GrossProfit", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 174392000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:GrossProfit"
          }
        } ]
      }, {
        "_id" : "e41ef487-757e-456f-bd01-0d39fac5b89d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:GrossProfit", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 165212000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:GrossProfit"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:GrossProfit"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:GrossProfit"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:GrossProfit"
          }
        } ]
      } ], [ {
        "_id" : "f18dab07-4651-438c-9d18-8ce0271287ce", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:SellingGeneralAndAdministrativeExpenses", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 114760000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:SellingGeneralAndAdministrativeExpenses"
          }
        } ]
      }, {
        "_id" : "a2880839-9b56-4045-9acd-f837d9d6a1d3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:SellingGeneralAndAdministrativeExpenses", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 109144000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:SellingGeneralAndAdministrativeExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:SellingGeneralAndAdministrativeExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:SellingGeneralAndAdministrativeExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:SellingGeneralAndAdministrativeExpenses"
          }
        } ]
      } ], [ {
        "_id" : "f68837e8-42cc-4b44-98c3-d2c4ea3d4e89", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OperatingIncome", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 59631000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:OperatingIncome"
          }
        } ]
      }, {
        "_id" : "a2d017fd-0d9e-4370-b1e9-aefcd4388bb4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OperatingIncome", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 56067000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:OperatingIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OperatingIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OperatingIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OperatingIncome"
          }
        } ]
      } ], [ null, null ], [ {
        "_id" : "56405c2b-3134-48ca-8602-456e11741e10", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:InterestIncomeNOI", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 1237000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:InterestIncomeNOI"
          }
        } ]
      }, {
        "_id" : "0a2b3895-8a4a-42be-ab2c-bcf2163538c2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:InterestIncomeNOI", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 1089000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:InterestIncomeNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:InterestIncomeNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:InterestIncomeNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:InterestIncomeNOI"
          }
        } ]
      } ], [ {
        "_id" : "ab26b000-7696-4523-ad92-0bcc1c82d505", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:DividendsIncomeNOI", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 7699000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:DividendsIncomeNOI"
          }
        } ]
      }, {
        "_id" : "cb0675f8-69f9-4e0e-acbf-0f5810f1515b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:DividendsIncomeNOI", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 6968000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:DividendsIncomeNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:DividendsIncomeNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:DividendsIncomeNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:DividendsIncomeNOI"
          }
        } ]
      } ], [ {
        "_id" : "196b655b-84c5-48b2-b8e8-a2fb5efef5c0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:EquityInEarningsOfAffiliatesNOI", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 19405000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:EquityInEarningsOfAffiliatesNOI"
          }
        } ]
      }, {
        "_id" : "65b969eb-ca8f-49a0-8933-eab8e5b524d8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:EquityInEarningsOfAffiliatesNOI", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 13189000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:EquityInEarningsOfAffiliatesNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:EquityInEarningsOfAffiliatesNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:EquityInEarningsOfAffiliatesNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:EquityInEarningsOfAffiliatesNOI"
          }
        } ]
      } ], [ {
        "_id" : "4f31a3b6-aec7-436b-818e-7be81f1ede8a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ForeignExchangeGainsNOI", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:ForeignExchangeGainsNOI"
          }
        } ]
      }, {
        "_id" : "c56a0fc2-122b-4a4c-a925-eb335338def8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ForeignExchangeGainsNOI", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 14826000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:ForeignExchangeGainsNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ForeignExchangeGainsNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ForeignExchangeGainsNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ForeignExchangeGainsNOI"
          }
        } ]
      } ], [ {
        "_id" : "2596b48e-1d1d-452d-b982-59dd94d64a47", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OtherNOI", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 4153000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:OtherNOI"
          }
        } ]
      }, {
        "_id" : "6642d6c4-0032-42ea-ade3-14496bbbf43e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OtherNOI", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 9667000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:OtherNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherNOI"
          }
        } ]
      } ], [ {
        "_id" : "d7bfdabd-5d68-4d99-af95-56fae2e337aa", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NonOperatingIncome", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 32496000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:NonOperatingIncome"
          }
        } ]
      }, {
        "_id" : "c7b063a7-d7de-4967-acd8-f3bb089933c4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NonOperatingIncome", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 45742000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:NonOperatingIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NonOperatingIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NonOperatingIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NonOperatingIncome"
          }
        } ]
      } ], [ null, null ], [ {
        "_id" : "a693463f-476c-4cef-9055-6bda59f85ec6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:InterestExpensesNOE", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 5440000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:InterestExpensesNOE"
          }
        } ]
      }, {
        "_id" : "d03a0c04-139c-4c92-83c6-0c45f243be47", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:InterestExpensesNOE", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 6821000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:InterestExpensesNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:InterestExpensesNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:InterestExpensesNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:InterestExpensesNOE"
          }
        } ]
      } ], [ {
        "_id" : "ad370a35-d820-45c0-b6cf-eea25e98ed47", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 3000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE"
          }
        } ]
      }, {
        "_id" : "e5faa689-7015-4956-bba5-a59a521f53fa", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 2875000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE"
          }
        } ]
      } ], [ {
        "_id" : "9228014d-29bd-4d81-bc7f-b0189c0958ae", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OtherNOE", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 9366000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:OtherNOE"
          }
        } ]
      }, {
        "_id" : "fea6ccb9-bf44-4bc6-aa51-5e6315d1cfa2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OtherNOE", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 5657000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:OtherNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherNOE"
          }
        } ]
      } ], [ {
        "_id" : "350dc451-3635-46f5-8b15-1c5e8b464625", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NonOperatingExpenses", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 17808000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:NonOperatingExpenses"
          }
        } ]
      }, {
        "_id" : "902a4161-9e08-46c2-9e42-23ff55960a73", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NonOperatingExpenses", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 15354000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:NonOperatingExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NonOperatingExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NonOperatingExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NonOperatingExpenses"
          }
        } ]
      } ], [ null, null ], [ {
        "_id" : "89dc25a5-bc62-4bf4-9559-a381c6f147af", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI"
          }
        } ]
      }, {
        "_id" : "b41574af-4b1d-4402-8421-f45710c5b7cf", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 15621000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI"
          }
        } ]
      } ], [ {
        "_id" : "e0975275-5b7c-40d4-ae4f-3303a3893c60", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ExtraordinaryIncome", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:ExtraordinaryIncome"
          }
        } ]
      }, {
        "_id" : "766fb3e7-81a4-435e-8850-84c7048478b3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ExtraordinaryIncome", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 15621000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:ExtraordinaryIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ExtraordinaryIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ExtraordinaryIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ExtraordinaryIncome"
          }
        } ]
      } ], [ {
        "_id" : "a9b4b5f7-f4df-4d07-827c-6b02346a3ae7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:IncomeBeforeIncomeTaxes", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 74319000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:IncomeBeforeIncomeTaxes"
          }
        } ]
      }, {
        "_id" : "65fd2167-aca7-44f5-a352-f800cb8f1995", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:IncomeBeforeIncomeTaxes", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 102077000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:IncomeBeforeIncomeTaxes"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:IncomeBeforeIncomeTaxes"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:IncomeBeforeIncomeTaxes"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:IncomeBeforeIncomeTaxes"
          }
        } ]
      } ], [ {
        "_id" : "f5e38da3-1132-4ca3-854e-32317d17441d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:IncomeTaxes", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 22381000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:IncomeTaxes"
          }
        } ]
      }, {
        "_id" : "8ed043c0-c140-40ce-a5fc-51afd76b3038", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:IncomeTaxes", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 35268000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:IncomeTaxes"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:IncomeTaxes"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:IncomeTaxes"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:IncomeTaxes"
          }
        } ]
      } ], [ {
        "_id" : "07759529-cd92-4b9b-9765-c0ecde7cbb25", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:MinorityInterestsInIncome", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 3597000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:MinorityInterestsInIncome"
          }
        } ]
      }, {
        "_id" : "82baff56-5561-4ab3-982f-6094aa64eac1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:MinorityInterestsInIncome", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 3409000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:MinorityInterestsInIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:MinorityInterestsInIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:MinorityInterestsInIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:MinorityInterestsInIncome"
          }
        } ]
      } ], [ {
        "_id" : "b06835c5-cbc6-4b59-bb0c-dc5609d4bf0f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NetIncome", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NumericValue", 
        "Value" : 48340000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:NetIncome"
          }
        } ]
      }, {
        "_id" : "c83b6f8e-0334-49e3-ab9c-b87c0ac5b909", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NetIncome", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-04-01/2013-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 63398000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:NetIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NetIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NetIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NetIncome"
          }
        } ]
      } ] ]
    }
  } ], 
  "GlobalConstraints" : [ {
    "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000"
  }, {
    "xbrl:Unit" : "iso4217:JPY"
  }, {
    "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
  }, {
    "xbrl28:Archive" : "S1002Q54"
  }, {
    "fsa:Submitted" : "2014-08-07"
  } ], 
  "GlobalConstraintLabels" : {
    "xbrl:Entity" : "Reporting Entity [Axis]", 
    "xbrl:Unit" : "Unit [Axis]", 
    "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "Consolidated or non-consolidated", 
    "jppfs-cor:ConsolidatedMember" : "Consolidated [member]", 
    "xbrl28:Archive" : "Archive [Axis]", 
    "fsa:Submitted" : "FSA Submission Date [Axis]"
  }
}