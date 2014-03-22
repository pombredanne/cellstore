'use strict';

angular.module('main')
.controller('FilingsCtrl', function($scope, $route, $backend, results) {
    $scope.API_URL = $backend.API_URL;
    $scope.results = results;
    $scope.cik = $route.current.params.cik;
});