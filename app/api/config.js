'use strict';

angular
    .module('report-editor')
    .config(function ($stateProvider) {
        $stateProvider
            .state('api', {
                url: '/api/:method/*path',
                templateUrl: '/api/api.html',
                controller: 'APICtrl',
                resolve: {
                    swagger: ['$http', function($http){
                        return $http({
                            method: 'GET',
                            url: '/swagger/queries.json',
                            cache: true
                        }).then(function(response){
                            return response.data;
                        });
                    }]
                }
            });
    })
;
