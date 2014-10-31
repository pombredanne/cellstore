'use strict';

angular.module('secxbrl')
.controller('LoginCtrl', function($scope, $state, $stateParams, $location, $http, $window) {
    $scope.returnPage = $stateParams.returnPage;
    $scope.showCreateAccount = false;
});