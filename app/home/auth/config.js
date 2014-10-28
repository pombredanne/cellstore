'use strict';

angular
.module('secxbrl')
.config(function ($stateProvider) {
    $stateProvider
    .state('home.auth', {
        url: '/auth',
        abstract: true,
        template: '<div ui-view></div>',
        controller: 'AuthCtrl'
    });
})
;
