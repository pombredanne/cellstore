'use strict';

angular.module('main')
.controller('FactTableCtrl', function($scope, $stateParams, facttable) {
    
    $scope.columns = [];
    $scope.AccessionNumber = $stateParams.aid;
    $scope.NetworkIdentifier = $stateParams.networkIdentifier;
    $scope.data = facttable.FactTable;
    $scope.Label = facttable.Label;
    $scope.cik = (facttable.CIK || '').substring(23);
    $scope.EntityRegistrantName = facttable.EntityRegistrantName;
    $scope.NetworkIdentifier = facttable.NetworkIdentifier;
    var p = facttable.Label.lastIndexOf(' - ');
    if (p > 0) {
        $scope.component = facttable.Label.substring(p+3);
    } else {
        $scope.component = facttable.Label;
    }
    $scope.AccessionNumber = facttable.AccessionNumber;
    $scope.Table = facttable.TableName;
    $scope.FiscalYear = facttable.FiscalYear;
    $scope.FiscalPeriod = facttable.FiscalPeriod;
    $scope.AcceptanceDatetime = facttable.AcceptanceDatetime;
    $scope.FormType = facttable.FormType;

    if ($scope.data && $scope.data.length > 0)
    {
        $scope.columns.push('xbrl:Entity');
        $scope.columns.push('xbrl:Period');
        $scope.columns.push('xbrl:Concept');
        var insertIndex = 3;
        $.map($scope.data[0].Aspects, function (el, index) {
            switch (index)
            {
                case 'xbrl:Entity':
                    $scope.entityIndex = 0;
                    break;
                case 'xbrl:Concept':
                case 'xbrl:Period':
                    break;
                case 'dei:LegalEntityAxis':
                    $scope.columns.splice(insertIndex, 0, index);
                    insertIndex++;
                    break;
                default:
                    $scope.columns.splice(insertIndex, 0, index);
            }
        });
    }

    $scope.trimURL = function(url) {
        if (url.length < 40) {
            return url;
        }
        return url.substr(0, 10) + '...' + url.substr(url.length - 30);
    };

    $scope.trim = function(item) {
        return angular.copy(item).splice(4, item.length - 5);
    };

    $scope.clear = function(item) {
        return item.replace('iso4217:', '').replace('xbrli:', '');
    };

    $scope.showText = function(html) {
        $scope.$emit('alert', 'Text Details', html);
    };

    $scope.showNumber = function(value) {
        var n = parseFloat(value);
        if (isNaN(n)) {
            return value;
        }
        return n.toLocaleString();
    };

    $scope.isBlock = function(string) {
        if (!string) {
            return false;
        }
        return string.length > 60;
    };
});
