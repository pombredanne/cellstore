"use strict"

function ComponentsCtrl($scope, $route, $http, $backend) {
  $scope.results = [];
  $scope.API_URL = $backend.API_URL;
  $scope.AccessionNumber = $route.current.params.accession;
  $scope.cik = "";
  $scope.EntityRegistrantName = "";
  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/components.jq?accession=' + $scope.AccessionNumber,
      }).
      success(function(data, status, headers, config) {
        $scope.results = data.Components;
        $scope.cik = data.CIK;
        $scope.EntityRegistrantName = data.EntityRegistrantName;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
      });
  };
  $scope.getdata();
  $scope.trimTableURL = function(url) {
    if (url.length < 30) return url;

    return url.substr(0, 10) + "..." + url.substr(url.length - 20);
  }
  $scope.trimNetworkURL = function(url) {
    if (url.length < 50) return url;

    return url.substr(0, 20) + "..." + url.substr(url.length - 30);
  }
};

