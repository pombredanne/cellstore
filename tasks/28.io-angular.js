'use strict';

module.exports = function(grunt) {
    grunt.registerMultiTask('swagger', 'Generate Source from Swagger files', function(){
        var fs = require('fs');
        var request = require('request');
       
        var done = this.async();
        var options = this.options();
        var url = this.data.url;
        var dest = options.dest;
        grunt.file.mkdir(dest);
     
        var count = options.apis.length;
        grunt.log.writeln('Using api: ' + url);
        options.apis.forEach(function(api, index){
            var swagger = fs.readFileSync(api.swagger);
            request({
                uri: url + '/angular.jq',
                qs: { module: api.module, service: api.service, 'new-module': api.newModule },
                headers: { 'Content-Type': 'text/json; utf-8' },
                body: swagger
            }, function(error, response, body){
                if(response.statusCode !== 200) {
                    grunt.fail.fatal("Server replied: " + response.statusCode);
                }
                fs.writeFileSync(dest + '/' + api.service + '.js', body);
                grunt.log.writeln(dest + '/' + api.service + '.js written (' + api.module + '.' + api.service + ')');
                count--;
                if(count === 0) {
                    done();
                }
            });
        });
    });
};
