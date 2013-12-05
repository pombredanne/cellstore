'use strict';

angular.module('main', ['ngRoute', 'ui', 'ui.bootstrap', 'googlechart', 'navbar-toggle'])
.config(['$routeProvider', '$locationProvider', function ($routeProvider, $locationProvider) {

    $locationProvider.html5Mode(true);

    $routeProvider
        .when('/', {
            templateUrl: '/views/home.html'
        })
        .when('/why', {
            templateUrl: '/views/why.html'
        })
        .when('/source', {
            templateUrl: '/views/source.html',
            controller: 'SourceCtrl'
        })
        .when('/analytics', {
            templateUrl: '/views/analytics.html',
            controller: 'AnalyticsCtrl'
        })
        .when('/analytics/:year/:period/:group', {
            templateUrl: '/views/analytics.html',
            controller: 'AnalyticsCtrl'
        })
        .when('/dashboard', {
            templateUrl: '/views/dashboard.html',
            controller: 'DashboardCtrl'
        })
        .when('/dashboard/:year/:period', {
            templateUrl: '/views/dashboard.html',
            controller: 'DashboardCtrl'
        })
        .when('/search', {
            templateUrl: '/views/search.html',
            controller: 'AnalyticsCtrl'
        })
        /*//404
        .otherwise({
            templateUrl:'/views/404.html'
        })*/;
}])
.run(['$rootScope',
    function($rootScope) {
        $rootScope.$on('$routeChangeSuccess', function(event, current) {
			$rootScope.page = current.loadedTemplateUrl;
        });

        $rootScope.safeApply = function(fn) {
            var phase = this.$root.$$phase;
            if (phase == '$apply' || phase == '$digest') {
                if (fn && (typeof(fn) === 'function')) {
                    fn();
                }
            } else {
                this.$apply(fn);
            }
        };
    }
]);