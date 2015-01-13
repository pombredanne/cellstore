'use strict';

var gulp = require('gulp');
var $ = require('gulp-load-plugins')();

var Config = require('./tasks/config');

require('./tasks/lint');
require('./tasks/html');
require('./tasks/images');
require('./tasks/swagger');
require('./tasks/s3');
require('./tasks/tests');
require('./tasks/28');
require('./tasks/netdna');
require('./tasks/templates');

gulp.task('watch', function() {
    return gulp.watch(Config.paths.sass, ['sass']);
});

gulp.task('fonts', function(){
    return gulp.src('bower_components/font-awesome/fonts/*', { dot: true }).pipe(gulp.dest(Config.paths.dist + '/fonts'));
});

gulp.task('copy-swagger', function(){
    return gulp.src('swagger/*', { dot: true }).pipe(gulp.dest(Config.paths.dist + '/swagger'));
});

gulp.task('copy-svg', function(){
    return gulp.src(Config.paths.svgs, { dot: true }).pipe(gulp.dest(Config.paths.dist + '/images'));
});

gulp.task('extras', function () {
    var extras = Config.paths.html.concat(Config.paths.fonts);
    return gulp.src(extras, { dot: true })
        .pipe(gulp.dest(Config.paths.dist));
});

gulp.task('clean', function () {
    return gulp.src([Config.paths.tmp, Config.paths.dist], { read: false }).pipe($.clean());
});

gulp.task('build', ['clean', 'swagger'], function(done){
  $.runSequence('templates', ['lint', 'html', 'images', 'fonts', 'copy-swagger', 'copy-svg', 'extras'], done);
});

gulp.task('server', ['load-config', 'templates', 'sass', 'swagger', '28:login'], function(done){
  $.runSequence('server:dev', done);
});

gulp.task('server:prod', ['build'], function(done){
    $.runSequence('server:dist', done);
});

gulp.task('test', ['server:prod'], function (done) {
    $.runSequence('test:e2e', done);
});

gulp.task('default', ['build']);

gulp.task('setup', ['load-config'], function(done){
    $.runSequence('build', [ 's3-setup', '28:setup' ], 'server:dist', /*'test:unit', */'test:e2e', 'server:stop', done);
});

gulp.task('28:setup', ['templates'], function(done){
    $.runSequence('28:login', '28:remove-project', '28:create-project', '28:setup-datasource', '28:upload', '28:init', '28:test', done);
});

gulp.task('teardown', ['load-config'], function(done){
    $.runSequence('28:login', '28:remove-project', 's3-teardown', done);
});
