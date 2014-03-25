'use strict';

angular.module('main')
.controller('ComponentsCtrl', function($scope, $route, $http, $backend) {
    $scope.results = [];
    $scope.API_URL = $backend.API_URL;
    $scope.AccessionNumber = $route.current.params.accession;
    $scope.cik = '';
    $scope.EntityRegistrantName = '';
    $scope.FiscalYear = '';
    $scope.FiscalPeriod = '';
    $scope.AcceptanceDatetime = '';
    $scope.FormType = '';
    $scope.getdata = function() {
        $http({
            method : 'GET',
            url: $backend.API_URL + '/_queries/public/api/components.jq',
            params : {
                '_method' : 'POST',
                'aid' : $scope.AccessionNumber,
                'token' : $scope.token
            }
        })
        .success(function(data) {
            var a = data.Archives[0]; // must be only one because we query for only one accession number
            $scope.results = a.Components;
            $scope.cik = a.CIK.substring(23);
            $scope.EntityRegistrantName = a.EntityRegistrantName;
            $scope.FiscalYear = a.FiscalYear;
            $scope.FiscalPeriod = a.FiscalPeriod;
            $scope.AcceptanceDatetime = a.AcceptanceDatetime;
            $scope.FormType = a.FormType;
        })
        .error(function(data, status) {
            $scope.$emit('error', status, data);
        });
    };
    $scope.getdata();
    
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
});
