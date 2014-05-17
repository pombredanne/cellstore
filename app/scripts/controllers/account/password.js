'use strict';

angular.module('main')
.controller('AccountPasswordCtrl', function($scope, $state, $backend) {
    $scope.attempted = false;

    $scope.change = function() {
        $scope.attempted = true;

        $scope.$broadcast('autocomplete:update');
        $scope.resetForm.passwordRepeat.$setValidity('equals', $scope.passwordNew === $scope.passwordRepeat);

        if(!$scope.resetForm.$invalid) {
            $scope.loading = true;
            $backend.Users.resetPassword({ userid: $scope.user.id, newpassword: $scope.passwordNew, email: $scope.user.email, password: $scope.password, token: $scope.token, $refresh: true })
              .then(
                function() {
                    $scope.$emit('alert', 'Success', 'Your password has been changed.');
                    $scope.reset();
                    $scope.loading = false;
                },
                function(response) {
                    $scope.$emit('error', response.status, response.data);
                    $scope.loading = false;
                });
        }
    };

    $scope.reset = function() {
        $scope.password = '';
        $scope.passwordNew = '';
        $scope.passwordRepeat = '';
        $scope.attempted = false;
    };
});
