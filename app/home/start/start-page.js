/*global browser:false  */
'use strict';

var RegistrationModule = require('../../modules/ui/registration-page');

function StartPage(){
    this.registration = new RegistrationModule();
}

StartPage.prototype.visitPage = function(){
    return browser.get('/');
};

module.exports = StartPage;


