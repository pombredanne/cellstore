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
      }, {
        "GroupLabels" : [ "japan:FiscalYear breakdown" ],
        "GroupCells" : [ [ {
          "CellLabels" : [ "japan:FiscalYear" ],
          "CellConstraints" : {

          },
          "TagSelectors" : [  ],
          "CellSpan" : 1,
          "RollUp" : false,
          "IsRollUp" : false,
          "IsNegated" : false
        }, {
          "CellLabels" : [ "japan:FiscalYear" ],
          "CellConstraints" : {

          },
          "TagSelectors" : [  ],
          "CellSpan" : 1,
          "RollUp" : false,
          "IsRollUp" : false,
          "IsNegated" : false
        } ] ]
      }, {
        "GroupLabels" : [ "japan:FiscalPeriod breakdown" ],
        "GroupCells" : [ [ {
          "CellLabels" : [ "japan:FiscalPeriod" ],
          "CellConstraints" : {

          },
          "TagSelectors" : [  ],
          "CellSpan" : 1,
          "RollUp" : false,
          "IsRollUp" : false,
          "IsNegated" : false
        }, {
          "CellLabels" : [ "japan:FiscalPeriod" ],
          "CellConstraints" : {

          },
          "TagSelectors" : [  ],
          "CellSpan" : 1,
          "RollUp" : false,
          "IsRollUp" : false,
          "IsNegated" : false
        } ] ]
      }, {
        "GroupLabels" : [ "japan:FiscalPeriodType breakdown" ],
        "GroupCells" : [ [ {
          "CellLabels" : [ "japan:FiscalPeriodType" ],
          "CellConstraints" : {

          },
          "TagSelectors" : [  ],
          "CellSpan" : 1,
          "RollUp" : false,
          "IsRollUp" : false,
          "IsNegated" : false
        }, {
          "CellLabels" : [ "japan:FiscalPeriodType" ],
          "CellConstraints" : {

          },
          "TagSelectors" : [  ],
          "CellSpan" : 1,
          "RollUp" : false,
          "IsRollUp" : false,
          "IsNegated" : false
        } ] ]
      } ],
      "y" : [ {
        "GroupLabels" : [ "Breakdown on concepts" ],
        "GroupCells" : [ [ {
          "CellLabels" : [ "四半期連結累計期間", "jppfs-cor:YearToQuarterEndConsolidatedStatementOfIncomeHeading" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:YearToQuarterEndConsolidatedStatementOfIncomeHeading"
            }
          },
          "TagSelectors" : [  ],
          "CellSpan" : 30,
          "RollUp" : false,
          "IsRollUp" : false,
          "IsNegated" : false
        } ], [ {
          "CellLabels" : [ "連結損益計算書", "jppfs-cor:StatementOfIncomeTable" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:StatementOfIncomeTable"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 1,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "連結個別", "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 2,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "連結", "jppfs-cor:ConsolidatedMember" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:ConsolidatedMember"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 3
        }, {
          "CellLabels" : [ "連結損益計算書", "jppfs-cor:StatementOfIncomeLineItems" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:StatementOfIncomeLineItems"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 1,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "売上高", "jppfs-cor:NetSales" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NetSales"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 2,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "売上原価", "jppfs-cor:CostOfSales" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:CostOfSales"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 2,
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
          "Depth" : 2,
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
          "Depth" : 2,
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
          "Depth" : 2,
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
          "Depth" : 2,
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
          "Depth" : 3
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
          "Depth" : 3
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
          "Depth" : 3
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
          "Depth" : 3
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
          "Depth" : 3
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
          "Depth" : 3
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
          "Depth" : 2,
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
          "Depth" : 3
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
          "Depth" : 3
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
          "Depth" : 3
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
          "Depth" : 3
        }, {
          "CellLabels" : [ "経常利益", "jppfs-cor:OrdinaryIncome" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:OrdinaryIncome"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 2,
          "IsAbstract" : false
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
          "Depth" : 2,
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
          "Depth" : 3
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
          "Depth" : 3
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
          "Depth" : 2,
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
          "Depth" : 2,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "少数株主損益調整前四半期純利益", "jppfs-cor:IncomeBeforeMinorityInterests" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:IncomeBeforeMinorityInterests"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 2,
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
          "Depth" : 2,
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
          "Depth" : 2,
          "IsAbstract" : false
        } ] ]
      } ]
    },
    "TableCells" : {
      "AxisOrder" : [ "y", "x" ],
      "Facts" : [ [ null, null ], [ null, null ], [ {
        "Aspects" : {
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Concept" : "jppfs-cor:ConsolidatedMember",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Unit" : "iso4217:JPY",
          "xbrl28:Archive" : "S1002Q54",
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }
      }, {
        "Aspects" : {
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Concept" : "jppfs-cor:ConsolidatedMember",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Unit" : "iso4217:JPY",
          "xbrl28:Archive" : "S1002Q54",
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }
      } ], [ null, null ], [ [ {
        "_id" : "4cc2a2b4-2dc3-44e4-8776-fadb2a595a46",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NetSales",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1361401000000,
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
            "OutputConcept" : "jppfs-cor:NetSales"
          }
        } ]
      }, {
        "_id" : "da47a7ba-202d-46a1-890e-a0f688e8cf27",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NetSales",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1361401000000,
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
            "OutputConcept" : "jppfs-cor:NetSales"
          }
        } ]
      } ], [ {
        "_id" : "809c9638-5b30-4fa2-83db-03169133d0e7",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NetSales",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1286864000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "duration",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetSales"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetSales"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetSales"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NetSales"
          }
        } ]
      }, {
        "_id" : "dec382a0-906f-48da-8c60-47a62d754ae2",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NetSales",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1286864000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "duration",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetSales"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetSales"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetSales"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NetSales"
          }
        } ]
      } ] ], [ {
        "_id" : "73481181-e701-47b1-bf5d-be7c2e7785b4",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CostOfSales",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "e277cf98-9f4d-4cbd-9360-202ffa482b56",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CostOfSales",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CostOfSales"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CostOfSales"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CostOfSales"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CostOfSales"
          }
        } ]
      } ], [ {
        "_id" : "98391308-d3ea-49b2-afe4-6fffc7bcf85d",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:GrossProfit",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "5584acb0-675e-4bbd-b21d-642af2045b24",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:GrossProfit",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:GrossProfit"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:GrossProfit"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:GrossProfit"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:GrossProfit"
          }
        } ]
      } ], [ {
        "_id" : "df05075c-3410-4e32-9ec8-84866e4f20c5",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:SellingGeneralAndAdministrativeExpenses",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "cd4cab56-478d-4a65-85b3-c2a74c4721d5",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:SellingGeneralAndAdministrativeExpenses",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:SellingGeneralAndAdministrativeExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:SellingGeneralAndAdministrativeExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:SellingGeneralAndAdministrativeExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:SellingGeneralAndAdministrativeExpenses"
          }
        } ]
      } ], [ {
        "_id" : "39035dd7-5164-4965-902b-62c7586db28b",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OperatingIncome",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "4ec5935b-2b31-46c6-9c39-a49742a3b6d8",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OperatingIncome",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OperatingIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OperatingIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OperatingIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OperatingIncome"
          }
        } ]
      } ], [ null, null ], [ {
        "_id" : "3ea78308-720c-46d9-975a-08c916ae651d",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:InterestIncomeNOI",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "43aea2f2-a661-4e0d-a219-5bc3460651ba",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:InterestIncomeNOI",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:InterestIncomeNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:InterestIncomeNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:InterestIncomeNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:InterestIncomeNOI"
          }
        } ]
      } ], [ {
        "_id" : "d5cbb21b-a210-41c1-8d3d-7fe0abb7a2b6",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:DividendsIncomeNOI",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "f5472a6c-df82-434c-a57b-af0c76341ebc",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:DividendsIncomeNOI",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:DividendsIncomeNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:DividendsIncomeNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:DividendsIncomeNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:DividendsIncomeNOI"
          }
        } ]
      } ], [ {
        "_id" : "389d2322-932f-4a94-baf2-f8b0c2ae765f",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:EquityInEarningsOfAffiliatesNOI",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "51c3f047-9aa7-440a-8b37-f47c5a375da6",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:EquityInEarningsOfAffiliatesNOI",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:EquityInEarningsOfAffiliatesNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:EquityInEarningsOfAffiliatesNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:EquityInEarningsOfAffiliatesNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:EquityInEarningsOfAffiliatesNOI"
          }
        } ]
      } ], [ {
        "_id" : "33673595-5567-45f0-ba0a-eed8a488dff7",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ForeignExchangeGainsNOI",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "c7801c2f-b57e-4bcc-9a55-1f78d0825a50",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ForeignExchangeGainsNOI",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ForeignExchangeGainsNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ForeignExchangeGainsNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ForeignExchangeGainsNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ForeignExchangeGainsNOI"
          }
        } ]
      } ], [ {
        "_id" : "058127ba-890a-47ce-aca3-87df7690d072",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OtherNOI",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "1db41167-ab82-4869-bb09-59dd333a81b5",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OtherNOI",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherNOI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OtherNOI"
          }
        } ]
      } ], [ {
        "_id" : "976c2ea2-efd8-4574-997e-3f5f200c12fd",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NonOperatingIncome",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "6f10bc20-1e62-48cf-934d-1e53ae9f6be5",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NonOperatingIncome",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NonOperatingIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NonOperatingIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NonOperatingIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NonOperatingIncome"
          }
        } ]
      } ], [ null, null ], [ {
        "_id" : "b5368c2e-878d-421b-9fc0-025d6c5de1df",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:InterestExpensesNOE",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "87f9b5a5-d6c7-46a7-816f-a32c4c73e817",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:InterestExpensesNOE",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:InterestExpensesNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:InterestExpensesNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:InterestExpensesNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:InterestExpensesNOE"
          }
        } ]
      } ], [ {
        "_id" : "e0534275-1a38-4718-9b1a-99021fcd1bc3",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "48855e6c-1a99-49da-9b1a-3111853f2052",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:LossOnRetirementOfNoncurrentAssetsNOE"
          }
        } ]
      } ], [ {
        "_id" : "7f1626df-9a88-49b2-afa1-c84b4328ef71",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OtherNOE",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "35e30002-5965-4388-8e91-cb0a10d71c4b",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OtherNOE",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherNOE"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OtherNOE"
          }
        } ]
      } ], [ {
        "_id" : "c2fd7ff2-d172-4de5-a98b-80852d96bd06",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NonOperatingExpenses",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "3491b0ed-ed5f-4909-9fd7-1e6465fc15b8",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NonOperatingExpenses",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NonOperatingExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NonOperatingExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NonOperatingExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NonOperatingExpenses"
          }
        } ]
      } ], [ [ {
        "_id" : "199dffd4-cda6-4715-b8fc-e1ca527f35d7",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OrdinaryIncome",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
            "OutputConcept" : "jppfs-cor:OrdinaryIncome"
          }
        } ]
      }, {
        "_id" : "8b30b246-a751-4275-8ff5-64f152e1dce2",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OrdinaryIncome",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
            "OutputConcept" : "jppfs-cor:OrdinaryIncome"
          }
        } ]
      } ], [ {
        "_id" : "69d19979-d549-4d52-b820-6843ec6c6282",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OrdinaryIncome",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 86455000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "duration",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OrdinaryIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OrdinaryIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OrdinaryIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OrdinaryIncome"
          }
        } ]
      }, {
        "_id" : "6e4a0dd0-074d-4bd8-abef-bc01335d8717",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OrdinaryIncome",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 86455000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "duration",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OrdinaryIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OrdinaryIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OrdinaryIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OrdinaryIncome"
          }
        } ]
      } ] ], [ null, null ], [ {
        "_id" : "d7de1848-7eae-47c9-85bc-01cabe0be4da",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "6b864947-9717-4cbd-8465-a69b61394ac2",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:GainOnSalesOfInvestmentSecuritiesEI"
          }
        } ]
      } ], [ {
        "_id" : "4916b7a9-1229-4935-ac60-cdefd1557e44",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ExtraordinaryIncome",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "0de87679-ec1e-4f41-aa22-0e9b19484241",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ExtraordinaryIncome",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ExtraordinaryIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ExtraordinaryIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ExtraordinaryIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ExtraordinaryIncome"
          }
        } ]
      } ], [ {
        "_id" : "d59f2bcc-c676-4c9f-996b-6f79fa7bfddb",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:IncomeBeforeIncomeTaxes",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "9bf1690c-6d41-4d43-9498-5136fedbdef9",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:IncomeBeforeIncomeTaxes",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeBeforeIncomeTaxes"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeBeforeIncomeTaxes"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeBeforeIncomeTaxes"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:IncomeBeforeIncomeTaxes"
          }
        } ]
      } ], [ {
        "_id" : "32128c69-ceaf-4979-b5aa-c874e57de332",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:IncomeTaxes",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "391c0bbb-9cc5-4af1-8984-f76d2dc3b78a",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:IncomeTaxes",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeTaxes"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeTaxes"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeTaxes"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:IncomeTaxes"
          }
        } ]
      } ], [ [ {
        "_id" : "30738c96-3350-4c4f-9f18-b7cb897d8f67",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:IncomeBeforeMinorityInterests",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 51938000000,
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
            "OutputConcept" : "jppfs-cor:IncomeBeforeMinorityInterests"
          }
        } ]
      }, {
        "_id" : "c697deea-8077-417d-9ab8-bb589e1dfca3",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:IncomeBeforeMinorityInterests",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 51938000000,
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
            "OutputConcept" : "jppfs-cor:IncomeBeforeMinorityInterests"
          }
        } ]
      } ], [ {
        "_id" : "065b1bbe-7cef-4cd0-9270-dd2b3871b035",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:IncomeBeforeMinorityInterests",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 66808000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "duration",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeBeforeMinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeBeforeMinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeBeforeMinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:IncomeBeforeMinorityInterests"
          }
        } ]
      }, {
        "_id" : "e07d8db3-8819-452c-80cc-b684d6844587",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:IncomeBeforeMinorityInterests",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 66808000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "duration",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeBeforeMinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeBeforeMinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeBeforeMinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:IncomeBeforeMinorityInterests"
          }
        } ]
      } ] ], [ {
        "_id" : "68c2de41-be62-42bc-af2b-e567471a7870",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:MinorityInterestsInIncome",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "c5772011-f26b-4ea7-a264-75bad4f84403",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:MinorityInterestsInIncome",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:MinorityInterestsInIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:MinorityInterestsInIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:MinorityInterestsInIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:MinorityInterestsInIncome"
          }
        } ]
      } ], [ {
        "_id" : "e701dd8c-02f8-47eb-ba8b-d0900bfa75e5",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NetIncome",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-04-01/2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "YTD",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
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
        "_id" : "10ded292-6d53-4797-b12d-c2d64b14ec7f",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NetIncome",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2013-04-01/2013-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
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
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetIncome"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
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
    "xbrl28:Archive" : "S1002Q54"
  }, {
    "japan:Submitted" : "2014-08-07"
  }, {
    "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
  } ],
  "GlobalConstraintLabels" : {
    "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "連結個別",
    "jppfs-cor:ConsolidatedMember" : "連結"
  }
}
