angular.module('main').controller('ComparisonSearchCtrl', ['$scope', '$route', '$angularCacheFactory', '$backend', 'QueriesService', 'entities', 'years', 'periods', 'conceptMaps',
  function($scope, $route, $angularCacheFactory, $backend, QueriesService, entities, years, periods, conceptMaps) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.entities = entities;
    $scope.years = years;
	$scope.periods = periods;
    //focus automatically on last year and FY
	$scope.selection = $angularCacheFactory.get('secxbrl').get('selection') 
                    || { entity: [], tag: [ 'DOW30' ], year: [ years[1] ], period: [ periods[0] ] };
    $scope.conceptMaps = conceptMaps;
    $scope.conceptMapKey = conceptMaps[1];
	$scope.API_URL = $backend.API_URL;

    $scope.selectEntity = function(entity) { 
        if ($scope.selection.entity.indexOf(entity) < 0)
            $scope.selection.entity.push(entity);
        $scope.name = null;
    };

    $scope.reset = function() { 
        $angularCacheFactory.get('secxbrl').remove('selection');
        $route.reload();
    };
 }
]);
