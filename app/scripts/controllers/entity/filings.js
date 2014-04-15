'use strict';

angular.module('main')
.controller('FilingsCtrl', function($rootScope, $scope, $stateParams, $backend, filings) {
    $scope.filings = filings.Archives;
    
    $scope.getExportURL = function(format){
        return $backend.API_URL + '/_queries/public/api/filings.jq?cik=' + $scope.cik + '&format=' + format + '&_method=POST&token=' + $rootScope.token;
    };
});
