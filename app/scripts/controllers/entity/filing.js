'use strict';

angular.module('main')
.controller('FilingCtrl', function($scope, $stateParams, $http, $backend, filing) {
    $scope.aid = $stateParams.aid;
    $scope.cik = $stateParams.cik;
    $scope.Statistics = filing.Statistics;
    $scope.filing = filing.Archives[0];
    $scope.EntityRegistrantName = $scope.filing.EntityRegistrantName;
    $scope.FiscalYear = $scope.filing.FiscalYear;
    $scope.FiscalPeriod = $scope.filing.FiscalPeriod;
});