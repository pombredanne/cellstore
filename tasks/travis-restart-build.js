'use strict';

var Travis = require('travis-ci');

module.exports = function(grunt) {
    grunt.registerMultiTask('travisRestartBuild', 'Restart a build in travis', function() {
        var travis = new Travis({
            version: '2.0.0'
        });

        var options = this.options();
        console.log(JSON.stringify(travis));
        var branch = options.branch;
        var repository_id = options.repository_id;
        var event_type = options.event_type;
        var githubToken = options.githubToken;
        var owner_name = options.owner_name;
        var name = options.name;

        travis.repos.builds({
            owner_name: owner_name,
            name: name
        }, function (err, res) {
            grunt.log.writeln('callback');
            grunt.log.writeln(JSON.stringify(res));
            grunt.log.writeln(JSON.stringify(err));
        });

    });
};
