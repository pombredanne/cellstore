"use strict"

function EntitiesCtrl($scope, $http, $backend) {
  $scope.results = [];
  $scope.API_URL = $backend.API_URL;
  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/entities.jq',
      }).
      success(function(data, status, headers, config) {
        $scope.results = data;
        $scope.pageCount = 50;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
      });
  };
  $scope.getmore = function() {
    $scope.pageCount += 50;
  };
  $scope.getall = function() {
    $scope.pageCount = $scope.results.length;
    $scope.search = "";
  };
  $scope.getdata();
};
