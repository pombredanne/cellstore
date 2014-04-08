'use strict';

angular.module('main')
.controller('ModelStructureCtrl', function($scope, $route, $http, $backend) {
    $scope.data = {};
    $scope.API_URL = $backend.API_URL;
    $scope.EntityRegistrantName = '';
    $scope.cik = '';
    $scope.Label = '';
    $scope.AccessionNumber = $route.current.params.accession;
    $scope.NetworkIdentifier = $route.current.params.networkIdentifier;
    $scope.Table = '';
    $scope.FiscalYear = '';
    $scope.FiscalPeriod = '';
    $scope.AcceptanceDatetime = '';
    $scope.FormType = '';
    $scope.Disclosure = '';

    $scope.getdata = function() {
        $http({
            method : 'GET',
            url: $backend.API_URL + '/_queries/public/api/modelstructure-for-component.jq',
            params : {
                '_method' : 'POST',
                'aid' : $scope.AccessionNumber,
                'networkIdentifier' : $scope.NetworkIdentifier,
                'token' : $scope.token
            }
        })
        .success(function(data) {
            $scope.data = data.ModelStructure;
            $scope.Label = data.Label;
            $scope.cik = (data.CIK || '').substring(23);
            $scope.EntityRegistrantName = data.EntityRegistrantName;
            $scope.NetworkIdentifier = data.NetworkIdentifier;
            var p = data.Label.lastIndexOf(' - ');
            if (p > 0) {
                $scope.component = data.Label.substring(p+3);
            } else {
                $scope.component = data.Label;
            }
            $scope.AccessionNumber = data.AccessionNumber;
            $scope.Table = data.TableName;
            $scope.FiscalYear = data.FiscalYear;
            $scope.FiscalPeriod = data.FiscalPeriod;
            $scope.AcceptanceDatetime = data.AcceptanceDatetime;
            $scope.FormType = data.FormType;
            $scope.Disclosure = data.Disclosure;
        })
        .error(function(data, status) {
            $scope.$emit('error', status, data);
        });
    };

    $scope.rowReset = function() { $scope.row = 0; };
    $scope.rowIncrement = function() { $scope.row += 1; };

    $scope.getIndent = function(level) {
        return parseInt(level, 10) * 20;
    };

    $scope.getPeriodType = function(per) {
        switch (per) {
        case 'duration':
            return 'For Period';
        case 'instant':
            return 'As Of';
        }
    };
  
    $scope.getDataType = function(datatype) {
        switch (datatype) {
        case 'dei:centralIndexKeyItemType':
            return 'CIK Number';
        case 'dei:countryItemType':
            return 'Country';
        case 'dei:currencyItemType':
            return 'Currency';
        case 'dei:filerCategoryItemType':
            return 'Filer Category';
        case 'dei:fiscalPeriodItemType':
            return 'Fiscal Period';
        case 'dei:nineDigitItemType Nine':
            return 'Digit Item';
        case 'dei:submissionTypeItemType':
            return 'Submission Type';
        case 'dei:yesNoItemType':
            return 'Yes/No';
        case 'nonnum:domainItemType':
            return '[Member]';
        case 'nonnum:escapedItemType':
            return 'XHTML';
        case 'nonnum:textBlockItemType':
            return 'Text Block (HTML)';
        case 'num:percentItemType':
            return 'Percent';
        case 'num:perShareItemType':
            return 'Share';
        case 'us-types:dateStringItemType':
            return 'Date String';
        case 'us-types:domainItemType':
            return '[Member]';
        case 'us-types:durationStringItemType':
            return 'Duration String';
        case 'us-types:perShareItemType':
            return 'Per Share';
        case 'us-types:perUnitItemType':
            return 'Per Unit';
        case 'us-types:textBlockItemType':
            return 'Text Block (HTML)';
        case 'us-types:yesNoItemType':
            return 'Yes/No';
        case 'xbrli:anyURIItemType':
            return 'URL';
        case 'xbrli:booleanItemType':
            return 'Yes/No';
        case 'xbrli:dateItemType':
            return 'Date';
        case 'xbrli:dateTimeItemType':
            return 'Date/Time';
        case 'xbrli:decimalItemType':
            return 'Decimal';
        case 'xbrli:gMonthDayItemType':
            return 'Month/Day';
        case 'xbrli:gYearItemType':
            return 'Year';
        case 'xbrli:gYearMonthItemType':
            return 'Year/Month';
        case 'xbrli:integerItemType':
            return 'Integer';
        case 'xbrli:monetaryItemType':
            return 'Monetary';
        case 'xbrli:normalizedStringItemType':
            return 'Text/String';
        case 'xbrli:pureItemType':
            return 'Pure';
        case 'xbrli:sharesItemType':
            return 'Shares';
        case 'xbrli:stringItemType':
            return 'Text/String';
        default:
            return datatype;
        }
    };
    $scope.getdata();
});

