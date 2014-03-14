angular.module('main').controller('EntityCtrl', ['$scope', '$route', '$http', '$backend', 'QueriesService', 'entities',
 function($scope, $route, $http, $backend, QueriesService, entities) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    $scope.cik = ($route.current.params.cik ? $route.current.params.cik : null);
    $scope.entities = entities;
    $scope.API_URL = $backend.API_URL;
    $scope.result = null;

	$scope.selectEntity = function(item) { 
        $scope.cik = item.cik;
        $scope.name = item.name;
        $scope.ticker = item.tickers[0];
        $scope.goto("/entity/" + $scope.cik);
		$scope.getdata();
	};

    $scope.getdata = function() {
        $scope.result = null;
        $scope.service.listEntities({ $method: 'POST', cik: $scope.cik, token: $scope.token })
            .then(
                function(data) {
                    $scope.result = data.Entities[0];
                    $scope.safeApply();
                },
                function(response) {
                    $scope.$emit("error", response.status, response.data);
                });
    };

    if ($route.current.params.cik)
        $scope.entities.forEach(function(entity) {
            if (entity.cik == $route.current.params.cik)
				$scope.selectEntity(entity);
        });
  }
]);
