'use strict';

var LIVERELOAD_PORT = 35729;
var lrSnippet = require('connect-livereload')({ port: LIVERELOAD_PORT });
var mountFolder = function (connect, dir) {
    return connect.static(require('path').resolve(dir));
};

// # Globbing
// for performance reasons we're only matching one level down:
// 'test/spec/{,*/}*.js'
// use this if you want to recursively match all subfolders:
// 'test/spec/**/*.js'

module.exports = function (grunt) {
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

    try {
        yeomanConfig.app = require('./bower.json').appPath || yeomanConfig.app;
    } catch (e) {}

    grunt.initConfig({
        yeoman: yeomanConfig,
        api: grunt.file.readJSON('grunt-api.json'),
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
                create: {},
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
            run: {
                project: '<%= secxbrl.s3.bucket %>',
                runQueries: [
                    'queries/public/test/*',
                    'queries/private/test/*'
                ]
            },
            teardown: {
                project: '<%= secxbrl.s3.bucket %>',
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
            grunt.fail.fatal('Unable to find file ' + grunt.config('yeoman.app') + '/scripts/constants.js.\nSetup the TRAVIS_SECRET_KEY env variable and run grunt test:setup --build-id=myfeature before.');
        }

        if (target === 'dist') {
            return grunt.task.run(['build', 'open', 'connect:dist:keepalive']);
        }
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

    grunt.registerTask('build', function () {
        grunt.config.requires(['secxbrl']);
      
        grunt.task.run([
            'config',
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
            grunt.log.writeln('Frontend deployed to: http://' + grunt.config.get(['secxbrl']).s3.bucket + '.s3-website-us-east-1.amazonaws.com');
        }
        if(!target || target === 'backend') {
            grunt.log.writeln('Backend deployed to: http://' + grunt.config.get(['secxbrl']).s3.bucket + '.28.io');
        }
    });

    grunt.registerTask('test', function (target) {
        grunt.task.run(['shell:decrypt', 'config']);
        if (target === 'setup') {
            grunt.task.run([
                'build',
                'setupS3Bucket:setup',
                'aws_s3:setup',
                '28:setup',
                'deployed-message'
            ]);
        } else if (target === 'teardown') {
            if(!(process.env.TRAVIS_BRANCH === 'master' && process.env.TRAVIS_PULL_REQUEST === 'false')) {
                grunt.task.run([
                    '28:teardown',
                    'aws_s3:teardown',
                    'setupS3Bucket:teardown'
                ]);
            } else {
                console.log('We\'re on master, no teardown.');
            }
        } else if (target === 'run') {
            grunt.task.run(['28:run']);
        } else {
            grunt.fail.fatal('Unknown target ' + target);
        }
    });

    grunt.registerTask('backend', function (target) {
        grunt.task.run(['shell:decrypt', 'config']);
        if (target === 'setup') {
            grunt.task.run([
                'reports',
                '28:setup',
                'deployed-message:backend'
            ]);
        } else if (target === 'teardown') {
            if(!(process.env.TRAVIS_BRANCH === 'master' && process.env.TRAVIS_PULL_REQUEST === 'false')) {
                grunt.task.run([
                    '28:teardown'
                ]);
            } else {
                console.log('We\'re on master, no teardown.');
            }
        } else {
            grunt.fail.fatal('Unknown target ' + target);
        }
    });

    grunt.registerTask('frontend', function (target) {
        grunt.task.run(['shell:decrypt', 'config']);
        if (target === 'setup') {
            grunt.task.run([
                'build',
                'setupS3Bucket:setup',
                'aws_s3:setup',
                'deployed-message:frontend'
            ]);
        } else if (target === 'teardown') {
            if(!(process.env.TRAVIS_BRANCH === 'master' && process.env.TRAVIS_PULL_REQUEST === 'false')) {
                grunt.task.run([
                    'aws_s3:teardown',
                    'setupS3Bucket:teardown'
                ]);
            } else {
                console.log('We\'re on master, no teardown.');
            }
        } else {
            grunt.fail.fatal('Unknown target ' + target);
        }
    });

    grunt.registerTask('config', function() {
        var _ = require('lodash');
        var buildId = process.env.TRAVIS_JOB_NUMBER;
        var isMaster = process.env.TRAVIS_BRANCH === 'master' && process.env.TRAVIS_PULL_REQUEST === 'false';
        if(isMaster) {
            console.log('This is master we deploy on secxbrl.28.io');
        } else if(!buildId) {
            var idx =_.findIndex(process.argv, function(val){ return val.substring(0, '--build-id='.length) === '--build-id='; });
            buildId = idx > -1 ? process.argv[idx].substring('--build-id='.length) : undefined;
        }
        if(buildId) {
            buildId = buildId.replace('.', '-');
        } else if(!isMaster) {
            grunt.fail.fatal('No build id found. Looked up the TRAVIS_JOB_NUMBER environment variable and --build-id argument');
        }
        var id = isMaster ? 'secxbrl' : 'secxbrl-' + buildId;
        if(process.env.RANDOM_ID && !isMaster){
            id += '-' + process.env.RANDOM_ID;
        }
        grunt.log.writeln('Build ID: ' + id);
        var config = grunt.file.readJSON('config.json');
        config.s3.bucket = id;
        config['28'].api = { url : 'http://' + id + '.28.io/v1' };
        grunt.config.set('secxbrl', config);
    });

    grunt.registerTask('default', function() {
        grunt.task.run([
            'test:setup',
            'test:run',
            'test:teardown'
        ]);
    });
};
