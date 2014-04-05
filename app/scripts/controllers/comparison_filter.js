'use strict';

angular.module('main')
.controller('ComparisonFilterCtrl', function($scope, $route, $location, $backend, QueriesService) {
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
            
            if (!src.cik && !src.tag && !src.fiscalYear && !src.fiscalPeriod)
            {
                $scope.reset();
            }
            else {
                //use a temporary object to prevent multiple events being raised
                var obj = { cik: [], tag: [], fiscalYear: [], fiscalPeriod: [] };

                if (src.cik) {
                    obj.cik = obj.cik.concat(src.cik);
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
        if ($scope.selection.cik.indexOf(entity.cik) < 0) {
            $scope.selection.cik.push(entity.cik);
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

    $scope.reset = function() {
        $scope.selection = { cik: [], tag: [ 'DOW30' ], fiscalYear: [ $scope.years[1] ], fiscalPeriod: [ $scope.periods[0] ] };
    };

    $scope.$watch(
        function() { return angular.toJson($scope.selection); },
        function() {
            $scope.$emit('filterChanged', $scope.selection);
        }
    );
});