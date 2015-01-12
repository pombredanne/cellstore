'use strict';

var fs = require('fs');

var gulp = require('gulp');
var $ = require('gulp-load-plugins')();
var _ = require('lodash');
var Mustache = require('mustache');

var data = {
    'UniqueFacts': ['fac:NoncurrentAssets', 'fac:CurrentAssets', 'fac:Assets'],

    'Id': '5d5eefb8-d022-44b7-8575-cadd6d377469',
    'OriginalLanguage': 'SpreadsheetFormula',
    'Type': 'xbrl28:formula',
    'Label': 'Noncurrent Assets',
    'Description': 'Rule to compute Noncurrent Assets (fac:NoncurrentAssets).',
    'ComputableConcepts': [
        'NoncurrentAssets'
    ],
    'DependsOn': [
        'fac:CurrentAssets',
        'fac:Assets'
    ],
    'Formula': '\nfor $facts in facts:facts-for-internal((\n      \"fac:NoncurrentAssets\", \"fac:CurrentAssets\", \"fac:Assets\"\n    ), $hypercube, $aligned-filter, $concept-maps, $rules, $cache, $options)\nlet $duration-period as object? := facts:duration-for-fact($facts, {Typed: false })\nlet $instant-period as string?  := facts:instant-for-fact($facts, {Typed: false })\nlet $aligned-period as string  := ( $duration-period.End, $instant-period, \"forever\")[1]\ngroup by $canonical-filter-string :=\n  facts:canonical-grouping-key($facts, ($facts:CONCEPT, $facts:UNIT, $facts:PERIOD))\n  , $aligned-period\nfor $duration-string as string? allowing empty in distinct-values($facts[$$.Concept.PeriodType eq \"duration\"].$facts:ASPECTS.$facts:PERIOD)\nlet $facts := $facts[$$.$facts:ASPECTS.$facts:PERIOD = ($duration-string, $aligned-period)]\nlet $warnings as string* := ()\nlet $NoncurrentAssets as object* := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:NoncurrentAssets\"]\nlet $warnings := ($warnings, if(count($NoncurrentAssets) gt 1)\n                             then if(count(distinct-values($NoncurrentAssets.Value)) gt 1)\n                                  then \"Cell collision with conflicting values for concept NoncurrentAssets.\"\n                                  else \"Cell collision with consistent values for concept NoncurrentAssets.\"\n                             else ())\nlet $NoncurrentAssets as object? := $NoncurrentAssets[1]\nlet $CurrentAssets as object* := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:CurrentAssets\"]\nlet $warnings := ($warnings, if(count($CurrentAssets) gt 1)\n                             then if(count(distinct-values($CurrentAssets.Value)) gt 1)\n                                  then \"Cell collision with conflicting values for concept CurrentAssets.\"\n                                  else \"Cell collision with consistent values for concept CurrentAssets.\"\n                             else ())\nlet $CurrentAssets as object? := $CurrentAssets[1]\nlet $Assets as object* := $facts[$$.$facts:ASPECTS.$facts:CONCEPT eq \"fac:Assets\"]\nlet $warnings := ($warnings, if(count($Assets) gt 1)\n                             then if(count(distinct-values($Assets.Value)) gt 1)\n                                  then \"Cell collision with conflicting values for concept Assets.\"\n                                  else \"Cell collision with consistent values for concept Assets.\"\n                             else ())\nlet $Assets as object? := $Assets[1]\nlet $_unit := ($facts.$facts:ASPECTS.$facts:UNIT)[1]\nreturn\n  switch (true)\n  case exists($NoncurrentAssets) return $NoncurrentAssets\n  case (exists($Assets) and not((not(exists($CurrentAssets)))))\n  return\n    let $computed-value := rules:decimal-value($Assets) - rules:decimal-value($CurrentAssets)\n    let $audit-trail-message as string* := \n      rules:fact-trail({\"Aspects\': { \"xbrl:Unit\" : $_unit, \"xbrl:Concept\" : \"fac:NoncurrentAssets\" }, Value: $computed-value }) || \" = \" || \n         rules:fact-trail($Assets, \"Assets\") || \" - \" || rules:fact-trail($CurrentAssets, \"CurrentAssets\")\n    let $audit-trail-message as string* := ($audit-trail-message, $warnings)\n    let $source-facts as object* := ($NoncurrentAssets, $CurrentAssets, $Assets)\n    return\n      if(string(number($computed-value)) != \"NaN\" and not($computed-value instance of xs:boolean) and $computed-value ne xs:integer($computed-value))\n      then\n        copy $newfact :=\n          rules:create-computed-fact(\n            $Assets,\n            \"fac:NoncurrentAssets\",\n            $computed-value,\n            $rule,\n            $audit-trail-message,\n            $source-facts,\n            $options)\n        modify (\n            replace value of json $newfact(\"Decimals\") with 2\n          )\n        return $newfact\n      else\n        rules:create-computed-fact(\n          $Assets,\n          \"fac:NoncurrentAssets\",\n          $computed-value,\n          $rule,\n          $audit-trail-message,\n          $source-facts,\n            $options)\n  default return ()',
    'Formulae': [
    {
        'PrereqSrc': 'not(isblank(CurrentAssets))',
        'SourceFact': [
            'Assets'
        ],
        'BodySrc': 'Assets-CurrentAssets',
        'Prereq': {
            'Type': 'function',
            'Name': 'not',
            'Children': [
                {
                    'Type': 'function',
                    'Name': 'isblank',
                    'Children': [
                        {
                            'Type': 'variable',
                            'Name': 'CurrentAssets',
                            'ReturnType': 'mixed'
                        }
                    ],
                    'ReturnType': 'boolean'
                }
            ],
            'ReturnType': 'boolean'
        },
        'valid': true,
        'active': true,
        'Body': {
            'Type': 'sub',
            'Children': [
                {
                    'Type': 'variable',
                    'Name': 'Assets',
                    'ReturnType': 'mixed'
                },
                {
                    'Type': 'variable',
                    'Name': 'CurrentAssets',
                    'ReturnType': 'mixed'
                }
            ],
            'ReturnType': 'decimal'
        }
    }
],
    'AllowCrossPeriod': true,
    'AllowCrossBalance': true,
    'HideRulesForConcepts': [],
    'valid': true
};

gulp.task('codegen:impl', function(done){
    var ruleTpl = fs.readFileSync(__dirname + '/../app/modules/templates/excel-rule.jq.mustache', 'utf-8');
    var source = Mustache.render(ruleTpl, data);
    console.log(source);
    done();
});