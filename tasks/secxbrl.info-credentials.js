'use strict';

var Mustache = require('mustache');

module.exports = function(grunt) {
    grunt.registerMultiTask('credentials', 'Create a module that contains the secxbrl.info credentials', function() {
        var fs = require('fs');

        var options = this.options();
        var dest = options.dest;
        var adminPwd = this.data.adminPassword;
        var supportPwd = this.data.supportPassword;
        if(!adminPwd){
            grunt.fatal.warn('adminPassword not found in credentials task');
        }
        if(!supportPwd){
            grunt.fatal.warn('supportPassword not found in credentials task');
        }
        if(adminPwd && supportPwd) {
            var tpl = fs.readFileSync(__dirname + '/credentials.mustache', 'utf-8');
            var source = Mustache.render(tpl, { adminPassword: adminPwd, supportPassword: supportPwd });
            fs.writeFileSync(dest, source);
            grunt.log.ok('Created: ' + dest);
        }
    });
};
