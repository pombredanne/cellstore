/*global browser:false, element:false, by:false */
'use strict';

var _ = require('lodash');

var AppPage = require('../../app-page.js').AppPage;

function AuthPage(){
    AppPage.call(this);
    this.form = element(by.name('loginForm'));
    this.loginEmail = element(by.model('loginEmail'));
    this.password = element(by.model('loginPassword'));
}
AuthPage.prototype = _.create(AppPage.prototype);

AuthPage.prototype.visitPage = function(){
    browser.get('/');
    return browser.get('/auth');
    // return element(by.css('.account-sign-in')).click();
};

AuthPage.prototype.login = function(email, password){
    this.loginEmail.clear();
    this.loginEmail.sendKeys(email);
    this.password.clear();
    this.password.sendKeys(password);
    this.form.submit();
};

AuthPage.prototype.logout = function(){
    return browser.get('/logout/');
};

AuthPage.prototype.wrongCombinationMessage = function(){
      return element(by.id('wrong-combination'));
};

module.exports = AuthPage;
