/*global browser:false  */
'use strict';

var _ = require('lodash');

var AppPage = require('../../app-page.js').AppPage;

function StartPage(){
    AppPage.call(this);
}
StartPage.prototype = _.create(AppPage.prototype);

StartPage.prototype.visitPage = function(){
    return browser.get('/');
};

module.exports = StartPage;


