'use strict';

angular.module('main')
.controller('ComparisonFilterCtrl', function($scope, $location, $backend, QueriesService) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.tags = [];
    $scope.entities = [];
    $scope.years = [];
    $scope.periods = [];

    $backend.getTags().then(function(t) {
        $scope.tags = t;
    });

    $backend.getEntities().then(function(e) {
        $scope.entities = e;
    });

    $backend.getYears().then(function(y) {
        $scope.years = y;
        $backend.getPeriods().then(function(p) {
            $scope.periods = p;
            
            var src = $location.search();
            
            if (!src.rut && !src.tag && !src.fiscalYear && !src.fiscalPeriod)
            {
                $scope.reset();
            }
            else {
                //use a temporary object to prevent multiple events being raised
                var obj = { rut: [], tag: [], fiscalYear: [], fiscalPeriod: [] };

                if (src.rut) {
                    obj.rut = obj.rut.concat(src.rut);
                }

                if (src.tag) {
                    obj.tag = obj.tag.concat(src.tag);
                }

                if (src.fiscalYear) {
                    obj.fiscalYear = obj.fiscalYear.concat(src.fiscalYear);
                    for(var i=0; i < obj.fiscalYear.length; i++){
                        obj.fiscalYear[i] = parseInt(obj.fiscalYear[i]);
                    }
                }

                if (src.fiscalPeriod) {
                    obj.fiscalPeriod = obj.fiscalPeriod.concat(src.fiscalPeriod);
                }
                
                $scope.selection = obj;
            }
        });
    });

    $scope.selectEntity = function(entity) {
        if ($scope.selection.rut.indexOf(entity.rut) < 0) {
            $scope.selection.rut.push(entity.rut);
        }
        $scope.name = null;
    };

    $scope.getEntity = function(rut) {
        var ret = null;
        $scope.entities.forEach(function(e) {
            if (e.rut === rut)
            {
                ret = e;
            }
        });
        return ret;
    };

    $scope.reset = function() {
        $scope.selection = { rut: [], tag: [ 'DOW30' ], fiscalYear: [ $scope.years[1] ], fiscalPeriod: [ $scope.periods[0] ] };
    };

    $scope.$watch(
        function() { return angular.toJson($scope.selection); },
        function() {
            $scope.$emit('filterChanged', $scope.selection);
        }
    );
});