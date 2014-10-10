'use strict';

angular.module('secxbrl')
    .controller('LogoutCtrl', function($location, Session) {
        Session.logout();
        Session.redirectToLoginPage('/');
    });