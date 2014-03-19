angular.module('main').controller('ComparisonCtrl', ['$scope', '$backend', 'QueriesService',
  function($scope, $backend, QueriesService) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));
    
    $scope.$on('filterChanged',
        function(event, selection) {
            if (!selection) return;
            $scope.filings = null;
            $scope.error = false;
            
            var cik = [];
            selection.entity.forEach(function(entity) { cik.push(entity.cik); });
            $scope.service.listFilings({ 
                    $method: 'POST', 
                    cik: cik, 
                    tag: selection.tag,
                    fiscalYear: selection.year,
                    fiscalPeriod: selection.period,
                    token: $scope.token 
                })
                .then(function(data) {
                    $scope.filings = data.Archives;
                },
                function(response) {
                    if (response.status == "401")
                        $scope.error = true;
                    else
                        $scope.$emit("error", response.status, response.data);
                });
    });
  }
]);
