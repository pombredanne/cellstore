'use strict';

angular.module('main')
.controller('ComparisonCtrl', function($scope, $location, $backend, QueriesService) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.selection = {};
    
    $scope.$on('filterChanged', function(event, selection) {
        $scope.selection = angular.copy(selection);
        if (!selection) { return; }
        
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
    
    $scope.$on('$stateChangeSuccess', function(event, toState) {
        $scope.subActive = toState.data && toState.data.subActive;
    });
    
    $scope.getExportURL = function(format){        
        return $backend.API_URL + '/_queries/public/api/filings.jq?_method=POST&fiscalPeriod=' + $scope.selection.fiscalPeriod + '&fiscalYear=' + $scope.selection.fiscalYear + '&tag=' + $scope.selection.tag + '&format=' + format + '&token=' + $scope.token;
    };
});
