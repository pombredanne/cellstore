'use strict';

angular.module('main')
.controller('AdminCtrl', function($scope, $state, $backend) {
    if($state.is('root.admin')) {
        $state.go('root.admin.usage');
    }
});
