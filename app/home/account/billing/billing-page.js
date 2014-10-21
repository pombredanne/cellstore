/*global browser:false  */
'use strict';

function BillingPage(){
   this.packageDescriptions = element.all(by.binding('package.description'));
   this.packageFeatures = element.all(by.binding('include'));
}

BillingPage.prototype.visitPage = function(){
    return browser.get('/account/billing');
};

module.exports = BillingPage;


