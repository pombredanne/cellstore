'use strict';

angular.module('main')
.controller('AdminCtrl', function($scope, $state) {

    $scope.$on('$stateChangeSuccess', function(event, toState) {
        $scope.subActive = toState.data && toState.data.subActive;
    });

    if($state.is('root.admin')) {
        $state.go('root.admin.usage');
    }
});
