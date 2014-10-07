
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

    grunt.registerTask('render_credentials_jq', function(target){
        grunt.task.run(['mustache_render:' + target]);
    });

    grunt.initConfig({
        yeoman: yeomanConfig,
        watch: {
            recess: {
                files:  ['<%= yeoman.app %>/styles/{,*/}*.less'],
                tasks: ['recess']
            },
            swagger: {
                files: ['swagger/{,*/}*.json'],
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
                dest: '<%= yeoman.app %>/modules',
                apis: [
                    {
                        swagger: 'swagger/queries.json',
                        moduleName: 'queries-api',
                        className: 'QueriesAPI',
                        fileName: 'queries-api.js',
                        angularjs: true
                    },
                    {
                        swagger: 'swagger/session.json',
                        moduleName: 'session-api',
                        className: 'SessionAPI',
                        fileName: 'session-api.js',
                        angularjs: true
                    },
                    {
                        swagger: 'swagger/users.json',
                        moduleName: 'users-api',
                        className: 'UsersAPI',
                        fileName: 'users-api.js',
                        angularjs: true
                    },
                    {
                        swagger: 'swagger/billing.json',
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
        'mustache_render': {
            options: {},
            prod : {
                files: [
                    {
                        data: {
                            secxbrl: '<%= secxbrl.secxbrlInfo.prod %>',
                            sendmail: '<%= secxbrl.sendmail %>',
                            recurly: '<%= secxbrl.recurly.prod %>'
                        },
                        template: 'tasks/credentials.mustache',
                        dest: '<%= yeoman.queries %>/modules/io/28/apps/credentials.jq'
                    }
                ]
            },
            dev : {
                files: [
                    {
                        data: {
                            secxbrl: '<%= secxbrl.secxbrlInfo.dev %>',
                            sendmail: '<%= secxbrl.sendmail %>',
                            recurly: '<%= secxbrl.recurly.dev %>'
                        },
                        template: 'tasks/credentials.mustache',
                        dest: '<%= yeoman.queries %>/modules/io/28/apps/credentials.jq'
                    }
                ]
            },
            ci : {
                files: [
                    {
                        data: {
                            secxbrl: '<%= secxbrl.secxbrlInfo.dev %>',
                            sendmail: '<%= secxbrl.sendmail %>',
                            recurly: '<%= secxbrl.recurly.dev %>'
                        },
                        template: 'tasks/credentials.mustache',
                        dest: '<%= yeoman.queries %>/modules/io/28/apps/credentials.jq'
                    }
                ]
            }
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
            ci: {
                dest: '<%= yeoman.app %>/constants.js',
                name: 'constants',
                wrap: '/*jshint quotmark:double */\n"use strict";\n\n<%= __ngModule %>',
                constants: {
                    'API_URL': '<%= secxbrl.28.api.url %>',
                    'DEBUG': true,
                    'RECURLY_KEY': '<%= secxbrl.recurly.dev.publickey %>'
                }
            },
            dev: {
                dest: '<%= yeoman.app %>/scripts/constants.js',
                name: 'constants',
                wrap: '/*jshint quotmark:double */\n"use strict";\n\n<%= __ngModule %>',
                constants: {
                    'API_URL': getCustomAPIUrl(),
                    'DEBUG': true,
                    'RECURLY_KEY': '<%= secxbrl.recurly.dev.publickey %>'
                }
            },
            prod: {
                dest: '<%= yeoman.app %>/scripts/constants.js',
                name: 'constants',
                wrap: '/*jshint quotmark:double */\n"use strict";\n\n<%= __ngModule %>',
                constants: {
                    'API_URL': '<%= secxbrl.28.api.url %>',
                    'DEBUG': true,
                    'RECURLY_KEY': '<%= secxbrl.recurly.prod.publickey %>'
                }
            },

        },
        netdna : {
            options: {
                companyAlias: '<%= secxbrl.netdna.companyAlias %>',
                consumerKey: '<%= secxbrl.netdna.consumerKey %>',
                consumerSecret: '<%= secxbrl.netdna.consumerSecret %>'
            },
            test: {
                zone: ''
            },
            beta: {
                zone: ''
            },
            prod: {
                zone: '<%= secxbrl.netdna.prod.zone %>'
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
                    '<%= yeoman.app %>/modules/translations.js': ['po/*.po']
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
            download: {
                project: '<%= secxbrl.28.project %>',
                download: {
                    projectPath: 'queries'
                }
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
            deployMaster: {
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
                command: 'sh -c "if [ -z \"' + process.env.TRAVIS_SECRET_KEY + '\" ' +
                                     '-o \"' + process.env.TRAVIS_SECRET_KEY + '\" = "undefined" ] ; then echo \'encrypt failed: env var TRAVIS_SECRET_KEY not set\'; exit 1; fi ; ' +
                        'if [ config.json -nt config.json.enc ] ; ' +
                        'then openssl aes-256-cbc -k ' + process.env.TRAVIS_SECRET_KEY + ' -in config.json -out config.json.enc; fi"',
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


};
