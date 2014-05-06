'use strict';

angular.module('main')
.controller('ComponentsCtrl', function($rootScope, $scope, $stateParams, $http, $backend, components) {
    $scope.results = [];
    $scope.API_URL = $backend.API_URL;
    $scope.AccessionNumber = $stateParams.accession;
    $scope.cik = $stateParams.cik;
    $scope.aid = $stateParams.aid;
    
    var a = components.Archives[0]; // must be only one because we query for only one accession number
    $scope.components = a.Components;
    $scope.EntityRegistrantName = a.EntityRegistrantName;
    $scope.FiscalYear = a.FiscalYear;
    $scope.FiscalPeriod = a.FiscalPeriod;
    $scope.AcceptanceDatetime = a.AcceptanceDatetime;
    $scope.FormType = a.FormType;
    $scope.Statistics = components.Statistics;
    
    $scope.trimTableURL = function(url) {
        if (url.length < 30) {
            return url;
        }
        return url.substr(0, 10) + '...' + url.substr(url.length - 20);
    };
    
    $scope.trimNetworkURL = function(url) {
        if (url.length < 50) {
            return url;
        }
        return url.substr(0, 20) + '...' + url.substr(url.length - 30);
    };
    
    $scope.getExportURL = function(format){
        return $backend.API_URL + '/_queries/public/api/components.jq?_method=POST&format=' + format + '&aid=' + $stateParams.aid + '&token=' + $rootScope.token;
    };
});
