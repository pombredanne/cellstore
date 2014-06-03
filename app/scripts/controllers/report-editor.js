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
.controller('Reports', function($rootScope, $scope, ReportEditorAPI){
    $scope.token = ReportEditorAPI.token;
    $scope.api = ReportEditorAPI.api;
})
.controller('Report', function($timeout, $rootScope, $scope, $state, $stateParams, $modal, ReportEditorAPI){

    $scope.id = $stateParams.id;
    $scope.network = $stateParams.network;
    $scope.concept = $stateParams.concept;

    $scope.token = ReportEditorAPI.token;
    $scope.api = ReportEditorAPI.api;
    
    //TODO: throw appropriate 404 errors
    
    $scope.sortableOptions = {
        //placeholder: "sortable",
        //connectWith: ".sortable-container"
    };
    
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
        $scope.status = 'saved';
        $timeout(function(){
            $scope.status = undefined;
        }, 2000);
    });

    $rootScope.$on('savingError', function() {
        $scope.status = 'savingError';
        $rootScope.$emit('error', 500, $scope.error);
        $timeout(function(){
            $scope.status = undefined;
        }, 2000);
    });
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