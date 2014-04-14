'use strict';

angular.module('main')
.controller('DisclosuresCtrl', function($scope, disclosures) {
    $scope.data = disclosures.data;

    $scope.rowReset = function() { $scope.row = 0; };
    $scope.rowIncrement = function() { $scope.row += 1; };

    $scope.getIndent = function(level) {
        return parseInt(level, 10) * 10;
    };
});