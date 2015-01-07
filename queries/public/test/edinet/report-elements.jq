import module namespace response = "http://www.28msec.com/modules/http-response";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace test = "http://apps.28.io/test";
import module namespace config = "http://apps.28.io/config";

declare %an:nondeterministic function local:test-taxonomy-label() as item
{
  let $expected := 
  [ {
    "Name" : "jpcrp-cor:AccountingPolicyForDeferredAssetsTextBlock", 
    "Labels" : [ {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "en", 
      "Value" : "Accounting policy for deferred assets [text block]"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "ja", 
      "Value" : "繰延資産の処理方法 [テキストブロック]"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "ja", 
      "Value" : "繰延資産の処理方法"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "en", 
      "Value" : "Accounting policy for deferred assets"
    } ], 
    "ComponentRole" : "http://www.xbrl.org/2003/role/link", 
    "ComponentLabel" : "Default Component", 
    "Archive" : "STANDARD-TAXONOMY-2014"
  }, {
    "Name" : "jpcrp-cor:AccountingPolicyForDeferredAssetsUnderArticle113OfInsuranceBusinessActINSTextBlock", 
    "Labels" : [ {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "en", 
      "Value" : "Accounting policy for deferred assets under article 113 of Insurance Business Act"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "ja", 
      "Value" : "保険業法第113条繰延資産の処理方法"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "ja", 
      "Value" : "保険業法第113条繰延資産の処理方法、保険業 [テキストブロック]"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "en", 
      "Value" : "Accounting policy for deferred assets under article 113 of Insurance Business Act-INS [text block]"
    } ], 
    "ComponentRole" : "http://www.xbrl.org/2003/role/link", 
    "ComponentLabel" : "Default Component", 
    "Archive" : "STANDARD-TAXONOMY-2014"
  } ]
  let $endpoint := "report-elements"
  let $params := {aid:"STANDARD-TAXONOMY-2014", label:"\"Accounting policy for deferred assets\""}
  let $request := test:invoke($endpoint, $params)
  let $status as integer := $request[1]
  let $actual as array? := $request[2].ReportElements
  return test:assert-deep-equal($expected, $actual, $status, test:url($endpoint, $params))
};

declare %an:nondeterministic function local:test-taxonomy-name() as item
{
  let $expected := 
  [ {
    "Name" : "jppfs-cor:CurrentAssets", 
    "Labels" : [ {
      "Role" : "http://disclosure．edinet-fsa．go．jp/jppfs/ivt/role/totalLabel", 
      "Language" : "en", 
      "Value" : "Total current assets"
    }, {
      "Role" : "http://disclosure．edinet-fsa．go．jp/jppfs/ivt/role/totalLabel", 
      "Language" : "ja", 
      "Value" : "流動資産計"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "ja", 
      "Value" : "流動資産"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "en", 
      "Value" : "Current assets"
    }, {
      "Role" : "http://disclosure．edinet-fsa．go．jp/jppfs/sec/role/totalLabel", 
      "Language" : "ja", 
      "Value" : "流動資産計"
    }, {
      "Role" : "http://disclosure．edinet-fsa．go．jp/jppfs/sec/role/totalLabel", 
      "Language" : "en", 
      "Value" : "Total current assets"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "ja", 
      "Value" : "流動資産"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "en", 
      "Value" : "Current assets"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/totalLabel", 
      "Language" : "en", 
      "Value" : "Total current assets"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/totalLabel", 
      "Language" : "ja", 
      "Value" : "流動資産合計"
    } ], 
    "ComponentRole" : "http://www.xbrl.org/2003/role/link", 
    "ComponentLabel" : "Default Component", 
    "Archive" : "STANDARD-TAXONOMY-2014"
  } ]
  let $endpoint := "report-elements"
  let $params := {aid:"STANDARD-TAXONOMY-2014", name:"jppfs-cor:CurrentAssets"}
  let $request := test:invoke($endpoint, $params)
  let $status as integer := $request[1]
  let $actual as array? := $request[2].ReportElements
  return test:assert-deep-equal($expected, $actual, $status, test:url($endpoint, $params))
};

declare %an:nondeterministic function local:test-company-label() as item
{
  let $expected := 
  [ {
    "Name" : "jpcrp030000-asr_e01225-000:LossOfInactiveFacilitiesEL", 
    "Labels" : [ {
      "Role" : "http://www．xbrl．org/2003/role/documentation", 
      "Language" : "en", 
      "Value" : "Loss of inactive facilities-EL"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/documentation", 
      "Language" : "ja", 
      "Value" : "設備休止関連損失、特別損失"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "en", 
      "Value" : "Loss of inactive facilities-EL"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "ja", 
      "Value" : "設備休止関連損失、特別損失"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "ja", 
      "Value" : "設備休止関連損失"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "en", 
      "Value" : "Loss of inactive facilities"
    } ], 
    "Label" : "設備休止関連損失", 
    "IsNillable" : true, 
    "IsAbstract" : false, 
    "PeriodType" : "duration", 
    "Balance" : "debit", 
    "SubstitutionGroup" : "xbrli:item", 
    "DataType" : "xbrli:monetaryItemType", 
    "BaseType" : "xbrli:monetary", 
    "ClosestSchemaBuiltinType" : "xs:decimal", 
    "IsTextBlock" : false, 
    "ComponentRole" : "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_ConsolidatedStatementOfIncome", 
    "ComponentLabel" : "連結損益計算書", 
    "Archive" : "S10028XL"
  }, {
    "Name" : "jpcrp030000-asr_e01225-000:NotesRegardingTheLossOfInactiveFacilitiesTextBlock", 
    "Labels" : [ {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "ja", 
      "Value" : "設備休止関連損失に関する注記[テキストブロック]"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "en", 
      "Value" : "Notes regarding the loss of inactive facilities[text block]"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "en", 
      "Value" : "Notes regarding the loss of inactive facilities"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "ja", 
      "Value" : "設備休止関連損失に関する注記"
    } ], 
    "Label" : "設備休止関連損失に関する注記", 
    "PreferredLabelRole" : "http://www.xbrl.org/2003/role/label", 
    "IsNillable" : true, 
    "IsAbstract" : false, 
    "PeriodType" : "duration", 
    "SubstitutionGroup" : "xbrli:item", 
    "DataType" : "nonnum:textBlockItemType", 
    "BaseType" : "xs:string", 
    "ClosestSchemaBuiltinType" : "xs:string", 
    "IsTextBlock" : true, 
    "ComponentRole" : "http://disclosure.edinet-fsa.go.jp/role/jpcrp/rol_NotesConsolidatedStatementOfIncome", 
    "ComponentLabel" : "連結損益計算書関係", 
    "Archive" : "S10028XL"
  }, {
    "Name" : "jpcrp030000-asr_e01225-000:LossOfInactiveFacilitiesEL", 
    "Labels" : [ {
      "Role" : "http://www．xbrl．org/2003/role/documentation", 
      "Language" : "en", 
      "Value" : "Loss of inactive facilities-EL"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/documentation", 
      "Language" : "ja", 
      "Value" : "設備休止関連損失、特別損失"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "en", 
      "Value" : "Loss of inactive facilities-EL"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "ja", 
      "Value" : "設備休止関連損失、特別損失"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "ja", 
      "Value" : "設備休止関連損失"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "en", 
      "Value" : "Loss of inactive facilities"
    } ], 
    "Label" : "設備休止関連損失", 
    "IsNillable" : true, 
    "IsAbstract" : false, 
    "PeriodType" : "duration", 
    "Balance" : "debit", 
    "SubstitutionGroup" : "xbrli:item", 
    "DataType" : "xbrli:monetaryItemType", 
    "BaseType" : "xbrli:monetary", 
    "ClosestSchemaBuiltinType" : "xs:decimal", 
    "IsTextBlock" : false, 
    "ComponentRole" : "http://disclosure.edinet-fsa.go.jp/role/jppfs/rol_StatementOfIncome", 
    "ComponentLabel" : "損益計算書", 
    "Archive" : "S10028XL"
  } ]
  let $endpoint := "report-elements"
  let $params := {cik:"E01225", label:"\"Loss of inactive facilities\""}
  let $request := test:invoke($endpoint, $params)
  let $status as integer := $request[1]
  let $actual as array? := $request[2].ReportElements
  return test:assert-deep-equal($expected, $actual, $status, test:url($endpoint, $params))
};

declare %an:nondeterministic function local:test-company-name() as item
{
  let $expected := 
  [ {
    "Name" : "jpcrp-cor:NotesConsolidatedStatementOfCashFlowsHeading", 
    "Labels" : [ {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "en", 
      "Value" : "Notes - Consolidated statement of cash flows [heading]"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "ja", 
      "Value" : "連結キャッシュ・フロー計算書関係 [目次項目]"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "en", 
      "Value" : "Notes - Consolidated statement of cash flows"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "ja", 
      "Value" : "連結キャッシュ・フロー計算書関係"
    } ], 
    "Label" : "連結キャッシュ・フロー計算書関係", 
    "IsNillable" : true, 
    "IsAbstract" : true, 
    "PeriodType" : "duration", 
    "SubstitutionGroup" : "iod:identifierItem", 
    "DataType" : "xbrli:stringItemType", 
    "BaseType" : "xs:string", 
    "ClosestSchemaBuiltinType" : "xs:string", 
    "IsTextBlock" : false, 
    "ComponentRole" : "http://disclosure.edinet-fsa.go.jp/role/jpcrp/rol_NotesConsolidatedStatementOfCashFlows", 
    "ComponentLabel" : "連結キャッシュ・フロー計算書関係", 
    "Archive" : "S10028XL"
  }, {
    "Name" : "jpcrp-cor:NotesConsolidatedStatementOfCashFlowsHeading", 
    "Labels" : [ {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "en", 
      "Value" : "Notes - Consolidated statement of cash flows [heading]"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/verboseLabel", 
      "Language" : "ja", 
      "Value" : "連結キャッシュ・フロー計算書関係 [目次項目]"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "en", 
      "Value" : "Notes - Consolidated statement of cash flows"
    }, {
      "Role" : "http://www．xbrl．org/2003/role/label", 
      "Language" : "ja", 
      "Value" : "連結キャッシュ・フロー計算書関係"
    } ], 
    "Label" : "連結キャッシュ・フロー計算書関係", 
    "IsNillable" : true, 
    "IsAbstract" : true, 
    "PeriodType" : "duration", 
    "SubstitutionGroup" : "iod:identifierItem", 
    "DataType" : "xbrli:stringItemType", 
    "BaseType" : "xs:string", 
    "ClosestSchemaBuiltinType" : "xs:string", 
    "IsTextBlock" : false, 
    "ComponentRole" : "http://disclosure.edinet-fsa.go.jp/role/jpcrp/rol_CabinetOfficeOrdinanceOnDisclosureOfCorporateInformationEtcFormNo3AnnualSecuritiesReport", 
    "ComponentLabel" : "企業内容等の開示に関する内閣府令 第三号様式 有価証券報告書", 
    "Archive" : "S10028XL"
  } ]
  let $endpoint := "report-elements"
  let $params := {cik:"E01225", name:"jpcrp-cor:NotesConsolidatedStatementOfCashFlowsHeading"}
  let $request := test:invoke($endpoint, $params)
  let $status as integer := $request[1]
  let $actual as array? := $request[2].ReportElements
  return test:assert-deep-equal($expected, $actual, $status, test:url($endpoint, $params))
};

declare %an:sequential function local:check($o as object) as object
{
    if (not(every $k in (keys($o) ! $o.$$) satisfies ($k instance of boolean and $k)))
    then {
            response:status-code(500);
            $o
    } else
            $o
};

local:check({
    taxonomy-label: local:test-taxonomy-label(),
    taxonomy-name: local:test-taxonomy-name(),
    company-label: local:test-company-label(),
    company-name: local:test-company-name()
})
