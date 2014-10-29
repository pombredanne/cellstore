/*global browser:false, element:false, by:false */
'use strict';

var _ = require('lodash');

var AppPage = require('../../app-page.js').AppPage;
var LoginPage = require('./login/login-page');
var LogoutPage = require('./logout/logout-page');
var ResetPage = require('./reset/reset-page');

function AuthPage(){
    AppPage.call(this);
    this.login  = new LoginPage();
    this.logout  = new LogoutPage();
    this.reset = new ResetPage();
}
AuthPage.prototype = _.create(AppPage.prototype);

AuthPage.prototype.doLogout = function(){
    return this.logout.visitPage();
};

module.exports = AuthPage;
