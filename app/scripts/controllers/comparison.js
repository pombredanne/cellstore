'use strict';

angular.module('main')
.controller('ComparisonCtrl', function($scope, $state, $stateParams, $location, $timeout, $backend, tags, entities, years, periods, sics) {
    $scope.tags = tags;
    $scope.entities = entities;
    $scope.years = years;
    $scope.periods = periods;
    $scope.sics = sics;

    $scope.selection = {};

    $scope.selection.cik = ($stateParams.cik ? $stateParams.cik : []);
    if(!_.isArray($scope.selection.cik)) {
        $scope.selection.cik = [$scope.selection.cik];
    }
    $scope.selection.tag = ($stateParams.tag ? $stateParams.tag : []);
    if(!_.isArray($scope.selection.tag)) {
        $scope.selection.tag = [$scope.selection.tag];
    }
    $scope.selection.fiscalYear = ($stateParams.fiscalYear ? $stateParams.fiscalYear : []);
    if(!_.isArray($scope.selection.fiscalYear)) {
        $scope.selection.fiscalYear = [$scope.selection.fiscalYear];
    }
    $scope.selection.fiscalPeriod = ($stateParams.fiscalPeriod ? $stateParams.fiscalPeriod : []);
    if(!_.isArray($scope.selection.fiscalPeriod)) {
        $scope.selection.fiscalPeriod = [$scope.selection.fiscalPeriod];
    }
    $scope.selection.sic = ($stateParams.sic ? $stateParams.sic : []);
    if(!_.isArray($scope.selection.sic)) {
        $scope.selection.sic = [$scope.selection.sic];
    }

    $scope.selectionChanged = function(newSelection){
        $location.search(newSelection);
        $scope.$emit('SelectionChanged', newSelection);
    };

    $scope.reset = function() {
        $scope.selection.cik = [];
        $scope.selection.tag = [ 'DOW30' ];
        $scope.selection.fiscalYear = [ $scope.years[1] ];
        $scope.selection.fiscalPeriod = [ $scope.periods[0] ];
        $scope.selection.sic = [];
        $timeout(function(){$scope.selectionChanged($scope.selection);},10);
    };

    var search = $location.search();
    if ($scope.selection.cik.length === 0 &&
        $scope.selection.tag.length === 0 &&
        $scope.selection.fiscalYear.length === 0 &&
        $scope.selection.fiscalPeriod.length === 0)
    {
        $scope.reset();
    } else if (search.cik === undefined &&
        search.tag === undefined &&
        search.fiscalYear === undefined &&
        search.fiscalPeriod === undefined &&
        search.sic === undefined)
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

    $scope.selectSic = function(sic) {
        if ($scope.selection.sic)
        {
            if ($scope.selection.sic.indexOf(sic.ID) < 0) {
                $scope.selection.sic.push(sic.ID);
            }
        }
        else
        {
            $scope.selection.sic = [ sic.ID ];
        }
        $scope.sic = null;
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

    $scope.getSic = function(sic) {
        var ret = null;
        $scope.sics.forEach(function(s) {
            if ('' + s.ID === '' + sic)
            {
                ret = s;
            }
        });
        return ret;
    };

    $scope.$watch(
        function() {
            return $scope.selection;
        },
        function(newSelection, oldSelection) {
            if(!angular.equals(newSelection, oldSelection)) {
                //$state.transitionTo($state.current.name, newSelection);
                $scope.selectionChanged(newSelection);
            }
        },
        true
    );

    $scope.$on('$stateChangeSuccess', function(event, toState) {
        $scope.subActive = toState.data && toState.data.subActive;
    });
});