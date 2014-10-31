'use strict';

angular
.module('secxbrl')
.config(function ($stateProvider) {
    $stateProvider
    .state('auth', {
        url: '/auth',
        abstract: true,
        template: '<div ui-view></div>',
        controller: 'AuthCtrl'
    });
})
;
