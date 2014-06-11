'use strict';

angular.module('main')
.controller('AdminCtrl', function($scope, $state) {
    if($state.is('root.admin')) {
        $state.go('root.admin.usage');
    }
});
