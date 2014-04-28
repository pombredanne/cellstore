'use strict';

/*globals accounting*/

angular.module('main')
.controller('ComparisonValidationsDashboardCtrl', function($scope, $http, $location, $state, $backend, QueriesService) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.selection = {};
    $scope.showtab = [];
    $scope.reports = [];
    $scope.reportname = 'FundamentalAccountingConcepts';
    $scope.filings = null;
    $scope.error = false;
    $scope.errormany = false;
    
    $scope.$on('filterChanged', function(event, selection) {
        $scope.selection = angular.copy(selection);
        if (!selection) { return; }
        
        $location.search($scope.selection);
        
        $scope.filings = null;
        $scope.error = false;
        $scope.errormany = false;

        $scope.service.listFilings({
            $method: 'POST',
            cik: selection.cik,
            tag: selection.tag,
            fiscalYear: selection.fiscalYear,
            fiscalPeriod: selection.fiscalPeriod,
            token: $scope.token
        }).then(function(data) {
            $scope.filings = [];
            data.Archives.forEach(function(a) { $scope.filings.push(a.AccessionNumber); });
            if ($scope.filings.length > 30 && !$scope.nomany) {
                $scope.reports = [];
                $scope.errormany = true;
            } else {
                $scope.getInfo();
            }
        },
        function(response) {
            $scope.$emit('error', response.status, response.data);
        });
    });

    $scope.getInfo = function() {
        
        $scope.reports = [];
        $scope.params = {
                _method: 'POST',
                aid: $scope.filings,
                report: $scope.reportname,
                'token' : $scope.token,
            };
        $http({
            method: 'GET',
            url: $backend.API_URL + '/_queries/public/ValidationStatisticsForReportSchema.jq',
            params: $scope.params,
            cache: false
        })
        .success(function (data) {
            if (data.length > 0)
            {
              $scope.reports = data;
            }
            for (var i = 0; i < data.length; i++)
            {
              $scope.showtab.push(true);
            }
            $scope.error = false;
            $scope.errormany = false;
        })
        .error(function (data, status) {
            if (status === 401) {
                $scope.error = true;
            } else {
                $scope.$emit('error', status, data);
            }
        });
    };

    $scope.forceShow = function() {
        $scope.nomany=true;
        $scope.getInfo();
    };

    $scope.drill = function(cik, year, period) {
        $state.go('root.entity.information', { cik: cik, year: year, period: period });
    };

    $scope.isBlock = function(string) {
        if (!string) {
            return false;
        }
        return string.length > 60;
    };

    $scope.showText = function(html) {
        $scope.$emit('alert', 'Text Details', html);
    };

    $scope.getUrl = function(format) {
        var str = $backend.API_URL + '/_queries/public/api/facts.jq';
        var params = angular.copy($scope.params);
        if (params) {
          params.cik = $scope.selection.cik;
          params.tag = $scope.selection.tag;
          params.fiscalYear = $scope.selection.fiscalYear;
          params.fiscalPeriod = $scope.selection.fiscalPeriod;
          params.concept = ["fac:PassedValidations", "fac:FailedValidations", "fac:NotApplicableValidations"];
          params.map = $scope.reportname;
          params.rules = $scope.reportname;
        }
        if (format) {
            params.format = format;
        }
        var qs = $scope.wwwFormUrlencoded(params);
        if (qs) {
            str += '?' + qs;
        }
        return str;
    };
    
    $scope.$on('$stateChangeSuccess', function(event, toState) {
        $scope.subActive = toState.data && toState.data.subActive;
    });
});
