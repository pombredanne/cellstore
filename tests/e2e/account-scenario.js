'use strict';

//https://github.com/angular/protractor/blob/master/docs/api.md
//GetAttribute() returns "boolean" values and will return either "true" or null

describe('Private Account Page', function(){

    var HomePage = require('../../app/home/home-page');
    var home = new HomePage();
    var stats = home.account.stats;

    it('should have stats on stats page', function() {
        stats.visitPage();
        expect(stats.packageDescriptions.count()).toBe(1);
        // number of features of Free package
        expect(stats.packageFeatures.count()).toBe(3);
    });

});

