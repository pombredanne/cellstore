angular.module('main').controller('FilingsCtrl', ['$scope', '$route', '$backend', 'results', 
    function($scope, $route, $backend, results) {
        $scope.API_URL = $backend.API_URL;
        $scope.results = results;
        $scope.cik = $route.current.params.cik;
    }
]);