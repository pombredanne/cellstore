/*global browser:false  */
'use strict';

function PricingPage(){
   this.descriptions = element.all(by.binding('package.description'));
   this.includedFeatures = element.all(by.binding('include'));
}

PricingPage.prototype.visitPage = function(){
    return browser.get('/pricing/');
};

module.exports = PricingPage;

