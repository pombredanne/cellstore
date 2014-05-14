'use strict';

angular.module('main').controller('ComparisonReportElementsCtrl', function ($scope, $modal, $stateParams, $backend, reportElements, results) {
    $scope.results = [];
    $scope.errornoresults = false;
    $scope.Statistics = {};

    if ($stateParams.name) {
        $scope.searchName = $stateParams.name;
        $scope.selection.name = $scope.searchName;
    }

    if ($stateParams.label) {
        $scope.searchLabel = $stateParams.label;
        $scope.selection.label = $scope.searchLabel;
    }
    
    $scope.reportElementNames = reportElements.ReportElements || [];

    //load the data
    if ($scope.selection &&(
        $scope.selection.name ||
        $scope.selection.label))
    {
        $scope.params = {
            $method: 'POST',
            tag: $scope.selection.tag,
            cik: $scope.selection.cik,
            fiscalYear: $scope.selection.fiscalYear,
            fiscalPeriod: $scope.selection.fiscalPeriod,
            sic: $scope.selection.sic,
            name: $scope.selection.name,
            label: $scope.selection.label,
            token: $scope.token
        };
        $scope.results = results.ReportElements;
        $scope.Statistics = results.Statistics;
        $scope.errornoresults = ($scope.results.length === 0);
    }

    $scope.submit = function() {
        if (!$scope.searchName && !$scope.searchLabel) {
            $scope.$emit('alert', 'Fields required for search', 'The report element name or label are required for the search.');
            return false;
        }
        if ($scope.searchName)
        {
            $scope.selection.name = $scope.searchName;
        }
        else
        {
            delete $scope.selection.name;
        }
        if ($scope.searchLabel)
        {
            $scope.selection.label = $scope.searchLabel;
        }
        else
        {
            delete $scope.selection.label;
        }
    };

    $scope.selectName = function() {
        if ($scope.searchName)
        {
            $scope.selection.name = $scope.searchName;
        }
        else
        {
            delete $scope.selection.name;
        }
        if ($scope.searchLabel)
        {
            $scope.selection.label = $scope.searchLabel;
        }
        else
        {
            delete $scope.selection.label;
        }
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
}
);

