{
  "ModelKind" : "LayoutModel", 
  "ComponentAndHypercubeInformation" : {
    "Component" : {
      "Role" : "http://info.edinet-fsa.go.jp/jp/fr/gaap/role/ConsolidatedStatementsOfCashFlowsIndirect", 
      "Label" : "連結キャッシュ･フロー計算書（間接法）　連結財務諸表規則様式第八号"
    }, 
    "Hypercube" : {
      "Name" : "xbrl:UserDefinedHypercube", 
      "Label" : "User-defined Hypercube"
    }
  }, 
  "TableSetLabels" : [ "連結キャッシュ･フロー計算書（間接法）　連結財務諸表規則様式第八号" ], 
  "TableSet" : [ {
    "TableHeaders" : {
      "x" : [ {
        "GroupLabels" : [ "Period breakdown" ], 
        "GroupCells" : [ [ {
          "CellLabels" : [ "Period [Axis]" ], 
          "CellConstraints" : {

          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 6, 
          "RollUp" : false, 
          "IsRollUp" : false, 
          "IsNegated" : false
        } ], [ {
          "CellLabels" : [ "2012-04-01/2013-03-31" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2012-04-01/2013-03-31"
            }, 
            "table.periodStart" : {
              "xbrl:Period" : "2012-03-31"
            }, 
            "table.periodEnd" : {
              "xbrl:Period" : "2013-03-31"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 1, 
          "RollUp" : false
        }, {
          "CellLabels" : [ "2011-04-01/2012-03-31" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2011-04-01/2012-03-31"
            }, 
            "table.periodStart" : {
              "xbrl:Period" : "2011-03-31"
            }, 
            "table.periodEnd" : {
              "xbrl:Period" : "2012-03-31"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 1, 
          "RollUp" : false
        }, {
          "CellLabels" : [ "2010-04-01/2011-03-31" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2010-04-01/2011-03-31"
            }, 
            "table.periodStart" : {
              "xbrl:Period" : "2010-03-31"
            }, 
            "table.periodEnd" : {
              "xbrl:Period" : "2011-03-31"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 1, 
          "RollUp" : false
        }, {
          "CellLabels" : [ "2009-04-01/2010-03-31" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2009-04-01/2010-03-31"
            }, 
            "table.periodStart" : {
              "xbrl:Period" : "2009-03-31"
            }, 
            "table.periodEnd" : {
              "xbrl:Period" : "2010-03-31"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 1, 
          "RollUp" : false
        }, {
          "CellLabels" : [ "2008-04-01/2009-03-31" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2008-04-01/2009-03-31"
            }, 
            "table.periodStart" : {
              "xbrl:Period" : "2008-03-31"
            }, 
            "table.periodEnd" : {
              "xbrl:Period" : "2009-03-31"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 1, 
          "RollUp" : false
        }, {
          "CellLabels" : [ "2007-04-01/2008-03-31" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2007-04-01/2008-03-31"
            }, 
            "table.periodStart" : {
              "xbrl:Period" : "2007-03-31"
            }, 
            "table.periodEnd" : {
              "xbrl:Period" : "2008-03-31"
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
          "CellLabels" : [ "キャッシュ・フロー計算書", "jp-t-cte:StatementsOfCashFlowsAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:StatementsOfCashFlowsAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 52, 
          "RollUp" : false, 
          "IsRollUp" : false, 
          "IsNegated" : false
        } ], [ {
          "CellLabels" : [ "営業活動によるキャッシュ・フロー", "jp-t-cte:NetCashProvidedByUsedInOperatingActivitiesAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivitiesAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "減価償却費", "jp-t-cte:DepreciationAndAmortizationOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "減損損失", "jp-t-cte:ImpairmentLossOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:ImpairmentLossOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "受取利息及び受取配当金", "jp-t-cte:InterestAndDividendsIncomeOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "支払利息", "jp-t-cte:InterestExpensesOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:InterestExpensesOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "為替差損益（△は益）", "jp-t-cte:ForeignExchangeLossesGainsOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "のれん及び負ののれんの償却額", "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "持分法による投資損益（△は益）", "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "投資有価証券売却損益（△は益）", "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "固定資産減損損失", "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "投資有価証券評価損益（△は益）", "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "有形及び無形固定資産除却損", "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "有形及び無形固定資産売却損益（△は益）", "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "貸倒引当金の増減額（△は減少）", "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "売上債権の増減額（△は増加）", "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "たな卸資産の増減額（△は増加）", "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "仕入債務の増減額（△は減少）", "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "その他", "jp-t-cte:OtherNetOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:OtherNetOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "利息及び配当金の受取額", "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "利息の支払額", "jp-t-cte:InterestExpensesPaidOpeCFFinCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "法人税等の支払額", "jp-t-cte:IncomeTaxesPaidOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "小計", "jp-t-cte:SubtotalOpeCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:SubtotalOpeCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : true, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "営業活動によるキャッシュ・フロー", "jp-t-cte:NetCashProvidedByUsedInOperatingActivities" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : true, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "投資活動によるキャッシュ・フロー", "jp-t-cte:NetCashProvidedByUsedInInvestmentActivitiesAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivitiesAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "投資有価証券の取得による支出", "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "投資有価証券の売却による収入", "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "有形及び無形固定資産の取得による支出", "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "有形及び無形固定資産の売却による収入", "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "連結の範囲の変更を伴う子会社株式の取得による支出", "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "連結の範囲の変更を伴う子会社株式の売却による収入", "jp-t-cte:ProceedsFromSalesOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "貸付けによる支出", "jp-t-cte:PaymentsOfLoansReceivableInvCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "貸付金の回収による収入", "jp-t-cte:CollectionOfLoansReceivableInvCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "その他", "jp-t-cte:OtherNetInvCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:OtherNetInvCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "投資活動によるキャッシュ・フロー", "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : true, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "財務活動によるキャッシュ・フロー", "jp-t-cte:NetCashProvidedByUsedInFinancingActivitiesAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivitiesAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "短期借入金の純増減額（△は減少）", "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "コマーシャル・ペーパーの純増減額（△は減少）", "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "長期借入れによる収入", "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "長期借入金の返済による支出", "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "社債の発行による収入", "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "社債の償還による支出", "jp-t-cte:RedemptionOfBondsFinCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:RedemptionOfBondsFinCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "自己株式の取得による支出", "jp-t-cte:PurchaseOfTreasuryStockFinCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "配当金の支払額", "jp-t-cte:CashDividendsPaidFinCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:CashDividendsPaidFinCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "少数株主への配当金の支払額", "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "少数株主からの払込みによる収入", "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "その他", "jp-t-cte:OtherNetFinCF" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:OtherNetFinCF"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "財務活動によるキャッシュ・フロー", "jp-t-cte:NetCashProvidedByUsedInFinancingActivities" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : true, 
          "IsNegated" : false, 
          "Depth" : 2
        }, {
          "CellLabels" : [ "現金及び現金同等物に係る換算差額", "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "現金及び現金同等物の期首残高", "jp-t-cte:CashAndCashEquivalents" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents"
            }
          }, 
          "TagSelectors" : [ "table.periodStart" ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "連結の範囲の変更に伴う現金及び現金同等物の増減額（△は減少）", "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "合併に伴う現金及び現金同等物の増加額", "jp-t-cte:IncreaseInCashAndCashEquivalentsResultingFromMergerCCE" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:IncreaseInCashAndCashEquivalentsResultingFromMergerCCE"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "現金及び現金同等物の増減額（△は減少）", "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
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
      "Facts" : [ [ null, null, null, null, null, null ], [ {
        "_id" : "59bfcb11-56a0-4c3a-973a-a1a479b66cbf", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:DepreciationAndAmortizationOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 288770000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "a96b471c-6500-47fc-becd-354ba565beca", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:DepreciationAndAmortizationOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 280940000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        } ]
      }, {
        "_id" : "f96b646c-5801-4ae7-9000-9770bd38a282", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:DepreciationAndAmortizationOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 280940000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "50698a41-ae8f-4788-974d-e103883e6aaa", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:DepreciationAndAmortizationOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 291587000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        } ]
      }, {
        "_id" : "a2cc0bc1-4249-47f1-8d9c-1d4d8b6860ca", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:DepreciationAndAmortizationOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 291587000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "c64005f2-28f0-47f5-915f-3ba5b4d48ffb", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:DepreciationAndAmortizationOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 284092000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        } ]
      }, {
        "_id" : "808445bb-8fa4-4c69-8260-073225b68e81", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:DepreciationAndAmortizationOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 284092000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "296b41b2-ea70-412d-ba63-3db812c3efaa", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:DepreciationAndAmortizationOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 273744000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        } ]
      }, {
        "_id" : "3084600e-7291-43bb-a1af-59072896dbc1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:DepreciationAndAmortizationOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 273744000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "32154c1b-aa6b-404e-ba5a-e31c27aa30ea", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:DepreciationAndAmortizationOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 244038000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DepreciationAndAmortizationOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "8badde31-ff2b-43ac-84ae-97e577ee3c9c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ImpairmentLossOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 132818000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "aa156f73-5457-46ba-8f95-96de6fdd67a8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ImpairmentLossOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ImpairmentLossOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ImpairmentLossOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ImpairmentLossOpeCF"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Concept" : "jp-t-cte:ImpairmentLossOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "Aspects" : {
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Concept" : "jp-t-cte:ImpairmentLossOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "Aspects" : {
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Concept" : "jp-t-cte:ImpairmentLossOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Concept" : "jp-t-cte:ImpairmentLossOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "_id" : "ed650ecd-a744-46cf-a7a0-021be417599e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -17671000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "18c9ab20-9ad4-47d6-8ccc-3c842b365592", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -16087000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        } ]
      }, {
        "_id" : "acfe47f5-9cd5-4f29-bd0f-8f0e1a131a3d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -16087000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "d26e2d79-4bb4-468f-8bf7-445e1f7de849", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -16116000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        } ]
      }, {
        "_id" : "43db5371-3485-40a6-a1a5-e88c281fd45b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -16116000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "90ec04ed-4abc-4dee-a927-75dc0e842174", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -16656000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        } ]
      }, {
        "_id" : "74d2b148-6c73-48ae-b43d-04c4f6c6e684", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -16656000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "d0890ef4-205a-42fc-a940-9d8310ef9061", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -25085000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        } ]
      }, {
        "_id" : "a8e43209-c975-4213-9d18-e37457bdf0bb", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -25085000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "0fd9b627-5b3d-4dad-974a-6c4af86b5d7a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -24555000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "97305d51-7b58-42e4-8239-bf543c2b9882", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 23539000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "a19f2845-7051-43a6-9724-be64e9576b47", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 17834000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        } ]
      }, {
        "_id" : "65b81269-67de-4557-93ce-3cd099221e1e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 17834000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "e116da67-9ec4-4b84-8c5e-8f9e7e35c68c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 18355000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        } ]
      }, {
        "_id" : "b20fc2c7-79ce-47e4-b267-8ef2af971cf6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 18355000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "1ea71c0d-5531-4e10-b707-d77a167a8aa4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 19803000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        } ]
      }, {
        "_id" : "55d482a6-1d05-4414-a43a-91716b1eeab6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 19803000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "3c61987d-bd2d-40fc-8668-f74c989029ec", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 19813000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        } ]
      }, {
        "_id" : "8abe6b52-7a98-45d4-9b07-cac4d288904b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 19813000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "a7cd73f4-6ac3-4600-8d6f-b0771ca8fbe1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 17773000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "21c67c4c-d6ea-4b85-8807-5c5fe18060d3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -11780000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "789a7a14-2a8e-4331-852c-c23cfada393c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 2413000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        } ]
      }, {
        "_id" : "53a04a82-29fc-49c5-9fac-4620126efe03", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 2413000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "ff044e8e-6a3a-484f-908e-7f6b4c18c19c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 6131000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        } ]
      }, {
        "_id" : "4861e913-1a50-49d1-88e8-cdc6eaf7717e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 6131000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "0fc10660-55a3-446c-b2d6-7b49f7bd52a9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 8348000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        } ]
      }, {
        "_id" : "9fed228e-bfb2-46b0-8c29-2236d03afbec", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 8348000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "f3c48bdc-920a-480e-9def-b1fb9b4bcc4e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 3487000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        } ]
      }, {
        "_id" : "644594dc-75c3-44ef-87da-ed64da944a74", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 3487000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "9b83cca7-021b-4d09-8d60-160ee6e6a500", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 10111000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignExchangeLossesGainsOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "355e780d-f394-41f5-9804-03d1d992722a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 6054000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "ff3f35cd-3ca9-467c-bfd3-07a4de042b8e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 3491000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        } ]
      }, {
        "_id" : "74131678-7210-4209-a0f3-c92af81823ea", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 3491000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "4fd236dc-5ab2-4dd2-a468-34787d5b45bf", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 1623000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        } ]
      }, {
        "_id" : "554c3a69-c1c9-4bfa-a46c-41e6a852c406", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 1623000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "6735379f-7c76-47ad-a128-bd748a84f707", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 3631000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        } ]
      }, {
        "_id" : "9764f366-2817-4da6-9a32-cc5ea2b1c918", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 3631000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "a910a2f6-8c00-4b8d-b479-7831b1e0ceb9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 1103000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        } ]
      }, {
        "_id" : "e1061061-b7f8-411d-899b-372cc764550e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 1103000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "b3f80e4d-5fb0-4470-9e16-668be7d4d80b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 3007000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:AmortizationOfGoodwillAndNegativeGoodwillOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "9cef3bab-1da2-405f-a3f9-cfdf7d22ad30", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -52658000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "75ca52f3-f3f9-4549-894d-9bf087c26be1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -66470000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        } ]
      }, {
        "_id" : "0443def2-9b80-43b9-b351-740ce6807f97", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -66470000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "35c91133-8d10-4d01-8910-fba379078826", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -77918000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        } ]
      }, {
        "_id" : "d687d155-90e2-41e6-afc6-ce7d31aacb08", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -77918000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "f3864e81-87eb-409e-a120-cc011fad77ab", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -34756000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        } ]
      }, {
        "_id" : "98463a85-e75c-490c-bf8b-2eab0b990269", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -34756000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "cdb7f494-d4d6-4cf7-a1d6-d8f3e9fe4f35", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -58876000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        } ]
      }, {
        "_id" : "d47b98ad-0057-475b-b1e6-7f0fec902ce0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -58876000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "b2503c6f-8aef-42ab-9ce8-ad5272e7c250", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -52507000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EquityInEarningsLossesOfAffiliatesOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "afb7435f-bc0e-4dd0-aa8a-86f26d983d2b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 75307000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "fc4d8cde-5c7c-4ec0-87cb-73301eb35874", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -8346000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        } ]
      }, {
        "_id" : "58645118-97a4-475d-88df-e3e4ff48dc7f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -8346000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "cd2f06aa-eaf9-464f-a951-1466c6e2965b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -782000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        } ]
      }, {
        "_id" : "7ee8591c-2922-40d5-bc7c-93cf4c46eb8c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -782000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "a16a97cc-d9b4-42aa-a092-51c7b4a035b7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -1046000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        } ]
      }, {
        "_id" : "dcd20059-6c8b-4302-b06b-745750e108f0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -1046000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "952ab18d-3dfa-404b-ba45-196403469f33", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -3368000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        } ]
      }, {
        "_id" : "b2b469de-c8ec-4de4-a3f3-82f58eab3305", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -3368000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "4eef0310-f8c4-43b3-9d9d-18551bfe35bd", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 114000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfInvestmentSecuritiesOpeCF"
          }
        } ]
      } ], [ {
        "Aspects" : {
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "_id" : "e1a3f431-e436-4ca6-aca5-d1f8a42460a6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "3bb580a6-2051-4a15-918a-10dd9f1e7faf", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 11416000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF"
          }
        } ]
      }, {
        "_id" : "78448e9e-09af-4949-9382-ef899c2add41", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 11416000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "af68c450-5172-4525-b194-e1cf646a0459", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:ImpairmentLossOfNoncurrentAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "_id" : "78188c6a-e102-4393-9d39-4a8627b80ef7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "fb100cc6-8e21-488f-b02f-feeb9886350b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 11710000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        } ]
      }, {
        "_id" : "87c462c7-a23a-47e1-803c-1a3b548f424f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 11710000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "6faa6a7f-0f8f-4d0e-8dae-bf2310b504ef", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 5820000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        } ]
      }, {
        "_id" : "a3d07d93-91f5-46b6-a854-e65d99ffcf2f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 5820000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "e26dbb48-0a87-4a84-ac13-240a88794ef1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        } ]
      }, {
        "_id" : "d80a2090-3a3f-416b-a965-ccd79dfdf501", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "a71fa9b2-159c-4106-b10f-72c82b1c99e3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 68402000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        } ]
      }, {
        "_id" : "832d12e3-ff31-42be-adc2-da01deec5572", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 68402000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "bf8166fd-482d-49db-8466-95323cebb9c4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnValuationOfInvestmentSecuritiesOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "8b2e6e76-7354-4b9c-b200-51acf3cb7416", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 4437000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "28176ab4-5609-405f-9c01-cdd8d13cdb79", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 9328000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        } ]
      }, {
        "_id" : "ad5e1854-dd3c-4db8-9e31-f1fc60136a61", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 9328000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "6afbdd79-14c2-4dde-bf4f-a3d32d1c6606", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 6834000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        } ]
      }, {
        "_id" : "ad5e9e8b-f458-4acc-9eb7-ea6c35239abf", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 6834000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "5d040a18-3623-487b-9307-453d384ed6cd", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 9013000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        } ]
      }, {
        "_id" : "f0a187cc-1aa1-4751-a23d-11c523a7f0e4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 9013000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "e4f1a928-61c9-4313-b201-3a7f477b5c3d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 11781000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        } ]
      }, {
        "_id" : "d552a52e-84bd-4e63-8850-9b86aa28cbd3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 11781000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "64371704-e9f9-42f4-a6ce-68c5e89f0c22", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 8070000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossOnRetirementOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "e3d11213-6f08-4f38-9c70-3799b71da0d0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -7576000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "3ecbaa7c-e606-4d0a-a77e-910ef86568ef", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -7429000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        } ]
      }, {
        "_id" : "a26f531c-2001-4977-9881-8314a4c18187", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -7429000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "2c774681-a9f4-4e27-ac21-0714cf51f7fb", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -8770000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        } ]
      }, {
        "_id" : "3ec81eb5-eb93-4ba9-9a04-0f0a729064b4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -8770000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "d0fc46e7-e280-4bef-909d-33c9c9cd2e6d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -5809000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        } ]
      }, {
        "_id" : "1cc0ce06-668a-41cb-8710-6450a7e7283c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -5809000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "446ac97d-1a85-4214-b1cf-31580e1ca6c8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -13342000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        } ]
      }, {
        "_id" : "ec17464a-cb47-4cd7-9fc5-d410d2e355b0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -13342000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "3bb49fcf-bbde-42b4-894e-7b4706e10da3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -41366000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:LossGainOnSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "dfda9629-0c9d-426a-b9be-2016c215ed43", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -366000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "6b4d7db2-f907-46f3-ac93-0c63a9aa0a45", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -1745000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        } ]
      }, {
        "_id" : "8a6e3e4e-a3a6-4482-8e6f-43e88a5acace", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -1745000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "acd1cb56-082a-46d8-876d-ec54fc683d18", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -4266000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        } ]
      }, {
        "_id" : "6ad17312-3a10-4bd0-9e24-73babd7af10e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -4266000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "0c20b0fa-9da1-48fd-ba32-6c527185622b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -2275000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        } ]
      }, {
        "_id" : "78438551-87ec-485f-a8fc-9f0950a0b3f9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -2275000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "4b29c1d4-758a-4830-a22d-11e8a119c723", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -1850000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        } ]
      }, {
        "_id" : "bc595f74-db85-4e8a-8f64-f0582d5ef9af", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -1850000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "3177ef10-69c7-477f-8cbd-18a4d7724d1e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -5283000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInAllowanceForDoubtfulAccountsOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "67206f89-cd88-46dc-862c-37119f081b74", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -32630000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "e400159f-e722-4ac2-80da-7d94fd81667f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 21222000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        } ]
      }, {
        "_id" : "4b5fb326-4296-4aa1-b24d-37d6d3bb43c6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 21222000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "00eca9f1-40c1-4733-9555-eb54f3e7ec5f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 14735000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        } ]
      }, {
        "_id" : "b8abe7ae-91c6-492b-b58f-e6ca06cc1088", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 14735000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "78b2c985-ca1e-4bd9-972b-0b1e424be9f9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 27319000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        } ]
      }, {
        "_id" : "b02da84e-5800-4e42-bc02-c5e03481931d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 27319000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "f855e00e-73af-43e1-b684-a337c1949cb0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 37598000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        } ]
      }, {
        "_id" : "36c84ea7-afc8-4679-ba2a-f3eee4163606", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 37598000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "2e2f244d-f1ea-4be6-b494-de706c8d4cb7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 63953000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInNotesAndAccountsReceivableTradeOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "2b2788a0-6150-4922-8f44-990723cbb6c0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 157786000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "35a5b8df-5097-46f8-b8b7-09b35fe45288", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -48663000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        } ]
      }, {
        "_id" : "8bd984ae-e112-4db7-8ca5-75ac3dbf90d2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -48663000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "630cc5f9-b6ed-4280-ab21-667ab072c0c8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -64782000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        } ]
      }, {
        "_id" : "b6cb05fc-a9f3-48b0-917f-54018a9773c8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -64782000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "a467a64c-e074-4786-a771-6392719a6430", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 178618000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        } ]
      }, {
        "_id" : "095e7af9-07b7-4e7a-bf50-69cb73d8bf25", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 178618000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "2cbb0b2b-efcb-46b0-b9dd-5381f8a34e0d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -171535000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        } ]
      }, {
        "_id" : "21908a76-ed69-4d6b-b934-48ce25512181", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -171535000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "1ab2c717-1994-4e14-852e-362fcb231015", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -80119000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DecreaseIncreaseInInventoriesOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "94cf8aa5-4662-4789-8959-b9d3005501b5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -86297000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "b75ccefb-7502-48a4-b269-6bd32274ef45", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -6713000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        } ]
      }, {
        "_id" : "c89cf26a-bede-4719-8bc9-454ae8eae91f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -6713000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "57b89f1c-9248-48eb-8126-261e3db0cb73", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 8337000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        } ]
      }, {
        "_id" : "28236e55-619c-49fc-a0fb-fb03cc5ecd9b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 8337000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "ddb0fa77-4c2c-45f5-9748-c935e8283072", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -10414000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        } ]
      }, {
        "_id" : "34eb9ad3-5170-40b3-8c7e-2f253898d3e9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -10414000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "96a7f7ca-7196-4291-907a-4c08140ca903", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -127389000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        } ]
      }, {
        "_id" : "1fbe3dba-58f0-4ae4-90f5-f19d3010fa9f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -127389000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "cc46c83d-3304-4d3d-8691-b64be88175f9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 43008000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInNotesAndAccountsPayableTradeOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "8de0fe8c-9f3e-4c72-9863-be1ecc15c6d8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:OtherNetOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 26972000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "ee1f1f25-da36-4d95-81ab-2bfdaae3a7d0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:OtherNetOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -32187000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        } ]
      }, {
        "_id" : "d5948fc6-4abb-4eea-aa6c-1121405df658", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:OtherNetOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -32187000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "8abd43e8-a0f4-462d-9fb4-e4b5e7ec0abf", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:OtherNetOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 35111000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        } ]
      }, {
        "_id" : "a05705cd-ee02-4885-875b-f792e2eb24b7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:OtherNetOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 35111000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "1d6a1572-8f33-49ba-8ae3-dbf9f6a9290f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:OtherNetOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 35541000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        } ]
      }, {
        "_id" : "0ecec946-7aa0-473a-9a15-7fef7ed21a50", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:OtherNetOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 35541000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "8cae3c1e-e484-4873-96bf-c66bdaf666f4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:OtherNetOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 17818000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        } ]
      }, {
        "_id" : "080782dd-540a-4b49-9f47-afc1a1115d2e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:OtherNetOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 17818000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "a76a803f-59e9-42c5-8b22-731e88d331ba", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:OtherNetOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -53836000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "9488f20c-e7f1-46b9-b3e0-0147643b1ff7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 26347000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "d44347e9-465c-46e9-b2a0-2ab10a56ddd6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 20660000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        } ]
      }, {
        "_id" : "d127392c-b2d7-4bb5-b439-660a1bbf0478", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 20660000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "70b7f083-0ce5-45d0-b8d2-1e2d550dda01", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 27886000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        } ]
      }, {
        "_id" : "6369e8a2-8bc1-493e-ba61-82eb5d10b153", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 27886000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "b82f5415-2835-41d3-81c3-50cf601bfb64", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 18101000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        } ]
      }, {
        "_id" : "6a73ccbd-7964-4380-809d-bb32346fd3e5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 18101000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "910d4be8-cebc-489d-9c01-a5a72cec3af8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 39330000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        } ]
      }, {
        "_id" : "7a5aa166-b940-4ef2-a681-71cd2825bd5d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 39330000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "e7d84f28-9a7c-4e13-9516-250c88eaf2c4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 34520000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestAndDividendsIncomeReceivedOpeCFInvCF"
          }
        } ]
      } ], [ {
        "_id" : "28b24691-7bc7-4984-9756-d3b3631bff28", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -25727000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "7f1b4285-3f7c-47f7-8c5a-3daefce92cab", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -16321000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        } ]
      }, {
        "_id" : "10fb98eb-7e01-48e6-ab42-0efe632388bb", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -16321000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "518a681d-2553-4751-96b4-9dfccb9c7b0e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -18453000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        } ]
      }, {
        "_id" : "51dc4e89-6e32-47e5-a5a6-497051bca3a7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -18453000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "de28df14-3b07-44ad-b5e4-23f37c60c084", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -19911000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        } ]
      }, {
        "_id" : "6356764e-05bb-4c32-8b27-3f84733027ba", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -19911000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "38013361-76c3-406c-b6b0-0b38be5964dc", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -19511000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        } ]
      }, {
        "_id" : "97714903-a130-45db-be4f-2b28e23b96da", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -19511000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "598a2537-7bdd-4399-bb81-8c42667ac154", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -17435000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:InterestExpensesPaidOpeCFFinCF"
          }
        } ]
      } ], [ {
        "_id" : "98e046bc-dce9-4225-b4e5-9a0ccdadf4dd", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:IncomeTaxesPaidOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -57038000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "1d4bd56b-a2a8-4aa9-9f67-a255626ff601", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:IncomeTaxesPaidOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -46276000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        } ]
      }, {
        "_id" : "6f5caf58-9bdb-4a29-a23c-1bfd50688bb5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:IncomeTaxesPaidOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -46276000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "57d077da-e77a-4872-9791-006fdc4053ce", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:IncomeTaxesPaidOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -52626000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        } ]
      }, {
        "_id" : "c57f41c3-ec8c-4f59-98cb-549fb86b1fc4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:IncomeTaxesPaidOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -52626000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "01089ae7-8b4f-4322-beb9-800e8b728519", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:IncomeTaxesPaidOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -67176000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        } ]
      }, {
        "_id" : "eca20cf6-16b7-4edd-b539-a555919fd985", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:IncomeTaxesPaidOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -67176000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "041a1ccc-078f-419b-b822-c3d381be8e29", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:IncomeTaxesPaidOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -205660000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        } ]
      }, {
        "_id" : "26687d0a-9ed9-4f62-a003-4c38373a4974", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:IncomeTaxesPaidOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -205660000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "7326148f-9da8-45a9-90a1-8f5656ffcabb", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:IncomeTaxesPaidOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -229203000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncomeTaxesPaidOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "ad2a19f5-6d1d-4d0c-92d6-0b67a36a39b1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:SubtotalOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 369735000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "2e6f850b-1a83-458b-a5f1-d1cb7a79bb61", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:SubtotalOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 279352000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        } ]
      }, {
        "_id" : "2d85a236-c9dc-4739-bbe0-1f8aafe8a36d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:SubtotalOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 279352000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "acb295d6-1f7e-4ddc-95c3-498b86956335", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:SubtotalOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 412694000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        } ]
      }, {
        "_id" : "b0d0aa8b-db22-4c4c-8ea0-30ec2f239a39", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:SubtotalOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 412694000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "d8cc6af8-78c0-4f7a-980f-e46e4b4ef6ec", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:SubtotalOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 506653000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        } ]
      }, {
        "_id" : "314914a0-98c8-4f26-a019-2ec2c73ee1bb", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:SubtotalOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 506653000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "f05ef5c6-2994-4bb0-a351-188760e150b7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:SubtotalOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 313382000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        } ]
      }, {
        "_id" : "8f0f98ca-99de-458b-b962-77088dc23997", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:SubtotalOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 313382000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "e4a001ea-09e1-4bc3-99bd-b8a372527568", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:SubtotalOpeCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 737895000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:SubtotalOpeCF"
          }
        } ]
      } ], [ {
        "_id" : "f86fb3b8-7733-44fb-b399-0021d448bd4d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 313317000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "99217655-12f9-47db-8930-dbb2d0930cff", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 237414000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        } ]
      }, {
        "_id" : "7b8ea51a-068b-4966-9852-7c79087565c4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 237414000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "e7ff000c-770c-432c-b2c7-b0b4176a7e87", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 369500000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        } ]
      }, {
        "_id" : "6873fa12-d3ac-441a-84c3-3fee313da1c3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 369500000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "ac2cedf5-b6e4-4351-b2a1-1a8bebd36d9e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 437668000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        } ]
      }, {
        "_id" : "eb78beff-6b0c-43d7-be15-6432b5235c8d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 437668000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "5518de14-86a6-462d-a6ea-68b05c021406", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 127540000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        } ]
      }, {
        "_id" : "3d3e9a52-3c90-4814-97aa-cd73fdb207da", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 127540000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "6ed7ef7c-5c30-4112-9a9a-bc1d5924751e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 525777000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInOperatingActivities"
          }
        } ]
      } ], [ null, null, null, null, null, null ], [ {
        "_id" : "619c16eb-5f26-4d23-8e62-c1220b4fa7cc", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -80728000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "686c9e87-e25e-403c-b940-2cb6a67ef98f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -33421000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        } ]
      }, {
        "_id" : "cf8650fa-4dcf-4342-adb7-b43a3dc12781", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -33421000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "341e54c8-921e-459f-a3f9-3b52f83ab783", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -31850000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        } ]
      }, {
        "_id" : "a410e680-39ec-4995-b322-f4e21e19c0a4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -31850000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "b5b327ab-1681-4b2c-bae9-c806ed15b6f2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -88048000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        } ]
      }, {
        "_id" : "07a1e174-6020-48e9-a9fd-5beab4c9d659", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -88048000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "ec7dc3b6-a7b6-44b1-8a14-1b9b5288f9d9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -70853000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        } ]
      }, {
        "_id" : "91f933f2-8e8c-47cb-9065-155455889633", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -70853000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "919a2d1b-218b-4278-9267-3f459ed489e3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -182835000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentSecuritiesInvCF"
          }
        } ]
      } ], [ {
        "_id" : "4f9fbd7c-7309-4f89-afcf-6429ddb7c5fe", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 101005000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "b5a2c7e7-72a0-4d1d-894f-67bdb7a827f9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 51646000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        } ]
      }, {
        "_id" : "c6329947-f43e-465d-a1cd-7632136682eb", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 51646000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "52b46cf2-75bf-42e6-8a8b-abc28bea36d9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 3230000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        } ]
      }, {
        "_id" : "7947731c-7497-427e-beac-2da49ec78115", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 3230000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "bea30bd3-e404-4ecc-91ca-fd163915b07b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 17662000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        } ]
      }, {
        "_id" : "feed9a82-d663-41a9-a049-84780be22ad3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 17662000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "20f0d080-0efd-4c77-8841-7aa80c53954c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 39664000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        } ]
      }, {
        "_id" : "d97f3f77-6fd5-416a-a171-a3450ca9f88f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 39664000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "6f89b492-3063-4e6c-bd12-2e6f78c8bd75", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 8295000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentSecuritiesInvCF"
          }
        } ]
      } ], [ {
        "_id" : "3c32f522-693d-49a7-901a-4b28b2514c38", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -349817000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "3ab87ce8-835d-491f-b6f4-110ec13981e2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -257999000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        } ]
      }, {
        "_id" : "d14f269e-9063-4084-bad3-b16af02385cc", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -257999000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "83cc5cc0-4abc-4950-8e47-6772c0ae230a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -315843000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        } ]
      }, {
        "_id" : "7a026a80-4007-4255-8f9b-d4858cca1205", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -315843000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "92222bbe-f596-45d1-b105-31ae5ae2bb48", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -339773000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        } ]
      }, {
        "_id" : "6bc032d3-b94d-4154-841f-62ac5c7dfd82", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -339773000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "74d556b4-621c-4025-9d7a-4f4561286e00", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -295584000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        } ]
      }, {
        "_id" : "26206a22-7ac5-495f-b0f9-7ef9c8510aa2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -295584000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "bc0c8565-e7ca-4e0c-ac80-2346ed691d57", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -297890000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        } ]
      } ], [ {
        "_id" : "9a9a1bc0-e2e4-4d07-bd2f-6f87bcf448f7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 13206000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "97844ea8-60c5-4e49-80af-daebd1b32988", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 15853000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        } ]
      }, {
        "_id" : "7b81e245-62ba-4588-8aca-9fcf9a2e255d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 15853000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "a40e0870-dc78-460a-a251-b309e34e4b37", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 14598000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        } ]
      }, {
        "_id" : "ca23bea2-544c-4c0d-a488-13dbd1a315d9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 14598000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "b58aa6ed-8ad0-4111-bdc2-e9f93cb70e2d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 11877000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        } ]
      }, {
        "_id" : "39c77c41-ea66-42ef-8e80-4da20b13462a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 11877000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "004ffb9d-de3a-44c1-b9ad-25ebf36f4fcf", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 16761000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        } ]
      }, {
        "_id" : "fefc9948-546a-4bce-a94f-9777dbd60a23", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 16761000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "f0754536-3f14-45fa-a16f-aac043abef8d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 58444000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfPropertyPlantAndEquipmentAndIntangibleAssetsInvCF"
          }
        } ]
      } ], [ {
        "Aspects" : {
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "_id" : "ea23b9af-0baf-4621-a6d9-b8571132f051", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -70000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "0d578ee0-43ed-423b-94d9-5c2dca5a849a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 2671000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        } ]
      }, {
        "_id" : "36147cd0-e7f0-4474-8f03-ca18120d8b82", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 2671000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "7f4f5227-db55-4986-ab18-835cb3c0176e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -2366000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        } ]
      }, {
        "_id" : "b3af124f-51e7-4b44-b1f5-3d056c6bf8a1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -2366000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "b6c107fc-9702-4106-b13c-02cd7fd0d094", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -2666000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        } ]
      }, {
        "_id" : "9bce53e0-4458-4402-be9e-45da2fdc3d98", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -2666000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "2b4f3086-3ad0-4552-bd80-ab1e83bf3b68", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -12718000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        } ]
      } ], [ {
        "Aspects" : {
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "_id" : "dbcbae63-375c-43ed-8543-62ac9c11b716", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 304000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "23a08367-8aa9-4a80-8067-96f12892eaa6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "_id" : "6afe76b4-ca81-42e0-ba9b-12c4a541b124", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "aab1e0d6-bb72-4cfe-a189-79cceb974086", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromSalesOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -1336000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromSalesOfInvestmentsInSubsidiariesResultingInChangeInScopeOfConsolidationInvCF"
          }
        } ]
      } ], [ {
        "_id" : "fb2ca6c1-33d9-4aa8-b290-deee7ef62409", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -14515000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "4ec9dd97-b87a-4f02-8ef4-c6b56a71064a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -1945000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        } ]
      }, {
        "_id" : "3b512198-dc42-4255-94dd-2ec38a880aad", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -1945000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "878bf866-cb21-4832-8566-9e47bb472cd9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -6485000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        } ]
      }, {
        "_id" : "4ad27b0f-ccaa-443b-9159-1991c2fd8ea0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -6485000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "ff0b383f-9605-4b0b-8286-9dc6a6168031", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -16817000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        } ]
      }, {
        "_id" : "857a7863-e412-45a7-b528-988ac0762ce7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -16817000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "51acbc43-fd18-4068-b8ad-fa9efa2c68a1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -1355000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        } ]
      }, {
        "_id" : "209598f4-93af-4f41-969d-1b81e6fc099a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -1355000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "ad8c4aaa-a976-4d6e-b7cc-4df647ac7c2c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -9008000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PaymentsOfLoansReceivableInvCF"
          }
        } ]
      } ], [ {
        "_id" : "2560a570-1ec7-4225-8880-b5ca3677cf2c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:CollectionOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 4175000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "0a6ce9c6-8ade-4c40-b035-621b11ab72fb", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:CollectionOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 4282000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        } ]
      }, {
        "_id" : "f78b1df6-e90a-4a67-b245-3746042652bc", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:CollectionOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 4282000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "7a0d5c7d-17a7-4e8e-b50d-20c091cf6033", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:CollectionOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 4876000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        } ]
      }, {
        "_id" : "0a4ac2cc-fe2c-4c4b-b977-262937b825f8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:CollectionOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 4876000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "db1bc1c1-fe94-461f-a708-b1d753e8d436", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:CollectionOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 5155000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        } ]
      }, {
        "_id" : "143646e6-5986-4658-a422-857a26b69cfd", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:CollectionOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 5155000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "1eab5e12-88d8-46b0-b45a-e2853fa0efea", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:CollectionOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 6136000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        } ]
      }, {
        "_id" : "d0624532-6fb9-4061-adbd-dcd312b5ac36", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:CollectionOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 6136000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "2622a5ba-d4b8-4206-b84b-3b25d6d89697", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:CollectionOfLoansReceivableInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 5412000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CollectionOfLoansReceivableInvCF"
          }
        } ]
      } ], [ {
        "_id" : "0375616b-4ec6-49eb-8548-063964b98c44", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:OtherNetInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -661000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "2b6705aa-a49e-43b3-b814-fc7501d42136", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:OtherNetInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -4511000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        } ]
      }, {
        "_id" : "2ee5b6b7-3c1d-4fc3-813f-65d18e9cc6f3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:OtherNetInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -4746000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "cc0c2ca3-91fc-48a8-b97c-817639d79aa4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:OtherNetInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 3019000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        } ]
      }, {
        "_id" : "de6e5d2a-8069-4841-83f5-8fe6661dd90f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:OtherNetInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 3019000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "652dc867-4954-4215-9fab-aa0883083497", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:OtherNetInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -516000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        } ]
      }, {
        "_id" : "a1d51373-044c-4447-85bd-efb61ad56262", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:OtherNetInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -516000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "eb585f7d-8f09-4877-bb47-c28841b7b5b0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:OtherNetInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 1293000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        } ]
      }, {
        "_id" : "d5d628b3-0206-42de-a07f-17650974b7b6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:OtherNetInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 1293000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "5f9f63a2-f9ad-4dd1-8b24-d42866f7c5d9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:OtherNetInvCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -6483000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetInvCF"
          }
        } ]
      } ], [ {
        "_id" : "719c6345-e4cd-4443-aa92-878df1e9e310", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -327336000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "100e5bab-38bf-49aa-a19d-2d52ced66f16", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -226096000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        } ]
      }, {
        "_id" : "d7d2d602-bacf-49cc-b3e2-71e9e345625a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -226096000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "75d76056-6083-4b66-9aff-20c770fdaccd", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -325781000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        } ]
      }, {
        "_id" : "934eea50-4759-4f49-802b-68dcaf8bbb01", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -325781000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "88ae7769-f61a-4883-9a83-601b85170016", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -412827000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        } ]
      }, {
        "_id" : "80f3df9b-45f9-427b-a076-36693f1dab3a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -412827000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "e06dea74-b8ee-4d16-8e06-cce07f38c2ce", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -306603000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        } ]
      }, {
        "_id" : "65f964fd-07ec-45a5-a0a0-18e1bccf77ee", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -306603000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "14148275-d5d1-48e9-b9af-c4c474bba767", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -438121000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInInvestmentActivities"
          }
        } ]
      } ], [ null, null, null, null, null, null ], [ {
        "_id" : "e6c77616-51ca-42c4-83a9-7ed52d34b11d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -16286000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "e8053069-7870-4c4f-848a-3c85a3a839a9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -31267000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        } ]
      }, {
        "_id" : "a59ff25d-58ea-407c-b1ef-cbe0a93fcdd6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -31267000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "f2cce661-92f5-4de9-b398-dd773075b1ab", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -33118000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        } ]
      }, {
        "_id" : "285cc3f0-7cce-436c-9927-cfff1567ccf1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -33118000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "dae87ac6-eca8-4b98-afdf-9f2c41a80cd4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -67063000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        } ]
      }, {
        "_id" : "f6c05b7f-ea64-4e70-889b-d6afee90a637", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -67063000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "9bdb29ca-bb87-43e2-982d-453ba6d1f6cd", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 95229000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        } ]
      }, {
        "_id" : "bac9ecd4-2b21-4fe6-8923-8a117806531e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 95229000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "deb893ff-3d9b-4104-9aee-9fe4174ee3b0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -28492000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInShortTermLoansPayableFinCF"
          }
        } ]
      } ], [ {
        "_id" : "42a378be-e0e8-4d89-86bb-9047faf15ebd", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -68000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "dbdbf786-60cc-4fa1-8a42-c9996af56091", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -32000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        } ]
      }, {
        "_id" : "a45dc7b6-3874-47cc-8d50-1cca27e71040", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -32000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "34b91d3e-5ef7-4301-bb5f-22048ff70839", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -46000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        } ]
      }, {
        "_id" : "55b52a8a-c523-45b8-b6b9-08e27adca17d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -46000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "5ec54017-99b1-4053-9ff1-7326d214f5e1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -70000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        } ]
      }, {
        "_id" : "dc17f31a-f769-452e-8d23-a402360629b8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -70000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "ff864632-0f54-444e-8919-afade9dcd7df", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 13000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        } ]
      }, {
        "_id" : "7fff11f8-6efd-48f5-9627-ea7e571ef022", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 13000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "29f8755a-2182-4b74-b5de-a3cd8162ba95", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -28000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCommercialPapersFinCF"
          }
        } ]
      } ], [ {
        "_id" : "17fbb59f-4b3e-4924-bf05-eb572c508b6f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 278698000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "2ebe42fe-011a-4234-a13d-12d22d8b19bc", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 155233000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        } ]
      }, {
        "_id" : "4983037d-1bcd-4133-acff-885320d60a68", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 155233000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "da3b668a-c7a0-4223-bd4f-45197dcb5240", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 101778000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        } ]
      }, {
        "_id" : "2657d4f6-1081-4032-ac45-a6b2f42d1fbe", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 101778000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "5b7d420b-9d47-4e16-8669-10931c4cb239", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 125087000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        } ]
      }, {
        "_id" : "16f100b9-1d17-4350-bd10-3a95497d6347", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 125087000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "65e70f1c-a8ca-4862-ae83-adbb8089cf88", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 185119000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        } ]
      }, {
        "_id" : "6141d301-dc6b-4e91-bb8c-450c787f02d8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 185119000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "99e55057-ad48-4707-9501-7ac02a14b99b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 181550000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromLongTermLoansPayableFinCF"
          }
        } ]
      } ], [ {
        "_id" : "bcaf156b-f74c-48b5-9e65-f96bd18749b5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -165864000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "e9f65a70-2a16-41bc-b50b-9b6bac3bd558", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -143162000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        } ]
      }, {
        "_id" : "dae8b11b-0154-4f57-8278-c120613ca223", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -143162000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "87ce3f7c-0a55-4832-8be9-41b326d0c4a7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -84490000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        } ]
      }, {
        "_id" : "10cd2345-5610-404b-9b99-dc15288a66ea", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -84490000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "45fe19bc-40cc-491f-9a39-5f0a6cc8422f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -67367000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        } ]
      }, {
        "_id" : "28ee9494-b453-420d-b533-ed517ae96616", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -67367000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "e8c913f1-a885-4465-a90d-deebb09b148b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -85159000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        } ]
      }, {
        "_id" : "c55932f9-b150-4f5f-922d-3ed620c4d286", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -85159000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "7304980f-95d1-49e0-bc9d-f49a0070f75a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -183509000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RepaymentOfLongTermLoansPayableFinCF"
          }
        } ]
      } ], [ {
        "_id" : "2278005d-4166-440d-966d-feca261737ef", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 30000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "c3030127-bde2-425b-b5b8-e384a50ba948", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 55000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        } ]
      }, {
        "_id" : "bf6aad4b-ddf3-4bc3-9a48-e46b2b520f08", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 55000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "2e214701-ad55-41cf-86f6-95e0b882abcc", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 35000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        } ]
      }, {
        "_id" : "60da705f-34c0-4456-bacc-7f319763dca2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 35000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "0da930f0-a8f4-4926-b718-b6e64904d098", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 39861000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        } ]
      }, {
        "_id" : "258c6f38-0fb1-4c47-b3bb-384ebe195ef4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 39861000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "7fce5980-9ef3-490a-bb94-219bf422ce35", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 144448000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        } ]
      }, {
        "_id" : "97d9c0ae-7278-4f64-a8ed-c973d36257a5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 144448000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "21fbba33-4391-4153-a880-8fc28c073583", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 79707000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromIssuanceOfBondsFinCF"
          }
        } ]
      } ], [ {
        "_id" : "d51ef8c3-dcbb-4267-97f1-43c362ba25df", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:RedemptionOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -65000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "2eea3f53-6e30-4c52-83b7-8587f5d4bf75", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:RedemptionOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -5000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        } ]
      }, {
        "_id" : "ac1e87a9-e0a9-4c6d-afec-f88ec3a92a22", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:RedemptionOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -5000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "53459c4e-404c-4c3e-a8a2-7f06774ed27b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:RedemptionOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -15000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        } ]
      }, {
        "_id" : "d1b8c9f8-f130-404c-abe2-56ebb51546bb", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:RedemptionOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -15000000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "6f3e88ce-1f57-4f5b-a8b3-e3042683febf", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:RedemptionOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -43266000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        } ]
      }, {
        "_id" : "563dcc64-72ac-4627-b11c-5c8fea3ca660", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:RedemptionOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -43266000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "9c5c0410-063a-4089-aa48-6fde5ea60da7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:RedemptionOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -95324000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        } ]
      }, {
        "_id" : "ddb7eaf1-14ad-4537-9894-ce4d39ee4c33", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:RedemptionOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -95324000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "668df008-791b-4cfd-9032-85886a206d9a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:RedemptionOfBondsFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -43074000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RedemptionOfBondsFinCF"
          }
        } ]
      } ], [ {
        "_id" : "2f1af8f4-cae8-4697-b0f4-81edd947b765", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -563000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "a012cd6a-baa6-4f8e-8cf9-f853f3aaeb0e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -15000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        } ]
      }, {
        "_id" : "38200d17-222a-40ed-8b6f-36b81a502477", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -15000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "e65ace21-8116-4183-8c13-bd2c9919bb97", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -40000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        } ]
      }, {
        "_id" : "7bec03d3-d724-4777-903e-4b38fc114c83", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -40000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "ecbd7729-6567-4c08-a466-816f33f9634f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -179000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        } ]
      }, {
        "_id" : "59e56ca0-947c-4180-b5c7-385c8ed4ee70", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -179000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "a54a9c5e-db52-47ee-9069-da0b69a28b15", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -178000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        } ]
      }, {
        "_id" : "ef892090-383c-49f6-b173-31acb2ea3a99", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -178000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "cf3a09af-de48-4960-9b64-974d57f27bc2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -93430000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:PurchaseOfTreasuryStockFinCF"
          }
        } ]
      } ], [ {
        "_id" : "a83957d4-975c-4b91-a507-1aa886f89855", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -6302000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "7b723207-e7b4-403e-a199-f060bb074c19", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -28363000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        } ]
      }, {
        "_id" : "41ce5509-0e7a-441a-8c38-10005de3c758", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -28363000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "78e7651d-0ef1-4f2e-ae6d-9a437cfc2188", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -9454000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        } ]
      }, {
        "_id" : "b463b04f-a2af-4cd8-a72f-f55aab43ca66", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -9454000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "088fef1c-4e3c-4f93-934e-f15dcbf3de5e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -6303000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        } ]
      }, {
        "_id" : "d335e1f4-f9c2-4f6b-9be9-b5d093df4a9f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -6303000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "0bf870b0-886b-41bc-ada9-0c54c575ee68", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -69335000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        } ]
      }, {
        "_id" : "b8ef53da-fdce-441a-a720-8592ca96c56f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -69335000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "14b667a2-4a10-44ab-9028-5f9115ccfbd5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -69966000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidFinCF"
          }
        } ]
      } ], [ {
        "_id" : "577588ff-affd-436a-bfab-57a157f85b4d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -9191000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "6110151f-4b4d-4af1-af88-5e297fb73764", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -9903000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        } ]
      }, {
        "_id" : "4fed9c78-a7d0-49db-a16b-5c25a2d9de73", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -9903000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "cb94e6bf-3187-45c6-9d4e-f89a108d7070", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -8703000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        } ]
      }, {
        "_id" : "cb41ba1f-5ca4-49a6-b713-cd965245660f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -8703000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "638c69a9-11a6-4ef2-abbe-1ae31ddca78c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -9756000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        } ]
      }, {
        "_id" : "4b5c6da5-27ee-4dcd-8074-104608f9f8f3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -9756000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "a9a90725-b176-4301-affa-7110e3e0d73c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -10305000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        } ]
      }, {
        "_id" : "a31d36f9-9db4-4179-833d-01d708978113", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -10305000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "47286ef6-e51e-4eed-abd3-e4d04713046d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -9872000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashDividendsPaidToMinorityShareholdersFinCF"
          }
        } ]
      } ], [ {
        "_id" : "cf83f4fd-d4e3-4f78-9a0d-87e7384bb294", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 1108000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "d8c097a9-915a-4b70-bdd7-cd66b96a1efe", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 824000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        } ]
      }, {
        "_id" : "ff872fa3-6e65-4ad5-996d-6ed8bae098c4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 824000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "2c4217e7-e6b4-4f01-b5ce-ddc645659a41", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 1089000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        } ]
      }, {
        "_id" : "d25a225b-4b0c-4423-86b3-9863acdc46b9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 1089000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "10aab942-8a72-4b2a-88f3-7bc8327cd5b4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 84000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        } ]
      }, {
        "_id" : "3264cf10-59b9-46c8-a24b-fa1210cc3bfe", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 84000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "0d286b1f-078c-4750-b4e5-366afeea2b45", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 290000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        } ]
      }, {
        "_id" : "837f1795-47b0-4117-bf6d-cc55661831f0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 290000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "dd81e577-29f1-4a96-8b8f-2ab2dad3d454", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 441000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProceedsFromStockIssuanceToMinorityShareholdersFinCF"
          }
        } ]
      } ], [ {
        "_id" : "f1220421-d576-456a-8092-ef1f18dcd790", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:OtherNetFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 54735000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "2eb436dc-e573-40a0-8ae8-355cdb9dc6a8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:OtherNetFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 6868000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        } ]
      }, {
        "_id" : "cb1561e3-be8b-423d-9cea-af9c2630f505", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:OtherNetFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 6868000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "a934f1b5-8701-4fc5-bdf4-626ff29e6147", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:OtherNetFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 11696000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        } ]
      }, {
        "_id" : "e6600458-034d-4849-88d1-2940e3288d5c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:OtherNetFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 11696000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "e289a7c8-0118-4910-b48b-d23626a489a5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:OtherNetFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 18917000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        } ]
      }, {
        "_id" : "f3c1ecff-5aae-4f91-b2d6-67e0d0fa86dd", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:OtherNetFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 18917000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "8bba5c7e-4457-4104-b8e7-b7996720048a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:OtherNetFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -7575000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        } ]
      }, {
        "_id" : "bc227862-7e03-4490-9885-de294b089b7e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:OtherNetFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -7575000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "e4a1c8c0-78d0-4335-8d59-8e7a199c9512", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:OtherNetFinCF", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -5957000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:OtherNetFinCF"
          }
        } ]
      } ], [ {
        "_id" : "6aeeefe0-44a3-4d9c-8def-0360d7c13329", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 33332000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "e24823fe-b574-479a-bf1a-6c12bc5eefd5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -31785000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        } ]
      }, {
        "_id" : "06d8a55b-2336-4c3d-856b-fc959a6d1eb2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -31785000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "9c78036c-0bc4-43ae-a470-513968834715", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -47244000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        } ]
      }, {
        "_id" : "fc94f20f-56b0-4004-bf8a-a78f7d4f613f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -47244000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "58e6ba47-b7ba-4d36-b12e-35e6a928fca1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -79985000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        } ]
      }, {
        "_id" : "9b49779e-b888-4f12-8c4d-bd97c2fc6498", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -79985000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "4c2ade25-6169-4241-984a-9d44c4b06184", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 170209000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        } ]
      }, {
        "_id" : "701f513b-f4e5-452f-a53f-00849218997e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 170209000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "06a1ed6b-6f9c-4d84-b130-3be0fb0d06a7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -200604000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetCashProvidedByUsedInFinancingActivities"
          }
        } ]
      } ], [ {
        "_id" : "a8e30359-16ce-465f-914c-d4811d37fc25", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 22229000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "05dfcf65-c278-4c1f-86e2-5dce80389663", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -2444000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "0f997a20-1d3b-4fab-8b1c-d5dd8c5a437b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -2444000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "5e6f50c6-1702-48ad-9025-be19a79c4e8b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -2811000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "fbc230fc-cbf5-443d-b257-2c6e23be20f2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -2811000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "2d336523-1254-4ca6-bd99-653ad9a117e2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 7246000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "c11da18d-44da-4d9a-bd6f-4b7bd58d6385", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 7246000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "43adc341-155b-43a2-bf0a-5f3a6d1af846", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -23069000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "03547068-29b2-4790-a0f3-2ab83b89afd0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -23069000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "89c75f29-508c-41fa-8a6a-5a84d45fb001", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -8868000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:EffectOfExchangeRateChangeOnCashAndCashEquivalents"
          }
        } ]
      } ], [ [ {
        "_id" : "f9116451-ffa3-4af3-9618-3defa8159074", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 55747000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "23d8ff95-eada-4bb3-8db3-24c85048f9e4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 55747000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "f9c2d909-7f72-47ea-8a83-e1e5f3edfd3c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 76256000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "a72e4c40-b6b9-4213-ae00-70ebad4ba522", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 76256000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "d92d9f4b-a593-4bef-b0a0-5a8e4c5c551c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 76256000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "4823bc88-77a5-495d-a1bb-c75a53a99784", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 80470000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "c18e650c-d0c7-45b4-8ef8-6ad52b8b9e3d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 80470000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "9783bba6-c7e4-4d85-b585-6e25e591be55", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 80470000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "f0b53d0f-261a-4eaf-9cca-f8cec1b66048", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 128390000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "58d51ad4-b37a-4698-beda-ba5fd42f2057", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 128390000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "5453f40c-b366-4b5b-9878-441c10f6a055", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 128390000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "e17e1911-ec1c-47b6-a9a4-42a132f7b228", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 160313000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "1acb2ec2-255d-4194-bded-a99b54d603fb", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 160313000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        } ]
      } ], {
        "_id" : "fc8b0cc6-924c-47f7-9cf2-9abdb1472e53", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:CashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 282766000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:CashAndCashEquivalents"
          }
        } ]
      } ], [ {
        "_id" : "ad633c5e-3499-4271-8810-baeed7194fa4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -19735000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "1383455e-7fd9-4b36-9cfc-15ffbf545984", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 2402000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        } ]
      }, {
        "_id" : "5747f9d4-5664-4a0c-b61b-477a1e1bc3de", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 2402000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "0df9df36-4cd7-4c43-afb0-b885d3dd730c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 2123000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        } ]
      }, {
        "_id" : "5299315a-6dc2-4bca-b13b-1d6871c8aba7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 2123000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "9892c4da-cb0d-4e01-8328-7705a6b809bf", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -22000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        } ]
      }, {
        "_id" : "17caacad-779d-4bdb-b2aa-3a52ad905f87", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -22000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "18a15d3d-4247-4469-b7eb-4f25dd085e45", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        } ]
      }, {
        "_id" : "895d2723-71b8-44f1-82ba-6d01934f87ed", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "6e70ead0-b570-42a3-bb20-fc8b09275f77", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -635000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseDecreaseInCashAndCashEquivalentsResultingFromChangeOfScopeOfConsolidationCCE"
          }
        } ]
      } ], [ {
        "_id" : "41273496-fa58-4f68-8e86-69d73d385564", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:IncreaseInCashAndCashEquivalentsResultingFromMergerCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 12975000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "22ee0347-2ccf-4597-acdd-e19bf2785e6f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:IncreaseInCashAndCashEquivalentsResultingFromMergerCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseInCashAndCashEquivalentsResultingFromMergerCCE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseInCashAndCashEquivalentsResultingFromMergerCCE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:IncreaseInCashAndCashEquivalentsResultingFromMergerCCE"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Concept" : "jp-t-cte:IncreaseInCashAndCashEquivalentsResultingFromMergerCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "Aspects" : {
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Concept" : "jp-t-cte:IncreaseInCashAndCashEquivalentsResultingFromMergerCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "Aspects" : {
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Concept" : "jp-t-cte:IncreaseInCashAndCashEquivalentsResultingFromMergerCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Concept" : "jp-t-cte:IncreaseInCashAndCashEquivalentsResultingFromMergerCCE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "_id" : "de444722-2c0f-4ec9-b5f5-772ee7ec26ce", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-04-01/2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 41542000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "2c64cb6a-6b22-4708-bf48-5996364b1530", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -22911000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "3aa8d1ec-c56a-4fd0-b6f7-fd80ecf2edc8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-04-01/2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -22911000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "d3de71ca-486f-4dea-9d49-7919fc8e3a9f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -6336000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "c546c11c-1cb0-494d-a73e-510481b019ac", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-04-01/2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -6336000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "5e42a87e-4446-4da9-a23a-efcf1ddd728c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -47897000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "ae772912-7d8a-48e7-a177-52b67bd15b2c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2009-04-01/2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -47897000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "4ef6208e-11a0-468a-b9e5-9bcdb96ae348", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -31923000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        } ]
      }, {
        "_id" : "dfa5b62a-117e-46d4-9a87-15a5ebedf2c1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-04-01/2009-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2008, 
          "fsa:Submitted" : "2009-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -31923000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "3053edda-cf04-4f79-9fd3-91e7d436a9b5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-04-01/2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -121817000000, 
        "Decimals" : -6, 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalYear.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalYear", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NetIncreaseDecreaseInCashAndCashEquivalents"
          }
        } ]
      } ] ]
    }
  } ], 
  "GlobalConstraints" : [ {
    "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000"
  }, {
    "xbrl:Unit" : "iso4217:JPY"
  } ], 
  "GlobalConstraintLabels" : {
    "xbrl:Entity" : "Reporting Entity [Axis]", 
    "xbrl:Unit" : "Unit [Axis]"
  }
}