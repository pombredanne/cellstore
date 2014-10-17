'use strict';

angular
.module('secxbrl')
.config(function ($stateProvider) {
    $stateProvider
    .state('home.auth', {
        url: '/auth',
        templateUrl: '/home/auth/auth.html',
        controller: 'AuthCtrl'
    });
})
;
