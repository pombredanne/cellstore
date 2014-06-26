'use strict';

angular.module('main')
.controller('AccountCtrl', function($scope, $state, user, isAuthorizedStatisticsUsage) {
    $scope.user = user;
    $scope.isAuthorizedStatisticsUsage = isAuthorizedStatisticsUsage;

    $scope.$on('$stateChangeSuccess', function(event, toState) {
        $scope.subActive = toState.data && toState.data.subActive;
    });
    
    if($state.is('root.account')) {
        $state.go('root.account.info');
    }
});
