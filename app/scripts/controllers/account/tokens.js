'use strict';

angular.module('main')
.controller('AccountTokensCtrl', function($scope, $backend, SessionService, tokens) {
    $scope.tokens = tokens.results;

    $scope.revoke = function(token) {
        $scope.confirmPassword('Attention!', 'You are about to revoke the token <b>' + token.token + '</b>.<br>This operation is irreversible!<br><br>Please input your password to confirm the operation.')
            .then(function(item) {
                var service = new SessionService($backend.API_URL + '/_queries/public');
                service.revokeToken({ $method: 'POST', email: $scope.user.email, password: item.password, token: token.token })
                    .then(
                        function(data) {
                            if(data && data.success) {
                                $scope.tokens.splice($scope.tokens.indexOf(token), 1);
                            } else {
                                $scope.$emit('error', 500, data);
                            }
                        },
                        function(response) {
                            $scope.$emit('error', response.status, response.data);
                        });
            });
    };
});
