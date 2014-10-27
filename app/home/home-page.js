/*global browser:false  */
'use strict';

var PricingPage = require('./pricing/pricing-page');
var AccountPage = require('./account/account-page');

function HomePage(){
    this.alert = {};
    this.alert.header = element(by.id('alert-header'));
    this.alert.body = element(by.id('alert-body'));

    this.pricing  = new PricingPage();
    this.account = new AccountPage();
}

HomePage.prototype.visitPage = function(){
    return browser.get('/');
};

module.exports = HomePage;
