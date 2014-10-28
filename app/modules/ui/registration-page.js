/*global browser:false  */
'use strict';

function RegistrationModule(){

    this.register = element(by.id('register'));
    this.form = element(by.name('registerForm'));

    this.firstname = element(by.model('firstname'));
    this.lastname = element(by.model('lastname'));
    this.companyname = element(by.model('companyname'));
    this.email = element(by.model('email'));
    this.password = element(by.model('password'));
    this.passwordRepeat = element(by.model('passwordRepeat'));

    this.form.errors = {};
    this.form.errors.firstnameRequired = element(by.id('firstname-required'));
    this.form.errors.lastnameRequired = element(by.id('lastname-required'));
    this.form.errors.companynameRequired = element(by.id('companyname-required'));
    this.form.errors.emailRequired = element(by.id('email-required'));
    this.form.errors.emailInvalid = element(by.id('email-invalid'));
    this.form.errors.passwordRequired = element(by.id('password-required'));
    this.form.errors.passwordTooShort = element(by.id('password-too-short'));
    this.form.errors.confirmationRequired = element(by.id('confirmation-required'));
    this.form.errors.passwordsDontMatch = element(by.id('passwords-dont-match'));
}

var input = function(formElement, value){
    formElement.clear();
    formElement.sendKeys(value);
};

RegistrationModule.prototype.register = function(firstname, lastname, companyname, email, password, passwordRepeat){
    input(this.firstname, firstname);
    input(this.lastname, lastname);
    input(this.companyname, companyname);
    input(this.email, email);
    input(this.password, password);
    input(this.passwordRepeat, passwordRepeat);
    this.form.submit();
};

module.exports = RegistrationModule;
