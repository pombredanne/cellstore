angular.module('main').controller('ComparisonFilterCtrl', ['$scope', '$route', '$angularCacheFactory', '$backend', 'QueriesService',
  function($scope, $route, $angularCacheFactory, $backend, QueriesService) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $backend.getEntities().then(function(e) {
            $scope.entities = e;
            $backend.getYears().then(function(y) { 
                $scope.years = y;
                $backend.getPeriods().then(function(p) {
                    $scope.periods = p;
                    //focus automatically on last year and FY
                    $scope.selection = $angularCacheFactory.get('secxbrl').get('selection') 
                                    || { entity: [], tag: [ 'DOW30' ], year: [ $scope.years[1] ], period: [ $scope.periods[0] ] };
                });
            });
    });

    $scope.selectEntity = function(entity) { 
        if ($scope.selection.entity.indexOf(entity) < 0)
            $scope.selection.entity.push(entity);
        $scope.name = null;
    };

    $scope.reset = function() { 
        $angularCacheFactory.get('secxbrl').remove('selection');
        $route.reload();
    };

    $scope.$watch(
        function() { return angular.toJson($scope.selection) },
        function() { 
            $angularCacheFactory.get('secxbrl').put('selection', $scope.selection);
            $scope.$emit('filterChanged', $scope.selection); 
        }
    );
  }
]);