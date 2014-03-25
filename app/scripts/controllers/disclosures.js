'use strict';

angular.module('main')
.controller('DisclosuresCtrl', function($scope, $route, $backend, QueriesService, years, periods) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.years = years;
	$scope.periods = periods;
    //focus automatically on last year and FY
    $scope.year = [ years[1] ];
    $scope.period = [ periods[0] ];


    $scope.db = [
        { Disclosure: 'DocumentAndEntityInformation', FiscalYear: '2013', FiscalPeriod: 'FY', Filings: 101 },
        { Disclosure: 'DocumentAndEntityInformation', FiscalYear: '2012', FiscalPeriod: 'FY', Filings: 102 },
        { Disclosure: 'DocumentAndEntityInformation', FiscalYear: '2011', FiscalPeriod: 'FY', Filings: 103 },
        { Disclosure: 'DocumentAndEntityInformation', FiscalYear: '2010', FiscalPeriod: 'FY', Filings: 104 },
        { Disclosure: 'UncategorizedInformation', FiscalYear: '2013', FiscalPeriod: 'Q1', Filings: 105 },
        { Disclosure: 'UncategorizedInformation', FiscalYear: '2012', FiscalPeriod: 'Q1', Filings: 106 },
        { Disclosure: 'UncategorizedInformation', FiscalYear: '2011', FiscalPeriod: 'Q1', Filings: 107 },
        { Disclosure: 'UncategorizedInformation', FiscalYear: '2010', FiscalPeriod: 'Q1', Filings: 108 }
    ];

    $scope.$watch(
        function() {
            return angular.toJson($scope.year) + angular.toJson($scope.period);
        },
        function () {
            $scope.data = [];
            $scope.db.forEach(function(item) {
                if ($scope.year.indexOf(parseInt(item.FiscalYear, 10))>=0 && $scope.period.indexOf(item.FiscalPeriod)>=0) {
                    $scope.data.push(item);
                }
            });
        }
    );
});