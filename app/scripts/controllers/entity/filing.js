'use strict';

angular.module('main')
.controller('FilingCtrl', function($scope, $stateParams, $http, $backend, filing) {
    $scope.aid = $stateParams.aid;
<<<<<<< HEAD
    $scope.cik = $stateParams.cik;
    $scope.Statistics = filing.Statistics;
    $scope.filing = filing.Archives[0];
=======
    $scope.rut = $stateParams.rut;
    $scope.Statistics = filing.data.Statistics;
    $scope.filing = filing.data.Archives[0];
>>>>>>> cik/CIK -> rut/RUT
    $scope.EntityRegistrantName = $scope.filing.EntityRegistrantName;
    $scope.FiscalYear = $scope.filing.FiscalYear;
    $scope.FiscalPeriod = $scope.filing.FiscalPeriod;
});