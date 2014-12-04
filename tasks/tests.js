'use strict';

var gulp = require('gulp');
var $ = require('gulp-load-plugins')();

var Config = require('./config');

gulp.task('server:dist', function() {
    gulp.src(Config.paths.dist).pipe($.webserver({
        port: 9000,
        fallback: 'index.html'
    }));
});

var webserver;

gulp.task('server:dev', function() {
    webserver = $.webserver({
        port: 9000,
        fallback: 'index.html',
        livereload: {
            enable: true,
            filter: function(fileName) {
                return fileName.match(/\.(html|less|js|json)$/);
            }
        }
    });
    gulp.src(['.', Config.paths.app]).pipe(webserver);
});

gulp.task('server:stop', function(done){
    if(webserver) {
        webserver.emit('kill').on('end', function(){
            done();
        });
    } else {
        $.util.log('No webserver found.');
        done();
    }
});

/* jshint camelcase:false*/
//var webdriverStandalone = require('gulp-protractor').webdriver_standalone;
var webdriverUpdate = require('gulp-protractor').webdriver_update;

var Config = require('./config');

var protractorConfig = require('../tests/e2e/config/protractor-shared-conf.js');

//update webdriver if necessary, this task will be used by e2e task
gulp.task('webdriver:update', webdriverUpdate);

// Run e2e tests using protractor, make sure serve task is running.
gulp.task('test:e2e', ['webdriver:update'], function() {
  var configs = {
    travis: 'tests/e2e/config/protractor-travis-nosaucelabs-conf.js',
    local: 'tests/e2e/config/protractor-conf.js'
  };

  var configFile = Config.isOnTravis ? configs.travis : configs.local;
  var args = [];
  if(Config.isOnTravis && !Config.isOnProduction) {
      args.push('--baseUrl');
      args.push('http://' + Config.bucketName + '.s3-website-us-east-1.amazonaws.com');
  }
  return gulp.src(protractorConfig.config.specs)
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
