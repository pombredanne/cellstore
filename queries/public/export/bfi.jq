jsoniq version "1.0";
import module namespace http = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";
import module namespace export = "http://apps.28.io/reports-export";

declare %an:nondeterministic function local:concept($name as string, $label as string, $detailed as xs:boolean) as object{
  {|
      {
        "Name" : $name,
        "Label" : $label
      },
      {
        "PeriodType" : "instant",
        "Labels" : [ {
          "Role" : "http://www.xbrl.org/2003/role/label",
          "Language" : "en-us",
          "Value" : $label
        } ],
        "IsAbstract" : false,
        "DataType" : "xbrli:sharesItemType",
        "BaseType" : "xbrli:shares",
        "ClosestSchemaBuiltinType" : "xs:decimal"
      }[$detailed]
  |}
};

declare %an:nondeterministic function local:concepts($detailed as xs:boolean) as object*{
  local:concept("fac:CommonStockSharesAuthorized","Common Stock Shares (authorized)", $detailed),
  local:concept("fac:CommonStockSharesIssued","Common Stock Shares (issued)", $detailed),
  local:concept("fac:CommonStockSharesOutstanding","Common Stock Shares (outstanding)", $detailed)
};

declare variable $id := "BasicFinancialInformation";
declare variable $report := parse-json(http:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/export/fac.jq?_method=POST").body.content);
declare variable $label := "Basic Financial Information";
declare variable $desc :=
  "This report extends the fundamental accounting concepts report. Documentation about the fundamental accounting concepts defined in this report can be found at http://fundamentalaccountingconcepts.wikispaces.com/home";
declare variable $role := "http://xbrl.io/basic-financial-information";
declare variable $additionalRules :=
  (
    {
        "Id" : "gi_CommonStockSharesOutstanding",
        "Type" : "xbrl28:formula",
        "Label" : "CommonStockSharesOutstanding imputation",
        "DependsOn" : [ "fac:Assets" ],
        "Formula" : "(: workaround for bug: https://github.com/28msec/xbrl-infosetgenerator/issues/7 :)
let $aligned-filter-no-fiscal as object := 
    copy $new := $aligned-filter 
    modify (
	if($new.Aspects.\"sec:FiscalPeriodType\") then delete json $new.Aspects.\"sec:FiscalPeriodType\" else (),
    if($new.Aspects.\"sec:FiscalPeriod\") then delete json $new.Aspects.\"sec:FiscalPeriod\" else (),
    if($new.Aspects.\"sec:FiscalYear\") then delete json $new.Aspects.\"sec:FiscalYear\" else ()
  )
  return $new
let $AllEntityCommonStockSharesOutstanding as object* := 
	facts:facts-for-internal((
      \"dei:EntityCommonStockSharesOutstanding\"
    ), $hypercube, $aligned-filter-no-fiscal, $concept-maps, $rules, $cache, $options)
for $facts in (facts:facts-for-internal((
      \"fac:CommonStockSharesOutstanding\", \"fac:Assets\"
    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)
  )
let $aligned-period := ( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts), \"forever\")[1]
group by $canonical-filter-string :=
  facts:canonical-grouping-key($facts, ($facts:CONCEPT, $facts:UNIT, $facts:PERIOD))
  , $aligned-period
let $archive as string := distinct-values($facts.$facts:ASPECTS.$facts:ARCHIVE)
let $warnings as string* := ()
let $CommonStockSharesOutstanding as object* := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CommonStockSharesOutstanding\"]
let $EntityCommonStockSharesOutstanding as object* := $AllEntityCommonStockSharesOutstanding[$$.$facts:ASPECTS.$facts:ARCHIVE eq $archive]
let $Assets as object* := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"]
let $warnings := ($warnings, if(count($Assets) gt 1)
                             then if(count(distinct-values($Assets.Value)) gt 1)
                                  then \"Cell collision with conflicting values for concept Assets.\"
                                  else \"Cell collision with consistent values for concept Assets.\"
                             else (),
                             if(count($CommonStockSharesOutstanding) gt 1)
                             then if(count(distinct-values($CommonStockSharesOutstanding.Value)) gt 1)
                                  then \"Cell collision with conflicting values for concept CommonStockSharesOutstanding.\"
                                  else \"Cell collision with consistent values for concept CommonStockSharesOutstanding.\"
                             else (),
							 if(count($EntityCommonStockSharesOutstanding) gt 1)
                             then if(count(distinct-values($EntityCommonStockSharesOutstanding.Value)) gt 1)
                                  then \"Cell collision with conflicting values for concept EntityCommonStockSharesOutstanding.\"
                                  else \"Cell collision with consistent values for concept EntityCommonStockSharesOutstanding.\"
                             else ())
let $CommonStockSharesOutstanding as object? := $CommonStockSharesOutstanding[1]
let $EntityCommonStockSharesOutstanding as object? := $EntityCommonStockSharesOutstanding[1]
let $Assets as object? := $Assets[1]
return
  switch (true)
  case exists($CommonStockSharesOutstanding) return $CommonStockSharesOutstanding
  case (exists($EntityCommonStockSharesOutstanding) and exists($Assets))
  return
    let $computed-value := rules:decimal-value($EntityCommonStockSharesOutstanding)
    let $audit-trail-message as string* := 
      rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : \"xbrli:shares\", \"xbrl:Concept\" : \"fac:CommonStockSharesOutstanding\" }, Value: $computed-value }) || \" = \" || 
         rules:fact-trail($EntityCommonStockSharesOutstanding, \"EntityCommonStockSharesOutstanding\") || \" [\" || (facts:duration-for-fact($EntityCommonStockSharesOutstanding).End, facts:instant-for-fact($EntityCommonStockSharesOutstanding)) || \"]\"
    let $audit-trail-message as string* := ($audit-trail-message, $warnings)
    let $source-facts as object* := ($EntityCommonStockSharesOutstanding)
    return
		copy $newfact :=
		  rules:create-computed-fact(
			$Assets,
			\"fac:CommonStockSharesOutstanding\",
			$computed-value,
			$rule,
			$audit-trail-message,
			$source-facts,
			$options)
		modify (
			if($newfact(\"Unit\")) 
			then replace value of json $newfact(\"Unit\") with \"xbrli:shares\"
			else insert json { \"Unit\": \"xbrli:shares\" } into $newfact,
			if($newfact.$facts:ASPECTS.$facts:UNIT) 
			then replace value of json $newfact.$facts:ASPECTS.$facts:UNIT with \"xbrli:shares\"
			else insert json { $facts:UNIT: \"xbrli:shares\" } into $newfact.$facts:ASPECTS
		  )
		return $newfact
  default return ()",
        "ComputableConcepts" : [ "fac:CommonStockSharesOutstanding" ]
      },
      {
          "Id" : "decimals_inf",
          "Type" : "xbrl28:formula",
          "Label" : "Align INF decimals",
          "Formula" : "for $fact in facts:facts-for-internal($concepts, $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)
                             return
                               if(string($fact.Decimals) eq \"INF\")
                               then
                                 let $concept := $fact.Aspects.\"xbrl:Concept\"
                                 let $audit-trail :=
                                   {
                                     \"Type\" : \"xbrl28:decimals-inf-alignment\",
                                     \"Label\" : \"Aligning Decimals to 3 instead of INF\",
                                     \"Message\" : $concept || \" = 0\",
                                     \"Data\" : {
                                       \"OutputConcept\" : $concept
                                     }
                                   }
                                 return
                                 copy $f := $fact
                                 modify (
                                     replace value of json $f.Decimals with 3,
                                     if(exists($f.AuditTrails))
                                     then append json $audit-trail into $f.AuditTrails
                                     else insert json { AuditTrails: [ $audit-trail ] } into $f
                                 )
                                 return $f
                               else $fact"
        }
  );

(: Presentation :)
let $presentation := $report.Networks[][$$.ShortName eq "Presentation"]
let $genInfo := $presentation.Trees[][$$.Name eq "fac:FundamentalAccountingConceptsLineItems"].To[][$$.Name eq "fac:FundamentalAccountingConceptsHierarchy"].To[][$$.Name eq "fac:GeneralInformationHierarchy"]
return
  {
    replace value of json $presentation.LinkRole with $role;
    replace value of json $genInfo.To with [ ( $genInfo.To[], local:concepts(false) ) ];
  }

(: Hypercube :)
let $concepts := $report.Hypercubes."xbrl28:ImpliedTable".Aspects."xbrl:Concept"
return
  replace value of json $concepts.Members with [ $concepts.Members[], local:concepts(false) ];

(: ConceptMap :)
let $conceptMap := $report.Networks[][$$.ShortName eq "ConceptMap"]
let $mappings as object* :=
    (
      {
        "Name" : "fac:CommonStockSharesAuthorized",
        "Label" : "Common Stock Shares (authorized)",
        "To" : [
          {
            "Name" : "us-gaap:CommonStockSharesAuthorized"
          }
        ]
      },
      {
        "Name" : "fac:CommonStockSharesIssued",
        "Label" : "Common Stock Shares (issued)",
        "To" : [
          {
            "Name" : "us-gaap:CommonStockSharesIssued"
          }
        ]
      },
      {
        "Name" : "fac:CommonStockSharesOutstanding",
        "Label" : "Common Stock Shares (outstanding)",
        "To" : [
          {
            "Name" : "dei:EntityCommonStockSharesOutstanding",
            "Order" : 1
          },
          {
            "Name" : "us-gaap:CommonStockSharesOutstanding",
            "Order" : 2
          }
        ]
      }
  )
return
  {
    replace value of json $conceptMap.LinkRole with $role;
    replace value of json $conceptMap.Trees with [ $conceptMap.Trees[], $mappings ];
  }

(: DefinitionModel :)
replace value of json $report.DefinitionModels[][1].Breakdowns.y[][1].BreakdownTrees[][1].LinkRole with $role;

(: remove default_zero rule :)
replace value of json $report.Rules with [ $report.Rules[][$$.Id ne "default_zero"] ];

export:cleanup(
    { "_id": $id,
      Archive: null,
      Label: $label,
      Description: $desc,
      Prefix: "fac",
      Role: $role,
      Owner: "charlie@prudena.com",
      LastModified: string(current-dateTime()),
      ACL: [],
      Networks: $report.Networks,
      Hypercubes: $report.Hypercubes,
      DefinitionModels: $report.DefinitionModels,
      Rules: [ for $rule in ($report.Rules[], $additionalRules)
               order by $rule.ComputableConcepts[][1], $rule.Id descending empty least
               return $rule ],
      Concepts: [ $report.Concepts[], local:concepts(true) ],
      Filters: {
        cik: [  ],
        tag: [ "DOW30" ],
        fiscalYear : [ 2013 ],
        fiscalPeriod : [ "FY" ],
        sic : [  ]
      }
    }
)