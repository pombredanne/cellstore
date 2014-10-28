/*global browser:false  */
'use strict';

var StartPage = require('./start/start-page');
var PricingPage = require('./pricing/pricing-page');
var AccountPage = require('./account/account-page');

function HomePage(){
    this.alert = {};
    this.alert.header = element(by.id('alert-header'));
    this.alert.body = element(by.id('alert-body'));

    this.pricing  = new PricingPage();
    this.account = new AccountPage();
    this.start = new StartPage();
}

module.exports = HomePage;
