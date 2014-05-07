'use strict';

angular.module('main')
.controller('AccountPasswordCtrl', function($scope, $state, $backend) {
    $scope.attempted = false;

    $scope.change = function() {
        $scope.attempted = true;

        $scope.$broadcast('autocomplete:update');
        $scope.resetForm.passwordRepeat.$setValidity('equals', $scope.password === $scope.passwordRepeat);

        if(!$scope.resetForm.$invalid) {
            $scope.loading = true;
            $backend.Users.resetPassword({ userid: $scope.user.id, password: $scope.password, token: $scope.token })
              .then(
                function() {
                    $scope.$emit('alert', 'Success', 'Your password has been changed.');
                    $scope.password = '';
                    $scope.passwordRepeat = '';
                    $scope.attempted = false;
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
        $scope.passwordRepeat = '';
        $scope.attempted = false;
    };
});
