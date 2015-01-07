'use strict';

angular.module('report-editor')
    .controller('APICtrl', function(_, $scope, $state, $sce, $stateParams, swagger, API_URL, Session, API, PROFILE){

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
        operation.parameters = _.chain(operation.parameters).filter(function(param){
            return param.name !== 'token' && param.name !== '_method' && (param.profile === undefined || param.profile.indexOf(PROFILE) !== -1);
        }).forEach(function(param){
            param.description = $sce.trustAsHtml(param.description);
        }).value();

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

        $scope.getUrl = function(inBrowser){
            var result = API_URL + '/_queries/public/api' + path;
            if(Object.keys($scope.params).length > 0) {
                result += '?';
                var params = _.clone($scope.params);
                if(inBrowser) {
                    params._method = 'POST';
                }
                result += _.chain(params).map(function(v, k){
                    if(_.isArray(v)) {
                        return _.chain(v).map(function(v, k){
                            return k + '=' + encodeURIComponent(v);
                        }).value().join('&');
                    } else {
                        return k + '=' + encodeURIComponent(v);
                    }
                }).join('&');
            }
            return result;
        };

        $scope.curl = function(){
            return 'curl -X ' + $scope.op.method + ' "' + $scope.getUrl() + '"';
        };

        $scope.test = function(p) {
            if(p) {
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
                   $scope.error = error;
                })
                .finally(function(){
                    $scope.loading = false;
                });
        };
    });
