{
  "ModelKind" : "LayoutModel", 
  "ComponentAndHypercubeInformation" : {
    "Component" : {
      "Role" : "http://disclosure.edinet-fsa.go.jp/role/jpcrp/rol_NotesQuarterlyConsolidatedStatementOfCashFlows", 
      "Label" : "四半期連結キャッシュ・フロー計算書関係"
    }, 
    "Hypercube" : {
      "Name" : "xbrl:UserDefinedHypercube", 
      "Label" : "User-defined Hypercube"
    }
  }, 
  "TableSetLabels" : [ "四半期連結キャッシュ・フロー計算書関係" ], 
  "TableSet" : [ {
    "TableHeaders" : {
      "x" : [ {
        "GroupLabels" : [ "Period breakdown" ], 
        "GroupCells" : [ [ {
          "CellLabels" : [ "Period [Axis]" ], 
          "CellConstraints" : {

          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 1, 
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
        } ] ]
      } ], 
      "y" : [ {
        "GroupLabels" : [ "Breakdown on concepts" ], 
        "GroupCells" : [ [ {
          "CellLabels" : [ "四半期連結キャッシュ・フロー計算書関係", "jpcrp-cor:NotesQuarterlyConsolidatedStatementOfCashFlowsHeading" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jpcrp-cor:NotesQuarterlyConsolidatedStatementOfCashFlowsHeading"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 5, 
          "RollUp" : false, 
          "IsRollUp" : false, 
          "IsNegated" : false
        } ], [ {
          "CellLabels" : [ "四半期連結キャッシュ・フロー計算書関係", "jpcrp-cor:NotesQuarterlyConsolidatedStatementOfCashFlowsTable" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jpcrp-cor:NotesQuarterlyConsolidatedStatementOfCashFlowsTable"
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
          "CellLabels" : [ "四半期連結キャッシュ・フロー計算書関係", "jpcrp-cor:NotesQuarterlyConsolidatedStatementOfCashFlowsLineItems" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jpcrp-cor:NotesQuarterlyConsolidatedStatementOfCashFlowsLineItems"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1, 
          "IsAbstract" : true
        }, {
          "CellLabels" : [ "四半期キャッシュ・フロー計算書を作成しない場合の注記", "jpcrp-cor:DescriptionOfFactThatQuarterlyStatementOfCashFlowsHasNotBeenPreparedTextBlock" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jpcrp-cor:DescriptionOfFactThatQuarterlyStatementOfCashFlowsHasNotBeenPreparedTextBlock"
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
      "Facts" : [ [ null ], [ null ], [ {
        "Aspects" : {
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Concept" : [ "jppfs-cor:ConsolidatedMember", "jpcrp-cor:DescriptionOfFactThatQuarterlyStatementOfCashFlowsHasNotBeenPreparedTextBlock" ], 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Unit" : "xbrl28:NoUnit", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "xbrl28:Archive" : "S1002Q54", 
          "fsa:Submitted" : "2014-08-07", 
          "fsa:FiscalYear" : 2014, 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD"
        }
      } ], [ null ], [ {
        "_id" : "96d9a535-a46b-4c86-a096-8c05260ff3a6", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002Q54", 
          "xbrl:Concept" : "jpcrp-cor:DescriptionOfFactThatQuarterlyStatementOfCashFlowsHasNotBeenPreparedTextBlock", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-07", 
          "xbrl:Unit" : "xbrl28:NoUnit", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NonNumericValue", 
        "Value" : "<p class=\"smt_text3\" style=\"padding-left:36pt;\">当第１四半期連結累計期間に係る四半期連結キャッシュ・フロー計算書は作成していない。なお、第１四半期連結累計期間に係る減価償却費（のれんを除く無形固定資産に係る償却費を含む。）は次のとおりである。</p><div class=\"tbld\" style=\"margin-left:0pt;margin-right:0pt;margin-top:0pt;margin-bottom:0pt;\"><table cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse;border:solid 0pt #000000;width:465pt;\"><colgroup><col style=\"width:465pt;min-width:465pt;\"/></colgroup><tr style=\"height:13.5pt\"><td valign=\"middle\" style=\"vertical-align:middle;border-top-color:#a9a9a9;border-bottom-color:#a9a9a9;border-left-color:#a9a9a9;border-right-color:#a9a9a9;\"><p class=\"smt_tblL\" style=\"text-align:right;padding-right:9pt;\">(単位：百万円)</p></td></tr></table><p style=\"clear:both; line-height:0.75pt; width:100%; font-size:0.75pt;\"> </p></div><div class=\"tbld\" style=\"text-align:center;\"><table cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse;border:solid 0pt #000000;width:428.3pt;\" class=\"align_center\"><colgroup><col style=\"width:134.3pt;min-width:134.3pt;\"/><col style=\"width:144pt;min-width:144pt;\"/><col style=\"width:150pt;min-width:150pt;\"/></colgroup><tr style=\"height:34pt\"><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;border-bottom-style:solid;border-bottom-width:0.75pt;\"><p class=\"smt_tblL\"> </p></td><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;border-bottom-style:solid;border-bottom-width:0.75pt;\"><p class=\"smt_tblC\">前第１四半期連結累計期間</p><p class=\"smt_tblC\" style=\"padding-right:4.6pt;\">(自  平成25年４月１日</p><p class=\"smt_tblC\" style=\"padding-left:4.6pt;\">至  平成25年６月30日)</p></td><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;border-bottom-style:solid;border-bottom-width:0.75pt;\"><p class=\"smt_tblC\">当第１四半期連結累計期間</p><p class=\"smt_tblC\" style=\"padding-right:4.6pt;\">(自  平成26年４月１日</p><p class=\"smt_tblC\" style=\"padding-left:4.6pt;\">至  平成26年６月30日)</p></td></tr><tr style=\"height:30pt\"><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;\"><p class=\"smt_tblC\" style=\"padding-left:0pt;padding-right:0pt;margin-top:0pt;letter-spacing:0pt;line-height:10pt;\">減価償却費</p></td><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;border-bottom-color:#a9a9a9;border-left-color:#a9a9a9;border-right-color:#a9a9a9;\"><p class=\"smt_tblR\" style=\"padding-right:30pt;\">78,953</p></td><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;\"><p class=\"smt_tblR\" style=\"padding-right:30pt;\">76,242</p></td></tr></table><p style=\"clear:both; line-height:0.75pt; width:100%; font-size:0.75pt;\"> </p></div><p class=\"smt_text6\"> </p><h6 class=\"smt_head5\"> </h6><h6 class=\"smt_head5\"> </h6>", 
        "Concept" : {
          "PeriodType" : "duration", 
          "DataType" : "nonnum:textBlockItemType"
        }, 
        "AuditTrails" : [ {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "xbrl:Unit.Default = \"xbrl28:NoUnit\"", 
          "Data" : {
            "Dimension" : "xbrl:Unit", 
            "Member" : "xbrl28:NoUnit", 
            "OutputConcept" : "jpcrp-cor:DescriptionOfFactThatQuarterlyStatementOfCashFlowsHasNotBeenPreparedTextBlock"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jpcrp-cor:DescriptionOfFactThatQuarterlyStatementOfCashFlowsHasNotBeenPreparedTextBlock"
          }
        } ]
      } ] ]
    }
  } ], 
  "GlobalConstraints" : [ {
    "xbrl:Concept" : "jpcrp-cor:DescriptionOfFactThatQuarterlyStatementOfCashFlowsHasNotBeenPreparedTextBlock"
  }, {
    "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000"
  }, {
    "xbrl:Unit" : "xbrl28:NoUnit"
  }, {
    "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
  }, {
    "xbrl28:Archive" : "S1002Q54"
  }, {
    "fsa:Submitted" : "2014-08-07"
  }, {
    "fsa:FiscalYear" : 2014
  }, {
    "fsa:FiscalPeriod" : "Q1"
  }, {
    "fsa:FiscalPeriodType" : "YTD"
  } ], 
  "GlobalConstraintLabels" : {
    "xbrl:Concept" : "Concept [Axis]", 
    "jpcrp-cor:DescriptionOfFactThatQuarterlyStatementOfCashFlowsHasNotBeenPreparedTextBlock" : "四半期キャッシュ・フロー計算書を作成しない場合の注記", 
    "xbrl:Entity" : "Reporting Entity [Axis]", 
    "xbrl:Unit" : "Unit [Axis]", 
    "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "連結個別", 
    "jppfs-cor:ConsolidatedMember" : "連結", 
    "xbrl28:Archive" : "Archive [Axis]", 
    "fsa:Submitted" : "FSA Submission Date [Axis]", 
    "fsa:FiscalYear" : "Fiscal Year [Axis]", 
    "fsa:FiscalPeriod" : "Fiscal Period [Axis]", 
    "fsa:FiscalPeriodType" : "Fiscal Period Type [Axis]"
  }
}
