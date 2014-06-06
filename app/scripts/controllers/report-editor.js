'use strict';

angular.module('main')
//The report editor runs in a app container (unless the remaining of secxbrl.info) 
.directive('fullScreen', function($window){
    return {
        restrict: 'A',
        link: function($scope, element, attrs, ctrl){
            document.querySelector('html').classList.add('fullscreen');
            $scope.$on('$destroy', function(){
                document.querySelector('html').classList.remove('fullscreen');
            });
        }
    };
})
.factory('ReportEditorAPI', function(){
    return {
        api: 'http://secxbrld.xbrl.io/v1/_queries/public/reports',
        token: '0ed3b9a9-2795-412d-9863-6186d1cb64bc'
    };
})
.controller('Reports', function($rootScope, $scope, $modal, ReportEditorAPI) {

    $scope.token = ReportEditorAPI.token;
    $scope.api = ReportEditorAPI.api;
    
    $scope.newReport = function(){
        $modal.open({
            templateUrl: '/views/report-editor/new-report.html',
            controller: 'NewReportCtrl'
        });
    };
})
.controller('NewReportCtrl', function($scope, $modalInstance, Report, ReportAPI, ReportEditorAPI){
    var api = new ReportAPI(ReportEditorAPI.api);
    $scope.report = {};
    $scope.loading = false;
    $scope.ok = function(){
        $scope.loading = true;
        var report = new Report($scope.report.name, $scope.report.label, $scope.report.description, $scope.report.role);
        api.addOrReplaceOrValidateReport({
            report: report.model,
            $method: 'POST',
            token: ReportEditorAPI.token
        })
        .then(function(){
            $scope.loading = false;
            $modalInstance.close(); 
        })
        .catch(function(error){
            $scope.loading = false;
            console.error(error);
        });
    };
    
    $scope.cancel = function(){
        $modalInstance.close();
    };
})
.filter('ConceptFilter', function(){
    return function(concepts, filter, report, selectedConcept){
        var result = [];
        concepts.forEach(function(concept){
            var isAbstract = concept.IsAbstract === true;
            var isInPresentation = report.findInTree('Presentation', concept.Name).length > 0;
            var isInConceptMap = report.findInConceptMap(concept.Name).length > 0;
            var isInBusinessRule = report.findInRules(concept.Name).length > 0;
            if((filter.abstract === null && isAbstract === true) || (filter.abstract === true && isAbstract === false)) {
                return;
            }
            if((filter.presentation === null && isInPresentation === true) || (filter.presentation === true && isInPresentation === false)) {
                return;
            }
            if((filter.conceptMap === null && isInConceptMap === true) || (filter.conceptMap === true && isInConceptMap === false)) {
                return;
            }
            if((filter.businessRule === null && isInBusinessRule === true) || (filter.businessRule === true && isInBusinessRule === false)) {
                return;
            }
            if(concept.Name !== selectedConcept) {
                result.push(concept);
            }
        });
        return result;
    };
})
.controller('Report', function($timeout, $rootScope, $scope, $state, $stateParams, $modal, ReportEditorAPI){

    console.log('Report');
    
    $scope.id = $stateParams.id;
    $scope.network = $stateParams.network;
    $scope.concept = $stateParams.concept;
    $scope.$watch('report', function(report){
        if(report){
            $scope.selectedConcept = $scope.report.getConcept($scope.concept);
        }
    });

    $scope.token = ReportEditorAPI.token;
    $scope.api = ReportEditorAPI.api;
    
    //TODO: throw appropriate 404 errors
    
    $scope.filter = {
        abstract: false,
        presentation: false,
        conceptMap: false,
        businessRule: false
    };
    
    $scope.selectConcept = function($item, $model, $label) {
        $state.go('report', { id: $scope.id, network: $scope.network, concept: $item.Name });
    };
    
    $scope.newConcept = function(){
        $modal.open({
            templateUrl: '/views/report-editor/new-concept.html',
            controller: 'NewConceptCtrl',
            resolve: {
                report: function(){
                    return $scope.report;
                },
                currentState: function(){
                    return {
                        id: $scope.id,
                        network: $scope.network
                    };
                }
            }
        }); 
    };
    
    $scope.removeConcept = function(){
        try {
            $scope.report.removeConcept($scope.selectedConcept.Name);
            $rootScope.$on('saved', function(){
                $state.go('report', { id: $scope.id, network: 'presentation', concept: undefined });
            });
        } catch(e) {
            console.log(e);
            $rootScope.$emit('error', 500, e.message);
        }
    };
    
    /*
    $scope.editConcept = function(concept){
        $modal.open({
            templateUrl: '/views/report-editor/edit-concept.html',
            controller: 'EditConceptCtrl',
            resolve: {
                report: function(){
                    return $scope.report;
                },
                concept: function(){
                    return concept;
                }
            }
        });  
    };
    */

    $scope.removeReport = function(report) {
        $modal.open({
            templateUrl: '/views/report-editor/remove-report.html',
            controller: 'RemoveReportCtrl',
            resolve: {
                report: function(){
                    return $scope.report;
                }
            }
        });
    };
    
    $rootScope.$on('removeConceptFromPresentationTree', function(e, id){
        $modal.open({
            templateUrl: '/views/report-editor/remove-concept-from-presentation-tree.html',
            controller: 'RemoveConceptFromPresentationTreeCtrl',
            resolve: {
                conceptId: function(){
                    return id;
                },
                report: function(){
                    return $scope.report; 
                }
            }
        });
    });

    $rootScope.$on('saving', function(){
        $scope.status = 'saving';
    });

    $rootScope.$on('saved', function(){
        $scope.status = undefined;
        //$scope.status = 'saved';
        //$timeout(function(){
        //    $scope.status = undefined;
        //}, 2000);
    });

    $rootScope.$on('savingError', function() {
        $scope.status = 'savingError';
        $rootScope.$emit('error', 500, $scope.error);
        $timeout(function(){
            $scope.status = undefined;
        }, 2000);
    });
})
.controller('RemoveReportCtrl', function($state, $rootScope, $scope, $modalInstance, report, ReportAPI, ReportEditorAPI){

    var api = new ReportAPI(ReportEditorAPI.api);
    $scope.report = report.model;
    $scope.ok = function(){
        api.removeReport({
            _id: report.model._id,
            $method: 'POST',
            token: ReportEditorAPI.token
        })
        .then(function(){
            $state.go('reports');
            $modalInstance.close();
        })
        .catch(function(error){
            $scope.loading = false;
            console.error(error);
            $rootScope.$emit('error', 500, error);
        });
    };

    $scope.cancel = function(){
        $modalInstance.close();
    };
})
/*
.controller('EditConceptCtrl', function($rootScope, $scope, report, concept, $modalInstance){

    $scope.concept = angular.copy(concept);

    $scope.remove = function(){
        try {
        report.removeConcept($scope.concept.Name);
        } catch(e) {
            console.log(e);
            $rootScope.$emit('error', 500, e.message);
        }
        $modalInstance.close();
    };

    $scope.edit = function(){
        report.updateConcept($scope.concept.Name, $scope.concept.Label, $scope.concept.IsAbstract);
        $modalInstance.close();
    };

    $scope.cancel = function(){
        $modalInstance.close();
    };
})
*/
.controller('NewConceptCtrl', function($rootScope, $state, $scope, $modalInstance, report, currentState){

    $scope.concept = {
        name: '',
        concept: '',
        abstract: false
    };

    $scope.ok = function(){
        try {
            report.addConcept($scope.concept.name, $scope.concept.label, $scope.concept.abstract);
        } catch(e) {
            console.log(e);
            $rootScope.$emit('error', 500, e.message);
            return;
        }
        $scope.loading = true;
        $rootScope.$on('saved', function(){
            $state.go('report', { id: currentState.id, network: currentState.network, concept: $scope.concept.name });
            $modalInstance.close();
        });
    };

    $scope.cancel = function(){
        $modalInstance.close();
    };
})
.controller('RemoveConceptFromPresentationTreeCtrl', function($scope, $modalInstance, report, conceptId){
    $scope.ok = function(){
        report.removeTreeBranch('Presentation', conceptId);
        $modalInstance.close();
    };

    $scope.cancel = function(){
        $modalInstance.close();
    };
})
.directive('indeterminate', [function() {
    return {
      require: '?ngModel',
      link: function(scope, el, attrs, ctrl) {
        var truthy = true;
        var falsy = false;
        var nully = null;
        ctrl.$formatters = [];
        ctrl.$parsers = [];
        ctrl.$render = function() {
          var d = ctrl.$viewValue;
          el.data('checked', d);
          switch(d){
          case truthy:
            el.prop('indeterminate', false);
            el.prop('checked', true);
            break;
          case falsy:
            el.prop('indeterminate', false);
            el.prop('checked', false);
            break;
          default:
            el.prop('indeterminate', true);
          }
        };
        el.bind('click', function() {
          var d;
          switch(el.data('checked')){
          case falsy:
            d = truthy;
            break;
          case truthy:
            d = nully;
            break;
          default:
            d = falsy;
          }
          ctrl.$setViewValue(d);
          scope.$apply(ctrl.$render);
        });
      }
    };
  }])
;