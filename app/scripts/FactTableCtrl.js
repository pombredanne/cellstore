"use strict"

function FactTableCtrl($scope, $route, $http, $backend) {
  $scope.data = [];
  $scope.columns = [];
  $scope.API_URL = $backend.API_URL;
  $scope.EntityRegistrantName = "";
  $scope.NetworkLabel = "";
  $scope.NetworkIdentifier = $route.current.params.component;
  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/facttable.jq?ident=' + encodeURIComponent($scope.NetworkIdentifier),
      }).
      success(function(data, status, headers, config) {
        $scope.data = data.FactTable;
        $scope.columns = data.Columns;
        $scope.columns = $scope.columns.splice(4, $scope.columns.length - 5);
        $scope.NetworkLabel = data.NetworkLabel;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
      });
  };
  $scope.getdata();
  $scope.trimURL = function(url) {
    if (url.length < 40) return url;

    return url.substr(0, 10) + "..." + url.substr(url.length - 30);
  };
  $scope.trim = function(item) {
    return angular.copy(item).splice(4, item.length - 5);
  };
  $scope.clear = function(item) {
    return item.replace("iso4217:", "").replace("xbrli:", "");
  };
};


