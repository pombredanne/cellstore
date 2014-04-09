'use strict';

angular.module('main', [
    'ui.router', 'ngSanitize', 'ui.bootstrap', 'jmdobry.angular-cache', 'googlechart', 'navbar-toggle',
    'scroll-id', 'document-click', 'autocomplete', 'ngenter', 'constants', 'ngProgressLite',
    'stickyFooter', 'angulartics', 'angulartics.google.analytics', 'navbar-toggle'
])
.run(function($rootScope, ngProgressLite) {
    $rootScope.$on('$stateChangeStart', function() {
        ngProgressLite.start();
    });

    $rootScope.$on('$stateChangeSuccess', function() {
        ngProgressLite.done();
    });

    $rootScope.$on('$stateChangeError', function() {
        ngProgressLite.done();
    });
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
.config(function ($stateProvider, $locationProvider, $httpProvider) {
    
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

    $stateProvider
    //Root Controller
    .state('root', {
        templateUrl: '/views/root.html',
        controller: function($scope, $state){
            $scope.$on('$stateChangeSuccess', function(event, toState) {
                $scope.active = toState.data && toState.data.active;
            });
        }
    })
    
    //Home
    .state('root.home', {
        templateUrl: '/views/home.html',
        url: '/',
        data: {
            active: 'home'
        }
    })
    
    //Pricing
    .state('root.pricing', {
        templateUrl: '/views/pricing.html',
        url: '/pricing',
        title: 'Pricing',
        data: {
            active: 'pricing'
        }
    })

    //Blog
    .state('root.blog', {
        url: '/blog',
        templateUrl: '/views/blog.html',
        controller: 'BlogCtrl',
        data: {
            active: 'blog'
        },
        resolve: {
            blogIndex: ['BlogAPI', function(BlogAPI) {
                return BlogAPI.getIndex();
            }]
        }
    })
    .state('root.blog.entry', {
        url: '/blog/:id/:slug',
        templateUrl: '/views/blog.html',
        controller: 'BlogCtrl',
        resolve: {
            blogIndex: ['BlogAPI', function(BlogAPI) {
                return BlogAPI.getIndex();
            }]
        }
    })
    
    //API
    //TODO: API is not stateless (aka url-able)
    .state('root.api', {
        url: '/api',
        templateUrl: '/views/api.html',
        controller: 'ApiCtrl',
        title: 'API Information',
        data: {
            active: 'api'
        }
    })
    
    //Entity
    .state('root.browse', {
        url: '/entity',
        templateUrl: '/views/entity.html',
        controller: 'EntityCtrl',
        resolve: {
            entities: ['$backend', function($backend) { return $backend.getEntities(); }]
        },
        title: 'Search for an Entity'
    })
    .state('root.entity', {
        url: '/entity/:cik',
        templateUrl: '/views/entity.html',
        controller: 'EntityCtrl',
        resolve: {
            entities: ['$backend', function($backend) { return $backend.getEntities(); }]
        },
        title: 'Entity Information'
    })
    
    //404
    .state('404', {
        url: '{path:.*}',
        templateUrl:'/views/404.html',
        title: 'Page not found'
    });
    ;
    /*
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
        */
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
