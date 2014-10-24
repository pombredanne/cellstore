/*global browser:false  */
'use strict';

function TokensPage(){
   this.packageDescriptions = element.all(by.binding('package.description'));
   this.packageFeatures = element.all(by.binding('include'));
}

TokensPage.prototype.visitPage = function(){
    return browser.get('/account/tokens');
};

module.exports = TokensPage;

