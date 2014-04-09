'use strict';

angular.module('main')
.controller('ApiCtrl', function($scope, $http, $location, $backend) {
    $scope.content = '';
    $scope.API_URL = ($backend.API_URL.indexOf('//') === 0 ? $location.protocol() + ':' + $backend.API_URL : $backend.API_URL);
    $scope.getdata = function(name) {
        $scope.name = name;
        $http({
            method : 'GET',
            url: '/swagger/' + name + '.json',
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