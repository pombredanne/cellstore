'use strict';

angular.module('main')
.controller('ApiCtrl', function($scope, $http, $backend) {
    $scope.content = '';
    $scope.API_URL = $backend.API_URL;
    $scope.getdata = function(name) {
        $scope.name = name;
        $http({
            method : 'GET',
            url: '/' + name + '.json',
            cache : false
        })
        .success(function(data) {
            $scope.content = data;
        });
    };

    $scope.needsAuth = function() {
        return true;
    };

    $scope.getdata('queries');
});