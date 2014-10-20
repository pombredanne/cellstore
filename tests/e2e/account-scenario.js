'use strict';

//https://github.com/angular/protractor/blob/master/docs/api.md
//GetAttribute() returns "boolean" values and will return either "true" or null

describe('Private Account Page', function(){

    var HomePage = require('../../app/home/home-page');
    var home = new HomePage();
    var billing = home.account.billing;

    it('should have free package descriptions on billing page', function() {
        billing.visitPage();
        expect(billing.packageDescriptions.count()).toBe(1);
        // number of features of Free package
        expect(billing.packageFeatures.count()).toBe(3);
    });

});

