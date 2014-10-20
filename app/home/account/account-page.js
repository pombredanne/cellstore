/*global browser:false  */
'use strict';

var BillingPage = require('./billing/billing-page');

function AccountPage(){
    this.billing  = new BillingPage();
}

AccountPage.prototype.visitPage = function(){
    return browser.get('/account');
};

module.exports = AccountPage;

