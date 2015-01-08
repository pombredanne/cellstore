{
  "ModelKind" : "LayoutModel",
  "ComponentAndHypercubeInformation" : {
    "Component" : {
      "Role" : "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_QuarterlyConsolidatedBalanceSheet",
      "Label" : "四半期連結貸借対照表"
    },
    "Hypercube" : {
      "Name" : "xbrl:UserDefinedHypercube",
      "Label" : "User-defined Hypercube"
    }
  },
  "TableSetLabels" : [ "四半期連結貸借対照表" ],
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
          "CellLabels" : [ "2014-06-30" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2014-06-30"
            },
            "table.periodStart" : {
              "xbrl:Period" : ""
            },
            "table.periodEnd" : {
              "xbrl:Period" : ""
            }
          },
          "TagSelectors" : [  ],
          "CellSpan" : 1,
          "RollUp" : false
        }, {
          "CellLabels" : [ "2014-03-31" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2014-03-31"
            },
            "table.periodStart" : {
              "xbrl:Period" : ""
            },
            "table.periodEnd" : {
              "xbrl:Period" : ""
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
          "CellLabels" : [ "四半期連結貸借対照表", "jppfs-cor:QuarterlyConsolidatedBalanceSheetHeading" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:QuarterlyConsolidatedBalanceSheetHeading"
            }
          },
          "TagSelectors" : [  ],
          "CellSpan" : 62,
          "RollUp" : false,
          "IsRollUp" : false,
          "IsNegated" : false
        } ], [ {
          "CellLabels" : [ "連結貸借対照表", "jppfs-cor:BalanceSheetTable" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:BalanceSheetTable"
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
          "Depth" : 3,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "連結貸借対照表", "jppfs-cor:BalanceSheetLineItems" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:BalanceSheetLineItems"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 1,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "資産の部", "jppfs-cor:AssetsAbstract" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:AssetsAbstract"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 2,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "流動資産", "jppfs-cor:CurrentAssetsAbstract" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:CurrentAssetsAbstract"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 3,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "現金及び預金", "jppfs-cor:CashAndDeposits" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:CashAndDeposits"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "受取手形及び売掛金", "jppfs-cor:NotesAndAccountsReceivableTrade" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NotesAndAccountsReceivableTrade"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "たな卸資産", "jppfs-cor:Inventories" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:Inventories"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "その他", "jppfs-cor:OtherCA" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:OtherCA"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "貸倒引当金", "jppfs-cor:AllowanceForDoubtfulAccountsCA" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:AllowanceForDoubtfulAccountsCA"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "流動資産合計", "jppfs-cor:CurrentAssets" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:CurrentAssets"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : true,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "固定資産", "jppfs-cor:NoncurrentAssetsAbstract" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NoncurrentAssetsAbstract"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 3,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "有形固定資産", "jppfs-cor:PropertyPlantAndEquipmentAbstract" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:PropertyPlantAndEquipmentAbstract"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "建物及び構築物（純額）", "jppfs-cor:BuildingsAndStructuresNet" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:BuildingsAndStructuresNet"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 5
        }, {
          "CellLabels" : [ "機械装置及び運搬具（純額）", "jppfs-cor:MachineryEquipmentAndVehiclesNet" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:MachineryEquipmentAndVehiclesNet"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 5
        }, {
          "CellLabels" : [ "その他（純額）", "jppfs-cor:OtherNetPPE" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:OtherNetPPE"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 5
        }, {
          "CellLabels" : [ "有形固定資産合計", "jppfs-cor:PropertyPlantAndEquipment" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:PropertyPlantAndEquipment"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : true,
          "IsNegated" : false,
          "Depth" : 5
        }, {
          "CellLabels" : [ "無形固定資産", "jppfs-cor:IntangibleAssets" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:IntangibleAssets"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "投資その他の資産", "jppfs-cor:InvestmentsAndOtherAssetsAbstract" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:InvestmentsAndOtherAssetsAbstract"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "投資有価証券", "jppfs-cor:InvestmentSecurities" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:InvestmentSecurities"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 5
        }, {
          "CellLabels" : [ "退職給付に係る資産", "jppfs-cor:NetDefinedBenefitAsset" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NetDefinedBenefitAsset"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 5
        }, {
          "CellLabels" : [ "その他", "jppfs-cor:OtherIOA" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:OtherIOA"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 5
        }, {
          "CellLabels" : [ "貸倒引当金", "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 5
        }, {
          "CellLabels" : [ "投資その他の資産合計", "jppfs-cor:InvestmentsAndOtherAssets" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:InvestmentsAndOtherAssets"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : true,
          "IsNegated" : false,
          "Depth" : 5
        }, {
          "CellLabels" : [ "固定資産合計", "jppfs-cor:NoncurrentAssets" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NoncurrentAssets"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : true,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "資産合計", "jppfs-cor:Assets" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:Assets"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : true,
          "IsNegated" : false,
          "Depth" : 3,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "負債の部", "jppfs-cor:LiabilitiesAbstract" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:LiabilitiesAbstract"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 2,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "流動負債", "jppfs-cor:CurrentLiabilitiesAbstract" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:CurrentLiabilitiesAbstract"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 3,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "支払手形及び買掛金", "jppfs-cor:NotesAndAccountsPayableTrade" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NotesAndAccountsPayableTrade"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "短期借入金", "jppfs-cor:ShortTermLoansPayable" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:ShortTermLoansPayable"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "コマーシャル・ペーパー", "jppfs-cor:CommercialPapersLiabilities" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:CommercialPapersLiabilities"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "1年内償還予定の社債", "jppfs-cor:CurrentPortionOfBonds" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:CurrentPortionOfBonds"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "未払法人税等", "jppfs-cor:IncomeTaxesPayable" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:IncomeTaxesPayable"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "引当金", "jppfs-cor:ProvisionCL" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:ProvisionCL"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "その他", "jppfs-cor:OtherCL" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:OtherCL"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "流動負債合計", "jppfs-cor:CurrentLiabilities" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:CurrentLiabilities"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : true,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "固定負債", "jppfs-cor:NoncurrentLiabilitiesAbstract" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NoncurrentLiabilitiesAbstract"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 3,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "社債", "jppfs-cor:BondsPayable" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:BondsPayable"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "長期借入金", "jppfs-cor:LongTermLoansPayable" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:LongTermLoansPayable"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "引当金", "jppfs-cor:ProvisionNCL" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:ProvisionNCL"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "退職給付に係る負債", "jppfs-cor:NetDefinedBenefitLiability" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NetDefinedBenefitLiability"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "その他", "jppfs-cor:OtherNCL" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:OtherNCL"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "固定負債合計", "jppfs-cor:NoncurrentLiabilities" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NoncurrentLiabilities"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : true,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "負債合計", "jppfs-cor:Liabilities" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:Liabilities"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : true,
          "IsNegated" : false,
          "Depth" : 3,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "純資産の部", "jppfs-cor:NetAssetsAbstract" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NetAssetsAbstract"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 2,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "株主資本", "jppfs-cor:ShareholdersEquityAbstract" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:ShareholdersEquityAbstract"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 3,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "資本金", "jppfs-cor:CapitalStock" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:CapitalStock"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "資本剰余金", "jppfs-cor:CapitalSurplus" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:CapitalSurplus"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "利益剰余金", "jppfs-cor:RetainedEarnings" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:RetainedEarnings"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "自己株式", "jppfs-cor:TreasuryStock" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:TreasuryStock"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "株主資本合計", "jppfs-cor:ShareholdersEquity" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:ShareholdersEquity"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : true,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "その他の包括利益累計額", "jppfs-cor:ValuationAndTranslationAdjustmentsAbstract" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:ValuationAndTranslationAdjustmentsAbstract"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 3,
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "その他有価証券評価差額金", "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "繰延ヘッジ損益", "jppfs-cor:DeferredGainsOrLossesOnHedges" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:DeferredGainsOrLossesOnHedges"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "土地再評価差額金", "jppfs-cor:RevaluationReserveForLand" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:RevaluationReserveForLand"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "為替換算調整勘定", "jppfs-cor:ForeignCurrencyTranslationAdjustment" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:ForeignCurrencyTranslationAdjustment"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "退職給付に係る調整累計額", "jppfs-cor:RemeasurementsOfDefinedBenefitPlans" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:RemeasurementsOfDefinedBenefitPlans"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "その他の包括利益累計額合計", "jppfs-cor:ValuationAndTranslationAdjustments" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:ValuationAndTranslationAdjustments"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 4,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "少数株主持分", "jppfs-cor:MinorityInterests" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:MinorityInterests"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : false,
          "IsNegated" : false,
          "Depth" : 3,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "純資産合計", "jppfs-cor:NetAssets" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:NetAssets"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : true,
          "IsNegated" : false,
          "Depth" : 3,
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "負債純資産合計", "jppfs-cor:LiabilitiesAndNetAssets" ],
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:LiabilitiesAndNetAssets"
            }
          },
          "TagSelectors" : [  ],
          "IsRollUp" : true,
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
          "xbrl:Period" : "2014-06-30",
          "xbrl:Concept" : "jppfs-cor:ConsolidatedMember",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Unit" : "iso4217:JPY",
          "xbrl28:Archive" : "S1002Q54",
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }
      }, {
        "Aspects" : {
          "xbrl:Period" : "2014-03-31",
          "xbrl:Concept" : "jppfs-cor:ConsolidatedMember",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Unit" : "iso4217:JPY",
          "xbrl28:Archive" : "S1002Q54",
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }
      } ], [ null, null ], [ null, null ], [ null, null ], [ {
        "_id" : "63fe70e3-8214-4ba6-a8fd-5c80488a1c77",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CashAndDeposits",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 91042000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CashAndDeposits"
          }
        } ]
      }, {
        "_id" : "fac5e457-d461-4813-bc95-44790af0c47c",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CashAndDeposits",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 105303000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CashAndDeposits"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CashAndDeposits"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CashAndDeposits"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CashAndDeposits"
          }
        } ]
      } ], [ {
        "_id" : "6111f50d-474a-4794-8d45-79ab219d530d",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NotesAndAccountsReceivableTrade",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 520509000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NotesAndAccountsReceivableTrade"
          }
        } ]
      }, {
        "_id" : "7ad12038-6dbb-47be-96d9-971cc9fe8838",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NotesAndAccountsReceivableTrade",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 589802000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NotesAndAccountsReceivableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NotesAndAccountsReceivableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NotesAndAccountsReceivableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NotesAndAccountsReceivableTrade"
          }
        } ]
      } ], [ {
        "_id" : "88eaabab-a91f-4697-9319-21ecbee26e91",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:Inventories",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1262542000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:Inventories"
          }
        } ]
      }, {
        "_id" : "3c022dfa-9150-4094-9bd9-6898d0699741",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:Inventories",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1225014000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:Inventories"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:Inventories"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:Inventories"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:Inventories"
          }
        } ]
      } ], [ {
        "_id" : "65f59806-c7d2-4798-ba29-0fb4e97ab903",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OtherCA",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 333165000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OtherCA"
          }
        } ]
      }, {
        "_id" : "ab0af26e-669e-4c2e-b872-11d179372ce1",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OtherCA",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 354791000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherCA"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherCA"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherCA"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OtherCA"
          }
        } ]
      } ], [ {
        "_id" : "58aa2d5e-fb82-4749-9bc8-dbf80dd2f0e8",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:AllowanceForDoubtfulAccountsCA",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : -1637000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsCA"
          }
        } ]
      }, {
        "_id" : "4c39d7c2-5ba3-417f-9e38-ddd0a7d8f3e7",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:AllowanceForDoubtfulAccountsCA",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : -1540000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsCA"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsCA"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsCA"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsCA"
          }
        } ]
      } ], [ {
        "_id" : "894cb50e-78ac-4395-a9ad-db068daefe84",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CurrentAssets",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 2205622000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CurrentAssets"
          }
        } ]
      }, {
        "_id" : "26c2da49-7605-4161-8f43-cf42b929a16a",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CurrentAssets",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 2273371000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CurrentAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CurrentAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CurrentAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CurrentAssets"
          }
        } ]
      } ], [ null, null ], [ null, null ], [ {
        "_id" : "e7d68397-0e42-49c0-8f54-ab04452dc434",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:BuildingsAndStructuresNet",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 721071000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:BuildingsAndStructuresNet"
          }
        } ]
      }, {
        "_id" : "c820c115-c37d-40b0-9a35-fb844c6e5838",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:BuildingsAndStructuresNet",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 725473000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:BuildingsAndStructuresNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:BuildingsAndStructuresNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:BuildingsAndStructuresNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:BuildingsAndStructuresNet"
          }
        } ]
      } ], [ {
        "_id" : "dd539a82-a1ab-499e-a58d-29b4395f1c02",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:MachineryEquipmentAndVehiclesNet",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1082578000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:MachineryEquipmentAndVehiclesNet"
          }
        } ]
      }, {
        "_id" : "3e9ace65-23b6-4edd-a2a0-1dad530d7ec5",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:MachineryEquipmentAndVehiclesNet",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1078995000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:MachineryEquipmentAndVehiclesNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:MachineryEquipmentAndVehiclesNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:MachineryEquipmentAndVehiclesNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:MachineryEquipmentAndVehiclesNet"
          }
        } ]
      } ], [ {
        "_id" : "e0807378-af60-4703-9015-ebafbbc002da",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OtherNetPPE",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 801060000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OtherNetPPE"
          }
        } ]
      }, {
        "_id" : "aa1d9f19-c062-4789-a73a-b47402a324ac",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OtherNetPPE",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 807810000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherNetPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherNetPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherNetPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OtherNetPPE"
          }
        } ]
      } ], [ {
        "_id" : "42e5edae-185e-4c78-bc0f-97ccf11cd40f",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:PropertyPlantAndEquipment",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 2604709000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:PropertyPlantAndEquipment"
          }
        } ]
      }, {
        "_id" : "351fa0ed-e204-4666-8d76-94e3ed7d10fe",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:PropertyPlantAndEquipment",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 2612280000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:PropertyPlantAndEquipment"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:PropertyPlantAndEquipment"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:PropertyPlantAndEquipment"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:PropertyPlantAndEquipment"
          }
        } ]
      } ], [ {
        "_id" : "7e999204-abc3-4e2b-a690-6295aeb4dffa",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:IntangibleAssets",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 105465000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:IntangibleAssets"
          }
        } ]
      }, {
        "_id" : "9704f02c-5f9f-4105-8d6f-62f0756df603",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:IntangibleAssets",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 94079000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IntangibleAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IntangibleAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IntangibleAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:IntangibleAssets"
          }
        } ]
      } ], [ null, null ], [ {
        "_id" : "d5d0e66b-b025-4020-a9fc-0511980c6ac6",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:InvestmentSecurities",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1874334000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:InvestmentSecurities"
          }
        } ]
      }, {
        "_id" : "e87c96d1-02ef-4a9f-bb05-c2fd1acbe8f2",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:InvestmentSecurities",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1836196000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:InvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:InvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:InvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:InvestmentSecurities"
          }
        } ]
      } ], [ {
        "_id" : "9b4969ca-746b-4978-a352-18d9c078cf66",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NetDefinedBenefitAsset",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 89262000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitAsset"
          }
        } ]
      }, {
        "_id" : "ccd1efdf-e971-4ed2-8b4b-d118a3027aa1",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NetDefinedBenefitAsset",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 111958000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitAsset"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitAsset"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitAsset"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitAsset"
          }
        } ]
      } ], [ {
        "_id" : "25e4c070-77bb-45bb-907f-6d8f37f3fa91",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OtherIOA",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 156021000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OtherIOA"
          }
        } ]
      }, {
        "_id" : "70b9e6df-f19f-4908-8a35-777832acd1fd",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OtherIOA",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 157727000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherIOA"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherIOA"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherIOA"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OtherIOA"
          }
        } ]
      } ], [ {
        "_id" : "2a9eb214-ff9b-4003-b506-162c23b6102a",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : -3224000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup"
          }
        } ]
      }, {
        "_id" : "c32181b0-d38f-44a5-8f2b-f1d1d625cf17",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : -3324000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup"
          }
        } ]
      } ], [ {
        "_id" : "267d1077-f599-4cc3-8efd-361bc56e8d28",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:InvestmentsAndOtherAssets",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 2116393000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:InvestmentsAndOtherAssets"
          }
        } ]
      }, {
        "_id" : "70a4c984-5a03-4d44-af77-8652c0cf85e2",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:InvestmentsAndOtherAssets",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 2102557000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:InvestmentsAndOtherAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:InvestmentsAndOtherAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:InvestmentsAndOtherAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:InvestmentsAndOtherAssets"
          }
        } ]
      } ], [ {
        "_id" : "e1a9e2de-d9ae-470a-b217-20268dd4ef1d",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NoncurrentAssets",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 4826568000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NoncurrentAssets"
          }
        } ]
      }, {
        "_id" : "c7172b8e-717b-48d4-bdf9-b3adefcc6b54",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NoncurrentAssets",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 4808916000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NoncurrentAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NoncurrentAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NoncurrentAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NoncurrentAssets"
          }
        } ]
      } ], [ {
        "_id" : "eb47fb5c-c146-4daa-bc2a-5be3e2520756",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:Assets",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 7032191000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:Assets"
          }
        } ]
      }, {
        "_id" : "13c5768a-7d6c-4fd9-b278-448306234dbc",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:Assets",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 7082288000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "DEBIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:Assets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:Assets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:Assets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:Assets"
          }
        } ]
      } ], [ null, null ], [ null, null ], [ {
        "_id" : "84f2af5c-937b-4f6d-95ed-649daa1b414b",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NotesAndAccountsPayableTrade",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 647877000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NotesAndAccountsPayableTrade"
          }
        } ]
      }, {
        "_id" : "292f8cb2-64d2-4a0f-aee7-9e30c17636ac",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NotesAndAccountsPayableTrade",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 661267000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NotesAndAccountsPayableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NotesAndAccountsPayableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NotesAndAccountsPayableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NotesAndAccountsPayableTrade"
          }
        } ]
      } ], [ {
        "_id" : "73bc08d4-8649-46ee-b814-52db6a79d268",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ShortTermLoansPayable",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 409658000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ShortTermLoansPayable"
          }
        } ]
      }, {
        "_id" : "0fb0c376-bb16-4d51-9395-1c0d80efed24",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ShortTermLoansPayable",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 435357000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ShortTermLoansPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ShortTermLoansPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ShortTermLoansPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ShortTermLoansPayable"
          }
        } ]
      } ], [ {
        "_id" : "a7d3287f-a5a6-4de2-8a0e-10d5bcf08e23",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CommercialPapersLiabilities",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : null,
        "Decimals" : 0,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CommercialPapersLiabilities"
          }
        } ]
      }, {
        "_id" : "b6927e28-13f1-4102-8a47-66a377934647",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CommercialPapersLiabilities",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 32000000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CommercialPapersLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CommercialPapersLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CommercialPapersLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CommercialPapersLiabilities"
          }
        } ]
      } ], [ {
        "_id" : "0819067e-9260-4ffa-afe1-9ac82f9a46a0",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CurrentPortionOfBonds",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 30000000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CurrentPortionOfBonds"
          }
        } ]
      }, {
        "_id" : "7cf53ec1-42fc-4066-b4a4-e3b5a0ab9d4b",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CurrentPortionOfBonds",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 65000000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CurrentPortionOfBonds"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CurrentPortionOfBonds"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CurrentPortionOfBonds"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CurrentPortionOfBonds"
          }
        } ]
      } ], [ {
        "_id" : "d5f63a37-5e87-483e-8620-f107ea7cd93e",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:IncomeTaxesPayable",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 10944000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:IncomeTaxesPayable"
          }
        } ]
      }, {
        "_id" : "491e6033-5b59-46ea-8fa6-7d901e7cf963",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:IncomeTaxesPayable",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 36894000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeTaxesPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeTaxesPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:IncomeTaxesPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:IncomeTaxesPayable"
          }
        } ]
      } ], [ {
        "_id" : "49cfbcef-0169-4bfe-b25f-db645bd1cff6",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ProvisionCL",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 3302000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ProvisionCL"
          }
        } ]
      }, {
        "_id" : "f33a28cb-95a5-4a34-9e21-7d86d4abc1d1",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ProvisionCL",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 3078000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ProvisionCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ProvisionCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ProvisionCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ProvisionCL"
          }
        } ]
      } ], [ {
        "_id" : "bfbfd4b9-c411-4c76-97d9-0d7ce0c5a881",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OtherCL",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 622713000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OtherCL"
          }
        } ]
      }, {
        "_id" : "8225b780-eba0-40d2-83d6-02279a83a00b",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OtherCL",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 577539000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OtherCL"
          }
        } ]
      } ], [ {
        "_id" : "4fbdff43-5720-414b-ad40-98d9fe452f98",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CurrentLiabilities",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1724497000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CurrentLiabilities"
          }
        } ]
      }, {
        "_id" : "d04bc319-4adf-479b-b977-0056522044a6",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CurrentLiabilities",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1811137000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CurrentLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CurrentLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CurrentLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CurrentLiabilities"
          }
        } ]
      } ], [ null, null ], [ {
        "_id" : "1702bb4d-fb86-4075-b7e4-a951e810fc8c",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:BondsPayable",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 415670000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:BondsPayable"
          }
        } ]
      }, {
        "_id" : "5e41e12d-10a6-42ff-bec6-d7c40f618c65",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:BondsPayable",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 425668000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:BondsPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:BondsPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:BondsPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:BondsPayable"
          }
        } ]
      } ], [ {
        "_id" : "ef2f2f72-3cf7-4211-80b9-6001b0c5aebf",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:LongTermLoansPayable",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1301473000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:LongTermLoansPayable"
          }
        } ]
      }, {
        "_id" : "96c6e9e6-68c9-4e4e-a514-606d07f7f335",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:LongTermLoansPayable",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1313248000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:LongTermLoansPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:LongTermLoansPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:LongTermLoansPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:LongTermLoansPayable"
          }
        } ]
      } ], [ {
        "_id" : "bb0902af-5a9a-4b71-a4fa-4c512089f302",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ProvisionNCL",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 8297000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ProvisionNCL"
          }
        } ]
      }, {
        "_id" : "7905c3de-7179-40d4-834a-7288144c154f",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ProvisionNCL",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 13739000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ProvisionNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ProvisionNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ProvisionNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ProvisionNCL"
          }
        } ]
      } ], [ {
        "_id" : "739dd216-9888-423a-b5f4-584c73d9bef7",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NetDefinedBenefitLiability",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 171930000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitLiability"
          }
        } ]
      }, {
        "_id" : "c0414f33-46de-4175-93f1-3c1549a8bfb8",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NetDefinedBenefitLiability",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 157373000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitLiability"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitLiability"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitLiability"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitLiability"
          }
        } ]
      } ], [ {
        "_id" : "b25e9909-6830-4b76-af0b-50aa734d1456",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OtherNCL",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 139776000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OtherNCL"
          }
        } ]
      }, {
        "_id" : "f4a1d00f-f0c5-4115-8923-e699493a8a5e",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:OtherNCL",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 123125000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:OtherNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:OtherNCL"
          }
        } ]
      } ], [ {
        "_id" : "c764a50a-c2e4-456f-b243-f2e104d8c32e",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NoncurrentLiabilities",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 2037148000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NoncurrentLiabilities"
          }
        } ]
      }, {
        "_id" : "adcc8a5d-b703-48df-bb33-c0b25e316e49",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NoncurrentLiabilities",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 2033155000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NoncurrentLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NoncurrentLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NoncurrentLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NoncurrentLiabilities"
          }
        } ]
      } ], [ {
        "_id" : "489936ad-c611-4b46-ade4-6f16bc03ff94",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:Liabilities",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 3761645000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:Liabilities"
          }
        } ]
      }, {
        "_id" : "7ba78698-ccc7-4ffa-a345-060307621275",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:Liabilities",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 3844293000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:Liabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:Liabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:Liabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:Liabilities"
          }
        } ]
      } ], [ null, null ], [ null, null ], [ {
        "_id" : "435b066b-541e-414e-9bd6-a08521bd8924",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CapitalStock",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 419524000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CapitalStock"
          }
        } ]
      }, {
        "_id" : "94432890-c6bd-42f1-9b56-93753914daea",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CapitalStock",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 419524000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CapitalStock"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CapitalStock"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CapitalStock"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CapitalStock"
          }
        } ]
      } ], [ {
        "_id" : "702fa2be-0f24-4387-8c4c-8f68e26f1446",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CapitalSurplus",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 371467000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CapitalSurplus"
          }
        } ]
      }, {
        "_id" : "454db0b6-ccf7-4eb1-8ca1-f33f656e5858",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:CapitalSurplus",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 371465000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CapitalSurplus"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CapitalSurplus"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:CapitalSurplus"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:CapitalSurplus"
          }
        } ]
      } ], [ {
        "_id" : "863e1020-0d0f-4ec9-a7af-520283d76466",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:RetainedEarnings",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1645041000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:RetainedEarnings"
          }
        } ]
      }, {
        "_id" : "94b61fe7-cb25-4781-a3b4-63229e441b11",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:RetainedEarnings",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 1652054000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:RetainedEarnings"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:RetainedEarnings"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:RetainedEarnings"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:RetainedEarnings"
          }
        } ]
      } ], [ {
        "_id" : "ef81aa1d-f018-45d2-805d-f6d3fed74922",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:TreasuryStock",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : -62902000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:TreasuryStock"
          }
        } ]
      }, {
        "_id" : "ac2a3040-ed96-43af-a9d4-f79c6f4c08aa",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:TreasuryStock",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : -62882000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:TreasuryStock"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:TreasuryStock"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:TreasuryStock"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:TreasuryStock"
          }
        } ]
      } ], [ {
        "_id" : "658ab33a-7614-4010-a7a5-62a6a1a9361f",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ShareholdersEquity",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 2373131000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ShareholdersEquity"
          }
        } ]
      }, {
        "_id" : "ad4a8ae4-4570-4286-a7bf-967ae1634f2d",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ShareholdersEquity",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 2380162000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ShareholdersEquity"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ShareholdersEquity"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ShareholdersEquity"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ShareholdersEquity"
          }
        } ]
      } ], [ null, null ], [ {
        "_id" : "0095f860-575b-423e-a3bb-4e3668f1d610",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 220366000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities"
          }
        } ]
      }, {
        "_id" : "2ea0e2b0-c643-41bb-8efc-1128348d0806",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 189831000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities"
          }
        } ]
      } ], [ {
        "_id" : "e6c63c43-a49e-4f4e-ac9a-db692d1aed5c",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:DeferredGainsOrLossesOnHedges",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : -3763000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:DeferredGainsOrLossesOnHedges"
          }
        } ]
      }, {
        "_id" : "2a171a66-dba6-4ed8-834e-36b4ce170cd6",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:DeferredGainsOrLossesOnHedges",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : -3099000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:DeferredGainsOrLossesOnHedges"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:DeferredGainsOrLossesOnHedges"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:DeferredGainsOrLossesOnHedges"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:DeferredGainsOrLossesOnHedges"
          }
        } ]
      } ], [ {
        "_id" : "45e3c6e7-1236-4c90-af33-fb3a51751b78",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:RevaluationReserveForLand",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 2554000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:RevaluationReserveForLand"
          }
        } ]
      }, {
        "_id" : "871c78f2-535c-4079-9d20-4fc646e1ad87",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:RevaluationReserveForLand",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 2554000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:RevaluationReserveForLand"
          }
        } ]
      } ], [ {
        "_id" : "83dc0b7a-59c8-4e67-8257-fb5fe4017829",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ForeignCurrencyTranslationAdjustment",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 73672000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ForeignCurrencyTranslationAdjustment"
          }
        } ]
      }, {
        "_id" : "44a4bc63-c41d-47df-a6d7-0a0d174ef476",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ForeignCurrencyTranslationAdjustment",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 71565000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ForeignCurrencyTranslationAdjustment"
          }
        } ]
      } ], [ {
        "_id" : "8092a30e-20db-4a2b-a243-7ae5425f1cc6",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:RemeasurementsOfDefinedBenefitPlans",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 47233000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:RemeasurementsOfDefinedBenefitPlans"
          }
        } ]
      }, {
        "_id" : "685557d3-452f-4bcb-ac2b-dc2721796474",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:RemeasurementsOfDefinedBenefitPlans",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 42644000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:RemeasurementsOfDefinedBenefitPlans"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:RemeasurementsOfDefinedBenefitPlans"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:RemeasurementsOfDefinedBenefitPlans"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:RemeasurementsOfDefinedBenefitPlans"
          }
        } ]
      } ], [ {
        "_id" : "52dc1198-ae9a-457c-bbec-e23903e47e21",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ValuationAndTranslationAdjustments",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 340062000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ValuationAndTranslationAdjustments"
          }
        } ]
      }, {
        "_id" : "44b012ae-6321-420f-83dc-0dcb518abfbe",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:ValuationAndTranslationAdjustments",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 303496000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ValuationAndTranslationAdjustments"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ValuationAndTranslationAdjustments"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:ValuationAndTranslationAdjustments"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:ValuationAndTranslationAdjustments"
          }
        } ]
      } ], [ {
        "_id" : "cf240385-db8b-4dc8-8016-ba6cdf563197",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:MinorityInterests",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 557351000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:MinorityInterests"
          }
        } ]
      }, {
        "_id" : "c9d9bec0-3b5f-4864-97ed-d215381082e1",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:MinorityInterests",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 554335000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:MinorityInterests"
          }
        } ]
      } ], [ {
        "_id" : "66458053-574e-4fde-81e7-adb0fd2e5784",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NetAssets",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 3270545000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NetAssets"
          }
        } ]
      }, {
        "_id" : "a3bc414e-a749-4169-bfa6-cd4b72799b82",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:NetAssets",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 3237995000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:NetAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:NetAssets"
          }
        } ]
      } ], [ {
        "_id" : "92f02e1e-d0d9-4e6b-b850-a695ae68f2d7",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:LiabilitiesAndNetAssets",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-06-30",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:FiscalPeriod" : "Q1",
          "japan:FiscalPeriodType" : "instant",
          "japan:FiscalYear" : 2014,
          "japan:Submitted" : "2014-08-07",
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 7032191000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:LiabilitiesAndNetAssets"
          }
        } ]
      }, {
        "_id" : "b3b57757-1f5a-476b-8d57-27f0e02c772b",
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "japan:Submitted" ],
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54",
          "xbrl:Concept" : "jppfs-cor:LiabilitiesAndNetAssets",
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000",
          "xbrl:Period" : "2014-03-31",
          "xbrl:Unit" : "iso4217:JPY",
          "japan:Submitted" : "2014-08-07",
          "japan:FiscalYear" : null,
          "japan:FiscalPeriod" : null,
          "japan:FiscalPeriodType" : null,
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        },
        "Type" : "NumericValue",
        "Value" : 7082288000000,
        "Decimals" : -6,
        "Concept" : {
          "Balance" : "CREDIT",
          "PeriodType" : "instant",
          "DataType" : "xbrli:monetaryItemType"
        },
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalYear.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalYear",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:LiabilitiesAndNetAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriod.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriod",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:LiabilitiesAndNetAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "japan:FiscalPeriodType.Default = \"null\"",
          "Data" : {
            "Dimension" : "japan:FiscalPeriodType",
            "Member" : null,
            "OutputConcept" : "jppfs-cor:LiabilitiesAndNetAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default",
          "Label" : "Default dimension value",
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"",
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis",
            "Member" : "jppfs-cor:ConsolidatedMember",
            "OutputConcept" : "jppfs-cor:LiabilitiesAndNetAssets"
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
