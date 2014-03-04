angular.module('main').controller('ModelStructureCtrl', ['$scope', '$route', '$http', '$backend',
 function($scope, $route, $http, $backend) {
  $scope.data = {};
  $scope.API_URL = $backend.API_URL;
  $scope.EntityRegistrantName = "";
  $scope.cik = "";
  $scope.Label = "";
  $scope.NetworkIdentifier = "";
  $scope.AccessionNumber = "";
  $scope.cid = $route.current.params.cid;
  $scope.FiscalYear = "";
  $scope.FiscalPeriod = "";
  $scope.AcceptanceDatetime = "";
  $scope.FormType = "";
  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/api/modelstructure.jq',
        params : {
          "_method" : "POST",
          "cid" : $scope.cid,
          "token" : $scope.token
        }
      }).
      success(function(data, status, headers, config) {
        $scope.data = data.ModelStructure;
        $scope.Label = data.Label;
        $scope.cik = (data.CIK || "").substring(23);
        $scope.EntityRegistrantName = data.EntityRegistrantName;
        $scope.NetworkIdentifier = data.NetworkIdentifier;
        var p = data.Label.lastIndexOf(' - ');
        if (p > 0) $scope.component = data.Label.substring(p+3);
        else $scope.component = data.Label;
        $scope.AccessionNumber = data.AccessionNumber;
        $scope.FiscalYear = data.FiscalYear;
        $scope.FiscalPeriod = data.FiscalPeriod;
        $scope.AcceptanceDatetime = data.AcceptanceDatetime;
        $scope.FormType = data.FormType;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
        $scope.$emit("error", status, data);
      });
  };

  $scope.rowReset = function() { $scope.row = 0; };
  $scope.rowIncrement = function() { $scope.row += 1; };

  $scope.getdata();
 }
]);

