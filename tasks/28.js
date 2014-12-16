'use strict';

//var _ = require('lodash');
var Q = require('q');
var expand = require('glob-expand');

var gulp = require('gulp');
var $ = require('gulp-load-plugins')();
var $28 = new (require('28').$28)('http://portal.28.io/api');

var Config = require('./config');

var credentials;

var Options = {
    OVERWRITE_ALWAYS: 0,
    OVERWRITE_NEVER: 1,
    OVERWRITE_ASK: 2,
    OVERWRITE_IF_NEWER: 3
};

var castToJson = function(obj){
    var result = obj;
    if(typeof obj === 'string'){
        try {
            result = JSON.parse(obj);
        } catch (e) {

        }
    }
    return result;
};

var throwError = function (error) {
    var message = JSON.stringify(error);
    if(error.body){
        var body = castToJson(error.body);
        message = typeof body === 'object' ? JSON.stringify(body, null, '\t') : body;
    }
    if(typeof error.message === 'string'){
        message = error.message;
    }
    if(message.length > 500){
        message = message.substring(0, 500) + ' ... (truncated)';
    }
    throw new $.util.PluginError(__filename, message);
};

var summarizeTestError = function(error){
    var hasError = false;
    if(error.body) {
        var body = castToJson(error.body);
        if(typeof body.items === 'object' && body.items.length > 0){
            body = castToJson(body.items[0]);
        }
        if(body.content){
            body = castToJson(body.content);
        }
        /*jshint camelcase:false */
        if(typeof body === 'object' && !body.request_id) {
            for (var testName in body) {
                if (body.hasOwnProperty(testName)) {
                    var testResult = body[testName];
                    if (typeof testResult === 'object') {
                        $.util.log(testName.red + ': ' + testResult.url);
                        if (testResult.expectedFactTable && testResult.expectedFactTable.error === true) {
                            $.util.log(testName.red + ': ' + JSON.stringify(testResult.expectedFactTable, null, '\t'));
                        }
                        if (testResult.factTableDiff) {
                            for (var diff in testResult.factTableDiff) {
                                if (diff.expectedNumberOfFacts) {
                                    $.util.log(testName.red + ': ' + JSON.stringify(diff, null, '\t'));
                                }
                            }
                            hasError = true;
                        }
                    }
                }
            }
        }
        if (hasError) {
            return new Error('some test queries failed');
        }
    }
    return error;
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
    var defered = Q.defer();
    if(!Config.isOnProduction) {
        var token = credentials.access_token;
        $.util.log('Deleting project ' + projectName);
        $28.deleteProject(projectName, token).then(function () {
            $.util.log('Project deleted.');
            defered.resolve(credentials);
        }).catch(function (error) {
            if (!isIdempotent) {
                defered.reject(error);
            } else {
                defered.resolve(credentials);
            }
        });
    } else {
        $.util.log('Skipping project deletion for production: ' + projectName);
        defered.resolve(credentials);
    }
    return defered.promise;
};

var createProject = function(projectName){
    /*jshint camelcase:false */
    var defered = Q.defer();
    if(!Config.isOnProduction) {
        var token = credentials.access_token;
        $.util.log('Creating project ' + projectName);
        $28.createProject(projectName, token).then(function (response) {
            $.util.log('Project  ' + projectName + ' created.');
            /*jshint camelcase:false */
            credentials.project_tokens['project_' + projectName] = response.body.projectToken;
            defered.resolve(credentials);
        }).catch(function (error) {
            $.util.log('Project creation failed: ' + error);
            defered.reject(error);
        });
    } else {
        $.util.log('Skipping project creation on production: ' + projectName);
        defered.resolve(credentials);
    }
    return defered.promise;
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

var runQueries = function(projectName, queriesToRun) {
    var sequenceOfQueries = [];
    queriesToRun.forEach(function(queries){
        queries = expand(queries);
        queries.forEach(function(query) {
            var queryPath = query.substring(Config.paths.queries.length + 1);
            sequenceOfQueries.push(queryPath);
        });
    });

    if (sequenceOfQueries.length === 0){
        $.util.log('At least 1 query to init and for the API tests need to be provided.'.red);
        throw new Error('No queries to run for: ' + JSON.stringify(queriesToRun));
    }

    var Queries = $28.api.Queries(projectName);
    /*jshint camelcase:false */
    var projectToken = credentials.project_tokens['project_' + projectName];
    return sequenceOfQueries.reduce(function(previousPromise, nextQuery){
        return previousPromise.then(function(){
            return Queries.executeQuery({
                accept: 'application/28.io+json',
                queryPath: nextQuery,
                format: '',
                token: projectToken
            }).then(function (data) {
                $.util.log(('✓ '.green) + nextQuery + ' returned with status code: ' + data.response.statusCode);
                return credentials;
            }).catch(function (error) {
                var requestUri = error.response.request.uri;
                var isTestQuery = (requestUri.pathname.lastIndexOf('/v1/_queries/public/test', 0) === 0);
                var href = isTestQuery ? requestUri.host + requestUri.pathname.substring('/v1/_queries/public'.length + 1) : requestUri.host + requestUri.pathname;
                $.util.log(('✗ '.red) + href + ' returned with status code: ' + $.util.colors.red(error.response.statusCode));
                error = isTestQuery ? summarizeTestError(error) : error;
                throw error;
            });
        });
    }, /* init: */ Q.resolve());
};

var createDatasource = function(projectName, datasource){
    var defered = Q.defer();
    if(!Config.isOnProduction) {
        $.util.log('Creating datasource ' + datasource.name);
        var difault = datasource.default ? datasource.default : false;
        /*jshint camelcase:false */
        var projectToken = credentials.project_tokens['project_' + projectName];
        $28.createDatasource(projectName, datasource.category, datasource.name, projectToken, difault, JSON.stringify(datasource.credentials))
        .then(function(){
            $.util.log(datasource.name + ' created');
            defered.resolve(credentials);
        })
        .catch(function (error) {
            $.util.log('datasource creation failed: ' + datasource.name);
            defered.reject(error);
        });
    } else {
        $.util.log('Skipping data source creation on production: ' + datasource.name);
        defered.resolve(credentials);
    }
    return defered.promise;
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

gulp.task('28:setup-datasource', function(){
    var promises = [];
    Config.credentials['28'].datasources.forEach(function(datasource){
        promises.push(createDatasource(Config.projectName, datasource).catch(throwError));
    });
    return Q.all(promises);
});

gulp.task('28:init', function(){
    return runQueries(Config.projectName, Config.paths.initQueries).catch(throwError);
});

gulp.task('28:test', function(){
    return runQueries(Config.projectName, Config.paths.apiTestQueries).catch(throwError);
});
