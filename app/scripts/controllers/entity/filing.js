'use strict';

angular.module('main')
.controller('FilingCtrl', function($scope, $stateParams, $http, $backend, filing) {
    $scope.aid = $stateParams.aid;
    $scope.rut = $stateParams.rut;
    $scope.Statistics = filing.data.Statistics;
    $scope.filing = filing.data.Archives[0];
    $scope.EntityRegistrantName = $scope.filing.EntityRegistrantName;
    $scope.FiscalYear = $scope.filing.FiscalYear;
    $scope.FiscalPeriod = $scope.filing.FiscalPeriod;
});
