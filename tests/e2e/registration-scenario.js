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
    var reset = auth.reset;
    var profile = home.account.profile;
    var registrationForm = start.registration;

    it('should be able to see the registration form', function() {
        start.visitPage();

        // we are logged in
        expect(registrationForm.isDisplayed()).toBe(false);
        auth.doLogout();
        start.visitPage();

        // we are logged out now
        expect(registrationForm.isDisplayed()).toBe(true);
    });

    it('should fail to register', function() {
        registrationForm.register('', '', '', '', '', '');
        expect(registrationForm.form.errors.firstnameRequired.isDisplayed()).toBe(true);
        expect(registrationForm.form.errors.lastnameRequired.isDisplayed()).toBe(true);
        expect(registrationForm.form.errors.emailRequired.isDisplayed()).toBe(true);
        expect(registrationForm.form.errors.passwordRequired.isDisplayed()).toBe(true);
        expect(registrationForm.form.errors.confirmationRequired.isDisplayed()).toBe(true);

        registrationForm.register('Test', 'User', 'admin+test@28msec.com', '', '');
        expect(registrationForm.form.errors.passwordRequired.isDisplayed()).toBe(true);
        expect(registrationForm.form.errors.confirmationRequired.isDisplayed()).toBe(true);

        registrationForm.register('Test', 'User', 'admin+test@28msec.com', '12345', '1234');
        expect(registrationForm.form.errors.passwordsDontMatch.isDisplayed()).toBe(true);

        registrationForm.register('Test', 'User', 'admin+test@28msec.com', '123', '123');
        expect(registrationForm.form.errors.passwordTooShort.isDisplayed()).toBe(true);

        registrationForm.register('Test', 'User', 'admin+test28msec.com', 'abc123', 'abc123');
        expect(registrationForm.form.errors.emailInvalid.isDisplayed()).toBe(true);
    });

    it('should be able to register', function() {
        registrationForm.register('Test', 'User', 'admin+test@28msec.com', credentials.testPassword, credentials.testPassword);
        expect(registrationForm.form.errors.emailInUse.isPresent()).toBe(false);
        // should have automatically logged us in
        expect(profile.form.isDisplayed()).toBe(true);

        start.visitPage();
        expect(registrationForm.isDisplayed()).toBe(false);
    });

    it('should not be able to register again', function() {
        auth.doLogout();
        start.visitPage();
        expect(registrationForm.isDisplayed()).toBe(true);
        registrationForm.register('Test', 'User', 'admin+test@28msec.com', credentials.testPassword, credentials.testPassword);
        expect(registrationForm.form.errors.emailInUse.isDisplayed()).toBe(true);
    });

    it('should be able to request password reset', function() {
        login.visitPage();
        login.showPasswordReset();
        expect(login.formForgotPassword.isDisplayed()).toBe(true);

        login.requestResetPassword('');
        expect(this.form.errors.forgotEmailRequired.isDisplayed()).toBe(true);

        login.requestResetPassword('admin+test28msec.com');
        expect(this.form.errors.forgotEmailInvalid.isDisplayed()).toBe(true);

        login.requestResetPassword('admin+test@28msec.com');
        expect(home.alert.header.getText()).toBe('Help on the way!');

        reset.visitPage('admin+test@28msec.com','84736f6d-4c70-4a69-8ef8-2444f4ee4646');
        expect(reset.changeForm.isDisplayed()).toBe(true);

        reset.resetPassword('', '');
        expect(reset.form.errors.passwordRequired.isDisplayed()).toBe(true);
        expect(reset.form.errors.passwordRepeatRequired.isDisplayed()).toBe(true);

        reset.resetPassword('123', '123');
        expect(reset.form.errors.passwordMinLength.isDisplayed()).toBe(true);

        reset.resetPassword('12345', '123');
        expect(reset.form.errors.passwordRepeatDoesntMatch.isDisplayed()).toBe(true);

        reset.resetPassword('12345', '12345');
        expect(home.error.header.getText()).toBe('Error'); // token is not valid
    });

    // reset
    it('should be able to log in as support user', function() {
        login.visitPage();
        login.login('support@28.io', credentials.testPassword);
        login.getCurrentUrl().then(function(url) {
            expect(url.substring(url.length - '/account'.length)).toBe('/account');
        });
    });

});

