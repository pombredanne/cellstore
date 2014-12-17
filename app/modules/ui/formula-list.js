'use strict';

angular
    .module('report-editor')
    .directive('formulaList', function($modal, $log){
        return {
            restrict: 'E',
            scope: {
                'conceptName': '@',
                'type': '@',
                'report': '='
            },
            templateUrl: '/modules/ui/formula-list.html',
            link: function($scope) {

                $scope.hasComputingRule = false;
                $scope.hasValidatingRules = false;
                $scope.rulesList = undefined;

                var updateRulesList = function(concept){
                    if(concept === undefined || concept === null){
                        $scope.rulesList = undefined;
                        $scope.hasComputingRule = false;
                        $scope.hasValidatingRules = false;
                    } else if($scope.type === 'computation'){
                        $scope.rulesList = $scope.report.listRules(concept);
                        if($scope.rulesList.length > 0){
                            $scope.hasComputingRule = true;
                        } else {
                            $scope.hasComputingRule = false;
                        }

                    } else if($scope.type === 'validation'){
                        $scope.rulesList = $scope.report.listValidatingRules(concept);
                        if($scope.rulesList.length > 0){
                            $scope.hasValidatingRules = true;
                        } else {
                            $scope.hasValidatingRules = false;
                        }
                    } else {
                        throw new Error('Unknown formula type ' + $scope.type + ' (computation or validation allowed).');
                    }
                };
                updateRulesList($scope.conceptName);

                $scope.$watch(function(){
                    return $scope.report.listRules();
                }, function(){
                    updateRulesList($scope.conceptName);
                }, true);

                $scope.removeRule = function(id){
                    var rule = $scope.report.getRule(id);
                    var concept = rule.ComputableConcepts[0];
                    if(rule.Type === 'xbrl28:validation' && rule.OriginalLanguage === 'SpreadsheetFormula' &&
                        $scope.report.existsConcept(concept)) {
                        try {
                            $scope.report.removeConcept(concept);
                        } catch(e){
                            $log.log('Info: automatic removal of validation concept '+ concept + ' failed. Reason: ' + e.name + ': ' + e.message);
                        }
                    }
                    $scope.report.removeRule(id);
                };

            }
        };
    })
;
