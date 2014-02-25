angular.module('main').controller('ConceptMapCtrl', ['$scope', '$route', '$http', '$backend',
 function($scope, $route, $http, $backend) {
  $scope.result = [];
  $scope.API_URL = $backend.API_URL;
  $scope.name = $route.current.params.name;
  $scope.getdata = function() {
    $scope.result = [];
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/api/concept-map.jq',
        params : {
          "_method" : "POST",
          "name"     : $scope.name,
          "token"   : $scope.token
        }
      }).
      success(function(data, status, headers, config) {
        var root = data["Trees"];
        for (var k in root) {
          if (root.hasOwnProperty(k)) {
            var item = {};
            item.name  = root[k]["Name"];
            item.label = root[k]["Label"];
            item.values = [];
            for (var t in root[k]["To"]) {
              if (root[k]["To"].hasOwnProperty(t)) {
                item.values.push(root[k]["To"][t]["Name"]);
              }
            }
            $scope.result.push(item);
          }
        }
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
        $scope.$emit("error", status, data);
      });
  };
  $scope.getdata();
 }
]);

