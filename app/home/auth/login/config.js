'use strict';

angular
.module('secxbrl')
.config(function ($stateProvider) {
    $stateProvider
    .state('home.auth.login', {
        url: '',
        templateUrl: '/home/auth/login/login.html',
        controller: 'LoginCtrl'
    });
})
;
