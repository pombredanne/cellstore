'use strict';

angular.module('main')
.controller('ModelStructureCtrl', function($scope, $stateParams, modelStructure) {
    $scope.cik = $stateParams.cik;
    $scope.AccessionNumber = $stateParams.aid;
    $scope.NetworkIdentifier = $stateParams.networkIdentifier;

    modelStructure = modelStructure.data;
    $scope.data = modelStructure.ModelStructure;
    $scope.Label = modelStructure.Label;
    $scope.cik = (modelStructure.CIK || '').substring(23);
    $scope.EntityRegistrantName = modelStructure.EntityRegistrantName;
    $scope.NetworkIdentifier = modelStructure.NetworkIdentifier;
    var p = modelStructure.Label.lastIndexOf(' - ');
    if (p > 0) {
        $scope.component = modelStructure.Label.substring(p+3);
    } else {
        $scope.component = modelStructure.Label;
    }
    $scope.AccessionNumber = modelStructure.AccessionNumber;
    $scope.Table = modelStructure.TableName;
    $scope.FiscalYear = modelStructure.FiscalYear;
    $scope.FiscalPeriod = modelStructure.FiscalPeriod;
    $scope.AcceptanceDatetime = modelStructure.AcceptanceDatetime;
    $scope.FormType = modelStructure.FormType;
    $scope.Disclosure = modelStructure.Disclosure;


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
});

