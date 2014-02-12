angular.module('main').controller('AuthCtrl', ['$scope', '$route', '$http', '$window', '$backend', 'SessionService', 'UsersService',
  function($scope, $route, $http, $window, $backend, SessionService, UsersService) {
    $scope.returnPage = $route.current.params.returnPage;
    $scope.registerAttempted = false;
    $scope.loginAttempted = false;

	$scope.login = function(){
		$scope.registerAttempted = false;
        $scope.loginAttempted = true;

		$scope.$broadcast("autocomplete:update");
		$scope.loginForm.loginPassword.$setValidity("unauthorized", true);
        if(!$scope.loginForm.$invalid) {
			(new SessionService($backend.API_URL + '/_queries/public'))
				.login($scope.loginEmail, $scope.loginPassword)
				.then(
					function(data) { 
						if (data && data.success)
							$scope.$emit("login", data.token, $scope.loginEmail, data.name, $scope.returnPage);
					},
					function(data) { 
						$scope.loginForm.loginPassword.$setValidity("unauthorized", false);
						$scope.safeApply();
					});
        }
    };
	$scope.register = function(){
		$scope.registerAttempted = true;
        $scope.loginAttempted = false;

		$scope.$broadcast("autocomplete:update");
		$scope.registerForm.passwordRepeat.$setValidity("equals", $scope.password == $scope.passwordRepeat);

        if(!$scope.registerForm.$invalid) {
			(new UsersService($backend.API_URL + '/_queries/public'))
				.newUser($scope.firstname, $scope.lastname, $scope.email, $scope.password)
				.then(
					function(data) { 
						if (data && data.success)
							(new SessionService($backend.API_URL + '/_queries/public'))
								.login($scope.email, $scope.password)
								.then(
									function(data) { 
										if (data && data.success)
											$scope.$emit("login", data.token, $scope.email, data.name, $scope.returnPage);
									},
									function(data) { 
										$scope.$emit("error", 500, data);
									});
						else 
							$scope.$emit("error", 500, data);
					},
					function(data) {
						$scope.$emit("error", 500, data);
					});
        }
    };

    $scope.back = function() { 
	  setTimeout(function() { $window.history.back(); },100);
    };
  }
]);
