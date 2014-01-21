"use strict"

function ComponentsCtrl($scope, $route, $http, API_URL) {
  $scope.results = [];
  $scope.API_URL = API_URL;
  $scope.AccessionNumber = $route.current.params.accession;
  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: API_URL + '/_queries/public/components.jq?accession=' + $scope.AccessionNumber,
      }).
      success(function(data, status, headers, config) {
        $scope.results = data;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
      });
  };
  $scope.getdata();
};


