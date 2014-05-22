'use strict';


angular.module('main')
.controller('Reports', function($rootScope, $scope){
    //$scope.token = $rootScope.token;
    $scope.token = '0ed3b9a9-2795-412d-9863-6186d1cb64bc';
    $scope.api = 'http://secxbrld.xbrl.io/v1/_queries/public/reports';
})
.controller('Report', function($scope, $stateParams){
    $scope.id = $stateParams.id;
    $scope.token = '0ed3b9a9-2795-412d-9863-6186d1cb64bc';
    $scope.api = 'http://secxbrld.xbrl.io/v1/_queries/public/reports';
});