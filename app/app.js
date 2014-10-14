'use strict';

angular.module('secxbrl', [
    'angular-data.DS',
    'angular-data.DSCacheFactory',
    'ui.router',
    'ui.bootstrap',
    'ngProgressLite',
    'constants',
    'api',
    'session-model',
    'users-api',
    'billing-api',
    'ngSanitize',
    'angular.directives-round-progress' // round api calls widget on billing page
])

.factory('ConnectionHandler', function($q, $rootScope, DEBUG){
    return {
        'responseError': function(rejection){
            if(rejection.status === 401) {
                if(DEBUG) {
                    console.error('intercepted 401: emitting auth');
                }
                $rootScope.$emit('auth');
            }
            return $q.reject(rejection);
        }
    };
})

.config(function ($urlRouterProvider, $stateProvider, $locationProvider, $httpProvider) {

    //Because angularjs default transformResponse is not based on ContentType
    $httpProvider.defaults.transformResponse = function(response, headers){
        var contentType = headers('Content-Type');
        if(/^application\/(.*\+)?json/.test(contentType)) {
            try {
                return JSON.parse(response);
            } catch(e) {
                console.error('Couldn\'t parse the following response:');
                console.error(response);
                return response;
            }
        } else {
            return response;
        }
    };

    // Make trailing slash optional e.g. rewrite /account to /account/
    $urlRouterProvider.rule(function ($injector, $location) {
        var path = $location.url();

        // check to see if the path already has a slash where it should be
        if (path[path.length - 1] === '/' || path.indexOf('/?') > -1) {
            return;
        }

        if (path.indexOf('?') > -1) {
            return path.replace('?', '/?');
        }
        console.log(path);
        return path + '/';
    });

    $httpProvider.interceptors.push('ConnectionHandler');

    $locationProvider.html5Mode(true);
    $stateProvider
    .state('500', {
        templateUrl: '/500.html'
    });
})

.run(function($rootScope, ngProgressLite, $state, $location, $modal, API, Session, DEBUG, $log) {

    $rootScope.$on('$stateChangeStart', function() {
        ngProgressLite.start();
    });

    $rootScope.$on('$stateChangeSuccess', function() {
        ngProgressLite.done();
    });

    $rootScope.$on('$stateChangeError', function(event, toState, toParams, fromState, fromParams, error) {
        if(DEBUG){
            var desc;
            if (error.status){
                desc = error.status + ' - ' + JSON.stringify(error.data);
            } else {
                desc = error.message;
            }
            var msg = 'StateChangeError: from "' + fromState.name + '" to "' + toState.name + '": ' + desc;
            $log.error(msg);
        }
        if(error.message === 'AuthError') {
            Session.redirectToLoginPage();
        }
        ngProgressLite.done();
    });

    $rootScope.$on('auth', function() {
        Session.logout();
        Session.redirectToLoginPage();
    });
    
    $rootScope.$on('alert', function(event, title, message){
        $modal.open( {
            template: '<div class="modal-header"><span ng-bind-html="object.title"></span><a class="close" ng-click="cancel()">&times;</a></div><div class="modal-body" ng-bind-html="object.message"></div><div class="text-right modal-footer"><button class="btn btn-default" ng-click="cancel()">OK</button></div>',
            controller: ['$scope', '$modalInstance', 'object',  function ($scope, $modalInstance, object) {
                $scope.object = object;
                $scope.cancel = function () {
                    $modalInstance.dismiss('cancel');
                };
            }],
            resolve: {
                object: function() { return { title: title, message: message }; }
            }
        });
    });
})
;
