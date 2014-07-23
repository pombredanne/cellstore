'use strict';

angular.module('main')
.controller('EntityDetailsCtrl', function($scope, name, rut, ticker, result){
    $scope.name = name;
    $scope.rut = rut;
    $scope.ticker = ticker;
    $scope.result = result.Entities[0];
});
