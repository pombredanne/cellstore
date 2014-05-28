'use strict';

angular.module('main')
.controller('ResetCtrl', function($scope, $stateParams, $backend) {
    $scope.email = $stateParams.email;
    $scope.resetToken = $stateParams.resetToken;
    $scope.loading = false;
    $scope.changeAttempted = false;

    $scope.change = function(){
        $scope.changeAttempted = true;

        $scope.$broadcast('autocomplete:update');
        $scope.changeForm.passwordRepeat.$setValidity('equals', $scope.password === $scope.passwordRepeat);

        if(!$scope.changeForm.$invalid) {
            $scope.loading = true;
            $backend.Users
                .setPassword({ email: $scope.email, resetToken: $scope.resetToken, password: $scope.password })
                .then(function() {
                    $backend.Session
                            .login({ email: $scope.email, password: $scope.password })
                            .then(function(data) {
                                $scope.$emit('login', data.token, data._id, $scope.email, data.firstname, data.lastname, '/');
                                $scope.loading = false;
                            },
                            function(response) {
                                $scope.$emit('error', response.status, response.data);
                                $scope.loading = false;
                            });
                },
                function(response) {
                    $scope.$emit('error', response.status, response.data);
                    $scope.loading = false;
                });
        }
    };

});
