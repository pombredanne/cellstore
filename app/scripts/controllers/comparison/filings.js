'use strict';

angular.module('main')
.controller('ComparisonFilingsCtrl', function($scope, $backend, filings) {
    $scope.filings = null;
    $scope.error = false;
    $scope.errornoresults = false;

    $scope.filings = filings.Archives;
    $scope.errornoresults = ($scope.filings.length === 0);
    
    $scope.getExportURL = function(format) {
        return $backend.API_URL + '/_queries/public/api/filings.jq?_method=POST&fiscalPeriod=' + $scope.selection.fiscalPeriod + '&fiscalYear=' + $scope.selection.fiscalYear + '&tag=' + $scope.selection.tag + '&sic=' + $scope.selection.sic + '&format=' + format + '&token=' + $scope.token;
    };
});
