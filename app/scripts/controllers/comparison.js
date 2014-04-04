'use strict';

angular.module('main')
.controller('ComparisonCtrl', function($scope, $location, $backend, QueriesService) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.selection = {};
    
    $scope.$on('filterChanged', function(event, selection) {
        $scope.selection = selection;
        if (!selection) { return; }
        
        console.log("memorizing..." + angular.toJson($scope.selection));

        $location.search($scope.selection);
        
        $scope.filings = null;
        $scope.error = false;

        $scope.service.listFilings({
            $method: 'POST',
            cik: selection.cik,
            tag: selection.tag,
            fiscalYear: selection.fiscalYear,
            fiscalPeriod: selection.fiscalPeriod,
            token: $scope.token
        })
        .then(function(data) {
            $scope.filings = data.Archives;
        },
        function(response) {
            if (response.status === '401') {
                $scope.error = true;
            } else {
                $scope.$emit('error', response.status, response.data);
            }
        });
    });
});
