'use strict';

//https://github.com/angular/protractor/blob/master/docs/api.md
//GetAttribute() returns "boolean" values and will return either "true" or null

describe('Registration process and similar', function(){

    var HomePage = require('../../app/home/home-page');
    var AuthPage = require('../../app/home/auth/auth-page');
    var credentials = require('./config/credentials').credentials;
    var home = new HomePage();
    var auth = new AuthPage();
    var start = home.start;
    var login = auth.login;
    var registrationForm = start.registration;

    it('should be able to see the registration form', function() {
        start.visitPage();

        // we are logged in
        expect(registrationForm.register.isDisplayed()).toBe(false);
        auth.doLogout();
        start.visitPage();

        // we are logged out now
        expect(registrationForm.register.isDisplayed()).toBe(true);
    });

    it('should fail to register', function() {
        registrationForm.register('', '', '', '', '', '');
        expect(password.form.errors.firstnameRequired.isDisplayed()).toBe(true);
        expect(password.form.errors.lastnameRequired.isDisplayed()).toBe(true);
        expect(password.form.errors.companynameRequired.isDisplayed()).toBe(true);
        expect(password.form.errors.emailRequired.isDisplayed()).toBe(true);
        expect(password.form.errors.passwordRequired.isDisplayed()).toBe(true);
        expect(password.form.errors.confirmationRequired.isDisplayed()).toBe(true);

        registrationForm.register('Test', 'User', 'My Company', 'admin+test@28msec.com', '', '');
        expect(password.form.errors.passwordTooShort.isDisplayed()).toBe(true);
        expect(password.form.errors.confirmationRequired.isDisplayed()).toBe(true);

        registrationForm.register('Test', 'User', 'My Company', 'admin+test@28msec.com', '', '123');
        expect(password.form.errors.passwordRequired.isDisplayed()).toBe(true);
        expect(password.form.errors.passwordsDontMatch.isDisplayed()).toBe(true);

        registrationForm.register('Test', 'User', 'My Company', 'admin+test@28msec.com', '123', '123');
        expect(password.form.errors.passwordTooShort.isDisplayed()).toBe(true);

        registrationForm.register('Test', 'User', 'My Company', 'admin+test28msec.com', 'abc123', 'abc123');
        expect(password.form.errors.emailInvalid.isDisplayed()).toBe(true);
    });

    it('should be able to register', function() {
        registrationForm.register('Test', 'User', 'My Company', 'admin+test@28msec.com', credentials.testPassword, credentials.testPassword);
        start.getCurrentUrl().then(function(url) {
            expect(url.substring(url.length - '/account'.length)).toBe('/account');
        });

        start.visitPage();
        expect(registrationForm.register.isDisplayed()).toBe(false);
    });

    // reset
    it('should be able to log in as support user', function() {
        auth.doLogout();
        login.visitPage();
        login.login('support@28.io', credentials.testPassword);
        login.getCurrentUrl().then(function(url) {
            expect(url.substring(url.length - '/account'.length)).toBe('/account');
        });
    });

});

