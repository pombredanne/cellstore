'use strict';

angular.module('main').controller('ComparisonComponentsCtrl', function ($scope, $http, $modal, $backend, QueriesService) {

    $scope.choice = 'disclosure';
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.results = [];
    $scope.selection = {};
    $scope.reportElementNames = [];

    $scope.$on('filterChanged', function (event, selection) {
        $scope.selection = selection;
        $scope.reportElementNames = [];
        var cik = [];
        selection.entity.forEach(function(entity) { cik.push(entity.cik); });
        $scope.service.listReportElements({
                  "$method" : "POST",
                  "onlyNames" : true,
                  "cik": cik,
                  "tag": selection.tag,
                  "fiscalYear": selection.year,
                  "fiscalPeriod": selection.period,
                  "token": $scope.token
              }).then(function(data) {
                $scope.reportElementNames = data.Concepts || [];
              },
              function(response) {
                  if (response.status === '401') {
                      $scope.error = true;
                  } else {
                      $scope.$emit('error', response.status, response.data);
                  }
              });
    }
    );

    $scope.getValues = function () {
        $scope.results = [];

        if ($scope.choice === 'disclosure' && !$scope.searchDisclosure) {
            $scope.$emit('alert', 'Required field', 'The disclosure is required for the search.');
            return false;
        }

        if ($scope.choice === 'reportElement' && !$scope.searchReportElement) {
            $scope.$emit('alert', 'Required field', 'The report element is required for the search.');
            return false;
        }

        $scope.params = {
            $method: 'POST',
            tag: $scope.selection.tag,
            cik: [],
            fiscalYear: $scope.selection.year,
            fiscalPeriod: $scope.selection.period,
            token: $scope.token
        };

        if ($scope.choice === 'disclosure') {
            $scope.params.disclosure = $scope.searchDisclosure;
        } else {
            $scope.params.reportElement = $scope.searchReportElement;
        }

        $scope.selection.entity.forEach(function (entity) {
            $scope.params.cik.push(entity.cik);
        });

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
                            'FiscalPeriod': archive.FiscalPeriod
                        });
                        $scope.results[$scope.results.length] = item;
                    });
                });
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
        var str = $backend.API_URL + '/_queries/public/api/components.jq';
        var p = [];
        var index = -1;
        Object.keys($scope.params).forEach(function (param) {
            if ($scope.params.hasOwnProperty(param) && $scope.params[param]) {
                if (param === '$method') {
                    p.push('_method=' + encodeURIComponent($scope.params[param].toString()));
                } else {
                    if (param === 'format') {
                        if (format) {
                            index = p.length;
                            p.push(param + '=' + encodeURIComponent(format));
                        }
                    } else {
                        if (Object.prototype.toString.call($scope.params[param]) === '[object Array]') {
                            $scope.params[param].forEach(function (item) { p.push(param + '=' + encodeURIComponent(item)); });
                        } else {
                            p.push(param + '=' + encodeURIComponent($scope.params[param].toString()));
                        }
                    }
                }
            }
        });
        if (index < 0 && format) {
            p.push('format=' + encodeURIComponent(format));
        }
        if (p.length > 0) {
            str += '?' + p.join('&');
        }
        return str;
    };
}
);
