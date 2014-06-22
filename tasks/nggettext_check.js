'use strict';

module.exports = function(grunt) {
    grunt.registerMultiTask('nggettext_check', 'Check the translation files', function(){

        var done = this.async();
        var filepath = this.data.filepath;
        var template = this.data.template;
        
        grunt.log.writeln('Processing template: ' + template);
        var contentTemplate = grunt.file.read(template);
        var reg = /(?:\r\n|\r|\n)(#: (.*)(?:\r\n|\r|\n))+msgid "(.*)"(?:\r\n|\r|\n)msgstr "(.*)"(?:\r\n|\r|\n)/gi;
        var matches = [];
        var match = reg.exec(contentTemplate);
        while (match !== null) {
            matches.push({ key: match[3], value: match[0] });
            match = reg.exec(contentTemplate);
        }
        var incomplete = false;
        grunt.file.expand({cwd: filepath}, '*.po').forEach(function(file) {
            grunt.log.writeln('--------------------------------');
            grunt.log.writeln('Processing file: ' + filepath + file);
            var contentFile = grunt.file.read(filepath + file);
            var message = '';
            matches.forEach(function(match) {
                var r = new RegExp('(\r\n|\r|\n)msgid "' + match.key.replace(/"/g, '\\"').replace(/\(/g, '\\(').replace(/\)/g, '\\)') + '"(\r\n|\r|\n)');
                if (!r.test(contentFile))
                {
                    message += match.value;
                }
            });
            if (message !== '')
            {
                incomplete = true;
                grunt.log.writeln();
                grunt.log.writeln('/////START MISSING MESSAGES/////');
                grunt.log.writeln(message);
                grunt.log.writeln('/////END MISSING MESSAGES/////');
                grunt.log.writeln();
            }
            if (contentFile.indexOf('msgstr ""', 25) > 0)
            {
                incomplete = true;
                grunt.log.writeln();
                grunt.log.writeln('/////CONTAINS EMPTY MESSAGES/////');
                grunt.log.writeln();
            }
        });
        if (incomplete)
        {
            grunt.fail.warn(filepath + ' contains incomplete language files!');
        }
        done();
    });
};
