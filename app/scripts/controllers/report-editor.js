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
.controller('Reports', function($rootScope, $scope, $modal, ReportEditorAPI){
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
.controller('Report', function($timeout, $rootScope, $scope, $state, $stateParams, $modal, ReportEditorAPI){

    $scope.id = $stateParams.id;
    $scope.network = $stateParams.network;
    $scope.concept = $stateParams.concept;

    $scope.token = ReportEditorAPI.token;
    $scope.api = ReportEditorAPI.api;
    
    //TODO: throw appropriate 404 errors
    
    $scope.newConcept = function(){
        $modal.open({
            templateUrl: '/views/report-editor/new-concept.html',
            controller: 'NewConceptCtrl',
            resolve: {
                report: function(){
                    return $scope.report; 
                }
            }
        }); 
    };
    
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
.controller('NewConceptCtrl', function($scope, report, $modalInstance){

    $scope.concept = {
        name: '',
        concept: '',
        abstract: false
    };

    $scope.ok = function(){
        report.addConcept($scope.concept.name, $scope.concept.label, $scope.concept.abstract);
        $modalInstance.close();
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
;