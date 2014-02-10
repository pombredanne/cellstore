angular.module('main').controller('EntitiesCtrl', ['$scope', '$http', '$backend',
 function($scope, $http, $backend) {
  $scope.results = [];
  $scope.API_URL = $backend.API_URL;
  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/api/entities.jq',
        params : {
          "_method" : "POST",
          "token" : $scope.token,
        },
        cache: false // too big for cache
      }).
      success(function(data, status, headers, config) {
        $scope.results = data;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
      });
  };
  $scope.getdata();
 }
]);
