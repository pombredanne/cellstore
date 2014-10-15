'use strict';

//https://github.com/angular/protractor/blob/master/docs/api.md
//GetAttribute() returns "boolean" values and will return either "true" or null

describe('Authentication', function(){

    var AuthPage = require('../../app/home/auth/auth-page');
    var auth = new AuthPage();

    it('should have been redirected to the auth page', function() {
        auth.logout();
        auth.getCurrentUrl().then(function(url){
            expect(url.substring(url.length - '/'.length)).toBe('/');
        });
    });

    it('shouldn\'t login', function(){
        auth.visitPage();
        auth.login('support@28.io', 'hello');
        expect(auth.wrongCombinationMessage().isDisplayed()).toBe(true);
    });
    
    it('should login', function(){
        auth.login('support@28.io', 'foobar');
        auth.getCurrentUrl().then(function(url) {
            expect(url.substring(url.length - '/account/'.length)).toBe('/account/');
        });
    });
});
