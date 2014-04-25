'use strict';

angular.module('main')
.controller('AccountPasswordCtrl', function($scope, $state, $backend, UsersService) {
    $scope.attempted = false;

    $scope.change = function() {
        $scope.attempted = true;

        $scope.$broadcast('autocomplete:update');
        $scope.resetForm.passwordRepeat.$setValidity('equals', $scope.password === $scope.passwordRepeat);

        if(!$scope.resetForm.$invalid) {
            $scope.loading = true;
            var us = (new UsersService($backend.API_URL + '/_queries/public'));
            us.resetPassword({ userid: $scope.user.id, password: $scope.password, token: $scope.token })
              .then(
                function(data) {
                    if(data && data.success) {
                        $scope.$emit('alert', 'Success', 'Your password has been changed.');
                        $scope.password = '';
                        $scope.passwordRepeat = '';
                        $scope.attempted = false;
                    } else {
                        $scope.$emit('error', 500, data);
                    }
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
