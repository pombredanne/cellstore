import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace mongo = "http://www.28msec.com/modules/mongodb";

declare %an:sequential function local:check-collection($expected-count as integer, $expected-instance as object, $key as string, $collection as string) as object
{
   local:check-collection($expected-count, $expected-instance, $key, $expected-instance($key), $collection)
};

declare %an:sequential function local:check-collection($expected-count as integer, $expected-instance as object, $key as string, $value as string, $collection as string) as object
{
    let $conn := mongo:connect("xbrl")
    return 
    {
      $collection: 
      {|
        let $count := mongo:count($conn, $collection)
        return 
          if ($count ne $expected-count)
          then 
          {
            response:status-code(500);
            { "count": string($count) || "(expected: " || $expected-count || ")" }
          }
          else { "count": $count },
          
        let $instance := mongo:find($conn, $collection, {$key : $value})
        return
          if (empty($instance))
          then
          {
            response:status-code(500);
            { "instance": $key || ": " || $value || " not found" }
          }
          else
          {
            let $instance-clean := project($instance, keys($instance)[$$ ne "_id"])
            let $expected-instance-clean := project($expected-instance, keys($expected-instance)[$$ ne "_id"])
            return 
              if (not(deep-equal($instance-clean, $expected-instance-clean)))
              then 
              {
                response:status-code(500);
                { "actual-instance": $instance-clean, "expected-instance": $expected-instance-clean }
              }
              else { "instance": "OK" }
          }
      |}
    }
};

declare %an:sequential function local:filing-from-url() as object
{
  let $url := "http://s3.amazonaws.com/28msec-test-data/XBRL_KVK_Grote_Rechtspersoon_Company_A_Q1_v005.xbrl"
  let $expected-archives-num := 1
  let $expected-archive := 
  {
  "_id" : "F0001", 
  "Entity" : "http://www.kvk.nl/kvk-id 52619281", 
  "Statistics" : {
    "NumHypercubes" : 5, 
    "NumNetworks" : 5, 
    "NumDistinctExplicitDimensions" : 4, 
    "NumDistinctDomains" : 4, 
    "NumDistinctMembers" : 51, 
    "NumDistinctConcretePrimaryItemsInHypercubes" : 745, 
    "NumDistinctAbstractPrimaryItemsInHypercubes" : 1, 
    "NumDistinctConcretePrimaryItemsNotInHypercubes" : 0, 
    "NumDistinctAbstractPrimaryItemsNotInHypercubes" : 0, 
    "NumRollUpRules" : 0, 
    "NumRollForwardRules" : 0, 
    "NumFacts" : 36, 
    "NumFootnotes" : 0, 
    "NumComponents" : 6
  }, 
  "Namespaces" : {
    "bw2-i" : "http://www.nltaxonomie.nl/8.0/basis/venj/items/bw2-data", 
    "bw2-dim" : "http://www.nltaxonomie.nl/8.0/domein/venj/axes/bw2-axes", 
    "bw2-dm-fst" : "http://www.nltaxonomie.nl/8.0/basis/venj/domains/bw2-domains-financial-statements-type", 
    "iso4217" : "http://www.xbrl.org/2003/iso4217", 
    "nl-types" : "http://www.nltaxonomie.nl/8.0/basis/sbr/types/nl-types", 
    "bw2-dm-eqty" : "http://www.nltaxonomie.nl/8.0/basis/venj/domains/bw2-domains-equity", 
    "rj-i" : "http://www.nltaxonomie.nl/8.0/basis/rj/items/rj-data", 
    "link" : "http://www.xbrl.org/2003/linkbase", 
    "sbr-dim" : "http://www.nltaxonomie.nl/2013/xbrl/sbr-dimensional-concepts", 
    "sbr" : "http://www.nltaxonomie.nl/2011/xbrl/xbrl-syntax-extension", 
    "xbrli" : "http://www.xbrl.org/2003/instance", 
    "xs" : "http://www.w3.org/2001/XMLSchema", 
    "num" : "http://www.xbrl.org/dtr/type/numeric", 
    "bw2-dm-ita" : "http://www.nltaxonomie.nl/8.0/basis/venj/domains/bw2-domains-intangible-assets", 
    "" : "http://www.nltaxonomie.nl/8.0/domein/rj/axes/rj-axes", 
    "rj-dim" : "http://www.nltaxonomie.nl/8.0/domein/rj/axes/rj-axes", 
    "rj-dm-prov" : "http://www.nltaxonomie.nl/8.0/basis/rj/domains/rj-domains-provisions", 
    "bw2-dm-prov" : "http://www.nltaxonomie.nl/8.0/basis/venj/domains/bw2-domains-provisions", 
    "venj-codes" : "http://www.nltaxonomie.nl/8.0/basis/venj/types/venj-codes", 
    "rj-codes" : "http://www.nltaxonomie.nl/8.0/basis/rj/types/rj-codes", 
    "venj-types" : "http://www.nltaxonomie.nl/8.0/basis/venj/types/venj-types", 
    "nl-codes" : "http://www.nltaxonomie.nl/8.0/basis/sbr/types/nl-codes"
  }
  }
  let $expected-components-num := 6
  let $expected-component := 
  {
  "_id" : "cc2c32ee-2ab3-4b47-be78-347d7e08ae20", 
  "Archive" : "F0001", 
  "Role" : "urn:kvk:linkrole:intangible-assets-movement-schedule-table", 
  "Label" : "Immateriële vaste activa, verloopoverzicht [tabel]", 
  "Networks" : [ {
    "LinkName" : "link:definitionLink", 
    "LinkRole" : "urn:kvk:linkrole:intangible-assets-movement-schedule-table", 
    "ArcName" : "link:definitionArc", 
    "ArcRole" : "http://xbrl.org/int/dim/arcrole/domain-member", 
    "Kind" : "InterConceptTreeNetwork", 
    "ShortName" : "DomainMember", 
    "CyclesAllowed" : "undirected", 
    "Trees" : {
      "sbr-dim:ValidationLineItems" : {
        "Name" : "sbr-dim:ValidationLineItems", 
        "Label" : "Primary domain [Line items]", 
        "To" : [ {
          "Name" : "rj-i:IntangibleAssetsCostPrice", 
          "Label" : "Intangible assets, cost or manufacturing price", 
          "Order" : 1, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "bw2-i:IntangibleAssetsAccumulatedAmortisationImpairments", 
          "Label" : "Intangible assets, accumulated amortisation and impairments", 
          "Order" : 2, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "bw2-i:IntangibleAssetsAccumulatedRevaluations", 
          "Label" : "Intangible assets, accumulated revaluations", 
          "Order" : 3, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "bw2-i:IntangibleAssets", 
          "Label" : "Intangible assets", 
          "Order" : 4, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "bw2-i:IntangibleAssetsAdditions", 
          "Label" : "Intangible assets, additions", 
          "Order" : 5, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "bw2-i:IntangibleAssetsDisposals", 
          "Label" : "Intangible assets, disposals", 
          "Order" : 6, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "bw2-i:IntangibleAssetsDisposalsAmortisation", 
          "Label" : "Intangible assets, amortisation on disposals", 
          "Order" : 7, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "bw2-i:IntangibleAssetsRevaluations", 
          "Label" : "Intangible assets, revaluations", 
          "Order" : 8, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "bw2-i:IntangibleAssetsAmortisation", 
          "Label" : "Intangible assets, amortisation", 
          "Order" : 9, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "bw2-i:IntangibleAssetsImpairments", 
          "Label" : "Intangible assets, impairments", 
          "Order" : 10, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "bw2-i:IntangibleAssetsImpairmentsReversal", 
          "Label" : "Intangible assets, reversal of impairments", 
          "Order" : 11, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "rj-i:IntangibleAssetsAcquisitionsThroughBusinessCombinations", 
          "Label" : "Intangible assets, acquisitions through business combinations", 
          "Order" : 12, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "rj-i:IntangibleAssetsDisposalsThroughBusinessDivestitures", 
          "Label" : "Intangible assets, disposals through business divestitures", 
          "Order" : 13, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "rj-i:IntangibleAssetsExchangeDifferences", 
          "Label" : "Intangible assets, exchange differences", 
          "Order" : 14, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "bw2-i:IntangibleAssetsMovementsOther", 
          "Label" : "Intangible assets, other movements", 
          "Order" : 15, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "bw2-i:IntangibleAssetsMovement", 
          "Label" : "Intangible assets, movement during the period", 
          "Order" : 16, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "rj-i:IntangibleAssetsEconomicLife", 
          "Label" : "Intangible assets, economic life (in months)", 
          "Order" : 17, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "rj-i:IntangibleAssetsAmortisationRate", 
          "Label" : "Intangible assets, amortisation rate", 
          "Order" : 18, 
          "Use" : "optional", 
          "Priority" : 0
        }, {
          "Name" : "rj-i:IntangibleAssetsIncomeStatementLineItemWhereAmortisationRecognised", 
          "Label" : "Intangible assets, line item in the income statement where the amortisation is recognised", 
          "Order" : 19, 
          "Use" : "optional", 
          "Priority" : 0
        } ]
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
                "rj-i:IntangibleAssetsAcquisitionsThroughBusinessCombinations" : {
                  "Name" : "rj-i:IntangibleAssetsAcquisitionsThroughBusinessCombinations", 
                  "Label" : "Intangible assets, acquisitions through business combinations", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "Balance" : "debit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "bw2-i:IntangibleAssetsAccumulatedAmortisationImpairments" : {
                  "Name" : "bw2-i:IntangibleAssetsAccumulatedAmortisationImpairments", 
                  "Label" : "Intangible assets, accumulated amortisation and impairments", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "instant", 
                  "Balance" : "debit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "bw2-i:IntangibleAssetsAmortisation" : {
                  "Name" : "bw2-i:IntangibleAssetsAmortisation", 
                  "Label" : "Intangible assets, amortisation", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "Balance" : "credit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "sbr-dim:ValidationLineItems" : {
                  "Name" : "sbr-dim:ValidationLineItems", 
                  "Label" : "Primary domain [Line items]", 
                  "IsNillable" : true, 
                  "IsAbstract" : true, 
                  "PeriodType" : "duration", 
                  "SubstitutionGroup" : "sbr:primaryDomainItem", 
                  "DataType" : "xbrli:stringItemType", 
                  "BaseType" : "xs:string", 
                  "ClosestSchemaBuiltinType" : "xs:string", 
                  "IsTextBlock" : false
                }, 
                "rj-i:IntangibleAssetsExchangeDifferences" : {
                  "Name" : "rj-i:IntangibleAssetsExchangeDifferences", 
                  "Label" : "Intangible assets, exchange differences", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "Balance" : "debit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "bw2-i:IntangibleAssetsMovementsOther" : {
                  "Name" : "bw2-i:IntangibleAssetsMovementsOther", 
                  "Label" : "Intangible assets, other movements", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "Balance" : "debit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "bw2-i:IntangibleAssetsRevaluations" : {
                  "Name" : "bw2-i:IntangibleAssetsRevaluations", 
                  "Label" : "Intangible assets, revaluations", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "Balance" : "debit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "rj-i:IntangibleAssetsEconomicLife" : {
                  "Name" : "rj-i:IntangibleAssetsEconomicLife", 
                  "Label" : "Intangible assets, economic life (in months)", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "xbrli:integerItemType", 
                  "BaseType" : "xs:integer", 
                  "ClosestSchemaBuiltinType" : "xs:integer", 
                  "IsTextBlock" : false
                }, 
                "rj-i:IntangibleAssetsIncomeStatementLineItemWhereAmortisationRecognised" : {
                  "Name" : "rj-i:IntangibleAssetsIncomeStatementLineItemWhereAmortisationRecognised", 
                  "Label" : "Intangible assets, line item in the income statement where the amortisation is recognised", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "xbrli:stringItemType", 
                  "BaseType" : "xs:string", 
                  "ClosestSchemaBuiltinType" : "xs:string", 
                  "IsTextBlock" : false
                }, 
                "bw2-i:IntangibleAssetsImpairmentsReversal" : {
                  "Name" : "bw2-i:IntangibleAssetsImpairmentsReversal", 
                  "Label" : "Intangible assets, reversal of impairments", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "Balance" : "debit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "bw2-i:IntangibleAssets" : {
                  "Name" : "bw2-i:IntangibleAssets", 
                  "Label" : "Intangible assets", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "instant", 
                  "Balance" : "debit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "rj-i:IntangibleAssetsCostPrice" : {
                  "Name" : "rj-i:IntangibleAssetsCostPrice", 
                  "Label" : "Intangible assets, cost or manufacturing price", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "instant", 
                  "Balance" : "debit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "bw2-i:IntangibleAssetsImpairments" : {
                  "Name" : "bw2-i:IntangibleAssetsImpairments", 
                  "Label" : "Intangible assets, impairments", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "Balance" : "credit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "rj-i:IntangibleAssetsAmortisationRate" : {
                  "Name" : "rj-i:IntangibleAssetsAmortisationRate", 
                  "Label" : "Intangible assets, amortisation rate", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "num:percentItemType", 
                  "BaseType" : "xbrli:pure", 
                  "ClosestSchemaBuiltinType" : "xbrli:pure", 
                  "IsTextBlock" : false
                }, 
                "rj-i:IntangibleAssetsDisposalsThroughBusinessDivestitures" : {
                  "Name" : "rj-i:IntangibleAssetsDisposalsThroughBusinessDivestitures", 
                  "Label" : "Intangible assets, disposals through business divestitures", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "Balance" : "credit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "bw2-i:IntangibleAssetsAdditions" : {
                  "Name" : "bw2-i:IntangibleAssetsAdditions", 
                  "Label" : "Intangible assets, additions", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "Balance" : "debit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "bw2-i:IntangibleAssetsAccumulatedRevaluations" : {
                  "Name" : "bw2-i:IntangibleAssetsAccumulatedRevaluations", 
                  "Label" : "Intangible assets, accumulated revaluations", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "instant", 
                  "Balance" : "debit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "bw2-i:IntangibleAssetsMovement" : {
                  "Name" : "bw2-i:IntangibleAssetsMovement", 
                  "Label" : "Intangible assets, movement during the period", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "Balance" : "debit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "bw2-i:IntangibleAssetsDisposals" : {
                  "Name" : "bw2-i:IntangibleAssetsDisposals", 
                  "Label" : "Intangible assets, disposals", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "Balance" : "credit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }, 
                "bw2-i:IntangibleAssetsDisposalsAmortisation" : {
                  "Name" : "bw2-i:IntangibleAssetsDisposalsAmortisation", 
                  "Label" : "Intangible assets, amortisation on disposals", 
                  "IsNillable" : false, 
                  "IsAbstract" : false, 
                  "PeriodType" : "duration", 
                  "Balance" : "debit", 
                  "SubstitutionGroup" : "xbrli:item", 
                  "DataType" : "nl-types:monetaryNoDecimalsItemType", 
                  "BaseType" : "xbrli:monetary", 
                  "ClosestSchemaBuiltinType" : "xbrli:monetary", 
                  "IsTextBlock" : false
                }
              }
            }
          }
        }, 
        "xbrl:Period" : {
          "Name" : "xbrl:Period", 
          "Label" : "Period"
        }, 
        "xbrl:Entity" : {
          "Name" : "xbrl:Entity", 
          "Label" : "Reporting Entity"
        }, 
        "xbrl:Unit" : {
          "Name" : "xbrl:Unit", 
          "Label" : "Unit", 
          "Default" : "xbrl:NonNumeric"
        }, 
        "xbrl28:Archive" : {
          "Name" : "xbrl28:Archive", 
          "Label" : "Archive ID", 
          "Domains" : {
            "xbrl28:ArchiveDomain" : {
              "Name" : "xbrl28:ArchiveDomain", 
              "Label" : "Archive Domain", 
              "Members" : {
                "F0001" : {
                  "Name" : "F0001"
                }
              }
            }
          }
        }
      }
    }, 
    "sbr-dim:ValidationTable" : {
      "Name" : "sbr-dim:ValidationTable", 
      "Label" : "Validation [Table]", 
      "ContextElement" : "scenario", 
      "Aspects" : {
        "xbrl:Concept" : {
          "Name" : "xbrl:Concept", 
          "Label" : "Implicit XBRL Concept Dimension", 
          "Domains" : {
            "xbrl:ConceptDomain" : {
              "Name" : "xbrl:ConceptDomain", 
              "Label" : "Implicit XBRL Concept Domain", 
              "Members" : {
                "sbr-dim:ValidationLineItems" : {
                  "Name" : "sbr-dim:ValidationLineItems", 
                  "Label" : "Primary domain [Line items]"
                }, 
                "bw2-i:IntangibleAssetsAccumulatedAmortisationImpairments" : {
                  "Name" : "bw2-i:IntangibleAssetsAccumulatedAmortisationImpairments", 
                  "Label" : "Intangible assets, accumulated amortisation and impairments"
                }, 
                "bw2-i:IntangibleAssetsAdditions" : {
                  "Name" : "bw2-i:IntangibleAssetsAdditions", 
                  "Label" : "Intangible assets, additions"
                }, 
                "bw2-i:IntangibleAssetsMovement" : {
                  "Name" : "bw2-i:IntangibleAssetsMovement", 
                  "Label" : "Intangible assets, movement during the period"
                }, 
                "rj-i:IntangibleAssetsAcquisitionsThroughBusinessCombinations" : {
                  "Name" : "rj-i:IntangibleAssetsAcquisitionsThroughBusinessCombinations", 
                  "Label" : "Intangible assets, acquisitions through business combinations"
                }, 
                "rj-i:IntangibleAssetsIncomeStatementLineItemWhereAmortisationRecognised" : {
                  "Name" : "rj-i:IntangibleAssetsIncomeStatementLineItemWhereAmortisationRecognised", 
                  "Label" : "Intangible assets, line item in the income statement where the amortisation is recognised"
                }, 
                "bw2-i:IntangibleAssetsImpairments" : {
                  "Name" : "bw2-i:IntangibleAssetsImpairments", 
                  "Label" : "Intangible assets, impairments"
                }, 
                "bw2-i:IntangibleAssetsMovementsOther" : {
                  "Name" : "bw2-i:IntangibleAssetsMovementsOther", 
                  "Label" : "Intangible assets, other movements"
                }, 
                "rj-i:IntangibleAssetsCostPrice" : {
                  "Name" : "rj-i:IntangibleAssetsCostPrice", 
                  "Label" : "Intangible assets, cost or manufacturing price"
                }, 
                "bw2-i:IntangibleAssets" : {
                  "Name" : "bw2-i:IntangibleAssets", 
                  "Label" : "Intangible assets"
                }, 
                "rj-i:IntangibleAssetsDisposalsThroughBusinessDivestitures" : {
                  "Name" : "rj-i:IntangibleAssetsDisposalsThroughBusinessDivestitures", 
                  "Label" : "Intangible assets, disposals through business divestitures"
                }, 
                "rj-i:IntangibleAssetsEconomicLife" : {
                  "Name" : "rj-i:IntangibleAssetsEconomicLife", 
                  "Label" : "Intangible assets, economic life (in months)"
                }, 
                "rj-i:IntangibleAssetsExchangeDifferences" : {
                  "Name" : "rj-i:IntangibleAssetsExchangeDifferences", 
                  "Label" : "Intangible assets, exchange differences"
                }, 
                "bw2-i:IntangibleAssetsDisposalsAmortisation" : {
                  "Name" : "bw2-i:IntangibleAssetsDisposalsAmortisation", 
                  "Label" : "Intangible assets, amortisation on disposals"
                }, 
                "bw2-i:IntangibleAssetsDisposals" : {
                  "Name" : "bw2-i:IntangibleAssetsDisposals", 
                  "Label" : "Intangible assets, disposals"
                }, 
                "bw2-i:IntangibleAssetsRevaluations" : {
                  "Name" : "bw2-i:IntangibleAssetsRevaluations", 
                  "Label" : "Intangible assets, revaluations"
                }, 
                "rj-i:IntangibleAssetsAmortisationRate" : {
                  "Name" : "rj-i:IntangibleAssetsAmortisationRate", 
                  "Label" : "Intangible assets, amortisation rate"
                }, 
                "bw2-i:IntangibleAssetsAccumulatedRevaluations" : {
                  "Name" : "bw2-i:IntangibleAssetsAccumulatedRevaluations", 
                  "Label" : "Intangible assets, accumulated revaluations"
                }, 
                "bw2-i:IntangibleAssetsImpairmentsReversal" : {
                  "Name" : "bw2-i:IntangibleAssetsImpairmentsReversal", 
                  "Label" : "Intangible assets, reversal of impairments"
                }, 
                "bw2-i:IntangibleAssetsAmortisation" : {
                  "Name" : "bw2-i:IntangibleAssetsAmortisation", 
                  "Label" : "Intangible assets, amortisation"
                }
              }
            }
          }
        }, 
        "bw2-dim:FinancialStatementsTypeAxis" : {
          "Name" : "bw2-dim:FinancialStatementsTypeAxis", 
          "Label" : "Financial statements type [axis]", 
          "Default" : "bw2-dm-fst:FinancialStatementsTypeDomain", 
          "Domains" : {
            "bw2-dm-fst:FinancialStatementsTypeDomain" : {
              "Name" : "bw2-dm-fst:FinancialStatementsTypeDomain", 
              "Label" : "Financial statements type [domain]", 
              "Members" : {
                "bw2-dm-fst:SeparateMember" : {
                  "Name" : "bw2-dm-fst:SeparateMember", 
                  "Label" : "Separate [member]"
                }, 
                "bw2-dm-fst:ConsolidatedMember" : {
                  "Name" : "bw2-dm-fst:ConsolidatedMember", 
                  "Label" : "Consolidated [member]"
                }
              }
            }
          }
        }, 
        "bw2-dim:IntangibleAssetsComponentsAxis" : {
          "Name" : "bw2-dim:IntangibleAssetsComponentsAxis", 
          "Label" : "Intangible assets, components [axis]", 
          "Default" : "bw2-dm-ita:IntangibleAssetsComponentDomain", 
          "Domains" : {
            "bw2-dm-ita:IntangibleAssetsComponentDomain" : {
              "Name" : "bw2-dm-ita:IntangibleAssetsComponentDomain", 
              "Label" : "Intangible assets [domain]", 
              "Members" : {
                "bw2-dm-ita:GoodwillMember" : {
                  "Name" : "bw2-dm-ita:GoodwillMember", 
                  "Label" : "Goodwill [member]"
                }, 
                "bw2-dm-ita:ResearchAndDevelopmentCostsInternallyGeneratedMember" : {
                  "Name" : "bw2-dm-ita:ResearchAndDevelopmentCostsInternallyGeneratedMember", 
                  "Label" : "Research and development costs, internally generated [member]"
                }, 
                "bw2-dm-ita:IntangibleAssetsOtherInternallyGeneratedMember" : {
                  "Name" : "bw2-dm-ita:IntangibleAssetsOtherInternallyGeneratedMember", 
                  "Label" : "Other intangible assets, internally generated [member]"
                }, 
                "bw2-dm-ita:IntangibleAssetsOtherNotInternallyGeneratedMember" : {
                  "Name" : "bw2-dm-ita:IntangibleAssetsOtherNotInternallyGeneratedMember", 
                  "Label" : "Other intangible assets, not internally generated [member]"
                }, 
                "bw2-dm-ita:PatentsTrademarksOtherRightsMember" : {
                  "Name" : "bw2-dm-ita:PatentsTrademarksOtherRightsMember", 
                  "Label" : "Patents, trademarks and other rights [member]"
                }, 
                "bw2-dm-ita:PatentsTrademarksOtherRightsNotInternallyGeneratedMember" : {
                  "Name" : "bw2-dm-ita:PatentsTrademarksOtherRightsNotInternallyGeneratedMember", 
                  "Label" : "Patents, trademarks and other rights, not internally generated [member]"
                }, 
                "bw2-dm-ita:IntangibleAssetsMember" : {
                  "Name" : "bw2-dm-ita:IntangibleAssetsMember", 
                  "Label" : "Intangible assets [member]"
                }, 
                "bw2-dm-ita:CostsIncorporationShareIssueMember" : {
                  "Name" : "bw2-dm-ita:CostsIncorporationShareIssueMember", 
                  "Label" : "Costs of incorporation and share issue [member]"
                }, 
                "bw2-dm-ita:ResearchAndDevelopmentCostsMember" : {
                  "Name" : "bw2-dm-ita:ResearchAndDevelopmentCostsMember", 
                  "Label" : "Research and development costs [member]"
                }, 
                "bw2-dm-ita:IntangibleAssetsOtherMember" : {
                  "Name" : "bw2-dm-ita:IntangibleAssetsOtherMember", 
                  "Label" : "Other intangible assets [member]"
                }, 
                "bw2-dm-ita:ResearchAndDevelopmentCostsNotInternallyGeneratedMember" : {
                  "Name" : "bw2-dm-ita:ResearchAndDevelopmentCostsNotInternallyGeneratedMember", 
                  "Label" : "Research and development costs, not internally generated [member]"
                }, 
                "bw2-dm-ita:PrepaymentsIntangibleAssetsMember" : {
                  "Name" : "bw2-dm-ita:PrepaymentsIntangibleAssetsMember", 
                  "Label" : "Prepayments on intangible assets [member]"
                }, 
                "bw2-dm-ita:CostsIncorporationShareIssueNotInternallyGeneratedMember" : {
                  "Name" : "bw2-dm-ita:CostsIncorporationShareIssueNotInternallyGeneratedMember", 
                  "Label" : "Costs of incorporation and share issue, not internally generated [member]"
                }, 
                "bw2-dm-ita:CostsIncorporationShareIssueInternallyGeneratedMember" : {
                  "Name" : "bw2-dm-ita:CostsIncorporationShareIssueInternallyGeneratedMember", 
                  "Label" : "Costs of incorporation and share issue, internally generated [member]"
                }, 
                "bw2-dm-ita:PatentsTrademarksOtherRightsInternallyGeneratedMember" : {
                  "Name" : "bw2-dm-ita:PatentsTrademarksOtherRightsInternallyGeneratedMember", 
                  "Label" : "Patents, trademarks and other rights, internally generated [member]"
                }, 
                "bw2-dm-ita:IntangibleAssetsNotInternallyGeneratedMember" : {
                  "Name" : "bw2-dm-ita:IntangibleAssetsNotInternallyGeneratedMember", 
                  "Label" : "Intangible assets, not internally generated [member]"
                }, 
                "bw2-dm-ita:IntangibleAssetsInternallyGeneratedMember" : {
                  "Name" : "bw2-dm-ita:IntangibleAssetsInternallyGeneratedMember", 
                  "Label" : "Intangible assets, internally generated [member]"
                }
              }
            }
          }
        }, 
        "xbrl:Period" : {
          "Name" : "xbrl:Period", 
          "Label" : "Period"
        }, 
        "xbrl:Entity" : {
          "Name" : "xbrl:Entity", 
          "Label" : "Reporting Entity"
        }, 
        "xbrl:Unit" : {
          "Name" : "xbrl:Unit", 
          "Label" : "Unit", 
          "Default" : "xbrl:NonNumeric"
        }, 
        "xbrl28:Archive" : {
          "Name" : "xbrl28:Archive", 
          "Label" : "Archive ID", 
          "Domains" : {
            "xbrl28:ArchiveDomain" : {
              "Name" : "xbrl28:ArchiveDomain", 
              "Label" : "Archive Domain", 
              "Members" : {
                "F0001" : {
                  "Name" : "F0001"
                }
              }
            }
          }
        }
      }
    }
  }, 
  "Rules" : [  ], 
  "Statistics" : {
    "NumHypercubes" : 1, 
    "NumNetworks" : 1, 
    "NumDistinctExplicitDimensions" : 2, 
    "NumDistinctDomains" : 2, 
    "NumDistinctMembers" : 21, 
    "NumDistinctConcretePrimaryItemsInHypercubes" : 19, 
    "NumDistinctAbstractPrimaryItemsInHypercubes" : 1, 
    "NumDistinctConcretePrimaryItemsNotInHypercubes" : 0, 
    "NumDistinctAbstractPrimaryItemsNotInHypercubes" : 0, 
    "NumRollUpRules" : 0, 
    "NumRollForwardRules" : 0, 
    "NumIndistinctExplicitDimensions" : 2, 
    "NumIndistinctDomains" : 2, 
    "NumIndistinctMembers" : 21, 
    "NumIndistinctConcretePrimaryItemsInHypercubes" : 19, 
    "NumIndistinctAbstractPrimaryItemsInHypercubes" : 1, 
    "NumIndistinctConcretePrimaryItemsNotInHypercubes" : 0, 
    "NumIndistinctAbstractPrimaryItemsNotInHypercubes" : 0
  }
}
let $expected-concepts-num := 753
let $expected-concept :=
{
  "_id" : "5474C7D4C9B0E3BC99E95AD8", 
  "Archive" : "F0001", 
  "Role" : "urn:kvk:linkrole:equity-movement-schedule-table", 
  "Name" : "bw2-i:EquityTreasurySharesPurchase", 
  "Labels" : {
    "http://www．xbrl．org/2003/role/label" : {
      "nl" : "Eigen vermogen, inkoop van eigen aandelen", 
      "en" : "Equity, purchase of treasury shares"
    }, 
    "http://www．xbrl．org/2003/role/terseLabel" : {
      "nl" : "Inkoop van eigen aandelen", 
      "en" : "Purchase of treasury shares"
    }
  }
}
let $expected-facts-num := 36
let $expected-fact :=
{
  "_id" : "2448316a-b1df-4cfd-a89d-6cbf293b1b9f", 
  "KeyAspects" : [ "xbrl:Concept", "xbrl:Entity", "xbrl:Period", "bw2-dim:FinancialStatementsTypeAxis", "xbrl:Unit" ], 
  "Aspects" : {
    "xbrl28:Archive" : "F0001", 
    "xbrl:Concept" : "bw2-i:LiabilitiesNoncurrent", 
    "xbrl:Entity" : "http://www.kvk.nl/kvk-id 52619281", 
    "xbrl:Period" : "2013-06-30", 
    "bw2-dim:FinancialStatementsTypeAxis" : "bw2-dm-fst:SeparateMember", 
    "xbrl:Unit" : "iso4217:EUR"
  }, 
  "Concept" : {
    "Balance" : "CREDIT", 
    "PeriodType" : "instant", 
    "DataType" : "nl-types:monetaryNoDecimalsItemType"
  }, 
  "Type" : "NumericValue", 
  "Value" : 12000000, 
  "Decimals" : "INF"
}
return
{|
  local:check-collection($expected-archives-num, $expected-archive, "Entity", "archives"),
  local:check-collection($expected-components-num, $expected-component, "Role", "components"),
  local:check-collection($expected-concepts-num, $expected-concept, "Name", "concepts"),
  local:check-collection($expected-facts-num, $expected-fact, "Aspects.xbrl:Concept", $expected-fact.Aspects("xbrl:Concept"), "facts")
|}
    
};

local:filing-from-url()


