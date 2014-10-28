/*global browser:false, element:false, by:false */
'use strict';

function LoginPage(){
    this.form = element(by.name('loginForm'));
    this.loginEmail = element(by.model('loginEmail'));
    this.password = element(by.model('loginPassword'));
}

LoginPage.prototype.visitPage = function(){
    return browser.get('/auth');
};

LoginPage.prototype.login = function(email, password){
    this.loginEmail.clear();
    this.loginEmail.sendKeys(email);
    this.password.clear();
    this.password.sendKeys(password);
    this.form.submit();
};

LoginPage.prototype.wrongCombinationMessage = function(){
    return element(by.id('wrong-combination'));
};

module.exports = LoginPage;
