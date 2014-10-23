/*global browser:false  */
'use strict';

function StatsPage(){
   this.packageDescriptions = element.all(by.binding('package.description'));
   this.packageFeatures = element.all(by.binding('include'));
}

StatsPage.prototype.visitPage = function(){
    return browser.get('/account/stats');
};

module.exports = StatsPage;


