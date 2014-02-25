angular.module('main').controller('EntityCtrl', ['$scope', '$route', '$http', '$backend',
 function($scope, $route, $http, $backend) {
  $scope.result = null;
  $scope.API_URL = $backend.API_URL;
  $scope.cik = $route.current.params.cik;
  $scope.getdata = function() {
    $scope.result = null;
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/api/entities.jq',
        params : {
          "_method" : "POST",
          "cik" : $scope.cik,
          "token" : $scope.token
        }
      }).
      success(function(data, status, headers, config) {
        $scope.result = data.Entities[0];
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
        $scope.$emit("error", status, data);
      });
  };
  $scope.getdata();
 }
]);
