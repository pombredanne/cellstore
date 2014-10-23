/*global browser:false  */
'use strict';

var StatsPage = require('./stats/stats-page');

function AccountPage(){
    this.stats  = new StatsPage();
}

AccountPage.prototype.visitPage = function(){
    return browser.get('/account');
};

module.exports = AccountPage;

