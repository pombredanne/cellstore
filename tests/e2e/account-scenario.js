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
        expect(password.form.errors.passwordTooShort.isDisplayed()).toBe(true);
        expect(password.form.errors.passwordsDontMatch.isDisplayed()).toBe(true);

        password.changePassword('', '', '');
        expect(password.form.errors.oldPasswordRequired.isDisplayed()).toBe(true);
        expect(password.form.errors.passwordRequired.isDisplayed()).toBe(true);
        expect(password.form.errors.confirmationRequired.isDisplayed()).toBe(true);

        password.changePassword(incorrectPwd, newPwd, newPwd);
        expect(password.form.errors.oldPasswordIncorrect.isDisplayed()).toBe(true);

        password.changePassword(credentials.testPassword, newPwd, newPwd);
        expect(home.alert.header.getText()).toBe('Success');

        // reset
        password.visitPage();
        password.changePassword(newPwd, credentials.testPassword, credentials.testPassword);
        expect(home.alert.header.getText()).toBe('Success');
    });

    it('should be able to manage tokens on tokens page', function() {
        tokens.visitPage();
        var numTokens = tokens.tokens.count();

        // at least test token and disclosure app token should be there
        expect(numTokens).toBeGreaterThan(1);

        // expiration: tomorrow minus one second
        var date = new Date();
        date.setDate(date.getDate() + 1);
        date.setMinutes(date.getMinutes() - 1);
        tokens.createToken(date.getFullYear(), 
                           date.getMonth()+1, // date month start with 0 for January
                           date.getDate(),
                           date.getHours(),
                           date.getMinutes(),
                           credentials.testPassword);
        expect(tokens.tokens.count()).toBe(numTokens + 1);

        // we created an expiring token (< 1 Day)
        // now, lets revoke it again:
        tokens.revokeExpiring(credentials.testPassword);
        expect(tokens.tokens.count()).toBeGreaterThan(1);
    });

});

