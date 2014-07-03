'use strict';

module.exports = function(grunt) {
    grunt.registerMultiTask('nggettext_check', 'Check the translation files', function(){

        var done = this.async();
        var template = this.data.template;
        var langfiles = this.data.langfiles;
        
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
        grunt.file.expand(langfiles).forEach(function(file) {
            grunt.log.writeln('--------------------------------');
            grunt.log.writeln('Processing file: ' + file);
            var contentFile = grunt.file.read(file);
            var message = '';
            matches.forEach(function(match) {
                var r = new RegExp('(\r\n|\r|\n)msgid "' + match.key
                                .replace(/"/g, '\\"').replace(/\(/g, '\\(').replace(/\)/g, '\\)')
                                .replace(/\[/g, '\\[').replace(/\]/g, '\\]').replace(/\?/g, '\\?')
                                .replace(/\$/g, '\\$').replace(/\^/g, '\\^') + '"(\r\n|\r|\n)');
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
            grunt.fail.warn('Incomplete language files!');
        }
        done();
    });

    grunt.registerMultiTask('nggettext_default', 'Create a default translation file', function(){

        var done = this.async();
        var template = this.data.template;
        var langfiles = this.data.langfiles;
        
        grunt.log.writeln('Processing template: ' + template);
        var contentTemplate = grunt.file.read(template);
        var reg = /(?:\r\n|\r|\n)(#: (.*)(?:\r\n|\r|\n))+msgid "(.*)"(?:\r\n|\r|\n)msgstr "(.*)"(?:\r\n|\r|\n)/gi;
        var matches = [];
        var match = reg.exec(contentTemplate);
        while (match !== null) {
            matches.push({ key: match[3], value: match[0] });
            match = reg.exec(contentTemplate);
        }
        grunt.file.expand(langfiles).forEach(function(file) {
            grunt.log.writeln('--------------------------------');
            grunt.log.writeln('Processing file: ' + file);

            var contentFile = 'msgid ""\nmsgstr ""\n"Content-Type: text/plain; charset=UTF-8\\n"\n"Content-Transfer-Encoding: 8bit\\n"\n"Language: ' + 
                    file.substring(file.lastIndexOf('/') + 1, file.length - 3) + '\\n"\n';
            matches.forEach(function(match) {
                contentFile += match.value.replace('msgstr ""', 'msgstr "' + match.key + '"');
            });
            grunt.file.write(file, contentFile);
        });
        done();
    });
    grunt.registerMultiTask('nggettext_merge', 'Merge a translation file in a template', function(){

        var done = this.async();
        var template = this.data.template;
        var langfiles = this.data.langfiles;
        
        grunt.log.writeln('Processing template: ' + template);
        var contentTemplate = grunt.file.read(template);
        var reg = /(?:\r\n|\r|\n)(#: (.*)(?:\r\n|\r|\n))+msgid "(.*)"(?:\r\n|\r|\n)msgstr "(.*)"(?:\r\n|\r|\n)/gi;
        var matches = [];
        var match = reg.exec(contentTemplate);
        while (match !== null) {
            matches.push({ key: match[3], value: match[0] });
            match = reg.exec(contentTemplate);
        }
        grunt.file.expand(langfiles).forEach(function(file) {
            grunt.log.writeln('--------------------------------');
            grunt.log.writeln('Processing file: ' + file);
            var contentFile = grunt.file.read(file);
            
            var mergedFile = 'msgid ""\nmsgstr ""\n"Content-Type: text/plain; charset=UTF-8\\n"\n"Content-Transfer-Encoding: 8bit\\n"\n"Language: ' + 
                    file.substring(file.lastIndexOf('/') + 1, file.length - 3) + '\\n"\n';

            matches.forEach(function(match) {
                var r = new RegExp('(?:\r\n|\r|\n)msgid "' + match.key
                                .replace(/"/g, '\\"').replace(/\(/g, '\\(').replace(/\)/g, '\\)')
                                .replace(/\[/g, '\\[').replace(/\]/g, '\\]').replace(/\?/g, '\\?')
                                .replace(/\$/g, '\\$').replace(/\^/g, '\\^').replace(/\|/g, '\\|') +
                                '"(?:\r\n|\r|\n)msgstr "(.*)"(?:\r\n|\r|\n)');
                var m = r.exec(contentFile);
                if (m !== null)
                {
                    mergedFile += match.value.replace('msgstr ""', 'msgstr "' + m[1] + '"');
                }
                else 
                {
                    mergedFile += match.value;
                }
            });
            grunt.file.write(file, mergedFile);
        });
        done();
    });
};
