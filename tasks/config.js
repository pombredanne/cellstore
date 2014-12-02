'use script';

var minimist = require('minimist');
var fs = require('fs');
var $ = require('gulp-load-plugins')();
var gulp = require('gulp');
var _ = require('lodash');

var knownOptions = {
    string: [ 'build-id', 'config' ],
    default: {
        'build-id': process.env.RANDOM_ID,
        'config': ( process.env.TRAVIS_BRANCH === undefined || !fs.existsSync('config/' + process.env.TRAVIS_BRANCH + '.json.enc') ) ? 'default' : process.env.TRAVIS_BRANCH
    }
};
var args = minimist(process.argv.slice(2), knownOptions);
var buildId = args['build-id'];
var configId = args['config'];
var isOnTravis = process.env.TRAVIS_BUILD_ID !== undefined;
var isOnTravisAndMaster = isOnTravis && process.env.TRAVIS_BRANCH === 'master' && process.env.TRAVIS_PULL_REQUEST === 'false';

var bucketName = isOnTravisAndMaster ? 'hq.secxbrl.info' : 'hq.secxbrl.info-' + buildId;
var projectName = isOnTravisAndMaster ? 'secxbrl' : 'secxbrl-' + buildId;

var config =
{
    isOnTravis: isOnTravis,
    isOnProduction: isOnTravisAndMaster,
    buildId: buildId,
    configId: configId,
    bucketName: bucketName,
    projectName: projectName,
    paths: {
        //src and build folders
        app: 'app',
        dist: 'dist',
        tmp: '.tmp',
        queries: 'queries',

        //Reports
        reports: 'data/*.json',

        //Static Assets
        json: ['*.json'],
        js: ['app/**/*.js'],
        css: ['app/**/*.css'],
        index: 'app/*.html',
        html: ['app/**/*.html'],
        images: 'app/images/**/*.{gif,jpg,png}',
        svgs: 'app/images/**/*.svg',
        less: ['app/**/*.less'],
        fonts: ['app/**/*.ttf', 'app/**/*.woff'],

        //CI
        tasks: ['gulpfile.js', 'tasks/*.js'],

        //Crypted config
        credentials: 'config/' + configId + '.json',

        //Queries
        jsoniq: ['queries/**/*.{xq,jq}']
    },
    credentials: {}
};

gulp.task('load-config', ['decrypt'], function(){
    if(!_.isEmpty(config.credentials)){
        return;
    }

    if(config.buildId === undefined || config.buildId === ''){
        throw 'no buildId available. Please, set it using command line argument --build-id';
    }

    var Mustache = require('mustache');
    var expand = require('glob-expand');
    config.credentials = JSON.parse(fs.readFileSync(config.paths.credentials, 'utf-8'));

    //Fetch reports
    var reports  = expand(config.paths.reports);
    var reportSources = [];
    reports.forEach(function(report){
        reportSources.push(fs.readFileSync(report, 'utf-8'));
    });

    var templates = [
        {
            src: 'tasks/templates/config.js.mustache',
            data: {
                secxbrl: {
                    config: config.credentials.cellstore.all,
                    credentials: config.isOnProduction ? config.credentials.cellstore.prod : config.credentials.cellstore.dev
                },
                staging: {
                    environment: config.isOnProduction ? 'prod' : 'dev',
                    e2eReportsDir: '/tmp/e2e-reports'
                }
            },
            dest: 'tests/e2e/config/config.js'
        },
        {
            src: 'tasks/templates/config.jq.mustache',
            data: {
                secxbrl: {
                    config: config.credentials.cellstore.all,
                    credentials: config.isOnProduction ? config.credentials.cellstore.prod : config.credentials.cellstore.dev
                },
                sendmail: config.credentials.sendmail,
                frontend: {
                    project: 'app',
                    domain: '.secxbrl.info'
                },
                profile: config.credentials.cellstore.all.profile,
                filteredAspects: config.credentials.cellstore.all.filteredAspects
            },
            dest: config.paths.queries + '/modules/io/28/apps/config.jq'
        },
        {
            src: 'tasks/templates/UpdateReportSchema.jq.mustache',
            data: {
                reports: reportSources.join(',')
            },
            dest: config.paths.queries + '/private/UpdateReportSchema.jq'
        },
        {
            src: 'tasks/templates/constants.js.mustache',
            data: {
                APPNAME: 'secxbrl',
                API_URL: 'http://' + config.projectName + '.28.io/v1',
                DEBUG: false,
                ACCOUNT_URL: '/account/info',
                REGISTRATION_URL: '/auth',
                PROFILE: config.credentials.cellstore.all.profile
            },
            dest: config.paths.app + '/constants.js'
        }
    ];

    templates.forEach(function(tpl){
        var src = fs.readFileSync(tpl.src, 'utf-8');
        var result = Mustache.render(src, tpl.data);
        fs.writeFileSync(tpl.dest, result, 'utf-8');
    });
});

$.util.log('Config file: ' + config.paths.credentials);
module.exports = config;