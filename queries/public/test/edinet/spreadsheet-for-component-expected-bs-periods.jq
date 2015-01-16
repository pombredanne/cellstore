{
  "ModelKind" : "LayoutModel", 
  "ComponentAndHypercubeInformation" : {
    "Component" : {
      "Role" : "http://info.edinet-fsa.go.jp/jp/fr/gaap/role/ConsolidatedBalanceSheets", 
      "Label" : "連結貸借対照表　連結財務諸表規則様式第四号"
    }, 
    "Hypercube" : {
      "Name" : "xbrl:UserDefinedHypercube", 
      "Label" : "User-defined Hypercube"
    }
  }, 
  "TableSetLabels" : [ "連結貸借対照表　連結財務諸表規則様式第四号" ], 
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
          "CellLabels" : [ "2013-03-31" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2013-03-31"
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
          "CellLabels" : [ "2012-03-31" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2012-03-31"
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
          "CellLabels" : [ "2011-03-31" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2011-03-31"
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
          "CellLabels" : [ "2010-03-31" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2010-03-31"
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
          "CellLabels" : [ "2008-03-31" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2008-03-31"
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
          "CellLabels" : [ "2007-03-31" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Period" : "2007-03-31"
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
          "CellLabels" : [ "貸借対照表", "jp-t-cte:BalanceSheetsAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:BalanceSheetsAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 35, 
          "RollUp" : false, 
          "IsRollUp" : false, 
          "IsNegated" : false
        } ], [ {
          "CellLabels" : [ "資産の部", "jp-t-cte:AssetsAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:AssetsAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "流動資産", "jp-t-cte:CurrentAssetsAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:CurrentAssetsAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "受取手形及び売掛金", "jp-t-cte:NotesAndAccountsReceivableTrade" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:NotesAndAccountsReceivableTrade"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "有価証券", "jp-t-cte:ShortTermInvestmentSecurities" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:ShortTermInvestmentSecurities"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "たな卸資産", "jp-t-cte:Inventories" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:Inventories"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "固定資産", "jp-t-cte:NoncurrentAssetsAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:NoncurrentAssetsAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "有形固定資産", "jp-t-cte:PropertyPlantAndEquipmentAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:PropertyPlantAndEquipmentAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "減価償却累計額", "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 5
        }, {
          "CellLabels" : [ "建物及び構築物（純額）", "jp-t-cte:BuildingsAndStructuresNet" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:BuildingsAndStructuresNet"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 5
        }, {
          "CellLabels" : [ "建物及び構築物", "jp-t-cte:BuildingsAndStructures" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:BuildingsAndStructures"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 4, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "減価償却累計額", "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 5
        }, {
          "CellLabels" : [ "機械装置及び運搬具（純額）", "jp-t-cte:MachineryEquipmentAndVehiclesNet" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 5
        }, {
          "CellLabels" : [ "機械装置及び運搬具", "jp-t-cte:MachineryEquipmentAndVehicles" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehicles"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 4, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "リース資産", "jp-t-cte:LeaseAssetsPPE" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:LeaseAssetsPPE"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 4, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "減価償却累計額", "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 5
        }, {
          "CellLabels" : [ "無形固定資産", "jp-t-cte:IntangibleAssetsAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:IntangibleAssetsAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "特許権及び利用権", "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 4, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "のれん", "jp-t-cte:Goodwill" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:Goodwill"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 4, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "負債の部", "jp-t-cte:LiabilitiesAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:LiabilitiesAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "流動負債", "jp-t-cte:CurrentLiabilitiesAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:CurrentLiabilitiesAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "支払手形及び買掛金", "jp-t-cte:NotesAndAccountsPayableTrade" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:NotesAndAccountsPayableTrade"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "未払費用", "jp-t-cte:AccruedExpenses" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:AccruedExpenses"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "未払金", "jp-t-cte:AccountsPayableOther" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:AccountsPayableOther"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "工事損失引当金", "jp-t-cte:ProvisionForLossOnConstructionContracts" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:ProvisionForLossOnConstructionContracts"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "災害損失引当金", "jpfr-asr-e01225-000:ReserveForLossOnDisasterNCL" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jpfr-asr-e01225-000:ReserveForLossOnDisasterNCL"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "固定負債", "jp-t-cte:NoncurrentLiabilitiesAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:NoncurrentLiabilitiesAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "繰延税金負債", "jp-t-cte:DeferredTaxLiabilitiesNCL" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "土地再評価に係る繰延税金負債", "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "土地再評価に係る繰延税金負債", "jpfr-asr-e01225-000:DefferedTaxLiabilitiesOnRevaluationOnLandNCL" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jpfr-asr-e01225-000:DefferedTaxLiabilitiesOnRevaluationOnLandNCL"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "役員退職慰労引当金", "jp-t-cte:ProvisionForDirectorsRetirementBenefits" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "純資産の部", "jp-t-cte:NetAssetsAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:NetAssetsAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "評価・換算差額等", "jp-t-cte:ValuationAndTranslationAdjustmentsAbstract" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:ValuationAndTranslationAdjustmentsAbstract"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 2, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "土地再評価差額金", "jp-t-cte:RevaluationReserveForLand" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:RevaluationReserveForLand"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "為替換算調整勘定", "jp-t-cte:ForeignCurrencyTranslationAdjustment" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 3, 
          "IsAbstract" : false
        }, {
          "CellLabels" : [ "少数株主持分", "jp-t-cte:MinorityInterests" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jp-t-cte:MinorityInterests"
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
      "Facts" : [ [ null, null, null, null, null, null ], [ null, null, null, null, null, null ], [ {
        "_id" : "1f82b703-aa05-4972-a0c2-8a6ec063bb24", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsReceivableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 579562000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "7be1a8d4-177b-4039-9054-ccfd7a4d5cac", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsReceivableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 442621000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:NotesAndAccountsReceivableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsReceivableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsReceivableTrade"
          }
        } ]
      }, {
        "_id" : "5029ff0a-df61-428f-896a-97d1c80714a2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsReceivableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 442621000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "063011f1-ad7b-428f-a8fa-9efaeef92870", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsReceivableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 459906000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:NotesAndAccountsReceivableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsReceivableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsReceivableTrade"
          }
        } ]
      }, {
        "_id" : "ef00c39a-6211-4fd8-af68-f120c1f6fb64", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsReceivableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 459906000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "30ddb9e7-5a0b-48cc-98fc-fd9dbec7d200", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsReceivableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 457804000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:NotesAndAccountsReceivableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsReceivableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsReceivableTrade"
          }
        } ]
      }, {
        "_id" : "b55f6905-014c-4c48-913e-2bf82b3723ce", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsReceivableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 457804000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "dc5d6d88-e64a-420c-9044-17ba916c5768", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsReceivableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 516858000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:NotesAndAccountsReceivableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsReceivableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsReceivableTrade"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsReceivableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ [ {
        "_id" : "7899855c-69ee-4e6a-b73c-a423e3330d21", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ShortTermInvestmentSecurities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 8024000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "9eefd4c2-9d13-40c6-a0a6-3c8813555f19", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ShortTermInvestmentSecurities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 25000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "fd04efd4-2d9c-44b4-9835-5136a785ae62", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ShortTermInvestmentSecurities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 11912000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        } ]
      }, {
        "_id" : "1c82182d-e43a-4c56-bf2d-35c132e1a239", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ShortTermInvestmentSecurities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
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
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        } ]
      }, {
        "_id" : "1f1df627-03a2-4864-832c-564cb2e79945", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ShortTermInvestmentSecurities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 11912000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "f7417b0c-aa17-41ba-a26d-961d4d8f7db2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ShortTermInvestmentSecurities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 10186000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        } ]
      }, {
        "_id" : "e8494f3d-a1b6-465c-998d-c6991c3eaf4c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ShortTermInvestmentSecurities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 10186000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "31b4ce04-608c-4b77-acb3-275c26559081", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ShortTermInvestmentSecurities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 12723000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        } ]
      }, {
        "_id" : "01c75cbb-9724-4d7d-9b6e-339bf5cf7643", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ShortTermInvestmentSecurities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 12723000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "b37af480-6968-4da4-90f0-dfe13acf0317", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ShortTermInvestmentSecurities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 9015000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ShortTermInvestmentSecurities"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:ShortTermInvestmentSecurities", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "_id" : "284bca0d-4826-4153-90c7-514874852c33", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:Inventories", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 1156934000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "4f0c8b49-cf12-43ba-b893-396f95a1c602", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:Inventories", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 947534000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:Inventories"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Inventories"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Inventories"
          }
        } ]
      }, {
        "_id" : "1ccaeeef-6f99-4311-9f6f-fba0c366031f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:Inventories", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 947534000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "fa16d88e-4808-4637-93ac-7033078e2e78", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:Inventories", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 929284000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:Inventories"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Inventories"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Inventories"
          }
        } ]
      }, {
        "_id" : "aa469341-ca2f-494e-8876-cbf0c4a0fbad", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:Inventories", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 929284000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "5c62ae8a-7e14-4566-a699-00e7c84f3af3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:Inventories", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 854763000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:Inventories"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Inventories"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Inventories"
          }
        } ]
      }, {
        "_id" : "fdea83ac-2ac7-421e-89a8-4ee4f1f0b328", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:Inventories", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 854763000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "21aa1e7a-6cb9-46bd-995f-bd2bb1375597", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:Inventories", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 867157000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:Inventories"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Inventories"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Inventories"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:Inventories", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ null, null, null, null, null, null ], [ null, null, null, null, null, null ], [ {
        "_id" : "bca53349-d570-4527-bb8f-7115b10cd89c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -1379732000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "88c28e8a-f5fa-4dfa-a775-36d549e4c088", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -1217697000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures"
          }
        } ]
      }, {
        "_id" : "e00e59ba-89cc-4925-ae06-d4db0d5d67b2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -1217697000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "f944aba4-2395-46c0-aa06-a76d16a39eec", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -1187938000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures"
          }
        } ]
      }, {
        "_id" : "f63f79a0-d3a1-445e-8b28-3235382b8d34", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -1187938000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "058cec4d-ea80-4a36-9e4a-2a29ee030a03", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -1146672000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures"
          }
        } ]
      }, {
        "_id" : "4273fada-336b-463e-8028-7fad56584328", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -1146672000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "c219665d-fb94-4848-8614-484ea02703e5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -1091319000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationBuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "_id" : "ea38ef14-bb2c-4df3-acca-f20901dfc49a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructuresNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 734222000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "c96b4a3c-054b-4a8a-b59d-93ee5fdac7d2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructuresNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 498057000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:BuildingsAndStructuresNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructuresNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructuresNet"
          }
        } ]
      }, {
        "_id" : "8b6eb9ed-db99-4f0c-ad90-c0c40e8037c6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructuresNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 498057000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "122bae00-0d10-4e96-84fa-6cea728b2f12", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructuresNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 499951000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:BuildingsAndStructuresNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructuresNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructuresNet"
          }
        } ]
      }, {
        "_id" : "c0bfdf20-5b36-4147-a14d-399118de081b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructuresNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 499951000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "1ba45baf-944e-4c45-975a-f537d4c70740", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructuresNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 489884000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:BuildingsAndStructuresNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructuresNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructuresNet"
          }
        } ]
      }, {
        "_id" : "45c2ef2c-d1ab-45d8-a27d-d626b9d4da07", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructuresNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 489884000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "b1d640b7-d540-4aad-8ddc-c116dff23385", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructuresNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 468315000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:BuildingsAndStructuresNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructuresNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructuresNet"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructuresNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "_id" : "15b28075-5cad-4403-a473-21c5c3910fbd", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 2113954000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "98dbe718-c651-4f6e-a6ef-fa60815bdcd2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 1715754000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:BuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructures"
          }
        } ]
      }, {
        "_id" : "d3896022-4b2c-4fff-818c-6cfd3ac89695", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 1715754000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "8c9cdfde-cb21-424c-b111-d6df4c1cf351", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 1687890000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:BuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructures"
          }
        } ]
      }, {
        "_id" : "9d8b48c1-3ec2-4d03-9362-88de48880319", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 1687890000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "57129e38-9b9a-4eb8-8333-bb5a397416c1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 1636557000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:BuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructures"
          }
        } ]
      }, {
        "_id" : "23c42a96-0d5a-48f5-a123-acb13a141713", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 1636557000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "26c0807e-7c96-45ec-91b2-5975dce98a1f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 1559635000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:BuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructures"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:BuildingsAndStructures"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:BuildingsAndStructures", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "_id" : "56e23026-18a5-4501-a22b-cf0f72605970", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -5162440000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "8c60a959-b839-43d1-b95d-a6ff8d783de3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -4565469000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles"
          }
        } ]
      }, {
        "_id" : "be254c59-713a-47b6-a976-bb496e5a2226", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -4565469000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "acc2a129-8ebb-4746-966d-5abbea0a8046", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -4456424000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles"
          }
        } ]
      }, {
        "_id" : "2225be5a-5b6a-4e44-beff-7daf02b32cd5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -4456424000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "e14f3495-82be-46e3-a1d3-d86a7a7c9cb3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -4291315000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles"
          }
        } ]
      }, {
        "_id" : "81b5fc35-a96c-4367-8439-b35870ed5009", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -4291315000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "17792b96-3fc1-4134-a115-d3aa9dd7691d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -4039141000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationMachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "_id" : "b910a037-d7a7-4135-befc-3042c3343ed4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 1127239000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "4b80fe6c-5039-4618-9d71-f701ac518d18", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 808559000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet"
          }
        } ]
      }, {
        "_id" : "f8c3da2f-4e10-4d36-9267-749f29f674a6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 808559000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "7d51bf38-3377-4e24-8a37-0befd9177806", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 880409000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet"
          }
        } ]
      }, {
        "_id" : "6fd8cc6e-ef21-4c68-a7a4-0d4827c79524", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 880409000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "65b3d711-19e8-4ecf-a8a0-bd5285b4a2f7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 930307000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet"
          }
        } ]
      }, {
        "_id" : "4085c4db-0886-4a1c-a05a-040713d43b3a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 930307000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "be32ac5b-3287-4ac5-a622-3a42727db61b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 928901000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehiclesNet", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "_id" : "431a5e1b-e5ea-433a-b91b-03ff9def274d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 6289680000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "c77ce7f1-e14b-43b6-9ec0-5e038dedba92", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 5374029000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehicles"
          }
        } ]
      }, {
        "_id" : "af6873f9-e696-4ff5-a0ae-3bfbb5763d2b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 5374029000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "bf89e17a-e7d9-4d68-9a1e-1c03df106147", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 5336834000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehicles"
          }
        } ]
      }, {
        "_id" : "ff13dcbd-22f5-4472-a948-7bcfe31bc9ea", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 5336834000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "a3d3fbe4-7238-45a1-8ca5-3acb7ab2f817", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 5221623000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehicles"
          }
        } ]
      }, {
        "_id" : "45b35105-7f7e-463c-a23a-a1bd6af1c74a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 5221623000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "3609a8f6-45bc-4416-b236-91855b329fe0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 4968042000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehicles"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MachineryEquipmentAndVehicles"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:MachineryEquipmentAndVehicles", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ null, null, null, null, null, null ], [ [ {
        "_id" : "98b7ac35-b04e-4d23-8054-263ee1d7f2e7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -11059000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "0d69d202-ff21-4394-af47-6e3c4e41f5df", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : -1943000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "39b03375-6e8b-4731-affc-4b4bdfc5806b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -10529000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        } ]
      }, {
        "_id" : "2f6dd98e-2caa-41e1-928f-35d87011d0d6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -1767000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        } ]
      }, {
        "_id" : "5e5a3593-a853-41df-88d4-6683a023e53d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -10529000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "f39b8690-951b-4310-95fa-3ca3510e69d5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -1767000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "0150d9db-18c6-451d-99ea-e4310bbeb237", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -10104000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        } ]
      }, {
        "_id" : "3f6c1087-a826-4934-b118-801b0c48150d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -2654000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        } ]
      }, {
        "_id" : "4813f8b6-2889-4e6a-a6ad-edc62acb82dc", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -10104000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "d5ace6e4-4c48-44ce-822b-61e3b587d178", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -2654000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "e3131195-715f-437e-b234-21808f70519b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -9831000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        } ]
      }, {
        "_id" : "6920abe5-82af-417f-9bbc-1d44a507bb9a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -3020000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        } ]
      }, {
        "_id" : "d35b22fc-12a0-4e03-b1d3-d7c416afeb21", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -9831000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "cf55a4a1-9d1a-4a8f-bdad-3ebd849268b7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
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
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:AccumulatedDepreciationLeaseAssetsPPE", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ null, null, null, null, null, null ], [ {
        "_id" : "fb066a99-3073-4693-9ef4-f1d852c57cdb", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 7370000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "342b86f4-4ee3-4d30-ac4f-aa0891649608", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 23932000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA"
          }
        } ]
      }, {
        "_id" : "ca59a524-28b8-4b8b-835b-a88b2acdbec5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 23932000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "07198134-7f67-442e-827e-f2794e13f776", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 21137000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA"
          }
        } ]
      }, {
        "_id" : "5b4e7d3a-b8cf-4d23-8978-a8bb0af5f031", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 21137000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "3e2683af-d8f7-49f1-b988-881b873526dd", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 14257000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA"
          }
        } ]
      }, {
        "_id" : "5bd85956-0fc4-4662-8db0-730b260112b3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 14257000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "ac2689d5-6cdd-45d0-b318-13c2e83f6694", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 17979000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:PatentsAndUtilityRightsIA", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ [ {
        "_id" : "212520b9-1d06-4de1-8625-d70b39eb41c2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:Goodwill", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 48065000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "4cb00b19-9b9f-420a-8865-e352cf86155f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:Goodwill", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 49248000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "a84743bc-22bc-44c1-a393-d5dcb0c1ddf2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:Goodwill", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 15713000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        } ]
      }, {
        "_id" : "1bb415ae-201e-43be-8423-00af33312183", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:Goodwill", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
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
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        } ]
      }, {
        "_id" : "7e3ed050-7727-4f71-8a90-d80b617a8d86", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:Goodwill", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 15713000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "14cf6819-8de1-4adb-825d-837abfb98465", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:Goodwill", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 20779000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        } ]
      }, {
        "_id" : "f6af894c-8a21-4e39-836e-3f33a4db1161", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:Goodwill", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 20779000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "37e6a214-e831-4fc2-ac37-04599b63defa", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:Goodwill", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 25161000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        } ]
      }, {
        "_id" : "3a4bc753-1bf0-4df8-83b5-2e0e4796e96f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:Goodwill", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 25161000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "a11598d3-3d82-4feb-a4b2-341d5352bae1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:Goodwill", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 3543000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "DEBIT", 
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
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:Goodwill"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:Goodwill", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ null, null, null, null, null, null ], [ null, null, null, null, null, null ], [ {
        "_id" : "51af641a-5201-4509-aa46-ccdf90b07206", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsPayableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 596230000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "5ee78435-ec45-43cf-8a20-e76a37c1a5f2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsPayableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 471663000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:NotesAndAccountsPayableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsPayableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsPayableTrade"
          }
        } ]
      }, {
        "_id" : "ac861f82-8787-40ef-9a92-bdac933a4746", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsPayableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 471663000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "155d3ed0-5026-47ba-a913-6640ec748120", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsPayableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 476592000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:NotesAndAccountsPayableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsPayableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsPayableTrade"
          }
        } ]
      }, {
        "_id" : "298c128a-dc22-4a2a-8f77-07f3093835e4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsPayableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 476592000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "8f5ed476-21f1-463b-8763-d9a095c409b7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsPayableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 449877000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:NotesAndAccountsPayableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsPayableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsPayableTrade"
          }
        } ]
      }, {
        "_id" : "62a656d6-cb74-4d47-81c2-8c1d37fb139a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsPayableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 449877000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "0e887018-d1e9-4c35-af42-4acdb0906944", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsPayableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 619974000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:NotesAndAccountsPayableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsPayableTrade"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:NotesAndAccountsPayableTrade"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:NotesAndAccountsPayableTrade", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "_id" : "08dc6c0c-973e-4687-8610-98ddf7ba38af", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 34151000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "2cbb766f-8796-48fd-8f0d-1f3121b312ae", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 20564000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        } ]
      }, {
        "_id" : "c4c1b3a2-0c5d-4d9e-913e-c3c55af6361c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 235224000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "773171e3-8f67-4c65-8059-0dc59711a1ea", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 232866000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "146e56dc-65db-4dde-af13-a741c3c595c0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 237247000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        } ]
      }, {
        "_id" : "0eb0f4ac-ecfe-46f2-94f5-15d7cea10e9d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 244603000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        } ]
      }, {
        "_id" : "b77281cf-d578-4d1d-b1ab-cc6ab28c4963", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 237247000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "4cf3b846-2b0c-4eff-95d3-22a7b9c0a1f1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 244603000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "12336745-83d6-4b8f-b314-1a4df390bde2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 239583000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        } ]
      }, {
        "_id" : "a1d8c219-6e18-47b2-b67b-07e40960e28e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 220840000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        } ]
      }, {
        "_id" : "28340c99-f5ec-4b27-a78e-b3838fe3c44d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 239583000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "5cb28cb9-c4c7-4ad3-9e38-f6b9c56fcde2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 220840000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "ec601b11-321a-4fc0-aca2-cb0ea4218bdc", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 226872000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        } ]
      }, {
        "_id" : "d5b46f40-3af1-4aac-9b6b-95f7be780f2b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 214843000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccruedExpenses"
          }
        } ]
      } ], {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:AccruedExpenses", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ [ {
        "_id" : "d031138c-9adb-425e-83e6-0c3478d6a3c9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:AccountsPayableOther", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 405777000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "140f8467-b2d5-4b90-a86d-3757854c9c1f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:AccountsPayableOther", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 510125000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "51d04a2c-9ef8-46d0-888b-e588b3e8fa05", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:AccountsPayableOther", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 321103000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        } ]
      }, {
        "_id" : "9c679f5f-e7f0-49d5-846c-727804d49a75", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:AccountsPayableOther", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 317073000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        } ]
      }, {
        "_id" : "c2a7bdb1-c2ee-480d-8775-2008416fe22b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:AccountsPayableOther", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 104771000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "76066f62-40ba-4454-b377-1736f46bee9d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:AccountsPayableOther", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 93144000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        } ]
      }, {
        "_id" : "6a85eb04-7116-4027-857f-a9d5c5df1024", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:AccountsPayableOther", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 93144000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "0dca0bd3-6e5b-464f-99f2-f4c8764eeb64", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:AccountsPayableOther", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 121968000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        } ]
      }, {
        "_id" : "fa1cae50-7548-4aa7-99b3-604bc77020f0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:AccountsPayableOther", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 121968000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "a4d14ed9-447a-407d-99bb-afb1e257d2f4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:AccountsPayableOther", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 112087000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:AccountsPayableOther"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:AccountsPayableOther", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "_id" : "c5dc1107-2892-44be-b7f7-8e7b6f1eff5b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForLossOnConstructionContracts", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 2991000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "752eede6-0e50-4d1e-86ca-66731685c40a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForLossOnConstructionContracts", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 3522000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ProvisionForLossOnConstructionContracts"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForLossOnConstructionContracts"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForLossOnConstructionContracts"
          }
        } ]
      }, {
        "_id" : "77dd22ad-2336-45d3-a933-dd847680cb54", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForLossOnConstructionContracts", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 3522000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "39dac64a-639b-4ea3-b1ef-3bd9549c3cc7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForLossOnConstructionContracts", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 4504000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ProvisionForLossOnConstructionContracts"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForLossOnConstructionContracts"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForLossOnConstructionContracts"
          }
        } ]
      }, {
        "_id" : "e4b2678e-edb5-48ce-acd6-54d046f2b44e", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForLossOnConstructionContracts", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 4504000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "e87293d7-d540-4c8d-9a83-c67b5d29712c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForLossOnConstructionContracts", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 3522000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ProvisionForLossOnConstructionContracts"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForLossOnConstructionContracts"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForLossOnConstructionContracts"
          }
        } ]
      }, {
        "_id" : "32fa1ba4-4aca-42fc-9f73-1205ab0d6347", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForLossOnConstructionContracts", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 3522000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "066ca6f7-8558-4190-b05f-6b71c2f2e2e9", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForLossOnConstructionContracts", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 3384000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ProvisionForLossOnConstructionContracts"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForLossOnConstructionContracts"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForLossOnConstructionContracts"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForLossOnConstructionContracts", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "Aspects" : {
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:ReserveForLossOnDisasterNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "Aspects" : {
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:ReserveForLossOnDisasterNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "_id" : "fdbd2699-b10f-477b-9578-a47a613e17e0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:ReserveForLossOnDisasterNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 19131000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "b2ad4e23-f052-49f3-8ebe-cabb1b811182", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:ReserveForLossOnDisasterNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
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
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jpfr-asr-e01225-000:ReserveForLossOnDisasterNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:ReserveForLossOnDisasterNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:ReserveForLossOnDisasterNCL"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:ReserveForLossOnDisasterNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:ReserveForLossOnDisasterNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ null, null, null, null, null, null ], [ {
        "_id" : "245b44c9-5cb6-4741-9d4d-c8ab13f0fa66", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 29745000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "892039fa-2a46-47da-91a3-724c2b9de355", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 23113000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        } ]
      }, {
        "_id" : "6479a554-081e-41d8-9173-21215b456e35", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 23113000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "b4c18cf6-fce5-49db-8a7c-d0a1843b196d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : null, 
        "Decimals" : 0, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "56d7c4d7-a581-4e90-a3b3-db7a4d5fa352", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 36719000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        } ]
      }, {
        "_id" : "5a45eb1d-fbcd-40c9-9541-049bfe722334", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 18900000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        } ]
      }, {
        "_id" : "c75135a4-5a98-4fef-8788-d894657ff487", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 36719000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "0eb9fa81-8a66-44a2-b9ee-9c1b09e0ed3b", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 18900000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "0ecb25e6-a64a-4ad6-ad0a-9083143b1f06", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 74861000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        } ]
      }, {
        "_id" : "5632b44c-1bbb-49b2-82aa-b1a7102ea137", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 80100000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        } ]
      }, {
        "_id" : "09a5847b-46ad-49b8-b043-32fc99d700aa", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 74861000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "89c1be46-21ae-40fd-8efa-bc8064ec5e77", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 80100000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "037ca362-0e84-4291-8ee8-1d8d92da4aba", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 150920000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        } ]
      }, {
        "_id" : "6487e45c-bd3e-46c0-928c-e2c6637f0d06", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 142900000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:DeferredTaxLiabilitiesNCL"
          }
        } ]
      } ], {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:DeferredTaxLiabilitiesNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "Aspects" : {
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "_id" : "141d16ec-3378-42c9-b8c9-e1c1f5ae6db7", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 10826000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "cbc1d34d-3f38-41b6-8c4d-cab7d78b3500", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 12471000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL"
          }
        } ]
      }, {
        "_id" : "c15d620c-60e2-4119-af8e-41879022f3b4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 12471000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "ada8a3b0-a09d-4170-a386-f1f5445714e8", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 9043000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL"
          }
        } ]
      }, {
        "_id" : "b3ba632a-e052-4298-b337-8476db7d96a0", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 9043000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "96f5b4fc-018c-450f-a911-313b620f9e93", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 9179000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:DeferredTaxLiabilitiesOnRevaluationOnLandNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "_id" : "da23cbb4-af86-4ba9-a6b2-fe46a83847e3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:DefferedTaxLiabilitiesOnRevaluationOnLandNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 8567000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, {
        "_id" : "0457e43d-f8dd-47aa-8216-b2f4d8d06b86", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:DefferedTaxLiabilitiesOnRevaluationOnLandNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 10826000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jpfr-asr-e01225-000:DefferedTaxLiabilitiesOnRevaluationOnLandNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:DefferedTaxLiabilitiesOnRevaluationOnLandNCL"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jpfr-asr-e01225-000:DefferedTaxLiabilitiesOnRevaluationOnLandNCL"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:DefferedTaxLiabilitiesOnRevaluationOnLandNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "Aspects" : {
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:DefferedTaxLiabilitiesOnRevaluationOnLandNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "Aspects" : {
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:DefferedTaxLiabilitiesOnRevaluationOnLandNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jpfr-asr-e01225-000:DefferedTaxLiabilitiesOnRevaluationOnLandNCL", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ {
        "_id" : "63624b7d-dc6d-46f8-ad98-c7d81e0e1e82", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 5403000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "c167273a-a990-4e61-86bb-5672f958ba32", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 4931000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits"
          }
        } ]
      }, {
        "_id" : "a04bf7ed-67c5-4eb6-90fb-4ac5a7c3b6a5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 4931000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "43361280-2dcc-482b-b9bb-771bc9cb7b7a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 4705000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits"
          }
        } ]
      }, {
        "_id" : "e4aa38f6-cff0-4d97-af33-258a30b6acc6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 4705000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "4d45ca48-1b69-48e9-a393-8f858d7efab4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 4603000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits"
          }
        } ]
      }, {
        "_id" : "24d2a099-fd28-4932-b418-b2a46c465400", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 4603000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], {
        "_id" : "11766df3-82d4-4b6f-a3ea-b55dfea56636", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 4191000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits"
          }
        } ]
      }, {
        "Aspects" : {
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Concept" : "jp-t-cte:ProvisionForDirectorsRetirementBenefits", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "iso4217:JPY"
        }
      } ], [ null, null, null, null, null, null ], [ null, null, null, null, null, null ], [ {
        "_id" : "a40fb79b-aaf4-462c-91c5-3cfc197a6541", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:RevaluationReserveForLand", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 2592000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "3b0f5537-a027-4133-bb97-c9c32fe7f747", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:RevaluationReserveForLand", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 12770000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        } ]
      }, {
        "_id" : "d28b3c58-6c5e-4779-890f-c292cc1da552", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:RevaluationReserveForLand", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 12770000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "ef02d644-dd24-4fcd-b922-ae130630ecb2", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:RevaluationReserveForLand", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 11523000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        } ]
      }, {
        "_id" : "d7f14f01-3980-4794-b2af-8f8e097edbb1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:RevaluationReserveForLand", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 11523000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        } ]
      }, {
        "_id" : "33f3744d-72c0-4ee7-9e5a-543b799100be", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:RevaluationReserveForLand", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 11523000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "8edb950a-f82d-4a00-a96a-565429bdf443", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:RevaluationReserveForLand", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 10759000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        } ]
      }, {
        "_id" : "e55e97be-024f-4a54-9bc4-a8db51202747", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:RevaluationReserveForLand", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 10759000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        } ]
      }, {
        "_id" : "b0556d22-b722-47bc-817a-15a7074e5a7f", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:RevaluationReserveForLand", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 10759000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "eae15d51-2abe-4f9f-baf5-87efe36c047d", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:RevaluationReserveForLand", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 11247000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        } ]
      }, {
        "_id" : "c0ccc8db-e029-4584-9bc4-dc2396c31f0c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:RevaluationReserveForLand", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 11247000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        } ]
      } ], {
        "_id" : "ab3a383a-2b55-4d03-ab3c-8bc449eb86af", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:RevaluationReserveForLand", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 9922000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:RevaluationReserveForLand"
          }
        } ]
      } ], [ {
        "_id" : "e0d487ee-6adc-496c-a922-63092f125b06", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 80273000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "58862c82-71c7-4857-9632-14ca6136b15c", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -77327000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        } ]
      }, {
        "_id" : "db463a5c-f5cb-48ab-91b0-ddfc84eeaa05", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : -77327000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "1d62bb8b-dc70-4cff-bf20-a62d62529ffe", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -46748000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        } ]
      }, {
        "_id" : "96090570-5d8f-4114-aa1c-599bbaf7e885", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -46748000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        } ]
      }, {
        "_id" : "34490882-004a-4c15-b0bd-e1577185c1e4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -46748000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "baa57d6c-beca-497e-91cc-0fa78f8f95f4", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -36010000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        } ]
      }, {
        "_id" : "ac41fba7-67a1-4113-bbf4-d42aa17ad9e6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -36010000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        } ]
      }, {
        "_id" : "1fb339ac-e05e-4952-8207-eff0790f4994", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : -36010000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "0cf21608-83aa-4ce3-9244-b1367f822231", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 13923000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        } ]
      }, {
        "_id" : "6f97d3ff-4446-414e-a035-513ece7c8384", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 13923000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        } ]
      } ], {
        "_id" : "7f3f8355-bbc3-4a63-9b84-275c687074ff", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : -3958000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:ForeignCurrencyTranslationAdjustment"
          }
        } ]
      } ], [ {
        "_id" : "b60f52dc-b09b-4b64-bccb-9b5762ce73ae", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:MinorityInterests", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2013-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2012, 
          "fsa:Submitted" : "2013-06-25"
        }, 
        "Type" : "NumericValue", 
        "Value" : 544213000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      }, [ {
        "_id" : "dc674c2d-175f-482f-9421-cd2a0276c9c5", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:MinorityInterests", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 518440000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        } ]
      }, {
        "_id" : "d86b3175-4f2d-4cd6-97d5-0d0687e93cde", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:MinorityInterests", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2012-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2011, 
          "fsa:Submitted" : "2012-06-26"
        }, 
        "Type" : "NumericValue", 
        "Value" : 518440000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "d29b07f1-257b-4eb8-b8e1-f89fd18eae9a", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000DR20", 
          "xbrl:Concept" : "jp-t-cte:MinorityInterests", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2013-06-25", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 520126000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        } ]
      }, {
        "_id" : "feebd584-329c-4f07-8933-c8fae764b5cf", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:MinorityInterests", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 520126000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        } ]
      }, {
        "_id" : "3130ec1c-fa6d-47b5-8468-96026d6f6ab1", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:MinorityInterests", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2011-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2010, 
          "fsa:Submitted" : "2011-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 520126000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "0b5a5553-26cf-48df-9605-0908037c6124", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000B7F8", 
          "xbrl:Concept" : "jp-t-cte:MinorityInterests", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2012-06-26", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 491294000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        } ]
      }, {
        "_id" : "04d34e8c-15f8-4d97-aae8-76e6da640167", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0008MK4", 
          "xbrl:Concept" : "jp-t-cte:MinorityInterests", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2011-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 491294000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        } ]
      }, {
        "_id" : "6712b837-618d-4282-8d7b-711d944a8ca3", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:MinorityInterests", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2010-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:FiscalPeriod" : "FY", 
          "fsa:FiscalPeriodType" : "instant", 
          "fsa:FiscalYear" : 2009, 
          "fsa:Submitted" : "2010-06-24"
        }, 
        "Type" : "NumericValue", 
        "Value" : 491294000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
          "PeriodType" : "instant", 
          "DataType" : "xbrli:monetaryItemType"
        }, 
        "AuditTrails" : [  ]
      } ], [ {
        "_id" : "34d5f56f-178d-440c-a35d-8d92cf9a88fb", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S000623B", 
          "xbrl:Concept" : "jp-t-cte:MinorityInterests", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2010-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 505176000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        } ]
      }, {
        "_id" : "0415b87e-84f9-4fde-8194-49af4723b8fa", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:MinorityInterests", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2008-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 505176000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        } ]
      } ], {
        "_id" : "389bb455-b291-47bc-a8e0-eaf5cfddfa52", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "xbrl:Unit", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S0003FNS", 
          "xbrl:Concept" : "jp-t-cte:MinorityInterests", 
          "xbrl:Entity" : "http://info.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2007-03-31", 
          "xbrl:Unit" : "iso4217:JPY", 
          "fsa:Submitted" : "2009-06-24", 
          "fsa:FiscalYear" : null, 
          "fsa:FiscalPeriod" : null, 
          "fsa:FiscalPeriodType" : null
        }, 
        "Type" : "NumericValue", 
        "Value" : 476344000000, 
        "Decimals" : -6, 
        "Concept" : {
          "Balance" : "CREDIT", 
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
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriod.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriod", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "fsa:FiscalPeriodType.Default = \"null\"", 
          "Data" : {
            "Dimension" : "fsa:FiscalPeriodType", 
            "Member" : null, 
            "OutputConcept" : "jp-t-cte:MinorityInterests"
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