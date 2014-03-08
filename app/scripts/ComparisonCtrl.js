angular.module('main').controller('ComparisonCtrl', ['$scope', '$route', '$angularCacheFactory', '$backend', 'QueriesService', 'entities', 'years', 'periods',
  function($scope, $route, $angularCacheFactory, $backend, QueriesService, entities, years, periods) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.entities = entities;
    $scope.years = years;
	$scope.periods = periods;
    //focus automatically on last year and FY
	$scope.selection = $angularCacheFactory.get('secxbrl').get('selection') 
                    || { entity: [], year: [ years[1] ], period: [ periods[0] ] };

    $scope.selectEntity = function(entity) { 
        $scope.selection.entity.push(entity);
        $scope.name = null;
    };

    $scope.clear = function() { 
        $angularCacheFactory.get('secxbrl').remove('selection');
        $route.reload();
    };

    $scope.$watch(
        function() { return angular.toJson($scope.selection) },
        function(newValue) {
            $angularCacheFactory.get('secxbrl').put('selection', $scope.selection);
    });
  }
]);
