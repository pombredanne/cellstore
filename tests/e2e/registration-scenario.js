'use strict';

//https://github.com/angular/protractor/blob/master/docs/api.md
//GetAttribute() returns "boolean" values and will return either "true" or null

describe('Registration process and similar', function(){

    var HomePage = require('../../app/home/home-page');
    var AuthPage = require('../../app/auth/auth-page');
    var config = require('./config/config').config;
    var home = new HomePage();
    var auth = new AuthPage();
    var start = home.start;
    var login = auth.login;
    var register = auth.register;
    var reset = auth.reset;
    var profile = home.account.profile;
    var homeRegistrationForm = start.registration;
    var signUpRegistrationForm = register.registration;

    it('should not display the registration form', function() {
        start.visitPage();

        // we are logged in
        expect(homeRegistrationForm.isDisplayed()).toBe(false);
    });

    it('should display the registration form', function() {
        auth.doLogout();
        start.visitPage();

        // we are logged out now
        expect(homeRegistrationForm.isDisplayed()).toBe(true);
    });

    it('should fail to register 1', function() {
        register.visitPage();
        signUpRegistrationForm.register('', '', '', '', '', '');
        expect(signUpRegistrationForm.form.errors.firstnameRequired.isDisplayed()).toBe(true);
        expect(signUpRegistrationForm.form.errors.lastnameRequired.isDisplayed()).toBe(true);
        expect(signUpRegistrationForm.form.errors.emailRequired.isDisplayed()).toBe(true);
        expect(signUpRegistrationForm.form.errors.passwordRequired.isDisplayed()).toBe(true);
        expect(signUpRegistrationForm.form.errors.confirmationRequired.isDisplayed()).toBe(true);
    });

    it('should fail to register 2', function() {
        signUpRegistrationForm.register('Test', 'User', 'admin+test@28msec.com', '', '');
        expect(signUpRegistrationForm.form.errors.passwordRequired.isDisplayed()).toBe(true);
        expect(signUpRegistrationForm.form.errors.confirmationRequired.isDisplayed()).toBe(true);
    });

    it('should fail to register 3', function() {
        signUpRegistrationForm.register('Test', 'User', 'admin+test@28msec.com', '12345', '1234');
        expect(signUpRegistrationForm.form.errors.passwordsDontMatch.isDisplayed()).toBe(true);
    });

    it('should fail to register 4', function() {
        signUpRegistrationForm.register('Test', 'User', 'admin+test@28msec.com', '123', '123');
        expect(signUpRegistrationForm.form.errors.passwordTooShort.isDisplayed()).toBe(true);
    });

    it('should fail to register 5', function() {
        signUpRegistrationForm.register('Test', 'User', 'admin+test28msec.com', 'abc123', 'abc123');
        expect(signUpRegistrationForm.form.errors.emailInvalid.isDisplayed()).toBe(true);
    });

    it('should be able to register', function() {
        start.visitPage();
        expect(homeRegistrationForm.isDisplayed()).toBe(true);
        homeRegistrationForm.register('Test', 'User', 'admin+test@28msec.com', config.testPassword, config.testPassword);
        expect(homeRegistrationForm.form.errors.emailInUse.isPresent()).toBe(false);
        // should have automatically logged us in
        expect(profile.form.isDisplayed()).toBe(true);
    });

    it('should not display the registration form', function() {
            start.visitPage();
        expect(homeRegistrationForm.isDisplayed()).toBe(false);
    });

    it('should not be able to register again', function() {
        auth.doLogout();
        start.visitPage();
        expect(homeRegistrationForm.isDisplayed()).toBe(true);
        homeRegistrationForm.register('Test', 'User', 'admin+test@28msec.com', config.testPassword, config.testPassword);
        expect(homeRegistrationForm.form.errors.emailInUse.isDisplayed()).toBe(true);
    });

    it('should fail to request password reset 1', function() {
        login.visitPage();
        login.showPasswordReset();
        expect(login.forgotForm.isDisplayed()).toBe(true);
    });

    it('should fail to request password reset 2', function() {
        login.requestResetPassword('');
        expect(login.form.errors.forgotEmailRequired.isDisplayed()).toBe(true);
    });

    it('should fail to request password reset 3', function() {
        login.requestResetPassword('admin+test28msec.com');
        expect(login.form.errors.forgotEmailInvalid.isDisplayed()).toBe(true);
    });

    it('should fail to request password reset 4', function() {
        login.requestResetPassword('admin+test@28msec.com');
        expect(home.alert.header.getText()).toBe('Help on the way!');
    });

    it('should fail to request password reset 5', function() {
        reset.visitPage('admin+test@28msec.com','84736f6d-4c70-4a69-8ef8-2444f4ee4646');
        expect(reset.changeForm.isDisplayed()).toBe(true);
    });

    it('should fail to request password reset 6', function() {
        reset.resetPassword('', '');
        expect(reset.form.errors.passwordRequired.isDisplayed()).toBe(true);
        expect(reset.form.errors.passwordRepeatRequired.isDisplayed()).toBe(true);
    });

    it('should fail to request password reset 7', function() {
        reset.resetPassword('123', '123');
        expect(reset.form.errors.passwordMinLength.isDisplayed()).toBe(true);
    });

    it('should fail to request password reset 8', function() {
        reset.resetPassword('12345', '123');
        expect(reset.form.errors.passwordRepeatDoesntMatch.isDisplayed()).toBe(true);
    });

    it('should fail to request password reset 9', function() {
        reset.resetPassword('12345', '12345');
        expect(home.error.header.getText()).toBe('Error'); // token is not valid
    });

    // reset
    it('should be able to log in as support user', function() {
        login.visitPage();
        login.login('support@28.io', config.testPassword);
        login.getCurrentUrl().then(function(url) {
            expect(url.substring(url.length - '/account'.length)).toBe('/account');
        });
    });

});

