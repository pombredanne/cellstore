'use strict';

angular.module('main')
.controller('ComparisonFilingsCtrl', function($rootScope, $scope, $backend, $stateParams, filings) {
    $scope.filings = null;
    $scope.error = false;
    $scope.errornoresults = false;

    $scope.filings = filings.Archives;
    $scope.errornoresults = ($scope.filings.length === 0);

    $rootScope.$$listeners.SelectionChanged=[];
    $rootScope.$on('SelectionChanged', function(event, selection) {
        $backend.Queries.listFilings({
            _method: 'POST',
            cik: selection.cik,
            tag: selection.tag,
            fiscalYear: selection.fiscalYear,
            fiscalPeriod: selection.fiscalPeriod,
            sic: selection.sic,
            token: $rootScope.token
        })
        .then(function(filings){
                $scope.filings = filings.Archives;
                $scope.errornoresults = ($scope.filings.length === 0);
            });
    });

    $scope.getExportURL = function(format) {
        return $backend.API_URL + '/_queries/public/api/filings.jq?_method=POST&fiscalPeriod=' + $scope.selection.fiscalPeriod + '&fiscalYear=' + $scope.selection.fiscalYear + '&tag=' + $scope.selection.tag + '&sic=' + $scope.selection.sic + '&format=' + format + '&token=' + $scope.token;
    };
});
