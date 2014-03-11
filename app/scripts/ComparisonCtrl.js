angular.module('main').controller('ComparisonCtrl', ['$scope', '$backend', 'QueriesService',
  function($scope, $backend, QueriesService) {
    $scope.service = (new QueriesService($backend.API_URL + '/_queries/public/api'));

    $scope.$on('filterChanged',
        function(event, selection) {
            $scope.filings = null;
            var cik = [];
            selection.entity.forEach(function(entity) { cik.push(entity.cik); });
            $scope.service.listFilings({ 
                    _method: "POST", 
                    cik: cik, 
                    tag: selection.tag,
                    year: selection.year,
                    period: selection.period,
                    token: $scope.token 
                })
                .then(function(data) {
                    $scope.filings = data.Archives;
                    $scope.safeApply();
                },
                function(response) {
                    $scope.$emit("error", response.status, response.data);
                });
    });
  }
]);
