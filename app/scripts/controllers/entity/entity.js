'use strict';

angular.module('main')
.controller('EntityCtrl', function($scope, $state, $location, $stateParams, entity) {
    $scope.cik = $stateParams.cik;
    
    $scope.entity = entity.Entities[0];
    
    $scope.$on('$stateChangeSuccess', function(event, toState) {
        $scope.subActive = toState.data && toState.data.subActive;
    });
    
    if($state.is('root.entity')) {
        $state.go('root.entity.summary');
    }
});