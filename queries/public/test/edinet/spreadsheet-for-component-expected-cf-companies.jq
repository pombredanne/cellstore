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
          "CellSpan" : 4, 
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
          "CellSpan" : 4, 
          "RollUp" : false
        } ] ]
      }, {
        "GroupLabels" : [ "Entity breakdown" ], 
        "GroupCells" : [ [ {
          "CellLabels" : [ "Entity [Axis]" ], 
          "CellConstraints" : {

          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 4, 
          "RollUp" : false, 
          "IsRollUp" : false, 
          "IsNegated" : false
        } ], [ {
          "CellLabels" : [ "http://disclosure.edinet-fsa.go.jp E01225-000" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 1, 
          "RollUp" : false
        }, {
          "CellLabels" : [ "http://disclosure.edinet-fsa.go.jp E01264-000" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01264-000"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 1, 
          "RollUp" : false
        }, {
          "CellLabels" : [ "http://disclosure.edinet-fsa.go.jp E04147-000" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E04147-000"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 1, 
          "RollUp" : false
        }, {
          "CellLabels" : [ "http://disclosure.edinet-fsa.go.jp E04425-000" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E04425-000"
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
          "CellLabels" : [ "四半期連結キャッシュ・フロー計算書関係", "jpcrp-cor:NotesQuarterlyConsolidatedStatementOfCashFlowsLineItems" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jpcrp-cor:NotesQuarterlyConsolidatedStatementOfCashFlowsLineItems"
            }
          }, 
          "TagSelectors" : [  ], 
          "CellSpan" : 2, 
          "RollUp" : false, 
          "IsRollUp" : false, 
          "IsNegated" : false
        } ], [ {
          "CellLabels" : [ "四半期キャッシュ・フロー計算書を作成しない場合の注記", "jpcrp-cor:DescriptionOfFactThatQuarterlyStatementOfCashFlowsHasNotBeenPreparedTextBlock" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jpcrp-cor:DescriptionOfFactThatQuarterlyStatementOfCashFlowsHasNotBeenPreparedTextBlock"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1
        }, {
          "CellLabels" : [ "現金及び現金同等物の期末残高と貸借対照表に掲記されている科目の金額との関係", "jpcrp-cor:ReconciliationOfEndingBalanceOfCashAndCashEquivalentsWithAccountBalancesPerBalanceSheetTextBlock" ], 
          "CellConstraints" : {
            "" : {
              "xbrl:Concept" : "jpcrp-cor:ReconciliationOfEndingBalanceOfCashAndCashEquivalentsWithAccountBalancesPerBalanceSheetTextBlock"
            }
          }, 
          "TagSelectors" : [  ], 
          "IsRollUp" : false, 
          "IsNegated" : false, 
          "Depth" : 1
        } ] ]
      } ]
    }, 
    "TableCells" : {
      "AxisOrder" : [ "y", "x" ], 
      "Facts" : [ [ {
        "_id" : "5620fc2b-21b6-4a28-a127-a61e10780a12", 
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
        "Value" : "<p class=\"smt_text3\" style=\"padding-left:36pt;\">当第１四半期連結累計期間に係る四半期連結キャッシュ・フロー計算書は作成していない。なお、第１四半期連結累計期間に係る減価償却費（のれんを除く無形固定資産に係る償却費を含む。）は次のとおりである。</p><div class=\"tbld\" style=\"margin-left:0pt;margin-right:0pt;margin-top:0pt;margin-bottom:0pt;\"><table cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse;border:solid 0pt #000000;width:465pt;\"><colgroup><col style=\"width:465pt;min-width:465pt;\"/></colgroup><tr style=\"height:13.5pt\"><td valign=\"middle\" style=\"vertical-align:middle;border-top-color:#a9a9a9;border-bottom-color:#a9a9a9;border-left-color:#a9a9a9;border-right-color:#a9a9a9;\"><p class=\"smt_tblL\" style=\"text-align:right;padding-right:9pt;\">(単位：百万円)</p></td></tr></table><p style=\"clear:both; line-height:0.75pt; width:100%; font-size:0.75pt;\"> </p></div><div class=\"tbld\" style=\"text-align:center;\"><table cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse;border:solid 0pt #000000;width:428.3pt;\" class=\"align_center\"><colgroup><col style=\"width:134.3pt;min-width:134.3pt;\"/><col style=\"width:144pt;min-width:144pt;\"/><col style=\"width:150pt;min-width:150pt;\"/></colgroup><tr style=\"height:34pt\"><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;border-bottom-style:solid;border-bottom-width:0.75pt;\"><p class=\"smt_tblL\"> </p></td><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;border-bottom-style:solid;border-bottom-width:0.75pt;\"><p class=\"smt_tblC\">前第１四半期連結累計期間</p><p class=\"smt_tblC\" style=\"padding-right:4.6pt;\">(自  平成25年４月１日</p><p class=\"smt_tblC\" style=\"padding-left:4.6pt;\">至  平成25年６月30日)</p></td><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;border-bottom-style:solid;border-bottom-width:0.75pt;\"><p class=\"smt_tblC\">当第１四半期連結累計期間</p><p class=\"smt_tblC\" style=\"padding-right:4.6pt;\">(自  平成26年４月１日</p><p class=\"smt_tblC\" style=\"padding-left:4.6pt;\">至  平成26年６月30日)</p></td></tr><tr style=\"height:30pt\"><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;\"><p class=\"smt_tblC\" style=\"padding-left:0pt;padding-right:0pt;margin-top:0pt;letter-spacing:0pt;line-height:10pt;\">減価償却費</p></td><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;border-bottom-color:#a9a9a9;border-left-color:#a9a9a9;border-right-color:#a9a9a9;\"><p class=\"smt_tblR\" style=\"padding-right:30pt;\">78,953</p></td><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;\"><p class=\"smt_tblR\" style=\"padding-right:30pt;\">76,242</p></td></tr></table><p style=\"clear:both; line-height:0.75pt; width:100%; font-size:0.75pt;\"> </p></div><p class=\"smt_text6\"> </p><h6 class=\"smt_head5\"> </h6><h6 class=\"smt_head5\"> </h6>", 
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
      }, {
        "_id" : "24d5421b-c76d-4ca8-96aa-eaf59a2fc836", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002MRZ", 
          "xbrl:Concept" : "jpcrp-cor:DescriptionOfFactThatQuarterlyStatementOfCashFlowsHasNotBeenPreparedTextBlock", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01264-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-04", 
          "xbrl:Unit" : "xbrl28:NoUnit", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NonNumericValue", 
        "Value" : "\n<p style=\"margin-left: 48px; text-align: left\">　当第１四半期連結累計期間に係る四半期連結キャッシュ・フロー計算書は作成しておりません。なお、第１四半期連結累計期間に係る減価償却費（のれんを除く無形固定資産に係る償却費を含む。）は、次のとおりであります。</p>\n<div style=\"margin-left: 48px\">\n<table style=\"table-layout: fixed; width: 598.669998168945px\" cellpadding=\"0\" cellspacing=\"0\">\n<colgroup>\n<col style=\"width: 226.669998168945px\"/>\n<col style=\"width: 186px\"/>\n<col style=\"width: 186px\"/>\n</colgroup>\n<thead>\n<tr>\n<td style=\"width: 225.669998168945px; border-left: 1px solid transparent; border-right: 1px solid transparent\"/>\n<td style=\"width: 185px; border-left: 1px solid transparent; border-right: 1px solid transparent\"/>\n<td style=\"border-left: 1px solid transparent; border-right: 1px solid transparent\"/>\n</tr>\n<tr style=\"min-height: 53.3300018310547px\">\n<td style=\"border-left: 1px solid #000000; border-top: 1px solid #000000; border-right: 1px solid #000000; border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"margin-left: 6px; line-height: 13.3299999237061px; text-align: center\"> </p>\n</td>\n<td style=\"border-left: 1px solid #000000; border-top: 1px solid #000000; border-right: 1px solid #000000; border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"line-height: 13.3299999237061px; text-align: center\">前第１四半期連結累計期間</p>\n<p style=\"line-height: 13.3299999237061px; margin-right: 12px; text-align: center\">（自  平成25年４月１日</p>\n<p style=\"margin-left: 12px; line-height: 13.3299999237061px; text-align: center\">至  平成25年６月30日）</p>\n</td>\n<td style=\"border-left: 1px solid #000000; border-top: 1px solid #000000; border-right: 1px solid #000000; border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"line-height: 13.3299999237061px; text-align: center\">当第１四半期連結累計期間</p>\n<p style=\"line-height: 13.3299999237061px; margin-right: 12px; text-align: center\">（自  平成26年４月１日</p>\n<p style=\"margin-left: 12px; line-height: 13.3299999237061px; text-align: center\">至  平成26年６月30日）</p>\n</td>\n</tr>\n</thead>\n<tbody>\n<tr style=\"min-height: 19px\">\n<td style=\"border-left: 1px solid #000000; border-top: 1px solid #000000; border-right: 1px solid #000000; border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"margin-left: 6px; margin-right: 3.32999992370605px; text-align: left\">減価償却費</p>\n</td>\n<td style=\"border-left: 1px solid #000000; border-top: 1px solid #000000; border-right: 1px solid #000000; border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"margin-left: 6px; margin-right: 6px; text-align: right\">43,180百万円</p>\n</td>\n<td style=\"border-left: 1px solid #000000; border-top: 1px solid #000000; border-right: 1px solid #000000; border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"margin-left: 6px; margin-right: 6px; text-align: right\">41,473百万円</p>\n</td>\n</tr>\n</tbody>\n</table>\n</div>\n", 
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
      }, {
        "_id" : "2717c301-52e4-4194-85da-f7ccf31c7cdc", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002NTM", 
          "xbrl:Concept" : "jpcrp-cor:DescriptionOfFactThatQuarterlyStatementOfCashFlowsHasNotBeenPreparedTextBlock", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E04147-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-06", 
          "xbrl:Unit" : "xbrl28:NoUnit", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NonNumericValue", 
        "Value" : "<p class=\"smt_text6\" style=\"text-align:justify;padding-left:27pt;padding-right:0pt;margin-top:0pt;margin-bottom:0pt;text-indent:9pt;font-family:&apos;ＭＳ 明朝&apos;;letter-spacing:0pt;line-height:15pt;\">当第１四半期連結累計期間に係る四半期連結キャッシュ・フロー計算書は作成しておりません。なお、第１四半期連結累計期間に係る減価償却費(のれんを除く無形固定資産に係る償却費を含む。)は、次のとおりであります。</p><div class=\"tbld\" style=\"text-align:left;margin-left:30.1pt;\"><table cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse;border:solid 0pt #000000;width:437.8pt;\" class=\"align_left\"><colgroup><col style=\"width:187.7pt;min-width:187.7pt;\"/><col style=\"width:125.1pt;min-width:125.1pt;\"/><col style=\"width:125.1pt;min-width:125.1pt;\"/></colgroup><tr style=\"height:22.7pt\"><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;border-bottom-style:solid;border-bottom-width:0.75pt;\"><p class=\"smt_tblC\"> </p></td><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;border-bottom-style:solid;border-bottom-width:0.75pt;\"><p class=\"smt_tblC\">前第１四半期連結累計期間</p><p class=\"smt_tblC\" style=\"padding-right:4.5pt;\">(自　平成25年４月１日</p><p class=\"smt_tblC\" style=\"padding-right:4.5pt;\">  至  平成25年６月30日)</p></td><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;border-bottom-style:solid;border-bottom-width:0.75pt;\"><p class=\"smt_tblC\">当第１四半期連結累計期間</p><p class=\"smt_tblC\" style=\"padding-right:4.5pt;\">(自　平成26年４月１日</p><p class=\"smt_tblC\" style=\"padding-right:4.5pt;\">  至  平成26年６月30日)</p></td></tr><tr style=\"height:17pt\"><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;\"><p class=\"smt_tblL\">減価償却費</p></td><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;\"><p class=\"smt_tblR\" style=\"padding-right:10pt;\">82,628百万円</p></td><td valign=\"middle\" style=\"vertical-align:middle;border-top-style:solid;border-top-width:0.75pt;\"><p class=\"smt_tblR\" style=\"padding-right:10pt;\">83,773百万円</p></td></tr></table><p style=\"clear:both; line-height:0.75pt; width:100%; font-size:0.75pt;\"> </p></div><p class=\"smt_anno1\">     (注) のれんの償却額については、金額の重要性が乏しいため、記載を省略しております。</p><p class=\"smt_text6\"> </p>", 
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
      }, {
        "Aspects" : {
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E04425-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Concept" : "jpcrp-cor:DescriptionOfFactThatQuarterlyStatementOfCashFlowsHasNotBeenPreparedTextBlock", 
          "xbrl:Unit" : "xbrl28:NoUnit", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : 2014, 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD"
        }
      } ], [ {
        "Aspects" : {
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01225-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Concept" : "jpcrp-cor:ReconciliationOfEndingBalanceOfCashAndCashEquivalentsWithAccountBalancesPerBalanceSheetTextBlock", 
          "xbrl:Unit" : "xbrl28:NoUnit", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : 2014, 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD"
        }
      }, {
        "Aspects" : {
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E01264-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Concept" : "jpcrp-cor:ReconciliationOfEndingBalanceOfCashAndCashEquivalentsWithAccountBalancesPerBalanceSheetTextBlock", 
          "xbrl:Unit" : "xbrl28:NoUnit", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : 2014, 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD"
        }
      }, {
        "Aspects" : {
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E04147-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "xbrl:Concept" : "jpcrp-cor:ReconciliationOfEndingBalanceOfCashAndCashEquivalentsWithAccountBalancesPerBalanceSheetTextBlock", 
          "xbrl:Unit" : "xbrl28:NoUnit", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember", 
          "fsa:FiscalYear" : 2014, 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD"
        }
      }, {
        "_id" : "fff777cd-d0f9-4d27-94da-2467c5bbaa50", 
        "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "fsa:Submitted" ], 
        "Aspects" : {
          "xbrl28:Archive" : "S1002NIQ", 
          "xbrl:Concept" : "jpcrp-cor:ReconciliationOfEndingBalanceOfCashAndCashEquivalentsWithAccountBalancesPerBalanceSheetTextBlock", 
          "xbrl:Entity" : "http://disclosure.edinet-fsa.go.jp E04425-000", 
          "xbrl:Period" : "2014-04-01/2014-06-30", 
          "fsa:FiscalPeriod" : "Q1", 
          "fsa:FiscalPeriodType" : "YTD", 
          "fsa:FiscalYear" : 2014, 
          "fsa:Submitted" : "2014-08-05", 
          "xbrl:Unit" : "xbrl28:NoUnit", 
          "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
        }, 
        "Type" : "NonNumericValue", 
        "Value" : "\n<p style=\"margin-left: 36px; text-align: left; text-indent: -12px\">※　現金及び現金同等物の四半期末残高と四半期連結貸借対照表に掲記されている科目の金額との関係は、次のとおりであります。</p>\n<div style=\"margin-left: 36px\">\n<table style=\"table-layout: fixed; width: 604px\" cellpadding=\"0\" cellspacing=\"0\">\n<colgroup>\n<col style=\"width: 276px\"/>\n<col style=\"width: 122px\"/>\n<col style=\"width: 42px\"/>\n<col style=\"width: 122px\"/>\n<col style=\"width: 42px\"/>\n</colgroup>\n<thead>\n<tr>\n<td style=\"width: 275px; border-left: 1px solid transparent; border-right: 1px solid transparent\"/>\n<td style=\"width: 121px; border-left: 1px solid transparent; border-right: 1px solid transparent\"/>\n<td style=\"width: 41px; border-left: 1px solid transparent; border-right: 1px solid transparent\"/>\n<td style=\"width: 121px; border-left: 1px solid transparent; border-right: 1px solid transparent\"/>\n<td style=\"border-left: 1px solid transparent; border-right: 1px solid transparent\"/>\n</tr>\n<tr style=\"min-height: 53px\">\n<td style=\"border-top: 1px solid #000000; border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"line-height: 13.3299999237061px; text-align: center\"> </p>\n<p style=\"line-height: 13.3299999237061px; margin-right: 12px; text-align: center\"> </p>\n<p style=\"line-height: 13.3299999237061px; text-align: center\"> </p>\n</td>\n<td colspan=\"2\" style=\"border-top: 1px solid #000000; border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"line-height: 13.3299999237061px; text-align: center\">前第１四半期連結累計期間</p>\n<p style=\"line-height: 13.3299999237061px; margin-right: 12px; text-align: center\">（自　平成25年４月１日</p>\n<p style=\"margin-left: 12px; line-height: 13.3299999237061px; text-align: center\">至　平成25年６月30日）</p>\n</td>\n<td colspan=\"2\" style=\"border-top: 1px solid #000000; border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"line-height: 13.3299999237061px; text-align: center\">当第１四半期連結累計期間</p>\n<p style=\"line-height: 13.3299999237061px; margin-right: 12px; text-align: center\">（自　平成26年４月１日</p>\n<p style=\"margin-left: 12px; line-height: 13.3299999237061px; text-align: center\">至　平成26年６月30日）</p>\n</td>\n</tr>\n</thead>\n<tbody>\n<tr style=\"min-height: 0px\">\n<td style=\"vertical-align: middle\">\n<p style=\"margin-left: 12px; text-align: left\">現金及び預金勘定</p>\n</td>\n<td style=\"vertical-align: middle\">\n<p style=\"text-align: right\">178,335</p>\n</td>\n<td style=\"vertical-align: middle\">\n<p style=\"text-align: left\">百万円</p>\n</td>\n<td style=\"vertical-align: middle\">\n<p style=\"text-align: right\">172,657</p>\n</td>\n<td style=\"vertical-align: middle\">\n<p style=\"text-align: left\">百万円</p>\n</td>\n</tr>\n<tr style=\"min-height: 0px\">\n<td style=\"border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"margin-left: 12px; text-align: left\">有価証券勘定</p>\n</td>\n<td style=\"border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"text-align: right\">247</p>\n</td>\n<td style=\"border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"text-align: left\"> </p>\n</td>\n<td style=\"border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"text-align: right\">262</p>\n</td>\n<td style=\"border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"text-align: left\"> </p>\n</td>\n</tr>\n<tr style=\"min-height: 0px\">\n<td style=\"border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"margin-left: 12px; text-align: left\">預入期間が３ヶ月を超える定期預金、償還期限が３ヶ月を超える有価証券及び担保差入預金</p>\n</td>\n<td style=\"border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"text-align: right\"> </p>\n<p style=\"text-align: right\">△10,536</p>\n</td>\n<td style=\"border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"text-align: left\"> </p>\n<p style=\"text-align: left\"> </p>\n</td>\n<td style=\"border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"text-align: right\"> </p>\n<p style=\"text-align: right\">△10,740</p>\n</td>\n<td style=\"border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"text-align: left\"> </p>\n<p style=\"text-align: left\"> </p>\n</td>\n</tr>\n<tr style=\"min-height: 0px\">\n<td style=\"border-top: 1px solid #000000; border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"margin-left: 12px; text-align: left\">現金及び現金同等物</p>\n</td>\n<td style=\"border-top: 1px solid #000000; border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"text-align: right\">168,046</p>\n</td>\n<td style=\"border-top: 1px solid #000000; border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"text-align: left\"> </p>\n</td>\n<td style=\"border-top: 1px solid #000000; border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"text-align: right\">162,179</p>\n</td>\n<td style=\"border-top: 1px solid #000000; border-bottom: 1px solid #000000; vertical-align: middle\">\n<p style=\"text-align: left\"> </p>\n</td>\n</tr>\n</tbody>\n</table>\n</div>\n", 
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
            "OutputConcept" : "jpcrp-cor:ReconciliationOfEndingBalanceOfCashAndCashEquivalentsWithAccountBalancesPerBalanceSheetTextBlock"
          }
        }, {
          "Type" : "xbrl28:dimension-default", 
          "Label" : "Default dimension value", 
          "Message" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis.Default = \"jppfs-cor:ConsolidatedMember\"", 
          "Data" : {
            "Dimension" : "jppfs-cor:ConsolidatedOrNonConsolidatedAxis", 
            "Member" : "jppfs-cor:ConsolidatedMember", 
            "OutputConcept" : "jpcrp-cor:ReconciliationOfEndingBalanceOfCashAndCashEquivalentsWithAccountBalancesPerBalanceSheetTextBlock"
          }
        } ]
      } ] ]
    }
  } ], 
  "GlobalConstraints" : [ {
    "xbrl:Unit" : "xbrl28:NoUnit"
  }, {
    "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "jppfs-cor:ConsolidatedMember"
  }, {
    "fsa:FiscalYear" : 2014
  }, {
    "fsa:FiscalPeriod" : "Q1"
  }, {
    "fsa:FiscalPeriodType" : "YTD"
  } ], 
  "GlobalConstraintLabels" : {
    "xbrl:Unit" : "Unit [Axis]", 
    "jppfs-cor:ConsolidatedOrNonConsolidatedAxis" : "Consolidated or non-consolidated", 
    "jppfs-cor:ConsolidatedMember" : "Consolidated [member]", 
    "fsa:FiscalYear" : "Fiscal Year [Axis]", 
    "fsa:FiscalPeriod" : "Fiscal Period [Axis]", 
    "fsa:FiscalPeriodType" : "Fiscal Period Type [Axis]"
  }
}