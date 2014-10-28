'use strict';

angular.module('secxbrl')
.controller('AuthCtrl', function($scope, $state, $stateParams, $location, $http, $window) {
    $scope.returnPage = $stateParams.returnPage;

    $scope.back = function() {
        setTimeout(function() { $window.history.back(); }, 100);
    };
});