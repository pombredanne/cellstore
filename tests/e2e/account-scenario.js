'use strict';

//https://github.com/angular/protractor/blob/master/docs/api.md
//GetAttribute() returns "boolean" values and will return either "true" or null

describe('Private Account Page', function(){

    var HomePage = require('../../app/home/home-page');
    var home = new HomePage();
    var profile = home.account.profile;
    var stats = home.account.stats;
    var password = home.account.password;
    var tokens = home.account.tokens;
    var credentials = require('./config/credentials').credentials;

    it('should be able to check and update profile information on profile page', function() {
        profile.visitPage();
        profile.changeName('Hercule', 'Poirot');
        expect(home.alert.header.getText()).toBe('Success');

        // reload page to test persistency
        profile.visitPage();
        expect(profile.firstname.getAttribute('value')).toBe('Hercule');
        expect(profile.lastname.getAttribute('value')).toBe('Poirot');

        // reset
        profile.changeName('System', 'Administrator');
        expect(profile.firstname.getAttribute('value')).toBe('System');
        expect(profile.lastname.getAttribute('value')).toBe('Administrator');
        expect(home.alert.header.getText()).toBe('Success');
    });

    it('should have stats on stats page', function() {
        stats.visitPage();
        expect(stats.statsWidget.header.getText()).toBe('API calls in current period');
        expect(stats.statsWidget.details.getText()).toBeDefined();
    });

    it('should be able to update password on password page', function() {
        password.visitPage();
        var newPwd = '123abc';
        var incorrectPwd = 'incorrectPwd';

        password.changePassword(credentials.testPassword, 'foo', '');
        expect(auth.form.errors.passwordTooShort.isDisplayed()).toBe(true);
        expect(auth.form.errors.passwordsDontMatch.isDisplayed()).toBe(true);

        password.changePassword('', '', '');
        expect(auth.form.errors.oldPasswordRequired.isDisplayed()).toBe(true);
        expect(auth.form.errors.passwordRequired.isDisplayed()).toBe(true);
        expect(auth.form.errors.confirmationRequired.isDisplayed()).toBe(true);

        password.changePassword(incorrectPwd, newPwd, newPwd);
        expect(auth.form.errors.oldPasswordIncorrect.isDisplayed()).toBe(true);

        password.changePassword(credentials.testPassword, newPwd, newPwd);
        expect(home.alert.header.getText()).toBe('Success');

        // reset
        password.visitPage();
        password.changePassword(newPwd, credentials.testPassword, credentials.testPassword);
        expect(home.alert.header.getText()).toBe('Success');
    });

    it('should be able to manage tokens on tokens page', function() {
        tokens.visitPage();
        //expect(stats.packageDescriptions.count()).toBe(1);
        // number of features of Free package
        //expect(stats.packageFeatures.count()).toBe(3);
    });

});

