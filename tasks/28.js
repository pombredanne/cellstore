'use strict';

var Q = require('q');
var gulp = require('gulp');
var $ = require('gulp-load-plugins')();
var $28 = new (require('28').$28)('http://portal.28.io/api');

var Config = require('./config');

var credentials;

var  Options = {
    OVERWRITE_ALWAYS: 0,
    OVERWRITE_NEVER: 1,
    OVERWRITE_ASK: 2,
    OVERWRITE_IF_NEWER: 3
};

var throwError = function(error) {
    throw error;
};


var login = function(email, password){
    $.util.log('Logging in as ' + email);
    return $28.login(email, password).then(function(response){
        $.util.log('Logged in.');
        credentials = response.body;
        return credentials;
    });
};

var removeProject = function(projectName, isIdempotent){
    /*jshint camelcase:false */
    var token = credentials.access_token;
    $.util.log('Deleting project ' + projectName);
    var defered = Q.defer();
    $28.deleteProject(projectName, token).then(function(){
        $.util.log('Project deleted.');
        defered.resolve(credentials);
    }).catch(function(error){
        if(!isIdempotent) {
            defered.reject(error);
        } else {
            defered.resolve(credentials);
        }
    });
};

var createProject = function(projectName){
    /*jshint camelcase:false */
    var token = credentials.access_token;
    $.util.log('Creating project ' + projectName);
    return $28.createProject(projectName, token).then(function(response) {
        $.util.log('Project created.');
        /*jshint camelcase:false */
        credentials.project_tokens['project_' + projectName] = response.body.projectToken;
        return credentials;
    });
};

var upload = function(projectName){
    /*jshint camelcase:false */
    var projectToken = credentials.project_tokens['project_' + projectName];
    if(!projectToken) {
        throw new Error('project not found ' + projectName);
    }
    var projectPath = Config.paths.queries;
    var overwrite = Options.OVERWRITE_ALWAYS;
    var deleteOrphaned = true;
    var simulate = false;
    $.util.log('Uploading queries.');
    return $28.upload(projectName, projectToken, projectPath, overwrite, deleteOrphaned, simulate, []).then(function(){
        $.util.log('Queries uploaded.');
        return credentials;
    });
};

var runQueries = function(projectName, runQueries) {
    var Queries = $28.api.Queries(projectName);
    runQueries.forEach(function(queries){
        queries = grunt.file.expand(queries);
        var batch = [];
        queries.forEach(function(query){
            var queryPath = query.substring(opt.src.length + 1);
            batch.push(function(credentials) {
                var projectToken = credentials.project_tokens['project_' + projectName];
                return Queries.executeQuery({
                    accept: 'application/28.io+json',
                    queryPath: queryPath,
                    format: '',
                    token: projectToken
                }).then(function (data) {
                    $.util.log(('✓ '.green) + queryPath + ' returned with status code: ' + data.response.statusCode);
                    return credentials;
                }).catch(function (error) {
                    $.util.log(error.body);
                    $.util.log(('✗ '.red) + queryPath + ' returned with status code: ' + error.response.statusCode);
                    throw error;
                });
            });
        });

        var promises = [];
        batch.forEach(function(unit){
            promises.push(unit(credentials));
        });
        return Q.allSettled(promises).then(function(results){
            results.forEach(function (result) {
                if (result.state !== 'fulfilled') {
                    throw new Error('Some queries failed.');
                }
            });
            return credentials;
        });
    });
};

gulp.task('28:login', function(){
    return login(Config.credentials['28'].email, Config.credentials['28'].password).catch(throwError);
});

gulp.task('28:create-project', function(){
    return createProject(Config.projectName, true).catch(throwError);
});

gulp.task('28:remove-project', function(){
    return removeProject(Config.projectName, true).catch(throwError);
});

gulp.task('28:upload', function(){
    return upload(Config.projectName).catch(throwError);
});

gulp.task('28:init', function(){
    return runQueries(Config.projectName, [
        'queries/private/InitAuditCollection.jq',
        'queries/private/init.jq',
        'queries/private/UpdateReportSchema.jq',
        'queries/private/cleanupTestUserReports.jq',
        'queries/private/migration/db6.jq'
    ]).catch(throwError);
});

gulp.task('28:test', function(){
    return runQueries(Config.projectName, [
        'queries/public/test/*',
        'queries/private/test/*'
    ]).catch(throwError);
});
