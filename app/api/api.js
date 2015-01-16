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
        $scope.params = {
            token: Session.getToken()
        };

        $scope.getUrl = function(inBrowser, inParam){
            var result = API_URL + '/_queries/public/api' + path;
            if(Object.keys($scope.params).length > 0) {
                result += '?';
                var params = _.clone($scope.params);
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

        $scope.change = function(param){
            var value = this;
            if(param.oldName){
                value = _.find($scope.params, function(val, key) {
                    return key === param.oldName;
                } );
                // remove value under previous name
                delete $scope.params[param.oldName];
            }
            param.oldName = param.name;
            if(_.isArray(value)) {
                // add value under new name
                $scope.params[param.name] = value;
            }
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
                p.token = $scope.params.token;
                $scope.params = p;
            }
            $scope.loading = true;
            $scope.error = undefined;
            $scope.body = undefined;
            API.Queries[operation.nickname]($scope.params)
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
