'use strict';

angular.module('main')
.controller('ComparisonCtrl', function($scope, $state, $stateParams, $location, $backend, tags, entities, years, periods, sics) {
    $scope.tags = tags;
    $scope.entities = entities;
    $scope.years = years;
    $scope.periods = periods;
    $scope.sics = sics;

    $scope.selection = {};
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
