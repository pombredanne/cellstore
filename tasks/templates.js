'use strict';

var fs = require('fs');
var gulp = require('gulp');
var $ = require('gulp-load-plugins')();
var _ = require('lodash');

var Config = require('./config');

gulp.task('templates', ['load-config'], function(){

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
                secxbrl: {
                    config: Config.credentials.cellstore.all,
                    credentials: Config.isOnProduction ? Config.credentials.cellstore.prod : Config.credentials.cellstore.dev
                },
                staging: {
                    environment: Config.isOnProduction ? 'prod' : 'dev',
                    e2eReportsDir: '/tmp/e2e-reports'
                }
            },
            dest: 'tests/e2e/config/config.js'
        },
        {
            src: 'tasks/templates/config.jq.mustache',
            data: {
                secxbrl: {
                    config: Config.credentials.cellstore.all,
                    credentials: Config.isOnProduction ? Config.credentials.cellstore.prod : Config.credentials.cellstore.dev
                },
                sendmail: Config.credentials.sendmail,
                frontend: {
                    project: 'app',
                    domain: '.secxbrl.info'
                },
                profile: Config.credentials.cellstore.all.profile,
                filteredAspects: Config.credentials.cellstore.all.filteredAspects
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
                APPNAME: 'secxbrl',
                API_URL: 'http://' + Config.projectName + '.28.io/v1',
                DEBUG: false,
                ACCOUNT_URL: '/account/info',
                REGISTRATION_URL: '/auth',
                PROFILE: Config.credentials.cellstore.all.profile
            },
            dest: Config.paths.app + '/constants.js'
        }
    ];

    templates.forEach(function(tpl){
        var src = fs.readFileSync(tpl.src, 'utf-8');
        var result = Mustache.render(src, tpl.data);
        fs.writeFileSync(tpl.dest, result, 'utf-8');
    });
});
