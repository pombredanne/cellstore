'use strict';

angular.module('main')
.controller('ComparisonCtrl', function($scope, $state, $stateParams, $location, $backend, tags, entities, years, periods, sics) {
    $scope.tags = tags;
    $scope.entities = entities;
    $scope.years = years;
    $scope.periods = periods;
    $scope.sics = sics;

    $scope.selection = {};
<<<<<<< HEAD

    $scope.selection.cik = ($stateParams.cik ? $stateParams.cik.split(',') : []);
    $scope.selection.tag = ($stateParams.tag ? $stateParams.tag.split(',') : []);
    $scope.selection.fiscalYear = ($stateParams.fiscalYear ? $stateParams.fiscalYear.split(',') : []);
    $scope.selection.fiscalPeriod = ($stateParams.fiscalPeriod ? $stateParams.fiscalPeriod.split(',') : []);
    $scope.selection.sic = ($stateParams.sic ? $stateParams.sic.split(',') : []);

    $scope.reset = function() {
        $scope.selection.cik = [];
        $scope.selection.tag = [ 'DOW30' ];
        $scope.selection.fiscalYear = [ $scope.years[1] ];
        $scope.selection.fiscalPeriod = [ $scope.periods[0] ];
        $scope.selection.sic = [];
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
=======
    
    $scope.$on('filterChanged', function(event, selection) {
        $scope.selection = angular.copy(selection);
        if (!selection) { return; }
        
        $location.search($scope.selection);
        
        $scope.filings = null;
        $scope.error = false;

        $scope.service.listFilings({
            $method: 'POST',
            rut: selection.rut,
            tag: selection.tag,
            fiscalYear: selection.fiscalYear,
            fiscalPeriod: selection.fiscalPeriod,
            token: $scope.token
        })
        .then(function(data) {
            $scope.filings = data.Archives;
        },
        function(response) {
            if (response.status === '401') {
                $scope.error = true;
            } else {
                $scope.$emit('error', response.status, response.data);
>>>>>>> svsxbrl.info bootstrap
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
            return angular.toJson($scope.selection);
        },
        function() {
            $location.search($scope.selection);
            $scope.$emit('SelectionChanged', $scope.selection);
        }
    );

    $scope.$on('$stateChangeSuccess', function(event, toState) {
        $scope.subActive = toState.data && toState.data.subActive;
    });
});
