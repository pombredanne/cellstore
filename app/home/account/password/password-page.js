/*global browser:false  */
'use strict';

function PasswordPage(){
   this.packageDescriptions = element.all(by.binding('package.description'));
   this.packageFeatures = element.all(by.binding('include'));
}

PasswordPage.prototype.visitPage = function(){
    return browser.get('/account/password');
};

module.exports = PasswordPage;
