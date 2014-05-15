{
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
                    "Label" : "Central Index Key (CIK)"
                  }, 
                  "fac:BalanceSheetDate" : {
                    "Name" : "fac:BalanceSheetDate", 
                    "Label" : "Balance Sheet Date"
                  }
                }
              }, 
              "fac:BalanceSheetHierarchy" : {
                "Name" : "fac:BalanceSheetHierarchy", 
                "Label" : "Balance Sheet [Hierarchy]", 
                "To" : {
                  "fac:CurrentAssets" : {
                    "Name" : "fac:CurrentAssets", 
                    "Label" : "Current Assets", 
                    "Order" : 1
                  }, 
                  "fac:NoncurrentAssets" : {
                    "Name" : "fac:NoncurrentAssets", 
                    "Label" : "Noncurrent Assets", 
                    "Order" : 2
                  }, 
                  "fac:Assets" : {
                    "Name" : "fac:Assets", 
                    "Label" : "Assets", 
                    "Order" : 3
                  }, 
                  "fac:CurrentLiabilities" : {
                    "Name" : "fac:CurrentLiabilities", 
                    "Label" : "Current Liabilities", 
                    "Order" : 4
                  }, 
                  "fac:NoncurrentLiabilities" : {
                    "Name" : "fac:NoncurrentLiabilities", 
                    "Label" : "Noncurrent Liabilities", 
                    "Order" : 5
                  }, 
                  "fac:Liabilities" : {
                    "Name" : "fac:Liabilities", 
                    "Label" : "Liabilities", 
                    "Order" : 6
                  }, 
                  "fac:EquityAttributableToParent" : {
                    "Name" : "fac:EquityAttributableToParent", 
                    "Label" : "Equity Attributable to Parent", 
                    "Order" : 7
                  }, 
                  "fac:RedeemableNoncontrollingInterest" : {
                    "Name" : "fac:RedeemableNoncontrollingInterest", 
                    "Label" : "Redeemable Noncontrolling Interest", 
                    "Order" : 8
                  }, 
                  "fac:Equity" : {
                    "Name" : "fac:Equity", 
                    "Label" : "Equity", 
                    "Order" : 9
                  }, 
                  "fac:LiabilitiesAndEquity" : {
                    "Name" : "fac:LiabilitiesAndEquity", 
                    "Label" : "Liabilities and Equity", 
                    "Order" : 10
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
      "fac:NoncurrentLiabilities" : {
        "Name" : "fac:NoncurrentLiabilities", 
        "Label" : "Noncurrent Liabilities", 
        "To" : {
          "ifrs:NoncurrentLiabilities" : {
            "Name" : "ifrs:NoncurrentLiabilities"
          }
        }
      }, 
      "fac:EntityRegistrantName" : {
        "Name" : "fac:EntityRegistrantName", 
        "Label" : "Entity Registrant Name", 
        "To" : {
          "ifrs:NameOfReportingEntityOrOtherMeansOfIdentification" : {
            "Name" : "ifrs:NameOfReportingEntityOrOtherMeansOfIdentification"
          }
        }
      }, 
      "fac:Assets" : {
        "Name" : "fac:Assets", 
        "Label" : "Assets", 
        "To" : {
          "ifrs:Assets" : {
            "Name" : "ifrs:Assets"
          }
        }
      }, 
      "fac:EquityAttributableToParent" : {
        "Name" : "fac:EquityAttributableToParent", 
        "Label" : "Equity Attributable to Parent", 
        "To" : {
          "ifrs:EquityAttributableToOwnersOfParent" : {
            "Name" : "ifrs:EquityAttributableToOwnersOfParent"
          }
        }
      }, 
      "fac:EntityCentralIndexKey" : {
        "Name" : "fac:EntityCentralIndexKey", 
        "Label" : "Central Index Key (CIK)", 
        "To" : {
          "cl-ci:RUTEntidadInforma" : {
            "Name" : "cl-ci:RUTEntidadInforma"
          }
        }
      },
      "fac:Liabilities" : {
        "Name" : "fac:Liabilities", 
        "Label" : "Liabilities", 
        "To" : {
          "ifrs:Liabilities" : {
            "Name" : "ifrs:Liabilities"
          }
        }
      }, 
      "fac:NoncurrentAssets" : {
        "Name" : "fac:NoncurrentAssets", 
        "Label" : "Noncurrent Assets", 
        "To" : {
          "ifrs:NoncurrentAssets" : {
            "Name" : "ifrs:NoncurrentAssets"
          }
        }
      },             
      "fac:CurrentLiabilities" : {
        "Name" : "fac:CurrentLiabilities", 
        "Label" : "Current Liabilities", 
        "To" : {
          "ifrs:CurrentLiabilities" : {
            "Name" : "ifrs:CurrentLiabilities"
          }
        }
      }, 
      "fac:BalanceSheetDate" : {
        "Name" : "fac:BalanceSheetDate", 
        "Label" : "Balance Sheet Date", 
        "To" : {
          "ifrs:DateOfEndOfReportingPeriod" : {
            "Name" : "ifrs:DateOfEndOfReportingPeriod"
          }
        }
      }, 
      "fac:LiabilitiesAndEquity" : {
        "Name" : "fac:LiabilitiesAndEquity", 
        "Label" : "Liabilities and Equity", 
        "To" : {
          "ifrs:EquityAndLiabilities" : {
            "Name" : "ifrs:EquityAndLiabilities"
          }
        }
      }, 
      "fac:Equity" : {
        "Name" : "fac:Equity", 
        "Label" : "Equity", 
        "To" : {
          "ifrs:Equity" : {
            "Name" : "ifrs:Equity"
          }
        }
      }, 
      "fac:CurrentAssets" : {
        "Name" : "fac:CurrentAssets", 
        "Label" : "Current Assets", 
        "To" : {
          "ifrs:CurrentAssets" : {
            "Name" : "ifrs:CurrentAssets"
          }
        }
      }, 
      "fac:RedeemableNoncontrollingInterest" : {
        "Name" : "fac:RedeemableNoncontrollingInterest", 
        "Label" : "Redeemable Noncontrolling Interest", 
        "To" : {
          "ifrs:NoncontrollingInterests" : {
            "Name" : "ifrs:NoncontrollingInterests"
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
                  "Label" : "Central Index Key (CIK)"
                },                
                "fac:BalanceSheetDate" : {
                  "Name" : "fac:BalanceSheetDate", 
                  "Label" : "Balance Sheet Date"
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
  }, 
  "Rules" : [ {
    "Type" : "xbrl28:formula", 
    "Label" : "Assets imputation", 
    "IsBizQL" : true, 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:Assets\", \"fac:CurrentAssets\", \"fac:NoncurrentAssets\", \"fac:Liabilities\", \"fac:LiabilitiesAndEquity\", \"fac:Equity\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"] let $CurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"] let $NoncurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"] let $Liabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Liabilities\"] let $LiabilitiesAndEquity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:LiabilitiesAndEquity\"] let $Equity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Equity\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch (true) case exists($Assets) return $Assets case (exists($LiabilitiesAndEquity)) and (rules:decimal-value ($CurrentAssets) eq rules:decimal-value($LiabilitiesAndEquity)) return let $computed-value := rules:decimal-value($CurrentAssets) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:Assets\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($CurrentAssets, \"CurrentAssets\") let $source-facts := $CurrentAssets return rules:create-computed-fact( $CurrentAssets, \"fac:Assets\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) case (empty($NoncurrentAssets)) and (exists($LiabilitiesAndEquity)) and (rules:decimal-value($LiabilitiesAndEquity) eq (rules:decimal-value($Equity) + rules:decimal-value($Liabilities))) return let $computed-value := rules:decimal-value($CurrentAssets) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:Assets\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($CurrentAssets, \"CurrentAssets\") let $source-facts := $CurrentAssets return rules:create-computed-fact( $CurrentAssets, \"fac:Assets\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:Assets" ], 
    "DependsOn" : [ "fac:CurrentAssets", "fac:NoncurrentAssets", "fac:Liabilities", "fac:LiabilitiesAndEquity", "fac:Equity" ]
  }, {
    "Type" : "xbrl28:formula", 
    "Label" : "CurrentAssets imputation", 
    "IsBizQL" : true, 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:CurrentAssets\", \"fac:Assets\", \"fac:NoncurrentAssets\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $CurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"] let $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"] let $NoncurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch (true) case (exists($CurrentAssets)) return $CurrentAssets case (exists($Assets) and exists($NoncurrentAssets)) return let $computed-value := rules:decimal-value($Assets) - rules:decimal-value($NoncurrentAssets) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:CurrentAssets\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($Assets, \"Assets\") || \" - \" || rules:fact-trail($NoncurrentAssets, \"NoncurrentAssets\") let $source-facts := ($Assets, $NoncurrentAssets) return rules:create-computed-fact( $Assets, \"fac:CurrentAssets\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:CurrentAssets" ], 
    "DependsOn" : [ "fac:Assets", "fac:NoncurrentAssets" ]
  }, {
    "Type" : "xbrl28:formula", 
    "Label" : "Liabilities And Equity imputation", 
    "IsBizQL" : true, 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:LiabilitiesAndEquity\", \"fac:Assets\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $LiabilitiesAndEquity as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:LiabilitiesAndEquity\"] let $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($LiabilitiesAndEquity)) return $LiabilitiesAndEquity case(exists($Assets)) return let $computed-value := rules:decimal-value($Assets) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:LiabilitiesAndEquity\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($Assets, \"Assets\") let $source-facts := $Assets return rules:create-computed-fact( $Assets, \"fac:LiabilitiesAndEquity\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:LiabilitiesAndEquity" ], 
    "DependsOn" : [ "fac:Assets" ]
  }, {
    "Type" : "xbrl28:formula", 
    "Label" : "Noncurrent Liabilities imputation", 
    "IsBizQL" : true, 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NoncurrentLiabilities\", \"fac:Liabilities\", \"fac:CurrentLiabilities\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NoncurrentLiabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentLiabilities\"] let $Liabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Liabilities\"] let $CurrentLiabilities as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentLiabilities\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case (exists($NoncurrentLiabilities)) return $NoncurrentLiabilities case(exists($CurrentLiabilities) and exists($Liabilities)) return let $computed-value := rules:decimal-value($Liabilities) - rules:decimal-value($CurrentLiabilities) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NoncurrentLiabilities\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($Liabilities) || \" - \" || rules:fact-trail($CurrentLiabilities) let $source-facts := ($Liabilities, $CurrentLiabilities) return rules:create-computed-fact( $CurrentLiabilities, \"fac:NoncurrentLiabilities\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NoncurrentLiabilities" ], 
    "DependsOn" : [ "fac:Liabilities", "fac:CurrentLiabilities" ]
  }, {
    "Type" : "xbrl28:formula", 
    "Label" : "NoncurrentAssets imputation", 
    "IsBizQL" : true, 
    "Formula" : "for $facts in facts:facts-for-internal(( \"fac:NoncurrentAssets\", \"fac:Assets\", \"fac:CurrentAssets\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options) group by $canonical-filter-string := facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\")) let $NoncurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"] let $Assets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"] let $CurrentAssets as object? := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"] let $unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1] return switch(true) case exists($NoncurrentAssets) return $NoncurrentAssets case exists($Assets) and exists($CurrentAssets) return let $computed-value := rules:decimal-value($Assets) - rules:decimal-value($CurrentAssets) let $audit-trail-message := rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : $unit, \"xbrl:Concept\" : \"fac:NoncurrentAssets\" }, Value: $computed-value }) || \" = \" || rules:fact-trail($Assets, \"Assets\") || \" - \" || rules:fact-trail($CurrentAssets, \"CurrentAssets\") let $source-facts := ($Assets, $CurrentAssets) return rules:create-computed-fact( $Assets, \"fac:NoncurrentAssets\", $computed-value, $rule, $audit-trail-message, $source-facts, $options) default return ()", 
    "ComputableConcepts" : [ "fac:NoncurrentAssets" ], 
    "DependsOn" : [ "fac:Assets", "fac:CurrentAssets" ]
  } ]
}