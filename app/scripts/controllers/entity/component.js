'use strict';

angular.module('main')
.controller('ComponentCtrl', function($scope, $stateParams, component) {
    
    $scope.cik = $stateParams.cik;
    $scope.aid = $stateParams.aid;
    $scope.networkIdentifier = $stateParams.networkIdentifier;
    
    $scope.archive = component.data.Archives[0];
    $scope.component = $scope.archive.Components[0];

    var p = $scope.component.NetworkLabel.lastIndexOf(' - ');
    if (p > 0) {
        $scope.NetworkLabel = $scope.component.NetworkLabel.substring(p + 3);
    } else {
        $scope.NetworkLabel = $scope.component.NetworkLabel;
    }
});