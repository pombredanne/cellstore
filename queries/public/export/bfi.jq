jsoniq version "1.0";
import module namespace http = "http://zorba.io/modules/http-client";
import module namespace request = "http://www.28msec.com/modules/http-request";

declare variable $id := "BasicFinancialInformation";
declare variable $report := parse-json(http:get("http://" || request:server-name() || ":" || request:server-port() || "/v1/_queries/public/export/fac.jq?_method=POST").body.content);
declare variable $desc :=
  "This report extends the fundamental accounting concepts report. Documentation about the fundamental accounting concepts defined in this report can be found at http://fundamentalaccountingconcepts.wikispaces.com/home";
declare variable $role := "http://xbrl.io/basic-financial-information";
declare variable $additionalRules :=
  (
    {
        "Id" : "gi_CommonStockSharesOutstanding",
        "Type" : "xbrl28:formula",
        "Label" : "CommonStockSharesOutstanding imputation",
        "Formula" : "(: workaround for bug: https://github.com/28msec/xbrl-infosetgenerator/issues/7 :)
                     let $aligned-filter-no-fiscal as object := 
    copy $new := $aligned-filter 
    modify (
	  if($new.Aspects.\"sec:FiscalPeriod\") then delete json $new.Aspects.\"sec:FiscalPeriod\" else (),
	  if($new.Aspects.\"sec:FiscalYear\") then delete json $new.Aspects.\"sec:FiscalYear\" else ()
	)
	return $new
for $facts in (facts:facts-for-internal((
      \"fac:CommonStockSharesOutstanding\"
    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options),
	facts:facts-for-internal((
      \"dei:EntityCommonStockSharesOutstanding\"
    ), $hypercube, $aligned-filter-no-fiscal, $concept-maps, $rules, $cache, $options)
	)
let $aligned-period := year-from-date(xs:date(( facts:duration-for-fact($facts).End, facts:instant-for-fact($facts))[1]))
group by $canonical-filter-string := 
  facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\", $facts:PERIOD))
  , $aligned-period
let $warnings as string* := ()
let $CommonStockSharesOutstanding as object* := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CommonStockSharesOutstanding\"]
let $EntityCommonStockSharesOutstanding as object* := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"dei:EntityCommonStockSharesOutstanding\"]
let $warnings := ($warnings, if(count($CommonStockSharesOutstanding) gt 1)
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
let $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]
return
  switch (true)
  case exists($CommonStockSharesOutstanding) return $CommonStockSharesOutstanding
  case (exists($EntityCommonStockSharesOutstanding) and true)
  return
    let $computed-value := rules:decimal-value($EntityCommonStockSharesOutstanding)
    let $audit-trail-message as string* := 
      rules:fact-trail({\"Aspects\": { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:CommonStockSharesOutstanding\" }, Value: $computed-value }) || \" = \" || 
         rules:fact-trail($EntityCommonStockSharesOutstanding, \"EntityCommonStockSharesOutstanding\") || \" [\" || (facts:duration-for-fact($facts).End, facts:instant-for-fact($facts)) || \"]\"
    let $audit-trail-message as string* := ($audit-trail-message, $warnings)
    let $source-facts as object* := ($EntityCommonStockSharesOutstanding)
    return
      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))
      then
        copy $newfact :=
          rules:create-computed-fact(
            $EntityCommonStockSharesOutstanding,
            \"fac:CommonStockSharesOutstanding\",
            $computed-value,
            $rule,
            $audit-trail-message,
            $source-facts,
            $options)
        modify (
            replace value of json $newfact(\"Decimals\") with 2
          )
        return $newfact
      else
        rules:create-computed-fact(
          $EntityCommonStockSharesOutstanding,
          \"fac:CommonStockSharesOutstanding\",
          $computed-value,
          $rule,
          $audit-trail-message,
          $source-facts,
            $options)
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
let $concepts :=
    {
      "fac:CommonStockSharesAuthorized": {
        "Name" : "fac:CommonStockSharesAuthorized",
        "Label" : "Common Stock Shares (authorized)",
        "Id" : "e7c449eb-4e1b-4d20-af35-b783cfdab03e"
      },
      "fac:CommonStockSharesIssued": {
        "Name" : "fac:CommonStockSharesIssued",
        "Label" : "Common Stock Shares (issued)",
        "Id" : "a8a4ae32-0424-437e-a645-428398f95f9c"
      },
      "fac:CommonStockSharesOutstanding": {
        "Name" : "fac:CommonStockSharesOutstanding",
        "Label" : "Common Stock Shares (outstanding)",
        "Id" : "f51e72c7-a3ce-4639-99b0-47ca36d54a7b"
      }
    }
let $genInfo := $presentation.Trees."fac:FundamentalAccountingConceptsLineItems".To."fac:FundamentalAccountingConceptsHierarchy".To."fac:GeneralInformationHierarchy"
return
  {
    replace value of json $presentation.LinkRole with $role;
    replace value of json $genInfo.To with {| ( $genInfo.To, $concepts ) |};
  }

(: Hypercube :)
let $conceptsDomain := $report.Hypercubes."xbrl:DefaultHypercube".Aspects."xbrl:Concept".Domains."xbrl:ConceptDomain"
let $concepts :=
    {
      "fac:CommonStockSharesAuthorized": {
        "Name" : "fac:CommonStockSharesAuthorized",
        "Label" : "Common Stock Shares (authorized)",
        "Id" : "e7c449eb-4e1b-4d20-af35-b783cfdab03e"
      },
      "fac:CommonStockSharesIssued": {
        "Name" : "fac:CommonStockSharesIssued",
        "Label" : "Common Stock Shares (issued)",
        "Id" : "a8a4ae32-0424-437e-a645-428398f95f9c"
      },
      "fac:CommonStockSharesOutstanding": {
        "Name" : "fac:CommonStockSharesOutstanding",
        "Label" : "Common Stock Shares (outstanding)",
        "Id" : "f51e72c7-a3ce-4639-99b0-47ca36d54a7b"
      }
    }
return
  replace value of json $conceptsDomain.Members with {| $conceptsDomain.Members, $concepts |};

(: ConceptMap :)
let $conceptMap := $report.Networks[][$$.ShortName eq "ConceptMap"]
let $mappings :=
    {
      "fac:CommonStockSharesAuthorized" : {
        "Name" : "fac:CommonStockSharesAuthorized",
        "Label" : "Common Stock Shares (authorized)",
        "To" : {
          "us-gaap:CommonStockSharesAuthorized": {
            "Name" : "us-gaap:CommonStockSharesAuthorized",
            "Id" : "8ed0a312-9891-4d3d-b459-67604dce2124"
          }
        },
        "Id" : "372f39c9-c8ed-4654-a424-6f033bb0ddd2"

      },
      "fac:CommonStockSharesIssued" : {
        "Name" : "fac:CommonStockSharesIssued",
        "Label" : "Common Stock Shares (issued)",
        "To" : {
          "us-gaap:CommonStockSharesIssued": {
            "Name" : "us-gaap:CommonStockSharesIssued",
            "Id" : "1359b87e-5f75-49f3-849b-d410cc399b50"
          }
        },
        "Id" : "66226139-512f-4edd-8c18-6d7e307a1f66"
      },
      "fac:CommonStockSharesOutstanding" : {
        "Name" : "fac:CommonStockSharesOutstanding",
        "Label" : "Common Stock Shares (outstanding)",
        "To" : {
          "dei:EntityCommonStockSharesOutstanding": {
            "Name" : "dei:EntityCommonStockSharesOutstanding",
            "Id" : "b8d27670-5caa-411f-8305-860c0613c31f", 
            "Order" : 1
          },
          "us-gaap:CommonStockSharesOutstanding" : {
            "Id" : "a91849bd-0aa2-4f1c-8dcb-c85537bf36a8", 
            "Name" : "us-gaap:CommonStockSharesOutstanding", 
            "Order" : 2
          }
        },
        "Id" : "91b87448-a8dd-4739-9cdf-2cdaef6a4ff6"
      }
    }
return
  {
    replace value of json $conceptMap.LinkRole with $role;
    replace value of json $conceptMap.Trees with {| $conceptMap.Trees, $mappings |};
  }

(: DefinitionModel :)
replace value of json $report.DefinitionModels[1].Breakdowns.y[1].BreakdownTrees[1].LinkRole with $role;

(: remove default_zero rule :)
replace value of json $report.Rules with [ $report.Rules[][$$.Id ne "default_zero"] ];

{ "_id": $id,
  Archive: null,
  Label: "Basic Financial Information",
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
  Filters: {
    cik: [  ],
    tag: [ "DOW30" ],
    fiscalYear : [ 2013 ],
    fiscalPeriod : [ "FY" ],
    sic : [  ]
  }
}