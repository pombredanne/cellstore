"use strict"

function FilingsCtrl($scope, $route, $http, API_URL) {
  $scope.results = [];
  $scope.API_URL = API_URL;
  $scope.cik = $route.current.params.cik;
  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: API_URL + '/_queries/public/filings.jq?cik=' + $scope.cik,
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

