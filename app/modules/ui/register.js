'use strict';

angular
.module('secxbrl')
.directive('register', function($state, API, Session){
    return {
        restrict: 'E',
        templateUrl: '/modules/ui/register.html',
        replace: true,
        scope: {
            'class': '@'
        },
        link: function($scope) {

            $scope.registerAttempted = false;

            $scope.register = function () {
                $scope.registerAttempted = true;

                $scope.$broadcast('autocomplete:update');
                $scope.registerForm.passwordRepeat.$setValidity('equals', $scope.password === $scope.passwordRepeat);

                if (!$scope.registerForm.$invalid) {
                    API.Users
                        .newUser({ firstname: $scope.firstname, lastname: $scope.lastname, email: $scope.email, password: $scope.password })
                        .then(
                        function () {
                            Session
                                .login($scope.email, $scope.password)
                                .then(function () {
                                    $state.go('home.account.profile', { }, { reload: true });
                                },
                                function (response) {
                                    $scope.$emit('error', response.status, response.data);
                                });
                        },
                        function (response) {
                            $scope.$emit('error', response.status, response.data);
                        });
                }
            };
        }
    };
});