'use strict';

angular
    .module('report-editor')
    .directive('formulaEditor', function($state, Rule){
        return {
            restrict: 'E',
            scope: {
                'report': '=',
                'languageType': '=',
                'conceptName': '=',
                'ruleId': '=',
                'type': '@'
            },
            templateUrl: '/modules/ui/formula-editor.html',
            link: function($scope) {
                $scope.error = undefined;
                if($scope.languageType === ''){
                    $scope.languageType = undefined;
                }

                var redirectToParent = function(){
                    var current = $state.current.name;
                    if(current.indexOf('.computation.') > -1){
                        $state.go('report.taxonomy.concept.formula.computation.list');
                    } else {
                        $state.go('report.taxonomy.concept.formula.validations.list');
                    }
                };

                var initFormula = function() {
                    if ($scope.ruleId !== undefined && $scope.ruleId !== null) {
                        $scope.action = 'Update';
                        // do not edit the original rule directly
                        var ruleModel = angular.copy($scope.report.getRule($scope.ruleId));
                        if (ruleModel.Type === 'xbrl28:validation') {
                            $scope.title = 'Edit Rule to Validate ' + ruleModel.ValidatedConcepts;
                        } else {
                            $scope.title = 'Edit Rule to Compute ' + ruleModel.ComputableConcepts;
                        }
                        $scope.formula = new Rule(ruleModel, $scope.report);
                        $scope.formula.compile();
                        $scope.formula.validate($scope.report, $scope.action);
                    } else {
                        if ($scope.type === 'validation') {
                            $scope.title = 'Create a New Rule to Validate ' + $scope.conceptName;
                        } else {
                            $scope.title = 'Create a New Rule to Compute ' + $scope.conceptName;
                        }
                        var ruleType = 'xbrl28:formula';
                        if ($scope.type === 'validation') {
                            ruleType = 'xbrl28:validation';
                        }
                        $scope.action = 'Create';
                        $scope.formula = new Rule(ruleType, $scope.report, $scope.conceptName, $scope.languageType);
                        $scope.formula.compile();
                        $scope.formula.validate($scope.report, $scope.action);
                    }
                };

                $scope.validate = function(updateDependencies){
                    $scope.formula.validate($scope.action, updateDependencies);
                };

                $scope.compilePrereq = function(index, async){
                    $scope.formula.compilePrereq(index, async, $scope.action);
                };

                $scope.compileBody = function(index, async){
                    $scope.formula.compileBody(index, async, $scope.action);
                };

                $scope.ok = function(){
                    if ($scope.action === 'Create') {
                        try {
                            $scope.error = undefined;
                            var rule = $scope.formula.getRule();
                            var concept = rule.ComputableConcepts[0];
                            if(rule.Type === 'xbrl28:validation' && rule.OriginalLanguage === 'SpreadsheetFormula' &&
                                !$scope.report.existsConcept(concept) && rule.ValidatedConcepts) {
                                var validatedConceptName = rule.ValidatedConcepts[0];
                                var validatedConcept = $scope.report.getConcept(validatedConceptName);
                                // in the simple formula case we automatically create a concept
                                // for a newly created validation formula
                                $scope.report.addConcept(concept, rule.Label, false, validatedConcept.PeriodType, validatedConcept.DataType, validatedConcept.Balance);
                            }
                            $scope.report.createRule(rule);
                        } catch (e) {
                            $scope.error = e.message;
                        }
                    } else if($scope.action === 'Update'){
                        try {
                            $scope.error = undefined;
                            $scope.report.updateRule($scope.formula.getRule());
                        } catch (e) {
                            $scope.error = e.message;
                        }
                    }
                    if ($scope.error === undefined) {
                        $scope.formula = undefined;
                        redirectToParent();
                    }
                };

                $scope.cancel = function(){
                    $scope.formula = undefined;
                    redirectToParent();
                };

                $scope.onSelectTypeAhead = function(updateDependencies){
                    $scope.formula.validate($scope.action, updateDependencies);
                };

                initFormula();

                $scope.tooltipPlacement = 'top';
                $scope.availableConceptNames = $scope.formula.listAvailableConceptNames();
                $scope.$watch(function () {
                    if($scope.formula === undefined){
                        return undefined;
                    } else {
                        return $scope.formula.listConcepts();
                    }
                }, function () {
                    if($scope.formula !== undefined) {
                        $scope.availableConceptNames = $scope.formula.listAvailableConceptNames();
                        $scope.formula.validate($scope.action, true);
                    }
                });
            }
        };
    })
;
