'use strict';

angular
.module('secxbrl')
.config(function ($stateProvider) {
    $stateProvider
    .state('home.logout', {
        url: 'logout/',
        templateUrl: '/home/logout/logout.html',
        controller: 'LogoutCtrl'
    });
})
;
