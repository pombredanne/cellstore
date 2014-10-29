'use strict';

angular
.module('secxbrl')
.config(function ($stateProvider) {
    $stateProvider
    .state('home.auth.reset', {
        url: '/reset?email&resetToken',
        templateUrl: '/home/auth/reset/reset.html',
        controller: 'ResetCtrl'
    });
})
;
