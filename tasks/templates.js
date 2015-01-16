'use strict';

require('./crypt');

var fs = require('fs');
var gulp = require('gulp');
var $ = require('gulp-load-plugins')();
var _ = require('lodash');

var Config = require('./config');

var loadCredentials = function(){
    $.util.log('loading credentials from: ' + Config.paths.unencryptedConfigFile);
    var rawCredentials = JSON.parse(fs.readFileSync(Config.paths.unencryptedConfigFile, 'utf-8'));
    var credentials = rawCredentials.all;
    // fill up/overwrite with either prod or dev credentials
    if(Config.isOnProduction){
        _.extend(credentials, rawCredentials.prod);
    } else {
        _.extend(credentials, rawCredentials.dev);
    }
    return credentials;
};

gulp.task('config-template', [ 'decrypt' ], function(done){
    var Mustache = require('mustache');

    //Fetch credentials
    var data = { credentials: loadCredentials() };

    //create config.json
    var src = fs.readFileSync('tasks/templates/config.json.mustache', 'utf-8');
    var result = Mustache.render(src, data);
    fs.writeFileSync(Config.paths.config, result, 'utf-8');

    $.util.log('created ' + Config.paths.config);
    done();
});

gulp.task('templates', ['load-config'], function(done){

    var Mustache = require('mustache');
    var expand = require('glob-expand');

    //Fetch reports
    var reports  = expand(Config.paths.reports);
    var reportSources = [];
    reports.forEach(function(report){
        reportSources.push(fs.readFileSync(report, 'utf-8'));
    });

    var templates = [
        {
            src: 'tasks/templates/config.js.mustache',
            data: {
                cellstore: Config.credentials.cellstore,
                staging: {
                    environment: Config.isOnProduction ? 'prod' : Config.isOnTravis ? 'ci' : 'dev',
                    e2eReportsDir: '/tmp/e2e-reports',
                    configId: Config.configId
                }
            },
            dest: 'tests/e2e/config/config.js'
        },
        {
            src: 'tasks/templates/config.jq.mustache',
            data: {
                cellstore: Config.credentials.cellstore,
                sendmail: Config.credentials.sendmail,
                frontend: {
                    url: Config.bucketName
                }
            },
            dest: Config.paths.queries + '/modules/io/28/apps/config.jq'
        },
        {
            src: 'tasks/templates/UpdateReportSchema.jq.mustache',
            data: {
                reports: reportSources.join(',')
            },
            dest: Config.paths.queries + '/private/UpdateReportSchema.jq'
        },
        {
            src: 'tasks/templates/constants.js.mustache',
            data: {
                APPNAME: Config.projectName,
                API_URL: 'http://' + Config.projectName + '.28.io/v1',
                DEBUG: false,
                ACCOUNT_URL: '/account/info',
                REGISTRATION_URL: '/auth',
                PROFILE: Config.credentials.cellstore.profile,
                EXCEL_RULE_TEMPLATE: fs.readFileSync(__dirname + '/templates/excel-rule.template', 'utf-8').toString().replace(/[\r\n]+/g,'\\n')
            },
            dest: Config.paths.app + '/constants.js'
        }
    ];

    templates.forEach(function(tpl){
        var src = fs.readFileSync(tpl.src, 'utf-8');
        var result = Mustache.render(src, tpl.data);
        fs.writeFileSync(tpl.dest, result, 'utf-8');
        $.util.log('created template: ' + tpl.dest);
    });
    done();
});
