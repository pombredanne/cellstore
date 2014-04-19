'use strict';

angular.module('main').controller('ComparisonReportElementsCtrl', function ($scope, $http, $modal, $location, $backend, QueriesService) {

    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.results = [];
    $scope.reportElementNames = [];
    $scope.errornoresults = false;

    $scope.$watch(
        function() {
            return angular.toJson($scope.selection);
        },
        function() {
            if ($scope.selection) {
                $location.search($scope.selection);
                if ($scope.selection && ($scope.selection.reportElement)) {
                    $scope.getValues();
                }
            }
        }
    );

    $scope.submit = function() {
        if (!$scope.searchDisclosure && !$scope.searchReportElement) {
            $scope.$emit('alert', 'Fields required for search', 'The disclosure or the report element are required for the search.');
            return false;
        }
        if ($scope.searchDisclosure)
        {
            $scope.selection.disclosure = $scope.searchDisclosure;
        }
        else 
        {
            delete $scope.selection.disclosure;
        }
        if ($scope.searchReportElement)
        {
            $scope.selection.reportElement = $scope.searchReportElement;
        }
        else 
        {
            delete $scope.selection.reportElement;
        }
    };
    
    $scope.selectReportElement = function() {
        if ($scope.searchDisclosure)
        {
            $scope.selection.disclosure = $scope.searchDisclosure;
        }
        else 
        {
            delete $scope.selection.disclosure;
        }
        if ($scope.searchReportElement)
        {
            $scope.selection.reportElement = $scope.searchReportElement;
        }
        else 
        {
            delete $scope.selection.reportElement;
        }
    };

    $scope.getValues = function () {
        $scope.errornoresults = false;
        $scope.results = [];

        $scope.params = {
            $method: 'POST',
            tag: $scope.selection.tag,
            cik: $scope.selection.cik,
            fiscalYear: $scope.selection.fiscalYear,
            fiscalPeriod: $scope.selection.fiscalPeriod,
            name: $scope.selection.reportElement,
            token: $scope.token
        };

        $scope.service.listComponents($scope.params)
            .then(function (data) {
                data.Archives.forEach(function (archive) {
                    archive.Components.forEach(function (component) {
                        var item = angular.copy(component);
                        angular.extend(item, {
                            'AccessionNumber': archive.AccessionNumber,
                            'CIK': (archive.CIK || '').substring(23),
                            'EntityRegistrantName': archive.EntityRegistrantName,
                            'FormType': archive.FormType,
                            'FiscalYear': archive.FiscalYear,
                            'FiscalPeriod': archive.FiscalPeriod,
                            'token': $scope.token
                        });
                        $scope.results[$scope.results.length] = item;
                    });
                });
                $scope.errornoresults = ($scope.results.length === 0);
            },
            function (response) {
                $scope.$emit('error', response.status, response.data);
            });
    };

    $scope.trimTableURL = function (url) {
        if (url.length < 30) {
            return url;
        }
        return url.substr(0, 10) + '...' + url.substr(url.length - 20);
    };

    $scope.trimNetworkURL = function (url) {
        if (url.length < 50) {
            return url;
        }
        return url.substr(0, 20) + '...' + url.substr(url.length - 30);
    };

    $scope.getUrl = function (format) {
        var str = $backend.API_URL + '/_queries/public/api/report-elements.jq';
        var params = angular.copy($scope.params);
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
}
);

