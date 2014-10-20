'use strict';

//https://github.com/angular/protractor/blob/master/docs/api.md
//GetAttribute() returns "boolean" values and will return either "true" or null

describe('Public SecXBRL.info Website', function(){

    var HomePage = require('../../app/home/home-page');
    var home = new HomePage();
    var pricing = home.pricing;

    it('should have free and enterprice package descriptions on pricing page', function() {
        pricing.visitPage();
        expect(pricing.descriptions.count()).toBe(2);
        // number of features of Free and enterprise package
        expect(pricing.includedFeatures.count()).toBe(14);
    });

});
