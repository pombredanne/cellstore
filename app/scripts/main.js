'use strict';

angular.module('main', ['ngRoute', 'ngSanitize', 'ui.bootstrap', 'googlechart', 'navbar-toggle'])
.constant('API_URL', 'http://secxbrl.alpha.xbrl.io/v1')
.constant('API_TOKEN', 'UUtxcCtkeU5sWWttRldNdDIrL1E3czhvRTBBPToyMDE0LTAxLTE0VDA5OjMwOjA3LjEzMTI0MVo=')

.factory('DimensionService', function($q, $http, API_URL) {
    return { 
        data: [],
        
        getYears : function() {
            var that = this;
            var deferred = $q.defer();
            if (!that.data['year'] || that.data['year'].length == 0)
            {
                that.data["year"] = [];
                var year = (new Date()).getFullYear();
                while (year >= 2009) { that.data["year"].push(year); year -= 1; }
            }
            deferred.resolve(that.data['year']);
            return deferred.promise;
        },

        getDomainMembers: function(domain) {
            var that = this;
            var deferred = $q.defer();
            if (that.data[domain] && that.data[domain].length > 0)
            {
                deferred.resolve(that.data[domain]);
                return deferred.promise;
            }

            var url;
            switch (domain)
            {
                case 'sector' :
                    url = API_URL + '/_queries/public/FilerSectorList.jq';
                    break;
            
                case 'generator' :
                    url = API_URL + '/_queries/public/GeneratorList.jq';
                    break;
            
                case 'entityType' :
                    url = API_URL + '/_queries/public/EntityTypeList.jq';
                    break;
            
                case 'stockIndex' :
                    url = API_URL + '/_queries/public/StockIndexList.jq';
                    break;    
            }
            if (url) 
                $http({ method:"POST", url: url })
                    .success(function(data, status, headers, config) {
                        that.data[domain] =  [];
                        if (data && data.members){
                            data.members.forEach(function(item) {
                                that.data[domain].push(item[domain]);
                            });
                        }
                        deferred.resolve(that.data[domain]);
                    });
            return deferred.promise;
        },

        getEntities: function() {
            var that = this;
            var deferred = $q.defer();
            if (that.data['entities'] && that.data['entities'].length > 0)
            {
                deferred.resolve(that.data['entities']);
                return deferred.promise;
            }

            $http({ method:"POST", url: API_URL + '/_queries/public/EntityNameTickerCIKTuples.jq' })
                .success(function(data, status, headers, config) {
                    that.data['entities'] =  [];
                    if (data) that.data['entities'] = data.entityNameTickerSymbolCikTuples;
                    deferred.resolve(that.data['entities']);
                });

            return deferred.promise;

        }
    };
})
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
        .when('/source/:visibility/:query', {
            templateUrl: '/views/source.html',
            controller: 'SourceCtrl'
        })
        .when('/analytics', {
            templateUrl: '/views/analytics.html',
            controller: 'AnalyticsCtrl',
            resolve: {
                years: function(DimensionService) { return DimensionService.getYears(); }
            }
        })
        .when('/analytics/:year/:period/:group', {
            templateUrl: '/views/analytics.html',
            controller: 'AnalyticsCtrl',
            resolve: {
                years: function(DimensionService) { return DimensionService.getYears(); }
            }
        })
        .when('/dashboard', {
            templateUrl: '/views/dashboard.html',
            controller: 'DashboardCtrl',
            resolve: {
                years: function(DimensionService) { return DimensionService.getYears(); },
                entities: function(DimensionService) { return DimensionService.getEntities(); }
            }
        })
        .when('/dashboard/:cik', {
            templateUrl: '/views/dashboard.html',
            controller: 'DashboardCtrl',
            resolve: {
                years: function(DimensionService) { return DimensionService.getYears(); },
                entities: function(DimensionService) { return DimensionService.getEntities(); }
            }
        })
        .when('/dashboard/:cik/:year/:period', {
            templateUrl: '/views/dashboard.html',
            controller: 'DashboardCtrl',
            resolve: {
                years: function(DimensionService) { return DimensionService.getYears(); },
                entities: function(DimensionService) { return DimensionService.getEntities(); }
            }
        })
        .when('/search', {
            templateUrl: '/views/search.html',
            controller: 'SearchCtrl',
            resolve: {
                years: function(DimensionService) { return DimensionService.getYears(); },
                entities: function(DimensionService) { return DimensionService.getEntities(); }
            }
        })
        .when('/entities', {
            templateUrl: '/views/entities.html',
            controller: 'EntitiesCtrl'
        })
        .when('/entity/:cik', {
            templateUrl: '/views/entity.html',
            controller: 'EntityCtrl'
        })
        .when('/filings/:cik', {
            templateUrl: '/views/filings.html',
            controller: 'FilingsCtrl'
        })
        .when('/components/:accession', {
            templateUrl: '/views/components.html',
            controller: 'ComponentsCtrl'
        })
        .when('/facttable/:component', {
            templateUrl: '/views/facttable.html',
            controller: 'FactTableCtrl'
        })
        //404
        .otherwise({
            templateUrl:'/views/404.html'
        });
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
