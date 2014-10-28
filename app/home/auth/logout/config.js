'use strict';

angular
.module('secxbrl')
.config(function ($stateProvider) {
    $stateProvider
    .state('home.auth.logout', {
        url: '/logout',
        templateUrl: '/home/auth/logout/logout.html',
        controller: 'LogoutCtrl'
    });
})
;
