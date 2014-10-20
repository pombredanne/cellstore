'use strict';

module.exports = function(grunt) {

    var usage = function(){
        grunt.log.writeln('');
        grunt.log.subhead('General Usage:');
        grunt.log.writeln('grunt [test:<target>] [<task>] <options>');

        grunt.log.subhead('Options (<options>):');
        grunt.log.writeln(' "--usage"    : print this help text');

        grunt.log.subhead('Examples:');
        grunt.log.writeln(' deploy frontend to secxbrl-test bucket:');
        grunt.log.writeln('          grunt frontend:dev --build-id=test');
        grunt.log.writeln(' deploy backend to secxbrl-test project:');
        grunt.log.writeln('          grunt backend:dev --build-id=test');
        grunt.log.writeln(' deploy frontend and backend:');
        grunt.log.writeln('          grunt test:setup:dev --build-id=test');
        grunt.log.writeln(' download backend from remote project secxbrl-test:');
        grunt.log.writeln('          grunt download:dev --build-id=test');
        grunt.log.writeln(' run server:');
        grunt.log.writeln('          grunt server --build-id=test');
        grunt.log.writeln(' run tests:');
        grunt.log.writeln('          grunt test:setup --build-id=test');
        grunt.log.writeln('          grunt test:run --build-id=test');
        grunt.log.writeln('          grunt test:teardown --build-id=test');
        grunt.log.writeln('          grunt e2e-dev --build-id=test');
        grunt.log.writeln('          grunt e2e --specs=tests/e2e/website-scenario.js --build-id=test');
        grunt.log.writeln(' build:');
        grunt.log.writeln('          grunt build --build-id=test');
        grunt.log.writeln('');

    };

    var fatal = function(message){
        usage();
        grunt.fail.fatal(message);
    };

    var failUnknownEnvironment = function(task, environment){
        if(environment === undefined){
            fatal('Task ' + task + ' requires a defined environment (e.g. ' + task + ':dev)');
        } else {
            fatal('Environment ' + environment + ' not allowed for task ' + task + '.');
        }
    };

    var isTravis = function(){
        return process.env.TRAVIS_BUILD_ID !== undefined;
    };

    var isTravisAndMaster = function() {
        return isTravis() && process.env.TRAVIS_BRANCH === 'master' && process.env.TRAVIS_PULL_REQUEST === 'false';
    };

    var getStringParam = function(paramName) {
        var _ = require('lodash');

        var arg;
        var param = '--' + paramName + '=';
        var idx = _.findIndex(process.argv, function (val) {
            return val.substring(0, param.length) === param;
        });
        arg = idx > -1 ? process.argv[idx].substring(param.length) : undefined;
        return arg;
    };

    var getOptionParam = function(paramName) {
        var _ = require('lodash');

        var arg;
        var param = '--' + paramName;
        var idx = _.findIndex(process.argv, function (val) {
            return val.substring(0, param.length) === param;
        });
        arg = idx > -1 ? process.argv[idx].substring(param.length) === '' : false;
        return arg;
    };

    var setConfig = function (projectName, bucket, environment){
        if(projectName && bucket && environment !== undefined) {
            if(projectName === 'secxbrl' && environment !== 'prod') {
                fatal('Only prod environment allowed for project secxbrl. Environment: ' + environment);
            }
            var config = grunt.file.readJSON('config.json');
            if(!config){
                fatal('Reading file config.json failed.');
            }
            config.s3.bucket = bucket;
            config['28'].project = projectName;
            config['28'].api = { url: 'http://' + projectName + '.28.io/v1' };
            var s3KeyType = 'development';
            if (isTravisAndMaster()) {
                config.s3.key = config.s3.production.key;
                config.s3.secret = config.s3.production.secret;
                config.s3.region = config.s3.production.region;
                s3KeyType = 'production';
                grunt.log.ok('Purging NetDNA Zone: ' + config.netdna.prod.zone);
            }
            grunt.log.ok('Project: ' + projectName);
            grunt.log.ok('Bucket: ' + bucket);
            grunt.log.ok('S3: ' + s3KeyType);
            grunt.config.set('secxbrl', config);
        } else {
            usage();
            fatal('function setConfig called with missing parameter (Project: ' + projectName + ' Bucket: ' + bucket + ' Environment: ' + environment + ')');
        }
    };

    // get the api url from constants.js
    var getCurrentConfiguredAPIURL = function(){
        var appDir = 'app';
        try {
            appDir = require('./bower.json').appPath || 'app';
        } catch (e) {}
        var constants = grunt.file.read(appDir + '/constants.js');
        var startFound = constants.indexOf('"API_URL", "') + 12;
        var endFound = constants.indexOf('/v1")') - startFound;
        var backendURL = constants.substr(startFound, endFound);
        return backendURL;
    };

    // - Checks that the environment is one of prod, ci, or dev.
    // - If the environment is not set it will be derived from the
    //   system settings and branch. 
    // - Prevents using the prod environment in ci etc.
    var normalizeAndCheckEnvironment = function(environment){
        if(environment === undefined && !isTravis()){
            environment = 'dev';
            grunt.log.writeln('default environment: ' + environment);
        } else if(environment === undefined && isTravisAndMaster()){
            environment = 'prod';
            grunt.log.writeln('default environment: ' + environment);
        } else if(environment === undefined && isTravis()){
            environment = 'ci';
            grunt.log.writeln('default environment: ' + environment);
        } else if(
            (environment === 'dev' && !isTravis()) ||
            (environment === 'prod' && isTravisAndMaster()) ||
            (environment === 'ci' && isTravis() && !isTravisAndMaster())){
            return environment;
        } else {
            fatal('The environment ' + environment +
                ' does not match the current system settings (' +
                'Travis: ' + isTravis() + ', TravisAndMaster: ' +
                isTravisAndMaster() + ')');
        }
        return environment;
    };

    grunt.registerTask('server', function (target, environment) {
        if(!isTravis()){
            // enabling to run server locally as standalone task
            if(environment === undefined){
                environment = 'dev';
                grunt.log.writeln('default environment: dev');
            }
        }

        if (target === 'dist') {
            return grunt.task.run([
                'build:dev',
                'run-message',
                'open',
                'connect:dist:keepalive'
            ]);
        }
        grunt.task.run([
            'config:' + environment,
            'clean:server',
            'ngconstant:' + environment,
            'run-message',
            'swagger-js-codegen',
            'recess',
            'concurrent:server',
            'connect:livereload',
            'open',
            'watch'
        ]);
    });

    grunt.registerTask('build', function (environment) {
        if(!isTravis()){
            // enabling to run build locally as standalone task
            if(environment === undefined){
                environment = 'dev';
                grunt.log.writeln('default environment: dev');
            }
            grunt.task.run(['shell:decrypt', 'config:' + environment]);
        }

        grunt.task.run([
            'reports',
            'mustache_render:' + environment,
            'nggettext_default',
            'nggettext_check',
            'nggettext_compile',
            'clean:dist',
            'ngconstant:' + environment,
            'swagger-js-codegen:',
            'useminPrepare',
            'concurrent:dist',
            'concat',
            'copy',
            'ngmin',
            'cssmin',
            'uglify',
            'rev',
            'usemin'
        ]);
    });

    grunt.registerTask('deployed-message', function (target) {
        grunt.config.requires(['secxbrl']);
        if(!target || target === 'frontend') {
            grunt.log.ok('Frontend deployed to: http://' + grunt.config.get(['secxbrl']).s3.bucket + '.s3-website-us-east-1.amazonaws.com');
        }
        if(!target || target === 'backend') {
            grunt.log.ok('Backend deployed to: http://' + grunt.config.get(['secxbrl'])['28'].project + '.28.io');
        }
    });

    grunt.registerTask('run-message', function () {
        grunt.log.ok('Running against backend: ' + getCurrentConfiguredAPIURL());
    });

    grunt.registerTask('e2e-dev', function(environment){
        environment = normalizeAndCheckEnvironment(environment);

        if(environment === 'dev'){
            grunt.task.run([
                'shell:decrypt',
                'config:' + environment,
                'ngconstant:' + environment,
                'swagger-js-codegen',
                'mustache_render:' + environment,
                'webdriver',
                'connect:dist-dev',
                'protractor:' + environment
            ]);
        } else {
            fatal('e2e-dev must never run in environment: ' + environment);
        }
    });

    grunt.registerTask('e2e', function(environment){
        environment = normalizeAndCheckEnvironment(environment);

        if(environment === 'dev'){
            grunt.task.run([
                'shell:decrypt',
                'config:' + environment,
                'build:' + environment
            ]);
        }

        grunt.task.run([
            'webdriver',
            'connect:dist',
            'run-message',
            'protractor:' + environment
        ]);
    });

    grunt.registerTask('test', function (target, environment) {
        if(!isTravis() && environment === undefined){
            environment = 'dev';
        } else if(isTravisAndMaster() && environment === undefined){
            environment = 'prod';
        } else if(isTravis() && environment === undefined){
            environment = 'ci';
        }
        grunt.log.writeln('environment: ' + environment);
        grunt.task.run(['shell:decrypt', 'config:' + environment]);

        if (target === 'setup') {
            grunt.task.run([
                'frontend:' + environment,
                'backend:' + environment,
                'deployed-message'
            ]);
        } else if (target === 'run') {
            grunt.task.run([
                'xqlint',
                'jsonlint',
                'jshint',
                '28:run',
                'e2e:' + environment
            ]);
        } else if (target === 'teardown' && environment !== 'prod') {
            if(!isTravis()) {
                grunt.task.run(['ngconstant:' + environment]);
            }
            // double check that teardown is not run for prod
            if(!isTravisAndMaster()) {
                grunt.task.run([
                    '28:teardown',
                    'aws_s3:teardown',
                    'setupS3Bucket:teardown'
                ]);
            }
        } else if (environment === 'prod') {
            fatal('test tasks must never run against production: target: ' + target + ' environment: ' + environment);
        }else {
            fatal('Unknown target for task test: ' + target + ' environment: ' + environment);
        }
    });

    grunt.registerTask('download', function (environment) {
        if(!isTravis() && environment === undefined){
            environment = 'dev';
        }

        if(environment === 'dev' ) {
            grunt.task.run(['shell:decrypt', 'config:' + environment, 'ngconstant:' + environment ]);
            grunt.task.run([
                '28:download'
            ]);
        } else if(environment === 'ci' || environment === 'prod') {
            fatal('download task only allowed in dev environment');
        } else {
            failUnknownEnvironment('download', environment);
        }
    });

    grunt.registerTask('backend', function (environment) {
        if(!isTravis() && environment === undefined){
            environment = 'dev';
        }

        if(environment === 'dev' ) {
            grunt.task.run(['shell:decrypt', 'config:' + environment, 'ngconstant:' + environment ]);
            grunt.task.run([
                'reports',
                'mustache_render:' + environment,
                '28:setup',
                '28:deploy',
                'deployed-message:backend'
            ]);
        } else if(environment === 'ci' ) {
            if(!isTravisAndMaster() && isTravis()) {
                grunt.task.run([
                    'reports',
                    'mustache_render:' + environment,
                    '28:setup',
                    '28:deploy',
                    'deployed-message:backend'
                ]);
            }
        } else if(environment === 'prod' ) {
            if(isTravisAndMaster()) {
                grunt.task.run([
                    'reports',
                    'mustache_render:' + environment,
                    '28:deployMaster',
                    'deployed-message:backend'
                ]);
            }
        } else {
            failUnknownEnvironment('backend', environment);
        }
    });

    grunt.registerTask('frontend', function (environment) {
        if(!isTravis() && environment === undefined){
            environment = 'dev';
        }

        grunt.task.run(['shell:decrypt', 'config:' + environment]);

        if(environment === 'dev' ) {
            grunt.task.run([
                'build:' + environment,
                'setupS3Bucket:setup',
                'aws_s3:setup',
                'deployed-message:frontend'
            ]);
        } else if(environment === 'ci' ) {
            if(!isTravisAndMaster() && isTravis()) {
                grunt.task.run([
                    'build:' + environment,
                    'setupS3Bucket:setup',
                    'aws_s3:setup'
                ]);
            }
        } else if(environment === 'prod' ) {
            if(isTravisAndMaster()) {
                grunt.task.run([
                    'build:' + environment,
                    'aws_s3:setup',
                    'netdna:prod',
                    'deployed-message:frontend'
                ]);
            }
        } else {
            failUnknownEnvironment('frontend', environment);
        }
    });

    grunt.registerTask('config', function(environment) {
        grunt.log.subhead('config (environment: ' + environment + ')');

        if(getOptionParam('usage')){
            usage();
            grunt.fatal('usage requested');
        } else if(environment === 'prod' && isTravisAndMaster()) {
            // ok, travis deploys master to prod
            setConfig('secxbrl', 'secxbrl', environment);
        } else if(environment === 'prod' && !isTravisAndMaster()){
            // either not travis or not on master
            fatal('only travis is allowed to deploy from master to prod');
        } else if(environment === 'dev' && !isTravis()) {
            // local development environment
            var project;
            var bucket;
            var buildId = getStringParam('build-id');
            if(buildId) {
                buildId = buildId.replace('.', '-');
                project = 'secxbrl-' + buildId;
                bucket = 'secxbrl-' + buildId;
            }
            if(bucket && project){
                setConfig(project, bucket, environment);
            } else {
                fatal('define --build-id=myid');
            }
        } else if(environment === 'dev' && isTravis()){
            // development environment is not allowed for travis
            fatal('travis is not allowed to do anything in the dev environment (only prod and ci allowed).');
        } else if(environment === 'ci' && !isTravis()){
            // local continuous integration not allowed
            fatal('Only travis is allowed to do the continuous integration. Choose a different environment.');
        } else if(environment === 'ci' && isTravis()){
            // continuous integration done by travis
            var buildIdCI = process.env.TRAVIS_JOB_NUMBER;
            var _isTravisAndMaster = isTravisAndMaster();
            if(_isTravisAndMaster) {
                fatal('master is not allowed for ci environment');
            } else if(!buildIdCI) {
                buildIdCI = getStringParam('build-id');
            }
            if(buildIdCI) {
                buildIdCI = buildIdCI.replace('.', '-');
            } else if(!_isTravisAndMaster) {
                grunt.fail.fatal('No build id found. Looked up the TRAVIS_JOB_NUMBER environment variable and --build-id argument');
            }
            var id = _isTravisAndMaster ? 'secxbrl-dev' : 'secxbrl-' + buildIdCI;
            if(process.env.RANDOM_ID && !_isTravisAndMaster){
                id += '-' + process.env.RANDOM_ID;
            }
            setConfig(id, id, environment);
        } else {
            failUnknownEnvironment('config', environment);
        }
    });

    grunt.registerTask('default', function(environment) {
        if(!isTravis() && environment === undefined){
            environment = 'dev';
        }

        if(getOptionParam('usage')){
            usage();
            grunt.fatal('usage requested');
        } else {
            grunt.task.run([
                'test:setup:' + environment,
                'test:run:' + environment,
                'test:teardown:' + environment
            ]);
        }
    });
};
