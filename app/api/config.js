'use strict';

angular
    .module('report-editor')
    .config(function ($stateProvider) {
        $stateProvider
            .state('api', {
                url: '/api',
                templateUrl: '/api/api.html',
                controller: 'APICtrl'
            });
    })
;
