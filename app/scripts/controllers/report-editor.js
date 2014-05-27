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
    }
})
.controller('Reports', function($rootScope, $scope, ReportEditorAPI){
    $scope.token = ReportEditorAPI.token;
    $scope.api = ReportEditorAPI.api;
})
.controller('Report', function($scope, $state, $stateParams, ReportEditorAPI){
    $scope.id = $stateParams.id;
    $scope.network = $stateParams.network;
    $scope.concept = $stateParams.concept;

    $scope.token = ReportEditorAPI.token;
    $scope.api = ReportEditorAPI.api;
    
    //TODO: throw appropriate 404 errors
    $scope.tab = function(network){
        console.log(network);
        $state.go('report', { id: $scope.id, network: network, concept: $scope.concept });
    };
});