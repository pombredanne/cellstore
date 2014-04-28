'use strict';

angular.module('main')
.controller('AccountTokensCtrl', function($scope, $modal, $backend, SessionService) {
    
    $scope.service = new SessionService($backend.API_URL + '/_queries/public');
    
    $scope.getData = function() {
        $scope.tokens = [];
        $scope.service.listTokens({ $method: 'POST', token: $scope.token, $refresh: true })
            .then(
                function(data) {
                    $scope.tokens = data.results;
                },
                function(response) {
                    $scope.$emit('error', response.status, response.data);
                }
            );
    };
    
    $scope.revoke = function(token) {
        $modal.open( {
            templateUrl: 'tokens_revoke.html',
            controller: ['$scope', '$modalInstance', 'token',  function ($scope, $modalInstance, token) {
                $scope.object = { token: token, password: '' };
                $scope.cancel = function () {
                    $modalInstance.dismiss('cancel');
                };
                $scope.ok = function () {
                    $modalInstance.close({ password: $scope.object.password });
                };
            }],
            resolve: {
                token: function() { return token.token; }
            }
        }).result.then(function(item) {
            $scope.service.revokeToken({ $method: 'POST', email: $scope.user.email, password: item.password, token: token.token, $refresh: true })
                .then(
                    function(data) {
                        if(data && data.success) {
                            $scope.getData();
                        } else {
                            $scope.$emit('error', 500, data);
                        }
                    },
                    function(response) {
                        $scope.$emit('error', response.status, response.data);
                    }
                );
        });
    };

    $scope.create = function() {
        $modal.open( {
            templateUrl: 'tokens_create.html',
            controller: ['$scope', '$modalInstance',  function ($scope, $modalInstance) {
                var d = new Date();
                d.setDate(d.getDate() + 3);
                $scope.object = { expiration: d, password: '' };
                $scope.cancel = function () {
                    $modalInstance.dismiss('cancel');
                };
                $scope.ok = function () {
                    $modalInstance.close({ password: $scope.object.password, expiration: $scope.object.expiration.toISOString() });
                };
            }]
        }).result.then(function(item) {
            $scope.service.newToken({ $method: 'POST', email: $scope.user.email, password: item.password, expiration: item.expiration, $refresh: true })
                .then(
                    function(data) {
                        if(data && data.success) {
                            $scope.getData();
                        } else {
                            $scope.$emit('error', 500, data);
                        }
                    },
                    function(response) {
                        $scope.$emit('error', response.status, response.data);
                    }
                );
        });
    };
    
	$scope.getData();
});
