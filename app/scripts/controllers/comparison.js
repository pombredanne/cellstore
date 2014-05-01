'use strict';

angular.module('main')
.controller('ComparisonCtrl', function($scope, $state, $stateParams, $location, $backend, QueriesService, tags, entities, years, periods) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.tags = tags;
    $scope.entities = entities;
    $scope.years = years;
    $scope.periods = periods;

    $scope.selection = {};

    $scope.selection.cik = ($stateParams.cik ? $stateParams.cik.split(',') : []);
    $scope.selection.tag = ($stateParams.tag ? $stateParams.tag.split(',') : []);
    $scope.selection.fiscalYear = ($stateParams.fiscalYear ? $stateParams.fiscalYear.split(',') : []);
    $scope.selection.fiscalPeriod = ($stateParams.fiscalPeriod ? $stateParams.fiscalPeriod.split(',') : []);

    $scope.reset = function() {
        $scope.selection.cik = [];
        $scope.selection.tag = [ 'DOW30' ];
        $scope.selection.fiscalYear = [ $scope.years[1] ];
        $scope.selection.fiscalPeriod = [ $scope.periods[0] ];
    };

    if ($scope.selection.cik.length === 0 &&
        $scope.selection.tag.length === 0 &&
        $scope.selection.fiscalYear.length === 0 &&
        $scope.selection.fiscalPeriod.length === 0)
    {
        $scope.reset();
    }

    if($state.is('root.comparison')) {
        $state.go('root.comparison.filings', $scope.selection);
    }

    $scope.selectEntity = function(entity) {
        if ($scope.selection.cik)
        {
            if ($scope.selection.cik.indexOf(entity.cik) < 0) {
                $scope.selection.cik.push(entity.cik);
            }
        }
        else
        {
            $scope.selection.cik = [ entity.cik ];
        }
        $scope.name = null;
    };

    $scope.getEntity = function(cik) {
        var ret = null;
        $scope.entities.forEach(function(e) {
            if (e.cik === cik)
            {
                ret = e;
            }
        });
        return ret;
    };

    $scope.$watch(
        function() { return angular.toJson($scope.selection); },
        function() {
            $location.search($scope.selection);
            $scope.$broadcast('FilterChanged');
        }
    );

    $scope.$on('$stateChangeSuccess', function(event, toState) {
        $scope.subActive = toState.data && toState.data.subActive;
    });
});