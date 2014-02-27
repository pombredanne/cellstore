angular.module('main').controller('AccountCtrl', ['$scope', '$route', '$http', '$location', '$backend', 'SessionService', 'UsersService',
  function($scope, $route, $http, $location, $backend, SessionService, UsersService) {
      $scope.section = $route.current.params.section;
      $scope.resetAttempted = false;
      $scope.infoAttempted = false;

      $scope.resetPassword = function() {
        $scope.resetAttempted = true;
        $scope.infoAttempted = false;

        $scope.$broadcast("autocomplete:update");
        $scope.resetForm.passwordRepeat.$setValidity("equals", $scope.password == $scope.passwordRepeat);

        if(!$scope.resetForm.$invalid) {
            var us = (new UsersService($backend.API_URL + '/_queries/public'));
            us.resetPassword({ userid: $scope.user.id, password: $scope.password, token: $scope.token })
              .then(
                function(data) {
                    if(data && data.success) {
                        $scope.$emit("alert", "Success", "Your password has been changed.");
                        $scope.goto("/account");
                    }
                    else 
                        $scope.$emit("error", 500, data);
                },
                function(data) {
                    $scope.$emit("error", 500, data);
                });
        }
      };


      $scope.qs = $location.search();
      if ($scope.qs && $scope.qs.token) {
          var us = (new UsersService($backend.API_URL + '/_queries/public'));
          
          us.getUser({ token: $scope.qs.token })
            .then(
                function(data) { 
                    if (data && data.success && data.user) {
                        $scope.$emit("login", $scope.qs.token, data.user._id, data.user.email, data.user.firstname, data.user.lastname, $location.path());
                    }
                    else 
                        $scope.$emit("error", 500, data);
                },
                function(data) {
                    $scope.$emit("error", 401, data);
                });
      }
  }
]);