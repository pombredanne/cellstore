angular.module('main').controller('FilingsCtrl', function($scope, $route, results) {
    $scope.results = results;
    $scope.cik = $route.current.params.cik;
});