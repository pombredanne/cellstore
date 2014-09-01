'use strict';

var Mustache = require('mustache');

module.exports = function(grunt) {
    grunt.registerMultiTask('reports', 'Update a report in the reports collection', function() {
        var fs = require('fs');
       
        var options = this.options();
        var dest = options.dest;
        var reports  = grunt.file.expand(options.reports);
        var reportSources = [];
        reports.forEach(function(report){
            reportSources.push(fs.readFileSync(report));
        });

        var tpl = fs.readFileSync(__dirname + '/UpdateReportSchema.mustache', 'utf-8');
        var source = Mustache.render(tpl, { reports: reportSources.join(',') });
        fs.writeFileSync(dest, source);
    });
};
