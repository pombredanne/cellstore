angular.module('main').controller('FactTableCtrl', ['$scope', '$route', '$http', '$backend',
 function($scope, $route, $http, $backend) {
  $scope.data = [];
  $scope.columns = [];
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
        url: $backend.API_URL + '/_queries/public/api/facttable.jq',
        params : {
          "_method" : "POST",
          "cid" : $scope.id,
          "token" : $scope.token
        }
      }).
      success(function(data, status, headers, config) {
        $scope.data = data.FactTable;
        $scope.columns = data.Columns;
        $scope.columns = $scope.columns.splice(4, $scope.columns.length - 5);
        $scope.Label = data.Label;
        $scope.EntityRegistrantName = data.EntityRegistrantName;
        $scope.NetworkIdentifier = data.ShortName;
        $scope.AccessionNumber = data.AccessionNumber;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
        $scope.$emit("error", status, data);
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
 }
]);
