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
if(buildId === undefined || buildId === ''){
    throw 'no buildId available. Please, set it using command line argument --build-id';
}

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

    config.credentials = JSON.parse(fs.readFileSync(config.paths.credentials, 'utf-8'));
});

$.util.log('Config file: ' + config.paths.credentials);
module.exports = config;