'use strict';

module.exports = function(grunt) {
    grunt.registerMultiTask('reports', 'Update a report in the reports collection', function() {
        var fs = require('fs');
       
        var done = this.async();
        var options = this.options();
        var dest = options.dest;
        var src  = options.src;
     
        fs.readFile(src, function(error, data) {
            if (error) {
                grunt.fail.fatal(src + ': couldn\'t read file');
            } else {
                fs.writeFileSync(dest, 'import schema namespace mongos = "http://www.28msec.com/modules/mongodb/types";\n' +
                                       'variable $schema := ' + data + ';\n\n' +
                                       'let $record := find("reports", { "_id" : $schema."_id" })\n' +
                                       'return\n' +
                                       'if(empty($record))\n' +
                                       'then db:insert("reports", $schema);\n' +
                                       'else db:edit($record, $schema);\n' +
                                       '\n' +
                                       'if (is-available-collection("reportcache"))\n' +
                                       'then db:delete(find("reportcache", { "_id" : { "$regex" : mongos:regex("^" || $schema."_id" || ".*" ) }}));\n' +

                                       'else create("reportcache");\n' +
                                       '"Schema successfully deployed."');
                grunt.log.writeln(dest + ' refreshed!');
            }
            done();
        });
    });
};
