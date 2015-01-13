'use strict';

var gulp = require('gulp');
var $ = require('gulp-load-plugins')();

var browserSync = require('browser-sync');
var reload = browserSync.reload;
var modRewrite = require('connect-modrewrite');
var rewriteRules = [
  '!\\.html|\\.xml|\\images|\\.js|\\.css|\\.png|\\.jpg|\\.woff|\\.ttf|\\.svg|\\.map /index.html [L]'
];

var Config = require('./config');
var $28 = require('./28');

gulp.task('server:dist', function() {
  browserSync({
    port: 9000,
    notify: false,
    logPrefix: Config.bucketName,
    open: false,
    server: {
      baseDir: ['dist'],
      middleware: [
        modRewrite(rewriteRules)
      ]
    }
  });
});

//run the server after having built generated files, and watch for changes
gulp.task('server:dev', function() {
    browserSync({
        port: 9000,
        notify: false,
        logPrefix: Config.bucketName,
        server: {
            baseDir: ['.', Config.paths.app],
            middleware: [
                modRewrite(rewriteRules)
            ]
        },
        browser: 'default'
    });

    gulp.watch(Config.paths.html, reload);
    gulp.watch(Config.paths.sass, ['sass', reload]);
    gulp.watch(Config.paths.js, reload);
    gulp.watch(Config.paths.json, ['jsonlint']);
    $28.watchJSONiqQueries();
});

gulp.task('server:stop', browserSync.exit);

/* jshint camelcase:false*/
//var webdriverStandalone = require('gulp-protractor').webdriver_standalone;
var webdriverUpdate = require('gulp-protractor').webdriver_update;

var Config = require('./config');

//update webdriver if necessary, this task will be used by e2e task
gulp.task('webdriver:update', webdriverUpdate);

// Run e2e tests using protractor, make sure serve task is running.
gulp.task('test:e2e', ['webdriver:update'], function() {
  var configFile = Config.isOnTravis ? Config.paths.protractorConfigTravis : Config.paths.protractorConfigLocal;
  var args = [];
  if(Config.isOnTravis && !Config.isOnProduction) {
      args.push('--baseUrl');
      args.push('http://' + Config.bucketName + '.s3-website-us-east-1.amazonaws.com');
  }
  var specs = Config.paths.e2eSpecs;
  $.util.log('specs: ' + specs);
  return gulp.src(specs)
    .pipe($.protractor.protractor({
      configFile: configFile,
          args: args
    }))
    .on('error', function(e) {
      console.error(e);
      process.exit(1);
    });
});

gulp.task('test:unit', function (done) {
    var karma = require('karma').server;
    karma.start({
        configFile: __dirname + '/../karma.conf.js',
        singleRun: true
    }, done);
});
