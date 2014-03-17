angular.module('main')
.controller('EntityDetailsCtrl', function($scope, name, cik, ticker, result){
    $scope.name = name;
    $scope.cik = cik;
    $scope.ticker = ticker;
    $scope.result = result.Entities[0];
});