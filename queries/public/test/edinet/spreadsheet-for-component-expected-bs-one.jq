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
      } ], 
      "y" : [ {
        "GroupLabels" : [ "Breakdown on concepts" ], 
        "GroupCells" : [ [ {
          "CellLabels" : [ "連結貸借対照表", "jppfs-cor:BalanceSheetLineItems" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:BalanceSheetLineItems"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 58, 
          "RollUp" : false, 
          "IsRollUp" : false, 
          "IsNegated" : false
        } ], [ {
          "CellLabels" : [ "資産の部", "jppfs-cor:AssetsAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jppfs-cor:AssetsAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
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
          "Depth" : 2, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 2, 
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
          "Depth" : 3, 
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
          "Depth" : 4
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
          "Depth" : 4
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
          "Depth" : 4
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
          "Depth" : 4
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 4
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
          "Depth" : 4
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
          "Depth" : 4
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
          "Depth" : 4
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
          "Depth" : 4
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
          "Depth" : 3, 
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
          "Depth" : 2, 
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
          "Depth" : 1, 
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
          "Depth" : 2, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 2, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 2, 
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
          "Depth" : 1, 
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
          "Depth" : 2, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 2, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 3, 
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
          "Depth" : 2, 
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
          "Depth" : 2, 
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
          "Depth" : 1, 
          "IsAbstract" : false
        } ] ]
      } ]
    }, 
    "TableCells" : {
      "AxisOrder" : [ "y", "x" ], 
      "Facts" : [ [ null, null ], [ null, null ], [ {
        "_id" : "13e99509-7245-41dd-bf9b-072b6bcd6e58", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CashAndDeposits", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "de4eacc6-2068-4b78-a17a-c3d57b8d09e3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CashAndDeposits", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:CashAndDeposits"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CashAndDeposits"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CashAndDeposits"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CashAndDeposits"
          }
        } ]
      } ], [ {
        "_id" : "07856478-b767-4b64-81e4-529acd404944", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NotesAndAccountsReceivableTrade", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "d3a7a845-3412-4fa0-a0bc-98b5bfd10891", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NotesAndAccountsReceivableTrade", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:NotesAndAccountsReceivableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NotesAndAccountsReceivableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NotesAndAccountsReceivableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NotesAndAccountsReceivableTrade"
          }
        } ]
      } ], [ {
        "_id" : "e0e47f7d-1d5b-4ac5-923d-3717ca200413", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:Inventories", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "d538ef55-dd78-4ba3-9b71-f6cefeefd4a3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:Inventories", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:Inventories"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:Inventories"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:Inventories"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:Inventories"
          }
        } ]
      } ], [ {
        "_id" : "71892f2e-f697-4620-81b8-f8bb0c5e751f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OtherCA", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "65047bea-18a3-41a4-ac9a-c95ce4d10561", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OtherCA", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:OtherCA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherCA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherCA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherCA"
          }
        } ]
      } ], [ {
        "_id" : "28e1a1d4-04f0-4560-b1d9-7623870c4932", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:AllowanceForDoubtfulAccountsCA", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "eaeebbfa-cccb-4bbb-b996-2d341f874616", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:AllowanceForDoubtfulAccountsCA", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsCA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsCA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsCA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsCA"
          }
        } ]
      } ], [ {
        "_id" : "3bb15cc8-9fda-4ffb-bf3a-abb066bd330b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CurrentAssets", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "2443b695-d283-48af-a245-c09c07e8d40e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CurrentAssets", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:CurrentAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CurrentAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CurrentAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CurrentAssets"
          }
        } ]
      } ], [ null, null ], [ null, null ], [ {
        "_id" : "91fbb20c-8119-4b16-984f-270341db2205", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:BuildingsAndStructuresNet", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "362485c4-58fc-41ab-b28c-6aa29ef2abc1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:BuildingsAndStructuresNet", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:BuildingsAndStructuresNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:BuildingsAndStructuresNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:BuildingsAndStructuresNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:BuildingsAndStructuresNet"
          }
        } ]
      } ], [ {
        "_id" : "3e5a36d1-4733-430a-9bbf-f52e15540979", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:MachineryEquipmentAndVehiclesNet", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "3c594923-065c-4bad-9b6f-ded5337efa54", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:MachineryEquipmentAndVehiclesNet", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:MachineryEquipmentAndVehiclesNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:MachineryEquipmentAndVehiclesNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:MachineryEquipmentAndVehiclesNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:MachineryEquipmentAndVehiclesNet"
          }
        } ]
      } ], [ {
        "_id" : "f3664d67-6c3a-447f-add6-8697c9394a96", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OtherNetPPE", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "382a0317-f14d-4d8a-ab95-78585ef36fcb", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OtherNetPPE", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:OtherNetPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherNetPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherNetPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherNetPPE"
          }
        } ]
      } ], [ {
        "_id" : "cd778190-a2aa-4251-9438-32a57663e653", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:PropertyPlantAndEquipment", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "2f05e111-f544-4d5d-b651-28357c1d5420", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:PropertyPlantAndEquipment", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:PropertyPlantAndEquipment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:PropertyPlantAndEquipment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:PropertyPlantAndEquipment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:PropertyPlantAndEquipment"
          }
        } ]
      } ], [ {
        "_id" : "672e5487-bf03-4b21-8f8d-f477fbafa012", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:IntangibleAssets", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "545f1940-e608-41f5-a736-a6875d0832b8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:IntangibleAssets", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:IntangibleAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:IntangibleAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:IntangibleAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:IntangibleAssets"
          }
        } ]
      } ], [ null, null ], [ {
        "_id" : "15a8f39d-cf1a-4e1b-906b-d1d659dd9a76", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:InvestmentSecurities", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "b447f0d0-3ac3-4eca-b63e-f07d199a760c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:InvestmentSecurities", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:InvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:InvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:InvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:InvestmentSecurities"
          }
        } ]
      } ], [ {
        "_id" : "993abd56-3581-4161-b12b-9e5cb9a9f600", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NetDefinedBenefitAsset", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "a208f96d-2d0d-483d-936c-2b2252cc3bb8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NetDefinedBenefitAsset", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitAsset"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitAsset"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitAsset"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitAsset"
          }
        } ]
      } ], [ {
        "_id" : "2027707c-91a2-499d-8974-a21341417e97", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OtherIOA", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "a0865590-2070-4f05-87a0-116b289b8da3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OtherIOA", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:OtherIOA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherIOA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherIOA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherIOA"
          }
        } ]
      } ], [ {
        "_id" : "91b25ef9-0d72-4b8d-9136-66ad7f9c4f32", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "50c2e152-7451-44c3-8806-52ae17f88d08", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:AllowanceForDoubtfulAccountsIOAByGroup"
          }
        } ]
      } ], [ {
        "_id" : "5a699968-422c-4833-a74f-70972be3577c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:InvestmentsAndOtherAssets", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "3695635b-f3b5-460e-8c70-7714acf7c828", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:InvestmentsAndOtherAssets", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:InvestmentsAndOtherAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:InvestmentsAndOtherAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:InvestmentsAndOtherAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:InvestmentsAndOtherAssets"
          }
        } ]
      } ], [ {
        "_id" : "7ceb939f-1c60-4bb5-9554-feacfc0a1655", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NoncurrentAssets", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "2b88ab9f-81d9-45b6-a4bf-e32d4b92c136", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NoncurrentAssets", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:NoncurrentAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NoncurrentAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NoncurrentAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NoncurrentAssets"
          }
        } ]
      } ], [ {
        "_id" : "69173eee-0490-46d6-9a2b-ca613dc826be", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:Assets", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "817aea2b-fefb-4f5a-9098-dc15d1a67385", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:Assets", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:Assets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:Assets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:Assets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:Assets"
          }
        } ]
      } ], [ null, null ], [ null, null ], [ {
        "_id" : "f4040ec5-9a4b-41b2-afb2-a897008cbdde", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NotesAndAccountsPayableTrade", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "5d28144e-0ee7-40ea-83cc-137c8ea0a957", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NotesAndAccountsPayableTrade", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:NotesAndAccountsPayableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NotesAndAccountsPayableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NotesAndAccountsPayableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NotesAndAccountsPayableTrade"
          }
        } ]
      } ], [ {
        "_id" : "cb7545d6-5f64-44a7-8a21-de42e73a031f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ShortTermLoansPayable", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "6d7af44d-b805-4dc8-ad6a-25217178c018", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ShortTermLoansPayable", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:ShortTermLoansPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ShortTermLoansPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ShortTermLoansPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ShortTermLoansPayable"
          }
        } ]
      } ], [ {
        "_id" : "2c216d8f-47bc-4dd0-812d-fa8162d69b5f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CommercialPapersLiabilities", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "952ea370-fd8d-4511-b0f4-78dbc73532f9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CommercialPapersLiabilities", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:CommercialPapersLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CommercialPapersLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CommercialPapersLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CommercialPapersLiabilities"
          }
        } ]
      } ], [ {
        "_id" : "061a7f6d-3ee6-4532-89c8-234aff85831d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CurrentPortionOfBonds", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "d88e049b-8f43-4015-985d-6490cc4e4b79", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CurrentPortionOfBonds", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:CurrentPortionOfBonds"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CurrentPortionOfBonds"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CurrentPortionOfBonds"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CurrentPortionOfBonds"
          }
        } ]
      } ], [ {
        "_id" : "c5e36235-e03b-47b5-93c1-73d140677539", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:IncomeTaxesPayable", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "6534bfaa-91bc-4c4b-93bd-1d34b2673d23", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:IncomeTaxesPayable", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:IncomeTaxesPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:IncomeTaxesPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:IncomeTaxesPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:IncomeTaxesPayable"
          }
        } ]
      } ], [ {
        "_id" : "8602ad36-eec6-47b0-a339-42716b04e1ef", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ProvisionCL", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "e8de3860-b5c4-4d4c-81e8-a6cab712f8a0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ProvisionCL", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:ProvisionCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ProvisionCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ProvisionCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ProvisionCL"
          }
        } ]
      } ], [ {
        "_id" : "4d031f4c-1a8b-439b-b082-85777bb762c9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OtherCL", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "ad19c20d-b4ad-4fe5-ad1b-587f88cddcc6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OtherCL", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:OtherCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherCL"
          }
        } ]
      } ], [ {
        "_id" : "bbed9e78-7365-4851-a7b0-fbb00535feaf", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CurrentLiabilities", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "a39ee4e1-e15d-489b-b990-5cedfb80388d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CurrentLiabilities", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:CurrentLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CurrentLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CurrentLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CurrentLiabilities"
          }
        } ]
      } ], [ null, null ], [ {
        "_id" : "072ab94b-b0ed-42d1-b06a-9a16d85fb3e8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:BondsPayable", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "44b0dafc-9cfc-4d99-9384-3ea03622a2a6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:BondsPayable", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:BondsPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:BondsPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:BondsPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:BondsPayable"
          }
        } ]
      } ], [ {
        "_id" : "cf01af63-a456-4bf7-8631-587a666434d6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:LongTermLoansPayable", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "109ed2f2-1b70-4425-95f1-79d6ede17529", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:LongTermLoansPayable", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:LongTermLoansPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:LongTermLoansPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:LongTermLoansPayable"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:LongTermLoansPayable"
          }
        } ]
      } ], [ {
        "_id" : "ceb8cffe-6e5b-4986-b0e2-352ab7b2fe36", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ProvisionNCL", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "32affd29-8340-42bf-8958-d17c73b374e7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ProvisionNCL", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:ProvisionNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ProvisionNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ProvisionNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ProvisionNCL"
          }
        } ]
      } ], [ {
        "_id" : "ce13c124-7da7-4784-ba85-9c40e57da10b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NetDefinedBenefitLiability", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "63505533-e52a-4140-be8f-e379258dc72e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NetDefinedBenefitLiability", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitLiability"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitLiability"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitLiability"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NetDefinedBenefitLiability"
          }
        } ]
      } ], [ {
        "_id" : "657616e6-c2e8-40bd-8983-a772d632f304", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OtherNCL", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "f6f7d242-c21f-484b-8c7c-4f34cf8b25fc", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:OtherNCL", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:OtherNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:OtherNCL"
          }
        } ]
      } ], [ {
        "_id" : "5674f4b2-2aa0-490e-8da0-67920ce1b4e2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NoncurrentLiabilities", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "4a8b6cea-7731-4cf3-a797-a2b48749f591", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NoncurrentLiabilities", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:NoncurrentLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NoncurrentLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NoncurrentLiabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NoncurrentLiabilities"
          }
        } ]
      } ], [ {
        "_id" : "b55a7155-beb2-474b-8811-3363ac63b2c2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:Liabilities", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "2f4af476-3963-4c3d-aa32-81930e6e98c0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:Liabilities", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:Liabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:Liabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:Liabilities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:Liabilities"
          }
        } ]
      } ], [ null, null ], [ null, null ], [ {
        "_id" : "9651f9db-c131-4169-a89d-1b40e97872b8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CapitalStock", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "b39710e7-f68d-4a19-befc-a0c9f04a9353", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CapitalStock", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CapitalStock"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CapitalStock"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CapitalStock"
          }
        } ]
      } ], [ {
        "_id" : "b5b43aa4-562d-4166-8832-86b728c78cd6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CapitalSurplus", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "5124eddd-22b5-4feb-9977-1a9951ba1686", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:CapitalSurplus", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:CapitalSurplus"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CapitalSurplus"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CapitalSurplus"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:CapitalSurplus"
          }
        } ]
      } ], [ {
        "_id" : "34216daf-6b50-40cd-b548-5b428e4b4b92", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:RetainedEarnings", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "5587e26c-184a-4e0b-8795-40b807052744", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:RetainedEarnings", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:RetainedEarnings"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:RetainedEarnings"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:RetainedEarnings"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:RetainedEarnings"
          }
        } ]
      } ], [ {
        "_id" : "f7eda990-093a-4213-a32f-4171e9d6ff1d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:TreasuryStock", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "9d03574d-05d4-4f57-98f7-d09cac96f4c2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:TreasuryStock", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:TreasuryStock"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:TreasuryStock"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:TreasuryStock"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:TreasuryStock"
          }
        } ]
      } ], [ {
        "_id" : "d26dae61-5a43-4984-b026-0a5d89de7aa9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ShareholdersEquity", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "29942163-33cc-43e8-b201-c0f065858a07", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ShareholdersEquity", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:ShareholdersEquity"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ShareholdersEquity"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ShareholdersEquity"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ShareholdersEquity"
          }
        } ]
      } ], [ null, null ], [ {
        "_id" : "3eeca88f-3142-4758-8f7f-ba5f5ed19561", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "66256900-ba68-469e-9b6c-0fc6d8fbe923", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ValuationDifferenceOnAvailableForSaleSecurities"
          }
        } ]
      } ], [ {
        "_id" : "1efab38f-66a7-4710-8691-046f604dee97", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:DeferredGainsOrLossesOnHedges", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "4f386999-59a3-4742-ab13-9054743854bf", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:DeferredGainsOrLossesOnHedges", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:DeferredGainsOrLossesOnHedges"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:DeferredGainsOrLossesOnHedges"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:DeferredGainsOrLossesOnHedges"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:DeferredGainsOrLossesOnHedges"
          }
        } ]
      } ], [ {
        "_id" : "b0787033-68bd-4ffc-8cc0-6ecf64334e47", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:RevaluationReserveForLand", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "a58a6ffd-c369-475c-86bf-1d9660a6c635", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:RevaluationReserveForLand", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:RevaluationReserveForLand"
          }
        } ]
      } ], [ {
        "_id" : "068b02c5-6ebc-4c61-b2d2-cc3ae5218b7e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ForeignCurrencyTranslationAdjustment", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "ea7f17e6-c6a6-4b19-8462-c54fff5149af", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ForeignCurrencyTranslationAdjustment", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ForeignCurrencyTranslationAdjustment"
          }
        } ]
      } ], [ {
        "_id" : "be39f624-dd25-4b4b-b5f1-1c66cdd74cf2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:RemeasurementsOfDefinedBenefitPlans", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "0453946b-c28b-4b5b-b2ad-496edfb7224a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:RemeasurementsOfDefinedBenefitPlans", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:RemeasurementsOfDefinedBenefitPlans"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:RemeasurementsOfDefinedBenefitPlans"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:RemeasurementsOfDefinedBenefitPlans"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:RemeasurementsOfDefinedBenefitPlans"
          }
        } ]
      } ], [ {
        "_id" : "ff0760bc-f50c-4633-b665-e22ac41165f5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ValuationAndTranslationAdjustments", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "2b978f66-f950-42b7-b720-1f2343f2c1a7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:ValuationAndTranslationAdjustments", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:ValuationAndTranslationAdjustments"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ValuationAndTranslationAdjustments"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ValuationAndTranslationAdjustments"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:ValuationAndTranslationAdjustments"
          }
        } ]
      } ], [ {
        "_id" : "125a6b6f-59c8-41f3-b77c-c2cd58c7135a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:MinorityInterests", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "30fafcee-dd81-4320-9753-d38f143bbcb5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:MinorityInterests", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:MinorityInterests"
          }
        } ]
      } ], [ {
        "_id" : "d1ab500c-6e07-4230-8760-10b406620b5f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NetAssets", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "4b6bde6e-7bde-48ff-bbe0-6205c1bd0d51", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:NetAssets", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:NetAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NetAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NetAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:NetAssets"
          }
        } ]
      } ], [ {
        "_id" : "1226c8c1-e88c-4a0c-bd45-5ba778bb576e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:LiabilitiesAndNetAssets", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-06-30", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
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
        "_id" : "70c43c6f-f5e6-42af-b13b-67d371f4e015", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jppfs-cor:LiabilitiesAndNetAssets", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2014-08-07", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
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
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jppfs-cor:LiabilitiesAndNetAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:LiabilitiesAndNetAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jppfs-cor:LiabilitiesAndNetAssets"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
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