'use strict';


angular.module('main')
.controller('Reports', function($rootScope, $scope){
    $scope.token = $rootScope.token;
    $scope.api = 'http://secxbrld.xbrl.io';
})
.controller('Report', function($scope, $stateParams){
    $scope.id = $stateParams.id;
});