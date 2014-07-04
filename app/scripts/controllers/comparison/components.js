'use strict';

angular.module('main').controller('ComparisonComponentsCtrl', function ($scope, $stateParams, $modal, $backend, reportElements, disclosures, components) {
    $scope.results = [];
    $scope.reportElementNames = [];
    $scope.disclosureNames = [];
    $scope.errornoresults = false;
    $scope.Statistics = {};
    
    if ($stateParams.disclosure) {
        $scope.searchDisclosure = $stateParams.disclosure;
        $scope.selection.disclosure = $scope.searchDisclosure;
        $scope.searchType = 'disclosure';
    }
            
    if ($stateParams.reportElement) {
        $scope.searchReportElement = $stateParams.reportElement;
        $scope.selection.reportElement = $scope.searchReportElement;
        $scope.searchType = 'reportElement';
    }
    
    if ($stateParams.label) {
        $scope.searchLabel = $stateParams.label;
        $scope.selection.label = $scope.searchLabel;
        $scope.searchType = 'label';
    }

    if (!$scope.searchType)
    {
        $scope.searchType = $stateParams.type || 'disclosure';
    }
    $scope.selection.type = $scope.searchType;

    //refresh the typeaheads
    $scope.reportElementNames = reportElements.ReportElements || [];
    $scope.disclosureNames = disclosures.data || [];

    //load the data
    if ($scope.selection &&
        (($scope.selection.type === 'disclosure' && $scope.selection.disclosure) ||
         ($scope.selection.type === 'reportElement' && $scope.selection.reportElement) ||
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
        if ($scope.selection.type === 'disclosure') {
            $scope.params.disclosure = $scope.selection.disclosure;
        }
        if ($scope.selection.type === 'reportElement') {
            $scope.params.reportElement = $scope.selection.reportElement;
        }
        if ($scope.selection.type === 'label') {
            $scope.params.label = $scope.selection.label;
        }

        components.Archives.forEach(function (archive) {
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
        $scope.Statistics = components.Statistics;
        $scope.errornoresults = ($scope.results.length === 0);
    }

    $scope.submit = function() {
        if ($scope.searchType === 'disclosure' && !$scope.searchDisclosure) {
            $scope.$emit('alert', 'Mandatory field', 'The disclosure is required for the search.');
            return false;
        }
        if ($scope.searchType === 'reportElement' && !$scope.searchReportElement) {
            $scope.$emit('alert', 'Mandatory field', 'The report element is required for the search.');
            return false;
        }
        if ($scope.searchType === 'label' && !$scope.searchLabel) {
            $scope.$emit('alert', 'Mandatory field', 'The label is required for the search.');
            return false;
        }

        $scope.selection.type = $scope.searchType;
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
    
    $scope.selectType = function() {
        $scope.selection.type = $scope.searchType;
        switch ($scope.selection.type)
        {
            case 'disclosure':
                delete $scope.selection.reportElement;
                delete $scope.selection.label;
                break;
            case 'reportElement':
                delete $scope.selection.disclosure;
                delete $scope.selection.label;
                break;
            case 'label':
                delete $scope.selection.disclosure;
                delete $scope.selection.reportElement;
                break;
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
    };
    
    $scope.selectReportElement = function() {
        if ($scope.searchReportElement)
        {
            $scope.selection.reportElement = $scope.searchReportElement;
        }
        else
        {
            delete $scope.selection.reportElement;
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
