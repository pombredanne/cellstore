'use strict';

angular.module('report-editor')
    .controller('APICtrl', function($scope, $state, $sce, $stateParams, swagger, API_URL, Session, API){
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
            return param.name !== 'token' && param.name !== '_method';
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

        $scope.test = function(){
            console.log($scope.params);
        };
    });
