angular.module('main').controller('AuthCtrl', ['$scope', '$route', '$http', '$window', '$backend', 'SessionService', 'UsersService',
  function($scope, $route, $http, $window, $backend, SessionService, UsersService) {
    $scope.returnPage = $route.current.params.returnPage;
    $scope.registerAttempted = false;
    $scope.loginAttempted = false;
    $scope.forgotAttempted = false;

	$scope.login = function(){
		$scope.registerAttempted = false;
        $scope.loginAttempted = true;
		$scope.forgotAttempted = false;

		$scope.$broadcast("autocomplete:update");
		$scope.loginForm.loginPassword.$setValidity("unauthorized", true);
        if(!$scope.loginForm.$invalid) {
			(new SessionService($backend.API_URL + '/_queries/public'))
				.login({ email: $scope.loginEmail, password: $scope.loginPassword })
				.then(
					function(data) { 
						if (data && data.success)
							$scope.$emit("login", data.token, data._id, $scope.loginEmail, data.firstname, data.lastname, $scope.returnPage);
					},
					function(response) { 
						$scope.loginForm.loginPassword.$setValidity("unauthorized", false);
						$scope.safeApply();
					});
        }
    };

	$scope.register = function(){
		$scope.registerAttempted = true;
        $scope.loginAttempted = false;
		$scope.forgotAttempted = false;

		$scope.$broadcast("autocomplete:update");
		$scope.registerForm.passwordRepeat.$setValidity("equals", $scope.password == $scope.passwordRepeat);

        if(!$scope.registerForm.$invalid) {
			(new UsersService($backend.API_URL + '/_queries/public'))
				.newUser({ firstname: $scope.firstname, lastname: $scope.lastname, email: $scope.email, password: $scope.password })
				.then(
					function(data) { 
						if (data && data.success) {
							MunchkinHelper.associateLead({ Email: $scope.email, FirstName: $scope.firstname, LastName: $scope.lastname, Company: $scope.companyname, accountsecxbrlinfo: true });
							(new SessionService($backend.API_URL + '/_queries/public'))
								.login({ email: $scope.email, password: $scope.password })
								.then(
									function(data) { 
										if (data && data.success)
											$scope.$emit("login", data.token, data._id, $scope.email, data.firstname, data.lastname, $scope.returnPage);
									},
									function(response) { $scope.$emit("error", response.status, response.data); });
						}
						else 
							$scope.$emit("error", 500, data);
					},
					function(response) { $scope.$emit("error", response.status, response.data); });
        }
    };

	$scope.forgot = function(){
		$scope.registerAttempted = false;
        $scope.loginAttempted = false;
		$scope.forgotAttempted = true;

		$scope.$broadcast("autocomplete:update");
        if(!$scope.forgotForm.$invalid) {
			(new UsersService($backend.API_URL + '/_queries/public'))
				.forgotPassword({ email: $scope.forgotEmail })
				.then(
					function(data) { 
						if (data && data.success) {
							$scope.$emit("alert", "Help on the way!", "Please check your email, if you are registered on or system we sent you a link that allows you to change your password.<br><br>The link is valid for 24 hours.");
							$scope.showForgot = false;
							$scope.safeApply();
						}
					},
					function(response) { $scope.$emit("error", response.status, response.data); });
        }
    };

    $scope.back = function() { 
	  setTimeout(function() { $window.history.back(); },100);
    };
  }
]);
