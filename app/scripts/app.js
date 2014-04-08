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
            title: 'secxbrl.info - About'
        })
        .when('/api', {
            templateUrl: '/views/api.html',
            controller: 'ApiCtrl',
            title: 'secxbrl.info - API Information'
        })
        .when('/analytics', {
            templateUrl: '/views/analytics.html',
            controller: 'AnalyticsCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }]
            },
            title: 'secxbrl.info - Analytics'
        })
        .when('/analytics/:year/:period/:group', {
            templateUrl: '/views/analytics.html',
            controller: 'AnalyticsCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }]
            },
            title: 'secxbrl.info - Analytics Breakdown'
        })
        .when('/dashboard/:cik', {
            templateUrl: '/views/dashboard.html',
            controller: 'DashboardCtrl',
            resolve: {
                entities: ['$backend', function($backend) { return $backend.getEntities(); }]
            },
            title: 'secxbrl.info - Basic Analysis'
        })
        .when('/information/:cik', {
            templateUrl: '/views/information.html',
            controller: 'InformationCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
                entities: ['$backend', function($backend) { return $backend.getEntities(); }]
            },
            title: 'secxbrl.info - Basic Financial Information'
        })
        .when('/information/:cik/:year', {
            templateUrl: '/views/information.html',
            controller: 'InformationCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
                entities: ['$backend', function($backend) { return $backend.getEntities(); }]
            },
            title: 'secxbrl.info - Basic Financial Information'
        })
        .when('/information/:cik/:year/:period', {
            templateUrl: '/views/information.html',
            controller: 'InformationCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
                entities: ['$backend', function($backend) { return $backend.getEntities(); }]
            },
            title: 'secxbrl.info - Basic Financial Information'
        })
        .when('/entities', {
            templateUrl: '/views/entities.html',
            controller: 'EntitiesCtrl',
            title: 'secxbrl.info - Entities'
        })

        .when('/entity', {
            templateUrl: '/views/entity.html',
            controller: 'EntityCtrl',
            resolve: {
                entities: ['$backend', function($backend) { return $backend.getEntities(); }]
            },
            title: 'secxbrl.info - Search for an Entity'
        })
        .when('/entity/:cik', {
            templateUrl: '/views/entity.html',
            controller: 'EntityCtrl',
            resolve: {
                entities: ['$backend', function($backend) { return $backend.getEntities(); }]
            },
            title: 'secxbrl.info - Entity Information'
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
                            'fiscalPeriod': 'ALL',
                            'fiscalYear': 'ALL'
                        }
                    })
                    .success(function(data) {
                        deferred.resolve(data.Archives);
                    });
                    return deferred.promise;
                }]
            },
            title: 'secxbrl.info - Entity Filings'
        })
        .when('/filing/:aid', {
            templateUrl: '/views/filing.html',
            controller: 'FilingCtrl',
            title: 'secxbrl.info - Filing Information'
        })
        .when('/components/:accession', {
            templateUrl: '/views/components.html',
            controller: 'ComponentsCtrl',
            title: 'secxbrl.info - Filing Components'
        })
        .when('/component/:accession/:networkIdentifier*', {
            templateUrl: '/views/component.html',
            controller: 'ComponentCtrl',
            title: 'secxbrl.info - Component Information'
        })
        .when('/facttable/:accession/:networkIdentifier*', {
            templateUrl: '/views/facttable.html',
            controller: 'FactTableCtrl',
            title: 'secxbrl.info - Component Fact Table'
        })
        .when('/modelstructure/:accession/:networkIdentifier*', {
            templateUrl: '/views/modelstructure.html',
            controller: 'ModelStructureCtrl',
            title: 'secxbrl.info - Component Model Structure'
        })
        .when('/auth', {
            templateUrl: '/views/auth.html',
            controller: 'AuthCtrl',
            title: 'secxbrl.info - Authenticate'
        })
        .when('/auth:returnPage*', {
            templateUrl: '/views/auth.html',
            controller: 'AuthCtrl',
            title: 'secxbrl.info - Authenticate'
        })
        .when('/account', {
            templateUrl: '/views/account.html',
            controller: 'AccountCtrl',
            title: 'secxbrl.info - Account'
        })
        .when('/account/:section', {
            templateUrl: '/views/account.html',
            controller: 'AccountCtrl',
            title: 'secxbrl.info - Account'
        })
        .when('/concept-map/:name', {
            templateUrl: '/views/concept-map.html',
            controller: 'ConceptMapCtrl',
            title: 'secxbrl.info - Concept Map'
        })
        .when('/example/:example', {
            templateUrl: '/views/example.html',
            controller: 'ExampleCtrl',
            title: 'secxbrl.info - Example'
        })
        .when('/examples', {
            templateUrl: '/views/example.html',
            controller: 'ExampleCtrl',
            title: 'secxbrl.info - Examples'
        })
        .when('/pricing', {
            templateUrl: '/views/pricing.html',
            title: 'secxbrl.info - Pricing'
        })
        .when('/disclosures', {
            templateUrl: '/views/disclosures.html',
            controller: 'DisclosuresCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }]
            },
            title: 'secxbrl.info - Disclosures'
        })
        .when('/disclosure/:disclosure/:year/:period', {
            templateUrl: '/views/disclosure.html',
            controller: 'DisclosureCtrl',
            resolve: {
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }]
            },
            title: 'secxbrl.info - Disclosure Information'
        })
        .when('/comparison', {
            templateUrl: '/views/comparison.html',
            controller: 'ComparisonCtrl',
            title: 'secxbrl.info - Comparison'
        })
        .when('/comparison/information', {
            templateUrl: '/views/comparison-information.html',
            controller: 'ComparisonInformationCtrl',
            title: 'secxbrl.info - Basic Financial Information'
        })
        .when('/comparison/search', {
            templateUrl: '/views/comparison-search.html',
            controller: 'ComparisonSearchCtrl',
            resolve: {
                entities: ['$backend', function($backend) { return $backend.getEntities(); }],
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
                conceptMaps: ['$backend', function($backend) { return $backend.getConceptMaps(); }]
            },
            title: 'secxbrl.info - Search Facts'
        })
        .when('/comparison/components', {
            templateUrl: '/views/comparison-components.html',
            controller: 'ComparisonComponentsCtrl',
            resolve: {
                entities: ['$backend', function($backend) { return $backend.getEntities(); }],
                years: ['$backend', function($backend) { return $backend.getYears(); }],
                periods: ['$backend', function($backend) { return $backend.getPeriods(); }],
                conceptMaps: ['$backend', function($backend) { return $backend.getConceptMaps(); }]
            },
            title: 'secxbrl.info - Search Components'
        })
        //Blog
        .when('/blog/', {
            templateUrl: '/views/blog.html',
            controller: 'BlogCtrl',
            resolve: {
                blogIndex: ['BlogAPI', function(BlogAPI) {
                    return BlogAPI.getIndex();
                }]
            }
        })
        .when('/blog/:id/:slug', {
            templateUrl: '/views/blog.html',
            controller: 'BlogCtrl',
            reloadOnSearch: false,
            resolve: {
                blogIndex: ['BlogAPI', function(BlogAPI) {
                    return BlogAPI.getIndex();
                }]
            }
        })
        //404
        .otherwise({
            templateUrl:'/views/404.html',
            title: 'secxbrl.info - Page not found'
        });
})
.run(function($rootScope, $location, $http, $modal, $backend, $angularCacheFactory) {

	$rootScope.DEBUG = $backend.DEBUG;

	$angularCacheFactory('secxbrl-http', {
        maxAge: 60 * 60 * 1000,
        recycleFreq: 60 * 1000,
        deleteOnExpire: 'aggressive'
    });
	$http.defaults.cache = $angularCacheFactory.get('secxbrl-http');

	$angularCacheFactory('secxbrl', {
        maxAge: 60 * 60 * 1000,
        recycleFreq: 60 * 1000,
        deleteOnExpire: 'aggressive',
        storageMode: 'localStorage'
    });

	var cache = $angularCacheFactory.get('secxbrl');
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
		//MunchkinHelper.associateLead({ Email: email, lastsecxbrlinfoop: 'login' });
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
			//MunchkinHelper.associateLead({ Email: $rootScope.user.email, lastsecxbrlinfoop: 'logout' });
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
        if (url === '/') {
            $location.url(url, true);
        }
        else {
            // keep the query string, if any
		    $location.path(url);
        }
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

    $rootScope.wwwFormUrlencoded = function (params) {
        if (params)
        {
            var p = [];
            Object.keys(params).forEach(function (param) {
                if (params.hasOwnProperty(param) && params[param]) {
                    if (param === '$method') {
                        p.push('_method=' + encodeURIComponent(params[param].toString()));
                    } else {
                        if (Object.prototype.toString.call(params[param]) === '[object Array]') {
                            params[param].forEach(function (item) { p.push(param + '=' + encodeURIComponent(item)); });
                        } else {
                            p.push(param + '=' + encodeURIComponent(params[param].toString()));
                        }
                    }
                }
            });
            if (p.length > 0){ return p.join('&'); }
        }
        return '';
    };
});
