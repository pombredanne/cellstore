/*global browser:false, element:false, by:false */
'use strict';

function LogoutPage(){
}

LogoutPage.prototype.visitPage = function(){
    return browser.get('/auth/logout');
};

module.exports = LogoutPage;
