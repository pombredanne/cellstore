angular.module('main').controller('ComponentCtrl', ['$scope', '$route', '$http', '$backend',
 function($scope, $route, $http, $backend) {
  $scope.result = [];
  $scope.API_URL = $backend.API_URL;
  $scope.AccessionNumber = $route.current.params.cid;
  $scope.cik = "";
  $scope.cid = $route.current.params.cid;
  $scope.EntityRegistrantName = "";
  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/api/components.jq',
        params : {
          "_method" : "POST",
          "cid" : $scope.cid,
          "token" : $scope.token,
      cache :false
        }
      }).
      success(function(data, status, headers, config) {
        $scope.result = data.Components[0];
        $scope.cik = data.CIK;
        $scope.EntityRegistrantName = data.EntityRegistrantName;
        $scope.AccessionNumber = data.Components[0].AccessionNumber;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
        $scope.$emit("error", status, data);
      });
  };
  $scope.getdata();
 }
]);

