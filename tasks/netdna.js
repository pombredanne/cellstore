'use strict';

var gulp = require('gulp');
var $ = require('gulp-load-plugins')();
var _ = require('lodash');

var Config = require('./config');

gulp.task('netdna', ['load-config'], function(done) {
    var ca = Config.credentials.netdna.companyAlias,
        ck = Config.credentials.netdna.consumerKey,
        cs = Config.credentials.netdna.consumerSecret,
        zone = Config.credentials.netdna.zone;
    var netdna = require('netdna')({ companyAlias: ca, consumerKey: ck, consumerSecret: cs });

    function callback(err, response) {
        if (err) {
            $.util.log('Unable to purge cache for zone ' + zone);
            if (response) {
                $.util.log(JSON.stringify(response));
            }
            done(JSON.stringify(err));
        } else {
            $.util.log('Purged cache for zone ' + zone);
            if (response) {
                $.util.log(JSON.stringify(response));
            }
        }
        done();
    }

    if (_.isString(zone) && zone !== 'none') {
        netdna.delete('zones/pull.json/' + zone + '/cache', callback);
    } else {
        $.util.log('zone id missing or not a string'.yellow);
    }
});
