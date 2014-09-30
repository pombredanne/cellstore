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
                     let $aligned-filter := trim($aligned-filter, (\"Profiles.SEC.Fiscal\"))
                     for $facts in  facts:facts-for-internal((
                             \"fac:CommonStockSharesOutstanding\"), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)
                     group by $canonical-filter-string :=
                                 facts:canonically-serialize-object($facts, ($facts:CONCEPT, \"_id\", \"IsInDefaultHypercube\", \"Type\", \"Value\", \"Decimals\", \"AuditTrails\", \"xbrl28:Type\", \"Balance\"))
                     for $CommonStockSharesOutstandingByArchive in $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CommonStockSharesOutstanding\"]
                     group by $CommonStockSharesOutstandingByArchive.Archive
                     return
                         let $source-fact :=
                             (
                                 for $CommonStockSharesOutstanding in $CommonStockSharesOutstandingByArchive
                                 order by $CommonStockSharesOutstanding.$facts:ASPECTS.$facts:PERIOD descending
                                 return $CommonStockSharesOutstanding
                             )[1]
                         let $value := rules:decimal-value($source-fact)
                         let $original-concept := $source-fact.AuditTrails[][$$.Type eq \"xbrl28:concept-maps\"].Data.OriginalConcept
                         let $audit-trail-message :=
                            rules:fact-trail({ \"Aspects\" : { \"xbrl:Unit\" : \"shares\", \"xbrl:Concept\" : $original-concept }, Value: $value }) || \" (as of latest practicable date: \" || $source-fact.$facts:ASPECTS.$facts:PERIOD
                            || \")\"
                         return
                             rules:create-computed-fact(
                                 $source-fact,
                                 \"fac:CommonStockSharesOutstanding\",
                                 $value,
                                 $rule,
                                 $audit-trail-message,
                                 $source-fact,
                                 $options)",
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
            "Id" : "b8d27670-5caa-411f-8305-860c0613c31f"
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

(: adapt default_zero rule :)
let $defaultZeroRule := $report.Rules[][$$.Id eq "default_zero"]
let $formula := replace($defaultZeroRule.Formula,
                        "\"fac:LiabilitiesAndEquity\"\\)",
                        "\"fac:LiabilitiesAndEquity\", \"fac:CommonStockSharesAuthorized\", \"fac:CommonStockSharesIssued\", \"fac:CommonStockSharesOutstanding\")"
                       )
return
  {
    replace value of json $defaultZeroRule.Formula with $formula;
  }

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
