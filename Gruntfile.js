
var LIVERELOAD_PORT = 35729;
var lrSnippet = require('connect-livereload')({ port: LIVERELOAD_PORT });
var mountFolder = function (connect, dir) {
    'use strict';
    return connect.static(require('path').resolve(dir));
};

// # Globbing
// for performance reasons we're only matching one level down:
// 'test/spec/{,*/}*.js'
// use this if you want to recursively match all subfolders:
// 'test/spec/**/*.js'

module.exports = function (grunt) {
    'use strict';

    // load all grunt tasks
    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);
    grunt.task.loadTasks('tasks');
   
    var modRewrite = require('connect-modrewrite');

    // configurable paths
    var yeomanConfig = {
        app: 'app',
        dist: 'dist',
        queries: 'queries'
    };

    var usage = function(){
        grunt.log.writeln('');
        grunt.log.subhead('General Usage:');
        grunt.log.writeln('grunt [test:<target>] [<task>:<env>] <options>');

        grunt.log.subhead('Examples:');
        grunt.log.writeln(' deploy frontend:');
        grunt.log.writeln('          grunt frontend:dev --build-id=test');
        grunt.log.writeln('          grunt frontend:dev --bucket=mybucket --project=myproject');
        grunt.log.writeln('          grunt frontend:dev --build-id=test --redeploy');
        grunt.log.writeln(' deploy backend:');
        grunt.log.writeln('          grunt backend:dev --build-id=test');
        grunt.log.writeln('          grunt backend:dev --bucket=mybucket --project=myproject');
        grunt.log.writeln('          grunt backend:dev --build-id=test --redeploy');
        grunt.log.writeln(' deploy frontend and backend:');
        grunt.log.writeln('          grunt backend:dev --build-id=test');
        grunt.log.writeln('          grunt backend:dev --build-id=test --redeploy');
        grunt.log.writeln(' run locally:');
        grunt.log.writeln('          grunt');
        grunt.log.writeln('          grunt server');
        grunt.log.writeln(' run tests locally:');
        grunt.log.writeln('          grunt test:setup');
        grunt.log.writeln('          grunt test:run');
        grunt.log.writeln('          grunt test:teardown');

        grunt.log.subhead('Defined Environments (<env>):');
        grunt.log.writeln(' "dev":');
        grunt.log.writeln('          together with --build-id=mybuild will automatically assume');
        grunt.log.writeln('          project and bucket secxbrl-mybuild.');
        grunt.log.writeln('          Alternatively, define --project=myproject and --bucket=mybucket');
        grunt.log.writeln('          to deploy to any project/bucket you\'d like.');
        grunt.log.writeln(' "ci"   : travis will use this for integration into master.');
        grunt.log.writeln(' "prod" : for deployment to production (secxbrl.28.io)');
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

    var isRedeploy = function(environment){
        var redeploy = getOptionParam('redeploy');
        if(environment === 'prod'){
            // never recreate for prod
            redeploy = true;
        }
        return redeploy;
    };

    var setConfig = function (projectName, bucket, environment){
        if(projectName && bucket && environment !== undefined) {
            var redeploy = isRedeploy(environment);
            if(projectName === 'secxbrl' && !redeploy){
                fatal('project secxbrl must never be recreated! Project: ' + projectName + '  Environment: ' + environment + ' Redeploy: ' + redeploy);
            }
            if(projectName === 'secxbrl' && environment !== 'prod') {
                fatal('Only prod environment allowed for project secxbrl. Environment: ' + environment);
            }
            var config = grunt.file.readJSON('config.json');
            config.s3.bucket = bucket;
            config['28'].project = projectName;
            config['28'].api = { url: 'http://' + projectName + '.28.io/v1' };
            var s3KeyType = 'development';
            if (isTravisAndMaster()) {
                config.s3.key = config.s3.production.key;
                config.s3.secret = config.s3.production.secret;
                config.s3.region = config.s3.production.region;
                s3KeyType = 'production';
            }
            grunt.log.ok('Project: ' + projectName);
            grunt.log.ok('Bucket: ' + bucket);
            grunt.log.ok('S3: ' + s3KeyType);
            grunt.log.ok('Redeploy: ' + redeploy);
            grunt.config.set('secxbrl', config);
        } else {
            usage();
            fatal('function setConfig called with missing parameter (Project: ' + projectName + ' Bucket: ' + bucket + ' Environment: ' + environment + ')');
        }
    };

    // get the api url from constants.js
    var getCurrentConfiguredAPIURL = function(){
        var constants = grunt.file.read(yeomanConfig.app + '/scripts/constants.js');
        var startFound = constants.indexOf('"API_URL", "') + 12;
        var endFound = constants.indexOf('/v1")') - startFound;
        var backendURL = constants.substr(startFound, endFound);
        return backendURL;
    };

    // the api url needs to be available also if the config task has not been run
    // e.g. in case of grunt ngconstant --build-id=myproj
    var getCustomAPIUrl = function(){
        var url;
        var project = getStringParam('project');
        var buildId = getStringParam('build-id');
        if(buildId) {
            buildId = buildId.replace('.', '-');
        }
        if(project === undefined && buildId){
            url = 'http://secxbrl-' + buildId + '.28.io/v1';
        } else if(project) {
            url = 'http://' + project + '.28.io/v1';
        } else {
            url = '<%= secxbrl.28.api.url %>';
        }
        return url;
    };

    try {
        yeomanConfig.app = require('./bower.json').appPath || yeomanConfig.app;
    } catch (e) {}

    grunt.initConfig({
        yeoman: yeomanConfig,
        watch: {
            recess: {
                files:  ['<%= yeoman.app %>/styles/{,*/}*.less'],
                tasks: ['recess']
            },
            swagger: {
                files: ['<%= yeoman.app %>/swagger/{,*/}*.json'],
                tasks: ['swagger-js-codegen']
            },
            nggettext: {
                failIfOffline: false,
                files: ['po/*.po'],
                tasks: ['nggettext_compile']
            },
            livereload: {
                options: {
                    livereload: LIVERELOAD_PORT
                },
                files: [
                    '<%= yeoman.app %>/*.html',
                    '<%= yeoman.app %>/views/**/*.html',
                    '{.tmp,<%= yeoman.app %>}/styles/**/*.css',
                    '{.tmp,<%= yeoman.app %>}/scripts/**/*.js',
                    '<%= yeoman.app %>/images/**/*.{png,jpg,jpeg,gif,webp,svg}'
                ]
            }
        },
        'swagger-js-codegen': {
            options: {
                dest: '<%= yeoman.app %>/scripts/swagger',
                apis: [
                    {
                        swagger: '<%= yeoman.app %>/swagger/queries.json',
                        moduleName: 'queries-api',
                        className: 'QueriesAPI',
                        fileName: 'queries-api.js',
                        angularjs: true
                    },
                    {
                        swagger: '<%= yeoman.app %>/swagger/session.json',
                        moduleName: 'session-api',
                        className: 'SessionAPI',
                        fileName: 'session-api.js',
                        angularjs: true
                    },
                    {
                        swagger: '<%= yeoman.app %>/swagger/users.json',
                        moduleName: 'users-api',
                        className: 'UsersAPI',
                        fileName: 'users-api.js',
                        angularjs: true
                    },
                    {
                        swagger: '<%= yeoman.app %>/swagger/billing.json',
                        moduleName: 'billing-api',
                        className: 'BillingAPI',
                        fileName: 'billing-api.js',
                        angularjs: true
                    }
                ]
            },
            all: {}
        },
        reports: {
            options: {
                dest: '<%= yeoman.queries %>/private/UpdateReportSchema.jq',
                reports:  ['data/*.json']
            },
            all : {}
        },
        connect: {
            options: {
                port: grunt.option('port') || 9000,
                // Change this to '0.0.0.0' to access the server from outside.
                hostname: '0.0.0.0'
            },
            livereload: {
                options: {
                    middleware: function (connect) {
                        return [
                            lrSnippet,
                            modRewrite(['!\\.html|\\.xml|\\images|\\.js|\\.css|\\.png|\\.jpg|\\.woff|\\.ttf|\\.svg /index.html [L]']),
                            mountFolder(connect, '.tmp'),
                            mountFolder(connect, yeomanConfig.app)
                        ];
                    }
                }
            },
            test: {
                options: {
                    middleware: function (connect) {
                        return [
                            mountFolder(connect, '.tmp'),
                            mountFolder(connect, 'test')
                        ];
                    }
                }
            },
            dist: {
                options: {
                    middleware: function (connect) {
                        return [
                            mountFolder(connect, yeomanConfig.dist)
                        ];
                    }
                }
            }
        },
        open: {
            server: {
                url: 'http://localhost:<%= connect.options.port %>'
            }
        },
        clean: {
            dist: {
                files: [{
                    dot: true,
                    src: ['.tmp', '<%= yeoman.dist %>/*', '!<%= yeoman.dist %>/.git*']
                }]
            },
            server: '.tmp'
        },
        recess: {
            dist: {
                options: {
                    compile: true
                },
                files: {
                    '<%= yeoman.app %>/styles/index.css': ['<%= yeoman.app %>/styles/index.less']
                }
            }
        },
        jshint: {
            options: {
                jshintrc: '.jshintrc'
            },
            all: ['Gruntfile.js', '<%= yeoman.app %>/scripts/**/*.js', 'tasks/**/*.js']
        },
        rev: {
            dist: {
                files: {
                    src: [
                        '<%= yeoman.dist %>/scripts/**/*.js',
                        '<%= yeoman.dist %>/styles/**/*.css',
                        '<%= yeoman.dist %>/images/**/*.{png,jpg,jpeg,gif,webp,svg}',
                        '<%= yeoman.dist %>/styles/fonts/*'
                    ]
                }
            }
        },
        useminPrepare: {
            html: [ '<%= yeoman.app %>/*.html', '<%= yeoman.app %>/views/**/*.html' ],
            css: '<%= yeoman.app %>/styles/**/*.css',
            options: {
                dest: '<%= yeoman.dist %>'
            }
        },
        usemin: {
            html: [ '<%= yeoman.dist %>/*.html', '<%= yeoman.dist %>/views/**/*.html' ],
            css: '<%= yeoman.dist %>/styles/**/*.css',
            options: {
                dirs: ['<%= yeoman.dist %>']
            }
        },
        imagemin: {
            dist: {
                files: [{
                    expand: true,
                    cwd: '<%= yeoman.app %>/images',
                    src: '*.{png,jpg,jpeg,svg}',
                    dest: '<%= yeoman.dist %>/images'
                }]
            }
        },
        htmlmin: {
            dist: {
                options: {},
                files: [{
                    expand: true,
                    cwd: '<%= yeoman.app %>',
                    src: [ '*.html', 'views/**/*.html' ],
                    dest: '<%= yeoman.dist %>'
                }]
            }
        },
        // Put files not handled in other tasks here
        copy: {
            dist: {
                files: [{
                    expand: true,
                    dot: true,
                    cwd: '<%= yeoman.app %>',
                    dest: '<%= yeoman.dist %>',
                    src: [
                        '*.{ico,png,txt}',
                        '.htaccess',
                        'images/**/*.{png,jpg,jpeg,gif,webp,svg}',
                        'blog/**/*'
                    ]
                }, {
                    expand: true,
                    cwd: '<%= yeoman.app %>/bower_components/font-awesome/fonts',
                    dest: '<%= yeoman.dist %>/fonts',
                    src: ['*']
                }, {
                    expand: true,
                    cwd: '.tmp/images',
                    dest: '<%= yeoman.dist %>/images',
                    src: ['generated/*']
                }, {
                    expand: true,
                    cwd: 'whitepaper/out/pdf',
                    dest: '<%= yeoman.dist %>',
                    src: ['*.pdf']
                }, {
                    expand: true,
                    cwd: '<%= yeoman.app %>/swagger',
                    dest: '<%= yeoman.dist %>/swagger',
                    src: ['*.json']
                }, {
                    expand: true,
                    cwd: '<%= yeoman.app %>/bower_components/angular-i18n',
                    dest: '<%= yeoman.dist %>/bower_components/angular-i18n',
                    src: ['angular-locale_en-us.js']
                }]
            }
        },
        concurrent: {
            server: [
                'nggettext_compile'
            ],
            test: [],
            dist: [
                'nggettext_compile',
                'recess',
                'imagemin',
                'htmlmin'
            ]
        },
        ngmin: {
            dist: {
                files: [{
                    expand: true,
                    cwd: '<%= yeoman.dist %>/scripts',
                    src: '*.js',
                    dest: '<%= yeoman.dist %>/scripts'
                }]
            }
        },
        uglify: {
            options: {
                //sourceMap: true,
                //sourceMapIncludeSources: true
            },
            dist: {
                files: {
                    '<%= yeoman.dist %>/scripts/scripts.js': ['<%= yeoman.dist %>/scripts/scripts.js']
                }
            }
        },
        ngconstant: {
            options: {
                space: '    '
            },
            all: {
                dest: '<%= yeoman.app %>/scripts/constants.js',
                name: 'constants',
                wrap: '/*jshint quotmark:double */\n"use strict";\n\n<%= __ngModule %>',
                constants: {
                    'API_URL': '<%= secxbrl.28.api.url %>',
                    'DEBUG': true,
                    'RECURLY_KEY': process.env.RECURLY_KEY_DEV
                }
            },
            custom: {
                dest: '<%= yeoman.app %>/scripts/constants.js',
                name: 'constants',
                wrap: '/*jshint quotmark:double */\n"use strict";\n\n<%= __ngModule %>',
                constants: {
                    'API_URL': getCustomAPIUrl(),
                    'DEBUG': true,
                    'RECURLY_KEY': process.env.RECURLY_KEY_DEV
                }
            }
        },
        netdna : {
            options: {
                companyAlias: '28msecinc',
                consumerKey: 'e531373822fc0ec739057420a81c69c1052b0f904',
                consumerSecret: 'bba9d959f51010249b9ac90742fac51c'
            },
            test: {
                zone: ''
            },
            beta: {
                zone: ''
            },
            prod: {
                zone: '150232'
            }
        },
        xqlint: {
            options: {
                src: '<%= yeoman.queries %>'
            },
            dist: {}
        },
        'nggettext_extract': {
            pot: {
                files: {
                    'po/template.pot': ['<%= yeoman.app %>/*.html', '<%= yeoman.app %>/views/**/*.html']
                }
            }
        },
        'nggettext_compile': {
            all: {
                files: {
                    '<%= yeoman.app %>/scripts/modules/translations.js': ['po/*.po']
                }
            }
        },
        'nggettext_default': {
            all: {
                langfiles: [ 'po/en-US.po' ],
                template: 'po/template.pot'
            }
        },
        'nggettext_check': {
            all: {
                langfiles: [ 'po/*.po' ],
                template: 'po/template.pot'
            }
        },
        'nggettext_merge': {
            all: {
                langfiles: [ 'po/*.po' ],
                template: 'po/template.pot'
            }
        },
        jsonlint: {
            all: {
                src: [
                    '*.json',
                    'app/swagger/*.json'
                ]
            }
        },
        'aws_s3': {
            options: {
                accessKeyId: '<%= secxbrl.s3.key %>',
                secretAccessKey: '<%= secxbrl.s3.secret %>',
                region: '<%= secxbrl.s3.region %>',
                uploadConcurrency: 5,
                downloadConcurrency: 5
            },
            setup: {
                options: {
                    bucket: '<%= secxbrl.s3.bucket %>'
                },
                files: [
                    { 'action': 'upload', expand: true, cwd: '<%= yeoman.dist %>', src: ['**'] }
                ]
            },
            teardown: {
                options: {
                    bucket: '<%= secxbrl.s3.bucket %>'
                },
                files: [
                    { 'action': 'delete', dest: '/' }
                ]
            }
        },
        setupS3Bucket: {
            options: {
                key: '<%= secxbrl.s3.key %>',
                secret: '<%= secxbrl.s3.secret %>'
            },
            setup: {
                bucket: '<%= secxbrl.s3.bucket %>',
                region: '<%= secxbrl.s3.region %>',
                create: {},
                website: {
                    WebsiteConfiguration: '<%= secxbrl.s3.website %>'
                }
            },
            teardown: {
                bucket: '<%= secxbrl.s3.bucket %>',
                region: '<%= secxbrl.s3.region %>',
                delete: {}
            }
        },
        28: {
            options: {
                src: 'queries',
                email: '<%= secxbrl.28.email %>',
                password: '<%= secxbrl.28.password %>'
            },
            setup: {
                project: '<%= secxbrl.s3.bucket %>',
                delete: {
                    idempotent: true
                },
                create: {}
            },
            deploy: {
                project: '<%= secxbrl.28.project %>',
                upload: {
                    projectPath: 'queries'
                },
                datasources: '<%= secxbrl.28.datasources %>',
                runQueries: [
                    'queries/private/InitAuditCollection.jq',
                    'queries/private/init.jq',
                    'queries/private/UpdateReportSchema.jq'
                ]

            },
            redeploy: {
                project: '<%= secxbrl.28.project %>',
                upload: {
                    projectPath: 'queries'
                },
                runQueries: [
                    'queries/private/InitAuditCollection.jq',
                    'queries/private/init.jq',
                    'queries/private/UpdateReportSchema.jq'
                ]
            },
            run: {
                project: '<%= secxbrl.28.project %>',
                runQueries: [
                    'queries/public/test/*',
                    'queries/private/test/*'
                ]
            },
            teardown: {
                project: '<%= secxbrl.28.project %>',
                delete: {}
            }
        },
        debug: {
            options: {
                open: false
            }
        },
        shell: {
            encrypt: {
                command: [ '[ "config.json" -nt "config.json.enc" ]',
                    'openssl aes-256-cbc -k "' + process.env.TRAVIS_SECRET_KEY + '" -in config.json -out config.json.enc'
                ].join('&&'),
                options : {
                    failOnError : false
                }
            },
            decrypt: {
                command: 'sh -c "if [ -z \"' + process.env.TRAVIS_SECRET_KEY + '\" ' +
                                     '-o \"' + process.env.TRAVIS_SECRET_KEY + '\" = "undefined" ] ; then echo \'decrypt failed: env var TRAVIS_SECRET_KEY not set\'; exit 1; fi ; ' +
                         'if [ ! -f config.json -o config.json.enc -nt config.json ] ; ' +
                         'then openssl aes-256-cbc -k ' + process.env.TRAVIS_SECRET_KEY + ' -in config.json.enc -out config.json -d; fi"',
                options : {
                    failOnError : false
                }
            }
        }
    });

    grunt.registerTask('server', function (target) {
        if (!grunt.file.exists(grunt.config('yeoman.app') + '/scripts/constants.js')) {
            fatal('Unable to find file ' + grunt.config('yeoman.app') + '/scripts/constants.js.\nrun grunt ngconstant before.');
        }

        if (target === 'dist') {
            return grunt.task.run(['build', 'open', 'connect:dist:keepalive']);
        }
        grunt.log.ok('Running against backend: ' + getCurrentConfiguredAPIURL());
        grunt.task.run([
            'clean:server',
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
            'xqlint',
            'jsonlint',
            'jshint',
            'nggettext_default',
            'nggettext_check',
            'nggettext_compile',
            'clean:dist',
            'ngconstant',
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

    grunt.registerTask('test', function (target, environment) {
        if(!isTravis()){
            if(environment === undefined){
                environment = 'dev';
                grunt.log.writeln('default environment: dev');
            }
        }
        grunt.task.run(['shell:decrypt', 'config:' + environment]);

        if (target === 'setup' && environment !== 'prod') {
            if(!isTravisAndMaster()) {
                grunt.task.run([
                    'build:' + environment,
                    'setupS3Bucket:setup',
                    'aws_s3:setup',
                    '28:setup',
                    '28:deploy',
                    'deployed-message'
                ]);
            }
        } else if (target === 'teardown' && environment !== 'prod') {
            if(!isTravisAndMaster()) {
                grunt.task.run([
                    '28:teardown',
                    'aws_s3:teardown',
                    'setupS3Bucket:teardown'
                ]);
            }
        } else if (target === 'run' && environment !== 'prod') {
            grunt.task.run(['28:run']);
        } else if (environment === 'prod') {
            fatal('test tasks must never run against production: target: ' + target + ' environment: ' + environment);
        }else {
            fatal('Unknown target for task test: ' + target);
        }
    });

    grunt.registerTask('deploy', function (environment) {
        grunt.task.run(['shell:decrypt', 'config:' + environment ]);

        if(environment === 'dev' || environment === 'prod') {
            grunt.task.run([
                'backend:' + environment,
                'frontend:' + environment,
                'deployed-message'
            ]);
        } else {
            failUnknownEnvironment('deploy', environment);
        }
    });

    grunt.registerTask('backend', function (environment) {

        if(environment === 'dev' ) {
            grunt.task.run(['shell:decrypt', 'config:' + environment ]);

            if (isRedeploy()) {
                grunt.task.run([
                    'reports',
                    '28:redeploy',
                    'deployed-message:backend'
                ]);
            } else {
                grunt.task.run([
                    'reports',
                    '28:setup',
                    '28:deploy',
                    'deployed-message:backend'
                ]);
            }
        }else if(environment === 'prod' ) {
            grunt.task.run([
                'reports',
                '28:redeploy',
                'deployed-message:backend'
            ]);
        } else {
            failUnknownEnvironment('backend', environment);
        }
    });

    grunt.registerTask('frontend', function (environment) {
        grunt.task.run(['shell:decrypt', 'config:' + environment]);

        if(environment === 'dev' ) {

            if(isRedeploy()) {
                // assuming bucket already exists
                grunt.task.run([
                    'build:' + environment,
                    'aws_s3:setup',
                    'deployed-message:frontend'
                ]);
            } else {
                // will also create bucket
                grunt.task.run([
                    'build:' + environment,
                    'setupS3Bucket:setup',
                    'aws_s3:setup',
                    'deployed-message:frontend'
                ]);
            }
        }else if(environment === 'prod' ) {
            grunt.task.run([
                'build:' + environment,
                'aws_s3:setup',
                'deployed-message:frontend'
            ]);
        } else {
            failUnknownEnvironment('frontend', environment);
        }
    });

    grunt.registerTask('config', function(environment) {
        grunt.log.subhead('config (environment: ' + environment + ')');

        if(environment === 'prod' && isTravisAndMaster()) {
            setConfig('secxbrl', 'secxbrl', environment);
        } else if(environment === 'prod'){
            fatal('only travis is allowed to deploy to prod');
        } else if(environment === 'dev' && !isTravis()) {
            var project = getStringParam('project');
            var bucket= getStringParam('bucket');
            var buildId = getStringParam('build-id');
            if(buildId) {
                buildId = buildId.replace('.', '-');
            }
            if(project === undefined && buildId){
                project = 'secxbrl-' + buildId;
            }
            if(bucket === undefined && buildId){
                bucket = 'secxbrl-' + buildId;
            }
            if(bucket && project){
                setConfig(project, bucket, environment);
            } else {
                fatal('either define --build-id=myid or both: --project=anyproject and --bucket=anybucket');
            }
        } else if(environment === 'dev'){
            fatal('travis is not allowed to do anything in the dev environment (only prod and ci allowed).');
        } else if(environment === 'ci'){
            // automatic integration
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

    grunt.registerTask('default', function() {
        var environment = 'dev';

        if(isTravisAndMaster()){
            environment = 'prod';
        } else if (isTravis()){
            environment = 'ci';
        }

        if(environment === 'ci'){
            grunt.task.run([
                'test:setup:' + environment,
                'test:run:' + environment,
                'test:teardown:' + environment
            ]);
        } else if(environment === 'prod'){
            /*grunt.task.run([
                'deploy:prod'
            ]);*/
        } else if(environment === 'dev'){
            grunt.task.run([
                'server'
            ]);
        }
    });
};
