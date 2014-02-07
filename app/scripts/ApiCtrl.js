angular.module('main').controller('ApiCtrl', ['$scope', '$http', '$backend',
 function($scope, $http, $backend) {
  $scope.content = "";
  $scope.API_URL = $backend.API_URL;
  $scope.getdata = function(name) {
    $scope.name = name;
    $http(
      {
        method : 'GET',
        url: '/' + name + '.json',
        cache:false
      }).
      success(function(data, status, headers, config) {
        $scope.content = data;
        $scope.safeApply();
      }).
      error(function(data, status, headers, config) {
      });
  };

  $scope.needsAuth = function() {
    return true;
  };
	$scope.gotoId = function(id) {
		$scope.$broadcast('scroll-id', id); 
	};
  $scope.getdata('queries');
 }
]);
