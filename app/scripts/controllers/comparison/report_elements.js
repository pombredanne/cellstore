'use strict';

angular.module('main').controller('ComparisonReportElementsCtrl', function ($scope, $http, $modal, $stateParams, $backend) {
    $scope.results = [];
    $scope.errornoresults = false;

    if ($stateParams.name) {
        $scope.searchName = $stateParams.name;
        $scope.selection.name = $scope.searchName;
    }

    if ($stateParams.label) {
        $scope.searchLabel = $stateParams.label;
        $scope.selection.label = $scope.searchLabel;
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
    
    //refresh the typeaheads
    $scope.reportElementNames = [];
    $scope.service.listReportElements({
        $method : 'POST',
        onlyNames : true,
        cik: $scope.selection.cik,
        tag: $scope.selection.tag,
        fiscalYear: $scope.selection.fiscalYear,
        fiscalPeriod: $scope.selection.fiscalPeriod,
        sic: $scope.selection.sic,
        token: $scope.token
    }).then(function(data) {
        $scope.reportElementNames = data.ReportElements || [];
    },
    function(response) {
        $scope.$emit('error', response.status, response.data);
    });

    //load the data
    if ($scope.selection &&(
        $scope.selection.name ||
        $scope.selection.label))
    {
        $scope.errornoresults = false;
        $scope.results = [];

        $scope.params = {
            $method: 'POST',
            tag: $scope.selection.tag,
            cik: $scope.selection.cik,
            fiscalYear: $scope.selection.fiscalYear,
            fiscalPeriod: $scope.selection.fiscalPeriod,
            name: $scope.selection.name,
            label: $scope.selection.label,
            token: $scope.token
        };

        $scope.service.listReportElements($scope.params)
            .then(function (data) {
                $scope.results = data.ReportElements;
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
}
);

