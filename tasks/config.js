'use strict';

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
if(buildId === undefined || buildId === ''){
    throw 'no buildId available. Please, set it using command line argument --build-id';
}

var configId = args.config;
var isOnTravis = process.env.TRAVIS_BUILD_ID !== undefined;
// if a config/<branch>.json.enc exists we are on a production deployment branch
var isProd = process.env.TRAVIS_BRANCH === 'master' || fs.existsSync('config/' + process.env.TRAVIS_BRANCH + '.json.enc');
var isOnTravisAndMaster = isOnTravis && isProd && process.env.TRAVIS_PULL_REQUEST === 'false';

var config =
{
    isOnTravis: isOnTravis,
    isOnProduction: isOnTravisAndMaster,
    buildId: buildId,
    configId: configId,
    bucketName: '',
    projectName: '',
    paths: {
        //src and build folders
        app: 'app',
        dist: 'dist',
        tmp: '.tmp',
        queries: 'queries',

        //Reports
        reports: 'data/' + configId + '/*.json',

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
        config: 'config.json',

        //Queries
        jsoniq: ['queries/**/*.{xq,jq}']
    },
    credentials: {}
};

gulp.task('load-config', ['config-template'], function(done){
    if(!_.isEmpty(config.credentials)){
        return;
    }

    if(!fs.existsSync(config.paths.config)){
        done('no ' + config.paths.config + ' found.');
    } else {
        $.util.log('loading config: ' + config.paths.config);
        config.credentials = JSON.parse(fs.readFileSync(config.paths.config, 'utf-8'));

        config.bucketName = config.isOnProduction ? config.credentials.s3.bucketPrefix : config.credentials.s3.bucketPrefix + '-' + config.buildId;
        config.projectName = config.isOnProduction ? config.credentials['28'].projectPrefix : config.credentials['28'].projectPrefix + '-' + buildId;

        $.util.log('Bucket: ' + $.util.colors.green(config.bucketName));
        $.util.log('Project: ' + $.util.colors.green(config.projectName));
        $.util.log('Profile: ' + $.util.colors.green(config.credentials.cellstore.profile));

        done();
    }
});

module.exports = config;