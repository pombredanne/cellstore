/*global browser:false  */
'use strict';

function StartPage(){
   this.register = element(by.id('register'));
}

StartPage.prototype.visitPage = function(){
    return browser.get('/');
};

module.exports = StartPage;


