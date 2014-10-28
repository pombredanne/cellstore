'use strict';

angular.module('secxbrl')
    .controller('LogoutCtrl', function(Session) {
        Session.logout();
        Session.redirectToLoginPage('/');
    });