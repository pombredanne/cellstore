"use strict"

function EntityCtrl($scope, $route, $http, $backend) {
  $scope.result = null;
  $scope.API_URL = $backend.API_URL;
  $scope.cik = $route.current.params.cik;
  $scope.getdata = function() {
    $scope.result = null;
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/entities.jq?cik=' + $scope.cik,
      }).
      success(function(data, status, headers, config) {
        $scope.result = data[0];
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
      });
  };
  $scope.getdata();
};
