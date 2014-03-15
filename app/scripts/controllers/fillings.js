angular.module('main').controller('FilingsCtrl', ['$scope', '$route', '$http', '$backend',
 function($scope, $route, $http, $backend) {
  $scope.results = [];
  $scope.API_URL = $backend.API_URL;
  $scope.cik = $route.current.params.cik;
  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/api/filings.jq',
        params : {
          "_method" : "POST",
          "cik" : $scope.cik,
          "token" : $scope.token
        }
      }).
      success(function(data, status, headers, config) {
        $scope.results = data.Archives;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
        $scope.$emit("error", status, data);
      });
  };
  $scope.getdata();
 }
]);
