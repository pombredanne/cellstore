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
        reportschema: {
            options: {
                dest: '<%= yeoman.queries %>/private/UpdateReportSchema.jq'
            },
            all: {
                url: 'http://facs.28.io/process-report-schema.jq'
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
                    src: ['*.js']
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
        karma: {
            unit: {
                configFile: 'karma.conf.js',
                singleRun: true
            }
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
            server: {
                dest: '<%= yeoman.app %>/scripts/constants.js',
                name: 'constants',
                wrap: '/*jshint quotmark:double */\n"use strict";\n\n<%= __ngModule %>',
                constants: {
                    'API_URL': '//<%= api.server %>/v1',
                    'DEBUG': true,
                    'RECURLY_KEY': process.env.RECURLY_KEY_DEV
                }
            },
            test: {
                dest: '<%= yeoman.app %>/scripts/constants.js',
                name: 'constants',
                wrap: '/*jshint quotmark:double */\n"use strict";\n\n<%= __ngModule %>',
                constants: {
                    'API_URL': '//<%= api.test %>/v1',
                    'DEBUG': true,
                    'RECURLY_KEY': process.env.RECURLY_KEY_DEV
                }
            },
            beta: {
                dest: '<%= yeoman.app %>/scripts/constants.js',
                name: 'constants',
                wrap: '/*jshint quotmark:double */\n"use strict";\n\n<%= __ngModule %>',
                constants: {
                    'API_URL': '//<%= api.beta %>/v1',
                    'DEBUG': false,
                    'RECURLY_KEY': process.env.RECURLY_KEY_DEV
                }
            },
            prod: {
                dest: '<%= yeoman.app %>/scripts/constants.js',
                name: 'constants',
                wrap: '/*jshint quotmark:double */\n"use strict";\n\n<%= __ngModule %>',
                constants: {
                    'API_URL': '//<%= api.prod %>/v1',
                    'DEBUG': false,
                    'RECURLY_KEY': process.env.RECURLY_KEY
                }
            }
        },
        s3: {
            options: {
                access: 'public-read',
                maxOperations: 5,
                gzip: true,
                gzipExclude: ['.jpg', '.jpeg', '.png', '.xml', '.json', '.pdf', '.txt', '.ico']
            },
            test: {
                bucket: '<%= aws.bucket_test %>',
                upload: [{
                    src: '<%= yeoman.dist %>/**/*',
                    dest: '',
                    rel: '<%= yeoman.dist %>/',
                }]
            },
            beta: {
                bucket: '<%= aws.bucket_beta %>',
                upload: [{
                    src: '<%= yeoman.dist %>/**/*',
                    dest: '',
                    rel: '<%= yeoman.dist %>/',
                }]
            },
            prod: {
                bucket: '<%= aws.bucket_prod %>',
                upload: [{
                    src: '<%= yeoman.dist %>/**/*',
                    dest: '',
                    rel: '<%= yeoman.dist %>/',
                }]
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
        prettify: {
            options: {
                indent: 4,
                'indent_char': ' ',
                'wrap_line_length': 78,
                'brace_style': 'expand',
                unformatted: ['a', 'sub', 'sup', 'b', 'i', 'u', 'pre']
            },
            // Prettify a directory of files
            all: {
                expand: true,
                cwd: '<%= yeoman.app %>/views',
                ext: '.html',
                src: ['*.html'],
                dest: '<%= yeoman.app %>/views'
            },
            // Prettify a directory of files
            entity: {
                expand: true,
                cwd: '<%= yeoman.app %>/views/entity',
                ext: '.html',
                src: ['*.html'],
                dest: '<%= yeoman.app %>/views/entity'
            }
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
                    'package.json',
                    'bower.json',
                    'grunt-api.json',
                    'grunt-aws.json',
                    'app/swagger/*.json'
                ]
            }
        }
    });

    grunt.registerTask('server', function (target) {
        if (!grunt.file.exists(grunt.config('yeoman.app') + '/scripts/constants.js')) {
            grunt.fail.fatal('Unable to find file ' + grunt.config('yeoman.app') + '/scripts/constants.js.\nRun grunt ngconstant:server before.');
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

    grunt.registerTask('test', [
        'clean:server',
        'recess',
        'concurrent:test',
        'connect:test',
        'karma'
    ]);

    grunt.registerTask('build', function (target) {
        var env = (target ? target : 'server');
      
        grunt.task.run([
            'clean:dist',
            'ngconstant:' + env,
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

    grunt.registerTask('deploy:test', [
        'build:test',
        's3:test'
    ]);

    grunt.registerTask('deploy:beta', [
        'build:beta',
        's3:beta'
    ]);

    grunt.registerTask('deploy:prod', [
        'build:prod',
        's3:prod',
        'netdna:prod'
    ]);
    
    grunt.registerTask('default', [
        'xqlint',
        'jsonlint',
        'jshint',
        'nggettext_default',
        //'nggettext_check',
        'nggettext_compile',
    ]);
};
