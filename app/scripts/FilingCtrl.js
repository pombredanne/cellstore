angular.module('main').controller('FilingCtrl', ['$scope', '$route', '$http', '$backend',
 function($scope, $route, $http, $backend) {
  $scope.API_URL = $backend.API_URL;
  $scope.AccessionNumber = $route.current.params.aid;
  $scope.cik = "";
  $scope.aid = $route.current.params.aid;
  $scope.EntityRegistrantName = "";
  $scope.FiscalYear = "";
  $scope.FiscalPeriod = "";
  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/api/filings.jq',
        params : {
          "_method" : "POST",
          "aid" : $scope.aid,
          "token" : $scope.token
        }
      }).
      success(function(data, status, headers, config) {
        $scope.result = data.Archives[0];
        $scope.cik = $scope.result.CIK.substring(23);
        $scope.CIK = $scope.result.CIK;
        $scope.EntityRegistrantName = $scope.result.EntityRegistrantName;
        $scope.FiscalYear = $scope.result.FiscalYear;
        $scope.FiscalPeriod = $scope.result.FiscalPeriod;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
        $scope.$emit("error", status, data);
      });
  };
  $scope.getdata();
 }
]);


