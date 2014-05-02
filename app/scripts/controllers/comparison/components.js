'use strict';

angular.module('main').controller('ComparisonComponentsCtrl', function ($scope, $stateParams, $http, $modal, $backend) {
    $scope.results = [];
    $scope.reportElementNames = [];
    $scope.disclosureNames = [];
    $scope.errornoresults = false;

    if ($stateParams.disclosure) {
        $scope.searchDisclosure = $stateParams.disclosure;
        $scope.selection.disclosure = $scope.searchDisclosure;
    }
            
    if ($stateParams.reportElement) {
        $scope.searchReportElement = $stateParams.reportElement;
        $scope.selection.reportElement = $scope.searchReportElement;
    }
    
    if ($stateParams.label) {
        $scope.searchLabel = $stateParams.label;
        $scope.selection.label = $scope.searchLabel;
    }

    //refresh the typeaheads
    $scope.reportElementNames = [];
    $scope.disclosureNames = [];
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

    $http({
        url: $backend.API_URL + '/_queries/public/Disclosures.jq',
        method: 'GET'
    })
    .success(function(data) {
        $scope.disclosureNames = data;
    })
    .error(function(data, status) {
        $scope.$emit('error', status, data);
    });

    //load the data
    if ($scope.selection && (
        $scope.selection.disclosure ||
        $scope.selection.reportElement ||
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
            sic: $scope.selection.sic,
            disclosure: $scope.selection.disclosure,
            reportElement: $scope.selection.reportElement,
            label: $scope.selection.label,
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

    $scope.submit = function() {
        if (!$scope.searchDisclosure && !$scope.searchReportElement && !$scope.searchLabel) {
            $scope.$emit('alert', 'Fields required for search', 'The disclosure, report element, or label are required for the search.');
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
        if ($scope.searchLabel)
        {
            $scope.selection.label = $scope.searchLabel;
        }
        else
        {
            delete $scope.selection.label;
        }
    };
    
    $scope.selectDisclosure = function() {
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
        if ($scope.searchLabel)
        {
            $scope.selection.label = $scope.searchLabel;
        }
        else
        {
            delete $scope.selection.label;
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
        var str = $backend.API_URL + '/_queries/public/api/components.jq';
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
