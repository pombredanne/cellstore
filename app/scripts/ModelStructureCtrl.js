angular.module('main').controller('ModelStructureCtrl', ['$scope', '$route', '$http', '$backend',
 function($scope, $route, $http, $backend) {
  $scope.data = {};
  $scope.API_URL = $backend.API_URL;
  $scope.EntityRegistrantName = "";
  $scope.Label = "";
  $scope.NetworkIdentifier = "";
  $scope.AccessionNumber = "";
  $scope.id = $route.current.params.component;
  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/api/modelstructure.jq',
        params : {
          "_method" : "POST",
          "cid" : $scope.id,
          "token" : $scope.token
        },
    cache : false
      }).
      success(function(data, status, headers, config) {
        $scope.data = data.ModelStructure;
        $scope.Label = data.Label;
        $scope.EntityRegistrantName = data.EntityRegistrantName;
        $scope.NetworkIdentifier = data.NetworkIdentifier;
        $scope.AccessionNumber = data.AccessionNumber;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
        $scope.$emit("error", status, data);
      });
  };
  $scope.getdata();
 }
]);

