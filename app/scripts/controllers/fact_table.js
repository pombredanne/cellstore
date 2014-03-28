'use strict';

angular.module('main')
.controller('FactTableCtrl', function($scope, $route, $http, $backend, QueriesService) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    
    $scope.data = [];
    $scope.columns = [];
    $scope.API_URL = $backend.API_URL;
    $scope.EntityRegistrantName = '';
    $scope.Label = '';
    $scope.NetworkIdentifier = '';
    $scope.AccessionNumber = '';
    $scope.Table = '';
    $scope.cid = $route.current.params.cid;
    $scope.FiscalYear = '';
    $scope.FiscalPeriod = '';
    $scope.AcceptanceDatetime = '';
    $scope.FormType = '';

    $scope.getdata = function() {
        $scope.data = [];
        $scope.columns = [];
        $scope.service.listFactTable({
                $method : 'POST',
                cid : $scope.cid,
                token : $scope.token
            })
            .then(function(data) {
                $scope.data = data.FactTable;
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
            },
            function(response) {
                $scope.$emit('error', response.status, response.data);
            });
    };

    $scope.getdata();

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