'use strict';

angular.module('report-editor')
    .controller('APICtrl', function(_, $log, $scope, $state, $sce, $stateParams, swagger, API_URL, Session, API, PROFILE){

        var method = $stateParams.method;
        var path = '/' + $stateParams.path;
        var operation;
        swagger.apis.forEach(function(api){
            if(api.path === path) {
                api.operations.forEach(function(op){
                    if(op.method === method) {
                        operation = op;
                        return false;
                    }
                });
                return false;
            }
        });

        if(!operation) {
            $state.go('404');
            return;
        }

        operation.notes = $sce.trustAsHtml(operation.notes);
        operation.parameters =
            _.chain(operation.parameters)
            .filter(function(param){
                return !param.deprecated && param.name !== 'token' && param.name !== '_method' && (param.profile === undefined || param.profile.indexOf(PROFILE) !== -1);
            })
            .forEach(function(param){
                param.description = $sce.trustAsHtml(param.description);
                if(param.nameEditable){
                    param.placeholder = param.name;
                    param.oldName = undefined;
                    param.name = undefined;
                }
            })
            .value();

        $scope.examples = _.chain(operation.examples).filter(function(example){
            return example.profile === undefined || example.profile.indexOf(PROFILE) !== -1;
        }).value();

        $scope.API_URL = API_URL;
        $scope.api = swagger;
        $scope.path = path;
        $scope.op = operation;
        $scope.token = Session.getToken();
        $scope.params = {
            token: Session.getToken()
        };

        var getParams = function(){
            var params = {
                token: $scope.token
            };
            var parameters = _.chain($scope.op.parameters)
                .filter(function(param){ return param.value !== undefined; })
                .value();
            _.each(parameters, function(param){
                params[param.name] = param.value;
            });
            return params;
        };

        $scope.getUrl = function(inBrowser, inParam){
            var result = API_URL + '/_queries/public/api' + path;
            var params = getParams();
            if(Object.keys(params).length > 0) {
                result += '?';
                params = _.clone(params);
                if(inBrowser) {
                    params._method = 'POST';
                }
                result += _.chain(params).map(function(v, k){
                    if(_.isArray(v)) {
                        return _.chain(v).map(function(v){
                            return k + '=' + encodeURIComponent(v);
                        }).value().join('&');
                    } else {
                        return k + '=' + encodeURIComponent(v);
                    }
                }).join('&');
            }
            if(inParam) {
                result = encodeURIComponent(result);
            }
            return result;
        };

        $scope.curl = function(){
            return 'curl -X ' + $scope.op.method + ' "' + $scope.getUrl() + '"';
        };

        $scope.test = function(p) {
            if(p) {
                // make all values arrays
                p = _.mapValues(p, function(paramValue){
                    if(_.isArray(paramValue)){
                        return paramValue;
                    }
                    return [paramValue];
                });
                $scope.op.parameters =
                    _.chain($scope.op.parameters)
                    .forEach(function(param){
                        param.value = undefined;
                        if(param.pattern){
                            param.name = undefined;
                        }
                        var pattern = param.pattern ? new RegExp(param.pattern) : undefined;
                        var patternMatches =
                            pattern ?
                                _.chain(_.pairs(p))
                                .filter(function(pair){
                                    return pattern.test( pair[0] );
                                })
                                .map(function(pair){
                                    var key = pair[0];
                                    var object = {};
                                    object[key] = pair[1];
                                    return object;
                                })
                                .value()[0]
                            : undefined;
                        if(p[param.name]){
                            if(_.isArray(p[param.name])){
                                param.value = p[param.name];
                            } else {
                                param.value = [p[param.name]];
                            }
                        } else if(patternMatches){
                            param.value = _.chain(patternMatches).values().flatten().value();
                            param.name = _.keys(patternMatches)[0];
                        }
                    })
                    .value();
            }
            $scope.loading = true;
            $scope.error = undefined;
            $scope.body = undefined;
            var params = getParams();
            API.Queries[operation.nickname](params)
                .then(function(body){
                    $scope.body = _.isString(body) ? body : JSON.stringify(body, null, 2);

                })
                .catch(function(error){
                   $scope.body = _.isString(error.body) ? error.body : JSON.stringify(error.body, null, 2);
                   $scope.error = error;
                })
                .finally(function(){
                    $scope.loading = false;
                });
        };

        if($scope.examples.length > 0) {
            $scope.test($scope.examples[0].parameters);
        }
    });
