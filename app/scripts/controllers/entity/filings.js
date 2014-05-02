'use strict';

angular.module('main')
.controller('FilingsCtrl', function($rootScope, $scope, $stateParams, $backend, filings) {
    $scope.filings = filings.Archives;
    
    $scope.getExportURL = function(format){
        return $backend.API_URL + '/_queries/public/api/filings.jq?rut=' + $scope.rut + '&format=' + format + '&_method=POST&token=' + $rootScope.token + '&fiscalYear=ALL&fiscalPeriod=ALL';
    };
});
