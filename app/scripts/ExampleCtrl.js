angular.module('main').controller('ExampleCtrl', ['$scope', '$route', '$http', '$location', '$backend',
 function($scope, $route, $http, $location, $backend) {

  $scope.examples = [ 
      { 
        name: "TotalAssets",
        description: "Total Assets Grouped By Fiscal Period",
        file: 'api/TotalForConceptGroupedByFiscalPeriodForAllEntities.jq', 
        params: { concept: "us-gaap:Assets", period: "FY" } 
      },
      { 
        name: "TotalLiabilitiesAndEquity",
        description: "Total Liabilities And Equity Grouped By Fiscal Period",
        file: 'api/TotalForConceptGroupedByFiscalPeriodForAllEntities.jq',
        params: { concept: "fac:LiabilitiesAndEquity", period: "FY", map: "FundamentalAccountingConcepts" }
      }
   ];

  $scope.getExample = function(ex) {
    $scope.data=null;
    $scope.params = {};
    angular.extend($scope.params, ex.params, $location.search(), { "_method" : "POST", "token" : $scope.token, "format": "json", "$refresh": true });
    $scope.example = ex;

    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/' + ex.file,
        params : $scope.params,
      }).
      success(function(data, status, headers, config) {
        $scope.data = data;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
        $scope.$emit("error", status, data);
      });
  };

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
  
  $scope.showText = function(html) {
    $scope.$emit("alert", "Text Details", html);
  };
  
  $scope.enumerate = function(object) {
    var ret = [];
    $.map(object, function (el, index) {
      ret.push(el);
    });
    return ret;
  };
  
  $scope.enumerateKeys = function(object) {
    var ret = [];
    $.map(object, function (el, index) {
      ret.push(index);
    });
    return ret;
  };

  $scope.isBlock = function(string) {
     if (!string) return false;
     return string.length > 60;
  };

  $scope.getUrl = function(format) { 
      var p = angular.copy($scope.params);
      angular.extend(p, { "format": format });
      return $backend.API_URL + '/_queries/public/' + $scope.example.file + '?' + decodeURIComponent($.param(p));
  };

  $scope.spacify = function(string) {
      return string.replace(/([A-Z])/g, ' $1');
  };

  if ($route.current.params.example)
      $scope.examples.forEach(function(ex) { 
        if (ex.name == $route.current.params.example)
            $scope.getExample(ex);
      });
 }
]);
