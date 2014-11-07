'use strict';

angular.module('secxbrl')
    .controller('StartCtrl', function($scope, Session){
        $scope.user = Session.getUser();
        $scope.authenticated = ($scope.user !== undefined && $scope.user !== null);
    });
