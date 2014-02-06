"use strict"

function ApiCtrl($scope, $http, $backend) {
  $scope.content = "";
  $scope.API_URL = $backend.API_URL;
  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: '/api.json',
        cache:false
      }).
      success(function(data, status, headers, config) {
        $scope.content = data;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
      });
  };

  $scope.needsAuth = function() {
    return true;
  };
  $scope.getdata();
};

