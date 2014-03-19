angular.module('main').controller('DisclosureCtrl', ['$scope', '$route', '$http', '$backend',
 function($scope, $route, $http, $backend) {
  $scope.results = [];
  $scope.API_URL = $backend.API_URL;
  $scope.disclosure = $route.current.params.disclosure;
  $scope.year = $route.current.params.year;
  $scope.period = $route.current.params.period;
  $scope.AccessionNumber = '';
  $scope.CIK = '';
  $scope.EntityRegistrantName = '';
  $scope.AcceptanceDatetime = '';
  $scope.FormType = '';

  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/api/components.jq',
        params : {
          '_method' : 'POST',
          'disclosure' : $scope.disclosure,
          'fiscalYear' : $scope.year,
          'fiscalPeriod' : $scope.period,
          'aid' : '0001001039-13-000164',
          'token' : $scope.token
        }
      }).
      success(function(data, status, headers, config) {
        $scope.results = data.Components;
        $scope.AccessionNumber = data.AccessionNumber;
        $scope.CIK = data.CIK;
        $scope.EntityRegistrantName = data.EntityRegistrantName;
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
