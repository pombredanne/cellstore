'use strict';

angular.module('main')
.controller('EntitiesCtrl', function($scope, $location, entities) {

    $scope.entities = entities;
    
	$scope.selectEntity = function(item) {
        $scope.cik = item.cik;
        $scope.name = item.name;
        $scope.ticker = item.tickers[0];
        $location.path('/entity/' + $scope.cik);
	};
});