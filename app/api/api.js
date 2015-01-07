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

        console.log(operation);
        operation.notes = $sce.trustAsHtml(operation.notes);
        operation.parameters = _.chain(operation.parameters).filter(function(param){
            return param.name !== 'token' && param.name !== '_method' && (param.profile === undefined || param.profile.indexOf(PROFILE) !== -1);
        }).forEach(function(param){
            param.description = $sce.trustAsHtml(param.description);
        }).value();

        operation.examples.forEach(function(example){
            example.description = $sce.trustAsHtml(example.description);
        });

        $scope.API_URL = API_URL;
        $scope.api = swagger;
        $scope.path = path;
        $scope.op = operation;
        $scope.params = {
            token: Session.getToken()
        };
        console.log(operation);

        $scope.curl = function(){
            var result = 'curl -X ' + $scope.op.method + ' ' + API_URL + path;
            if(Object.keys($scope.params).length > 0) {
                result += '?';
                result += _.chain($scope.params).map(function(v, k){
                    return k + '=' + encodeURIComponent(v);
                }).join('&');
            }
            return result;
        }

        $scope.test = function(p) {
            if(p) {
                p.token = $scope.params.token;
                $scope.params = p;
            }
            $scope.loading = true;
            API.Queries[operation.nickname]($scope.params)
                .then(function(body){
                    $scope.body = _.isString(body) ? body : JSON.stringify(body, null, 2);

                })
                .catch(function(error){
                   console.log(error);
                })
                .finally(function(){
                    $scope.loading = false;
                });
        };
    });
