"use strict"

function BrowserCtrl($scope, $http, API_URL) {
  $scope.results = [];
  $scope.api_url = API_URL.substring(0,API_URL.length-3);
  $scope.getdata = function() {
    $http(
      {
        method : 'POST',
        url: API_URL + '/_queries/public/entities.jq',
      }).
      success(function(data, status, headers, config) {
        $scope.results = data.entities;
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
