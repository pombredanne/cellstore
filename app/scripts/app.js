'use strict';

angular.module('main', ['ngRoute', 'ngSanitize', 'ui.bootstrap', 'jmdobry.angular-cache', 'googlechart', 'navbar-toggle', 'scroll-id', 'document-click', 'autocomplete', 'ngenter', 'constants', 'ngProgressLite', 'stickyFooter', 'angulartics', 'angulartics.google.analytics', 'navbar-toggle'])
.run(function($rootScope, ngProgressLite) {
        
    $rootScope.$on('$routeChangeStart', function() {
        ngProgressLite.start();
    });

    $rootScope.$on('$routeChangeSuccess', function() {
        ngProgressLite.done();
    });
})
.factory('$backend', function($q, $http, API_URL, DEBUG) {
    return {
        API_URL: API_URL,
		DEBUG: DEBUG,

        data: [],

        getYears : function() {
            var that = this;
            var deferred = $q.defer();
            if (!that.data.year || that.data.year.length === 0) {
                that.data.year = [];
                var year = (new Date()).getFullYear();
                while (year >= 2009) { that.data.year.push(year); year -= 1; }
            }
            deferred.resolve(that.data.year);
            return deferred.promise;
        },

		getPeriods : function() {
            var that = this;
            var deferred = $q.defer();
            if (!that.data.period || that.data.period.length === 0) {
                that.data.period = [ 'FY', 'Q3', 'Q2', 'Q1' ];
            }
            deferred.resolve(that.data.period);
            return deferred.promise;
		},

        getDomainMembers: function(domain) {
            var that = this;
            var deferred = $q.defer();
            if (that.data[domain] && that.data[domain].length > 0) {
                deferred.resolve(that.data[domain]);
                return deferred.promise;
            }

            var url;
            switch (domain) {
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
            if (url) {
                $http({ method: 'GET', url: url, params: { _method: 'POST' }, cache: true })
                .success(function(data) {
                    that.data[domain] =  [];
                    if (data && data.members) {
                        data.members.forEach(function(item) {
                            that.data[domain].push(item[domain]);
                        });
                    }
                    deferred.resolve(that.data[domain]);
                });
            }
            return deferred.promise;
        },

        getTags: function() {
            var that = this;
            var deferred = $q.defer();
            if (!that.data.tag || that.data.tag.length === 0) {
                that.data.tag = ['DOW30', 'SP500', 'FORTUNE100', 'PJI'];
            }
            deferred.resolve(that.data.tag);
            return deferred.promise;
        },

        getEntities: function() {
            var that = this;
            var deferred = $q.defer();
            if (that.data.entities && that.data.entities.length > 0) {
                deferred.resolve(that.data.entities);
                return deferred.promise;
            }

            $http({ method: 'GET', url: API_URL + '/_queries/public/EntityNameTickerCIKTuples.jq', params: { _method: 'POST' }, cache: true })
            .success(function(data) {
                that.data.entities =  [];
                if (data) { that.data.entities = data.entityNameTickerSymbolCikTuples; }
                deferred.resolve(that.data.entities);
            });

            return deferred.promise;
        },

        getConceptMaps: function() {
            var that = this;
            var deferred = $q.defer();
            if (that.data.conceptMaps && that.data.conceptMaps.length > 0)
            {
                deferred.resolve(that.data.conceptMaps);
                return deferred.promise;
            }

            $http({ method: 'GET', url: API_URL + '/_queries/public/ConceptMaps.jq', params: { _method: 'POST' }, cache: true })
                .success(function(data) {
                    that.data.conceptMaps =  [];
                    if (data) {
                        that.data.conceptMaps = data.availableMaps;
                    }
                    deferred.resolve(that.data.conceptMaps);
                });

            return deferred.promise;
        }
    };
})
// Intercept http calls.
.factory('RootScopeSpinnerInterceptor', function ($q, $rootScope, ngProgressLite) {
    return {
        // On request success
        request: function (config) {
            ngProgressLite.start();
            // Return the config or wrap it in a promise if blank.
            return config || $q.when(config);
        },

        // On request failure
        requestError: function (rejection) {
            ngProgressLite.start();
            // Return the promise rejection.
            return $q.reject(rejection);
        },

        // On response success
        response: function (response) {
            ngProgressLite.done();
            // Return the response or promise.
            return response || $q.when(response);
        },

        // On response failture
        responseError: function (rejection) {
            ngProgressLite.done();
            // Return the promise rejection.
            return $q.reject(rejection);
        }
    };
})
.config(function ($routeProvider, $locationProvider, $httpProvider) {

    $locationProvider.html5Mode(true);
    $httpProvider.interceptors.push('RootScopeSpinnerInterceptor');

    $routeProvider
        .when('/', {
            templateUrl: '/views/home.html'
        })
        .when('/clear', {
            templateUrl: '/views/home.html',
            resolve: {
                cache: ['$angularCacheFactory', function($angularCacheFactory) { $angularCacheFactory.get('secxbrl').removeAll(); }]
            }
        })
        .when('/about', {
            templateUrl: '/views/about.html',
        })
        .when('/api', {
            templateUrl: '/views/api.html',
            controller: 'ApiCtrl'
        })
        .when('/analytics', {
            templateUrl: '/views/analytics.html',
            controller: 'AnalyticsCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }]
            }
        })
        .when('/analytics/:year/:period/:group', {
            templateUrl: '/views/analytics.html',
            controller: 'AnalyticsCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }]
            }
        })
        .when('/dashboard/:cik', {
            templateUrl: '/views/dashboard.html',
            controller: 'DashboardCtrl',
            resolve: {
                entities: ['$backend', function($backend) { return $backend.getEntities(); }]
            }
        })
        .when('/information/:cik', {
            templateUrl: '/views/information.html',
            controller: 'InformationCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
                entities: ['$backend', function($backend) { return $backend.getEntities(); }]
            }
        })
        .when('/information/:cik/:year', {
            templateUrl: '/views/information.html',
            controller: 'InformationCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
                entities: ['$backend', function($backend) { return $backend.getEntities(); }]
            }
        })
        .when('/information/:cik/:year/:period', {
            templateUrl: '/views/information.html',
            controller: 'InformationCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
                entities: ['$backend', function($backend) { return $backend.getEntities(); }]
            }
        })
        .when('/search/:cik', {
            templateUrl: '/views/search.html',
            controller: 'SearchCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
                entities: ['$backend', function($backend) { return $backend.getEntities(); }],
                conceptMaps: ['$backend', function($backend) { return $backend.getConceptMaps(); }]
            }
        })
        .when('/search/:cik/:year/:period', {
            templateUrl: '/views/search.html',
            controller: 'SearchCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
                entities: ['$backend', function($backend) { return $backend.getEntities(); }],
                conceptMaps: ['$backend', function($backend) { return $backend.getConceptMaps(); }]
            }
        })
        .when('/entities', {
            templateUrl: '/views/entities.html',
            controller: 'EntitiesCtrl'
        })

        .when('/entity', {
            templateUrl: '/views/entity.html',
            controller: 'EntityCtrl',
            resolve: {
                entities: ['$backend', function($backend) { return $backend.getEntities(); }]
            }
        })
        .when('/entity/:cik', {
            templateUrl: '/views/entity.html',
            controller: 'EntityCtrl',
            resolve: {
                entities: ['$backend', function($backend) { return $backend.getEntities(); }]
            }
        })
        .when('/filings/:cik', {
            templateUrl: '/views/filings.html',
            controller: 'FilingsCtrl',
            resolve: {
                results: ['$q', '$http', '$route', '$backend', function($q, $http, $route, $backend){
                    var deferred = $q.defer();
                    var cik = $route.current.params.cik;
                    $http({
                        method : 'GET',
                        url: $backend.API_URL + '/_queries/public/api/filings.jq',
                        params : {
                            '_method' : 'POST',
                            'cik' : cik,
                            'fiscalPeriod': 'ALL'
                        }
                    })
                    .success(function(data) {
                        deferred.resolve(data.Archives);
                    });
                    return deferred.promise;
                }]
            }
        })
        .when('/filing/:aid', {
            templateUrl: '/views/filing.html',
            controller: 'FilingCtrl'
        })
        .when('/components/:accession', {
            templateUrl: '/views/components.html',
            controller: 'ComponentsCtrl'
        })
        .when('/component/:cid', {
            templateUrl: '/views/component.html',
            controller: 'ComponentCtrl'
        })
        .when('/facttable/:cid', {
            templateUrl: '/views/facttable.html',
            controller: 'FactTableCtrl'
        })
        .when('/modelstructure/:cid', {
            templateUrl: '/views/modelstructure.html',
            controller: 'ModelStructureCtrl'
        })
        .when('/auth', {
            templateUrl: '/views/auth.html',
            controller: 'AuthCtrl'
        })
        .when('/auth:returnPage*', {
            templateUrl: '/views/auth.html',
            controller: 'AuthCtrl'
        })
        .when('/account', {
            templateUrl: '/views/account.html',
            controller: 'AccountCtrl'
        })
        .when('/account/:section', {
            templateUrl: '/views/account.html',
            controller: 'AccountCtrl'
        })
        .when('/concept-map/:name', {
            templateUrl: '/views/concept-map.html',
            controller: 'ConceptMapCtrl'
        })
        .when('/example/:example', {
            templateUrl: '/views/example.html',
            controller: 'ExampleCtrl'
        })
        .when('/examples', {
            templateUrl: '/views/example.html',
            controller: 'ExampleCtrl'
        })
        .when('/pricing', {
            templateUrl: '/views/pricing.html'
        })
        .when('/disclosures', {
            templateUrl: '/views/disclosures.html',
            controller: 'DisclosuresCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }]
            }
        })
        .when('/disclosure/:disclosure/:year/:period', {
            templateUrl: '/views/disclosure.html',
            controller: 'DisclosureCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }]
            }
        })
        .when('/comparison', {
            templateUrl: '/views/comparison.html',
            controller: 'ComparisonCtrl'
        })
        .when('/comparison/information', {
            templateUrl: '/views/comparison-information.html',
            controller: 'ComparisonInformationCtrl'
        })
        .when('/comparison/search', {
            templateUrl: '/views/comparison-search.html',
            controller: 'ComparisonSearchCtrl',
            resolve: {
                entities: ['$backend', function($backend) { return $backend.getEntities(); }],
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
                conceptMaps: ['$backend', function($backend) { return $backend.getConceptMaps(); }]
            }
        })
        .when('/comparison/components', {
            templateUrl: '/views/comparison-components.html',
            controller: 'ComparisonComponentsCtrl',
            resolve: {
                entities: ['$backend', function($backend) { return $backend.getEntities(); }],
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
                conceptMaps: ['$backend', function($backend) { return $backend.getConceptMaps(); }]
            }
        })
        //404
        .otherwise({
            templateUrl:'/views/404.html'
        });
})
.run(function($rootScope, $location, $http, $modal, $backend, $angularCacheFactory) {

	$rootScope.DEBUG = $backend.DEBUG;

	$angularCacheFactory('secxbrl', {
        maxAge: 6000000, // Items added to this cache expire after 15 minutes.
        cacheFlushInterval: 6000000, // This cache will clear itself every hour.
        deleteOnExpire: 'aggressive' // Items will be deleted from this cache right when they expire.
    });

	var cache = $angularCacheFactory.get('secxbrl');
	$http.defaults.cache = cache;
	if (cache)
	{
		$rootScope.token = cache.get('token');
		$rootScope.user = cache.get('user');
	}

	$rootScope.$on('$routeChangeSuccess', function(event, current) {
		$rootScope.page = current.loadedTemplateUrl;
	});
		
	$rootScope.$on('error', function(event, status, error){
		if (status === 401) {
            var p = $location.path();
            if (p === '/account' || p === '/account/password' || p === '/account/info') {
                p = '';
            }
			$rootScope.goto('/auth' + p);
			return;
		}
		$modal.open( {
			template: '<div class="modal-header h3"> Error {{object.status}} <a class="close" ng-click="cancel()">&times;</a></div><div class="modal-body"> {{object.error.description }} <br><a ng-click="details=true" ng-hide="details" class="dotted">Show details</a><pre ng-show="details" class="small">{{object.error | json }}</pre></div>',
			controller: ['$scope', '$modalInstance', 'object', function ($scope, $modalInstance, object) {
                $scope.object = object;
				$scope.cancel = function () {
				    $modalInstance.dismiss('cancel');
				};
            }],
			resolve: {
				object: function() { return { status: status, error: error }; }
			}
		});
	});

	$rootScope.$on('alert', function(event, title, message){
		$modal.open( {
			template: '<div class="modal-header h3"> {{object.title}} <a class="close" ng-click="cancel()">&times;</a></div><div class="modal-body" ng-bind-html="object.message"></div><div class="text-right modal-footer"><button class="btn btn-default" ng-click="cancel()">OK</button></div>',
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

	$rootScope.$on('login', function(event, token, id, email, firstname, lastname, url){
		$rootScope.token = token;
		$rootScope.user = { id: id, email: email, firstname: firstname, lastname: lastname };
		var cache = $angularCacheFactory.get('secxbrl');
		if (cache)
		{
			cache.put('token', angular.copy($rootScope.token));
			cache.put('user', angular.copy($rootScope.user));
		}
		MunchkinHelper.associateLead({ Email: email, lastsecxbrlinfoop: 'login' });
		if (!url) {
            url='/';
        }
		$rootScope.goto(url);
	});

	$rootScope.$on('logout', function(){
		$rootScope.logout();
	});

	$rootScope.logout = function() {
		if ($rootScope.user) {
			MunchkinHelper.associateLead({ Email: $rootScope.user.email, lastsecxbrlinfoop: 'logout' });
        }

		$rootScope.token = null;
		$rootScope.user = null;
		var cache = $angularCacheFactory.get('secxbrl');
		if (cache) {
			cache.remove('token');
			cache.remove('user');
		}
		$rootScope.goto('/');
	};

	$rootScope.$on('clearCache', function(){//event
        $rootScope.clearCache();
	});

	$rootScope.clearCache = function() {
		$angularCacheFactory.clearAll();
		$rootScope.goto('/');
	};

	$rootScope.goto = function(url) {
		$location.url(url, true);
	};

	$rootScope.gotoId = function(id) {
		$rootScope.$broadcast('scroll-id', id);
	};

	$rootScope.gotologin = function() {
		var p = $location.path();
		if (p.length > 5 && p.substring(0, 5) === '/auth') { return; }
		$location.url('/auth' + p, true);
	};

	$rootScope.substring = function(string, len) {
		if (string && string.length > len) {
			return string.substring(0, len) + '...';
        } else {
            return string;
        }
	};

	$rootScope.toggleMenu = function(event, visible) {
		$rootScope.visibleMenu = visible;
		if (event && visible) {
            event.stopPropagation();
        }
	};
});
