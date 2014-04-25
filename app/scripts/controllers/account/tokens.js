'use strict';

angular.module('main')
.controller('AccountTokensCtrl', function($scope, $backend, SessionService, tokens) {
    $scope.tokens = tokens.results;
});
