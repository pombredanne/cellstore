'use strict';

angular.module('main').controller('ComparisonReportElementsCtrl', function ($scope, $modal, $location, $stateParams, $backend, reportElements, results) {
    $scope.results = [];
    $scope.errornoresults = false;
    $scope.Statistics = {};

    if ($stateParams.name) {
        $scope.searchName = $stateParams.name;
        $scope.selection.name = $scope.searchName;
        $scope.searchType = 'name';
    }

    if ($stateParams.label) {
        $scope.searchLabel = $stateParams.label;
        $scope.selection.label = $scope.searchLabel;
        $scope.searchType = 'label';
    }

    if (!$scope.searchType)
    {
        $scope.searchType = $stateParams.type || 'name';
    }
    $scope.selection.type = $scope.searchType;
    
    $scope.reportElementNames = reportElements.ReportElements || [];

    //load the data
    if ($scope.selection &&
        (($scope.selection.type === 'name' && $scope.selection.name) ||
         ($scope.selection.type === 'label' && $scope.selection.label)))
    {
        $scope.params = {
            _method: 'POST',
            tag: $scope.selection.tag,
            cik: $scope.selection.cik,
            fiscalYear: $scope.selection.fiscalYear,
            fiscalPeriod: $scope.selection.fiscalPeriod,
            sic: $scope.selection.sic,
            token: $scope.token
        };
        if ($scope.selection.type === 'name') {
            $scope.params.name = $scope.selection.name;
        }
        if ($scope.selection.type === 'label') {
            $scope.params.label = $scope.selection.label;
        }
        $scope.results = results.ReportElements;
        $scope.Statistics = results.Statistics;
        $scope.errornoresults = ($scope.results.length === 0);
    }

    $scope.submit = function() {
        if ($scope.searchType === 'name' && !$scope.searchName) {
            $scope.$emit('alert', 'Mandatory field', 'The name of the report element is required for the search.');
            return false;
        }
        if ($scope.searchType === 'label' && !$scope.searchLabel) {
            $scope.$emit('alert', 'Mandatory field', 'The label of the report element is required for the search.');
            return false;
        }

        $scope.selection.type = $scope.searchType;
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
    
    $scope.selectType = function() {
        $scope.selection.type = $scope.searchType;
        switch ($scope.selection.type)
        {
            case 'name':
                delete $scope.selection.label;
                break;
            case 'label':
                delete $scope.selection.name;
                break;
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
        var params = {};
        angular.extend(params, $scope.params);
        angular.extend(params, $location.search());
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

