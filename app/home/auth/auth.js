'use strict';

angular.module('secxbrl')
.controller('AuthCtrl', function($scope, $state, $stateParams, $location, $http, $window, API, Session) {
    $scope.returnPage = $stateParams.returnPage;
    $scope.registerAttempted = false;
    $scope.loginAttempted = false;
    $scope.forgotAttempted = false;

    $scope.login = function(){
        $scope.registerAttempted = false;
        $scope.loginAttempted = true;
        $scope.forgotAttempted = false;

        $scope.$broadcast('autocomplete:update');
        $scope.loginForm.loginPassword.$setValidity('unauthorized', true);
        if(!$scope.loginForm.$invalid) {
            Session
                .login($scope.loginEmail, $scope.loginPassword)
                .then(function() {
                    if($scope.returnPage){
                        $location.url(decodeURIComponent($scope.returnPage || '/')).replace();
                    } else {
                        // by default go to account page
                        $state.go('home.account.profile', { }, { reload: true });
                    }
                }, function() {
                    $scope.loginForm.loginPassword.$setValidity('unauthorized', false);
                });
        }
    };

    $scope.register = function(){
        $scope.registerAttempted = true;
        $scope.loginAttempted = false;
        $scope.forgotAttempted = false;

        $scope.$broadcast('autocomplete:update');
        $scope.registerForm.passwordRepeat.$setValidity('equals', $scope.password === $scope.passwordRepeat);

        if(!$scope.registerForm.$invalid) {
            API.Users
                .newUser({ firstname: $scope.firstname, lastname: $scope.lastname, email: $scope.email, password: $scope.password })
                .then(
                    function() {
                        //MunchkinHelper.associateLead({ Email: $scope.email, FirstName: $scope.firstname, LastName: $scope.lastname, Company: $scope.companyname, accountsecxbrlinfo: true });
                        Session
                            .login($scope.email, $scope.password)
                            .then(function() {
                                $state.go('home.account.profile', { }, { reload: true });
                            },
                            function(response) { $scope.$emit('error', response.status, response.data); });
                    },
                    function(response) { $scope.$emit('error', response.status, response.data); });
        }
    };

    $scope.forgot = function(){
        $scope.registerAttempted = false;
        $scope.loginAttempted = false;
        $scope.forgotAttempted = true;

        $scope.$broadcast('autocomplete:update');
        if(!$scope.forgotForm.$invalid) {
            API.Users
                .forgotPassword({ email: $scope.forgotEmail })
                .then(function() {
                    $scope.$emit('alert', 'Help on the way!', 'Please check your email, if you are registered on or system we sent you a link that allows you to change your password.<br><br>The link is valid for 24 hours.');
                    $scope.showForgot = false;
                },
                function(response) { $scope.$emit('error', response.status, response.data); });
        }
    };

    $scope.back = function() {
        setTimeout(function() { $window.history.back(); }, 100);
    };
});