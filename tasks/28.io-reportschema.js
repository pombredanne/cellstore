'use strict';

module.exports = function(grunt) {
    grunt.registerMultiTask('reportschema', 'Update the ReportSchema', function(){
        var fs = require('fs');
        var request = require('request');
       
        var done = this.async();
        var options = this.options();
        var url = this.data.url;
        var dest = options.dest;
        var failIfOffline = options.failIfOffline;
     
        request({
            uri: url,
            headers: { 'Content-Type': 'text/json; utf-8' }
        }, function(error, response, body){
            if(response === undefined) {
                if(failIfOffline) {
                    grunt.fail.fatal('Couldn\'t connect to server');
                } else {
                    grunt.log.writeln('Skipped ' + dest);
                }
                done();
                return;
            }
            if(response.statusCode !== 200) {
                grunt.fail.fatal('Server replied: ' + response.statusCode);
            }

            fs.writeFileSync(dest, 'let $schema := ' + body + '\n\n' +
                                   'let $record := find("reportschemas", { "_id" : "FundamentalAccountingConcepts" })\n' +
                                   'return\n' +
                                   'if(empty($record))\n' +
                                   'then insert("reportschemas", $schema);\n' +
                                   'else edit($record, $schema);\n' +
                                   '\n' +
                                   'if (is-available-collection("reportcache"))\n' +
                                   'then truncate("reportcache");\n' +
                                   'else create("reportcache");\n' +
                                   '"Schema successfully deployed."');
            grunt.log.writeln(dest + ' refreshed!');
            done();
        });
    });
};
