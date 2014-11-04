/*global browser:false  */
'use strict';

var _ = require('lodash');

var AppPage = require('../../app-page.js').AppPage;
var RegistrationModule = require('../../modules/ui/registration-page');

function StartPage(){
    AppPage.call(this);
    this.registration = new RegistrationModule();
}
StartPage.prototype = _.create(AppPage.prototype);

StartPage.prototype.visitPage = function(){
    return browser.get('/');
};

module.exports = StartPage;


