'use strict';

var fs = require('fs');
var gulp = require('gulp');
var $ = require('gulp-load-plugins')();
var _ = require('lodash');

var Config = require('./config');

var file = Config.paths.credentials;
var encryptedFile = file + '.enc';
var tplParam = { file: file, encryptedFile: encryptedFile };

var msgs = {
    fileNotFound: _.template('<%= file %> is not found.')(tplParam),
    encyptedFileNotFound: _.template('<%= encryptedFile %> is not found.')(tplParam),
    alreadyExists: _.template('<%= file %> exists already, do nothing.')(tplParam),
    secretKeyNotSet: 'environment variable TRAVIS_SECRET_KEY is not set.'
};

var cmds = {
  encrypt: _.template('sh -c "openssl aes-256-cbc -k $TRAVIS_SECRET_KEY -in <%= file %> -out <%= file %>.enc"')(tplParam),
  decrypt: _.template('sh -c "openssl aes-256-cbc -k $TRAVIS_SECRET_KEY -in <%= file %>.enc -out <%= file %> -d"')(tplParam)
};

gulp.task('env-check', function(done){
  if(process.env.TRAVIS_SECRET_KEY === undefined) {
      done(msgs.secretKeyNotSet);
  }else {
      done();
  }
});

gulp.task('encrypt', ['env-check'], function(done){
  if(fs.existsSync(file)) {
      $.runSequence('encrypt-force', done);
  } else {
      done(msgs.fileNotFound);
  }
});

gulp.task('decrypt', ['env-check'], function(done){
  if(!fs.existsSync(file)) {
      if(fs.existsSync(encryptedFile)){
          $.runSequence('decrypt-force', done);
      } else {
          done(msgs.encyptedFileNotFound);
      }
  } else {
      $.util.log(msgs.alreadyExists);
      done();
  }
});

gulp.task('encrypt-force', ['env-check'], $.shell.task(cmds.encrypt));
gulp.task('decrypt-force', ['env-check'], $.shell.task(cmds.decrypt));
