angular.module('main').controller('ComponentCtrl', ['$scope', '$route', '$http', '$backend',
 function($scope, $route, $http, $backend) {
  $scope.result = [];
  $scope.API_URL = $backend.API_URL;
  $scope.AccessionNumber = $route.current.params.cid;
  $scope.cik = "";
  $scope.cid = $route.current.params.cid;
  $scope.EntityRegistrantName = "";
  $scope.component = "";
  $scope.FiscalYear = "";
  $scope.FiscalPeriod = "";
  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/api/components.jq',
        params : {
          "_method" : "POST",
          "cid" : $scope.cid,
          "token" : $scope.token
        }
      }).
      success(function(data, status, headers, config) {
        $scope.result = data.Components[0];
        $scope.cik = data.CIK.substring(23);
        $scope.CIK = data.CIK;
        $scope.EntityRegistrantName = data.EntityRegistrantName;
        $scope.FiscalYear = data.FiscalYear;
        $scope.FiscalPeriod = data.FiscalPeriod;
        $scope.AccessionNumber = data.Components[0].AccessionNumber;
        var p = $scope.result.NetworkLabel.lastIndexOf(' - ');
        if (p > 0) $scope.component = $scope.result.NetworkLabel.substring(p+3);
        else $scope.component = $scope.result.NetworkLabel;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
        $scope.$emit("error", status, data);
      });
  };
  $scope.getdata();
 }
]);

