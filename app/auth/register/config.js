'use strict';

angular
.module('secxbrl')
.config(function ($stateProvider) {
    $stateProvider
    .state('auth.register', {
        url: '',
        templateUrl: '/auth/register/register.html',
        controller: 'RegisterCtrl'
    });
})
;
