'use script';

var minimist = require('minimist');

var knownOptions = {
    string: 'build-id',
    default: { 'build-id': process.env.RANDOM_ID }
};
var buildId = minimist(process.argv.slice(2), knownOptions)['build-id'];
var isOnTravis = process.env.TRAVIS_BUILD_ID !== undefined;
var isOnTravisAndMaster = isOnTravis && process.env.TRAVIS_BRANCH === 'master' && process.env.TRAVIS_PULL_REQUEST === 'false';

var bucketName = isOnTravisAndMaster ? 'hq.secxbrl.info' : 'hq.secxbrl.info-' + buildId;
var projectName = isOnTravisAndMaster ? 'secxbrl' : 'secxbrl-' + buildId;

module.exports = {
    isOnTravis: isOnTravis,
    isOnProduction: isOnTravisAndMaster,
    bucketName: bucketName,
    projectName: projectName,
    paths: {
        //src and build folders
        app: 'app',
        dist: 'dist',
        tmp: '.tmp',
        queries: 'queries',

        //Assets
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
        credentials: 'config.json',

        //Queries
        jsoniq: ['queries/**/*.{xq,jq}']
    },
    credentials: {}
};
