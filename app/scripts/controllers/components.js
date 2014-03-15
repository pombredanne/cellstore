angular.module('main').controller('ComponentsCtrl', ['$scope', '$route', '$http', '$backend',
 function($scope, $route, $http, $backend) {
  $scope.results = [];
  $scope.API_URL = $backend.API_URL;
  $scope.AccessionNumber = $route.current.params.accession;
  $scope.cik = '';
  $scope.EntityRegistrantName = '';
  $scope.FiscalYear = '';
  $scope.FiscalPeriod = '';
  $scope.AcceptanceDatetime = '';
  $scope.FormType = '';
  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/api/components.jq',
        params : {
          '_method' : "POST",
          'aid' : $scope.AccessionNumber,
          'token' : $scope.token
        }
      }).
      success(function(data, status, headers, config) {
        $scope.results = data.Components;
        $scope.cik = data.CIK.substring(23);
        $scope.CIK = data.CIK;
        $scope.EntityRegistrantName = data.EntityRegistrantName;
        $scope.FiscalYear = data.FiscalYear;
        $scope.FiscalPeriod = data.FiscalPeriod;
        $scope.AcceptanceDatetime = data.AcceptanceDatetime;
        $scope.FormType = data.FormType;
      }).
      error(function(data, status, headers, config) {
        $scope.$emit('error', status, data);
      });
  };
  $scope.getdata();
  $scope.trimTableURL = function(url) {
    if (url.length < 30) {
        return url;
    }
    return url.substr(0, 10) + '...' + url.substr(url.length - 20);
  }
  $scope.trimNetworkURL = function(url) {
    if (url.length < 50) {
        return url;
    }
    return url.substr(0, 20) + '...' + url.substr(url.length - 30);
  }
 }
]);
