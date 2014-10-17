/*global browser:false  */
'use strict';

var PricingPage = require('./pricing/pricing-page');
var AccountPage = require('./account/account-page');

function HomePage(){
    this.pricing  = new PricingPage();
    this.account = new AccountPage();
}

HomePage.prototype.visitPage = function(){
    return browser.get('/');
};

module.exports = HomePage;
